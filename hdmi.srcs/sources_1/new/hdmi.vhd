library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.global_params.ALL;
use work.graphics_functions_pckg.all;
use std.textio.all;

----------------------------------------------------------------------------------

entity hdmi is
    Port ( 
            bit_clk     : in std_logic;
            
            tmds_clk    : out std_logic_vector(1 downto 0) := "01";
            data_b      : out std_logic_vector(1 downto 0) := "01";
            data_g      : out std_logic_vector(1 downto 0) := "01";
            data_r      : out std_logic_vector(1 downto 0) := "01"  
         );
end hdmi;

----------------------------------------------------------------------------------

architecture Behavioral of hdmi is   
        
    signal buffer_r             : std_logic_vector(9 downto 0)  := "1000100111";
    signal buffer_g             : std_logic_vector(9 downto 0)  := "1000100111";
    signal buffer_b             : std_logic_vector(9 downto 0)  := "1000100111";
    
    signal sync, CTL10, CTL32   : std_logic_vector(1 downto 0)  := "00";
    signal video_active         : std_logic                     := '0';
    signal buffer_clk           : std_logic                     := '0';
    signal frame_cnt            : integer                       := 0;
    
    
    
    constant DATA_WIDTH : integer := 64;
    constant NUM_WORDS  : integer := 2000;
    
    --signal ram_data : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    --signal raddr    : integer range 0 to NUM_WORDS-1 := 0;
    
    signal models       : models_t(0 to 1) := (ascii_models(49),ascii_models(50));
    
    
    signal bit_cnt      : integer range 0 to 9:= 0;
    signal vcount       : integer range 0 to timings.V_TOTAL-1 := 0;
    signal hcount       : integer range 0 to timings.H_TOTAL-1 := 0;
    signal vsync, hsync : std_logic;
begin        

    tdms_r : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned(3,8)),
            video_active => video_active,
            CTL          => CTL32,
            d_out        => buffer_r );
            
    tdms_g : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned(3,8)),
            video_active => video_active,
            CTL          => CTL10,
            d_out        => buffer_g );
            
    tdms_b : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned(4,8)),
            video_active => video_active,
            CTL          => sync,
            d_out        => buffer_b );      
    
    -- send data
    send_data : process (bit_clk) is
        variable pix_v  : integer range 0 to timings.V_VIDEO-1 := 0;
        variable pix_h  : integer range 0 to timings.H_VIDEO-1 := 0;     
        
        variable model_pix_v, model_pix_h   : integer;
        
        variable kpix_v, kpix_h, kval : integer;
        
    begin
                
        if rising_edge (bit_clk) then 
            
            ---------------------------------- pixel clock ---------------------------------- 
            if (bit_cnt = 0) then
                tmds_clk <= "10";
            elsif (bit_cnt = 5) then
                tmds_clk <= "01";
            end if;
            
            ----------------------------------  pixel data ---------------------------------- 
            data_r <= not buffer_r(bit_cnt) & buffer_r(bit_cnt);
            data_g <= not buffer_g(bit_cnt) & buffer_g(bit_cnt);
            data_b <= not buffer_b(bit_cnt) & buffer_b(bit_cnt);
                
                
            ---------------------------------- bit_cnt++ ---------------------------------- 
            if (bit_cnt = 9) then -- end of pixel, advance hcount (and maybe vcount / frame_cnt)
                bit_cnt <= 0;
                buffer_clk <= '1';
                
                ----------------- V/H COUNTERS -----------------
                if (hcount = timings.H_TOTAL-1) then
                    hcount <= 0;
                    if (vcount = timings.V_TOTAL-1) then -- new frame 
                        vcount <= 0;
                        frame_cnt <= frame_cnt + 1;                        
                    else
                        vcount <= vcount + 1;
                    end if;
                else
                    hcount <= hcount + 1;
                end if;
                
                ----------------- V/H SYNC -----------------
                if (hcount >= (timings.H_TOTAL-timings.H_SYNC-1)) AND (hcount < (timings.H_TOTAL-1)) then
                    hsync   <= timings.H_POL;
                else
                    hsync   <= not timings.H_POL;
                end if;
                
                if (vcount >= (timings.V_TOTAL-timings.V_SYNC-1)) AND (vcount < (timings.V_TOTAL-1)) then
                    vsync   <= timings.V_POL;
                else
                    vsync   <= not timings.V_POL;
                end if;
                
                ----------------- OPERATION MODE -----------------
                video_active <= '0';
                CTL10 <= "00";
                CTL32 <= "00";
                if ( vcount >= (timings.V_BP-1) ) AND ( vcount < (timings.V_BP+timings.V_VIDEO-1) ) then -- V
                   if ( hcount >= (timings.H_BP-1) ) AND ( hcount < (timings.H_BP+timings.H_VIDEO-1) ) then -- V,H
                        video_active    <= '1';
                        
                        -- update RGB values
                        pix_v := vcount - timings.V_BP;
                        pix_h := hcount - timings.H_BP;
                           
                        /*rgb_var := (70*255,70*255,70*255);                                     
                        -- draw models
                        for kv in -kernel'LENGTH(1)/2 to kernel'LENGTH(1)/2 loop
                            for kh in -kernel'LENGTH(2)/2 to kernel'LENGTH(2)/2 loop
                                kval := kernel(kv+kernel'LENGTH(1)/2,kh+kernel'LENGTH(2)/2);                               
                                kpix_v := pix_v + kv;
                                kpix_h := pix_h + kh;
    
                                next when (kval = 0);                            
                                
                                for ii in 0 to models'LENGTH(1)-1 loop
                                    if models(ii).enable = '1' then
                                        model_pix_v := (kpix_v-models(ii).top)  / models(ii).scale;
                                        model_pix_h := (kpix_h-models(ii).left) / models(ii).scale;
                                        if (kpix_v >= (models(ii).top)  AND model_pix_v < models(ii).bitmat'LENGTH(1)) AND 
                                           (kpix_h >= (models(ii).left) AND model_pix_h < models(ii).bitmat'LENGTH(2)) then
                                           if (models(ii).bitmat(model_pix_v,model_pix_h) = '1') then
                                               rgb_var(0) := rgb_var(0) + models(ii).color(0) * kval;
                                               rgb_var(1) := rgb_var(1) + models(ii).color(1) * kval;
                                               rgb_var(2) := rgb_var(2) + models(ii).color(2) * kval;
                                           end if;
                                       end if;
                                    end if;
                                end loop;
                                
                            end loop;
                        end loop;
                        rgb_var(0) := MAXIMUM(0,MINIMUM(255,rgb_var(0) / 255));
                        rgb_var(1) := MAXIMUM(0,MINIMUM(255,rgb_var(1) / 255));
                        rgb_var(2) := MAXIMUM(0,MINIMUM(255,rgb_var(2) / 255));
                        rgb <= rgb_var;*/
                   else -- V,!H
                        if (hcount < (timings.H_BP-1)) then -- horizontal is back porch
                            if (hcount >= (timings.H_BP-GUARD_LENGTH-1)) then -- video guard
                                data_r <= not VIDEO_GUARD_R(bit_cnt) & VIDEO_GUARD_R(bit_cnt);
                                data_g <= not VIDEO_GUARD_G(bit_cnt) & VIDEO_GUARD_G(bit_cnt);
                                data_b <= not VIDEO_GUARD_B(bit_cnt) & VIDEO_GUARD_B(bit_cnt);
                            elsif (hcount >= (timings.H_BP-PREAMBLE_LENGTH-GUARD_LENGTH-1)) then -- video preamble
                                CTL10 <= "01";
                                CTL32 <= "00";
                            end if;
                        end if;
                   end if;
                else -- !V
                   
                end if;
                                
            else
                bit_cnt <= bit_cnt + 1;
                buffer_clk <= '0';
            end if;
            
        end if;
        
    end process;
    
    sync <= vsync & hsync;
    --video_active <= timings.ACTIVE when (hcount >= timings.H_BP) AND (hcount < (timings.H_BP+timings.H_VIDEO)) AND
    --                                    (vcount >= timings.V_BP) AND (vcount < (timings.V_BP+timings.V_VIDEO)) else
    --                not timings.ACTIVE;
end Behavioral;
