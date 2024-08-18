library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
----------------------------------------------------------------------------------

entity hdmi2 is
    Port ( 
            clk_252Mhz  : in std_logic;
            
            clk_o       : out std_logic_vector(1 downto 0) := "01";
            data_b      : out std_logic_vector(1 downto 0) := "01";
            data_g      : out std_logic_vector(1 downto 0) := "01";
            data_r      : out std_logic_vector(1 downto 0) := "01"  
         );
end hdmi2;

----------------------------------------------------------------------------------

architecture Behavioral of hdmi2 is
    
    type video_timing_type is record
        H_VIDEO : integer;
        H_FP    : integer;
        H_SYNC  : integer;
        H_BP    : integer;
        H_TOTAL : integer;
        V_VIDEO : integer;
        V_FP    : integer;
        V_SYNC  : integer;
        V_BP    : integer;
        V_TOTAL : integer;
        H_POL   : std_logic;
        V_POL   : std_logic;
        ACTIVE  : std_logic;
    end record;
    
    constant VGA_TIMING : video_timing_type := (
        H_VIDEO =>  640,
        H_FP    =>   16,
        H_SYNC  =>   96,
        H_BP    =>   48,
        H_TOTAL =>  800,
        V_VIDEO =>  480,
        V_FP    =>   10,
        V_SYNC  =>    2,
        V_BP    =>   33,
        V_TOTAL =>  525,
        H_POL   =>  '0',
        V_POL   =>  '0',
        ACTIVE  =>  '1'
    );    
        
    constant timings : video_timing_type := VGA_TIMING;
    constant nv_nh : std_logic_vector(9 downto 0) := "1101010100";
    constant nv_h : std_logic_vector(9 downto 0)  := "0010101011";
    constant v_nh : std_logic_vector(9 downto 0)  := "0101010100";
    constant v_h : std_logic_vector(9 downto 0)   := "1010101011";
    
    signal buffer_r           : std_logic_vector(9 downto 0) := "1000100111";
    signal buffer_g           : std_logic_vector(9 downto 0) := "1000100111";
    signal buffer_b           : std_logic_vector(9 downto 0) := "1000100111";
    
    signal sync               : std_logic_vector(1 downto 0);
    signal video_active       : std_logic := '0';
    signal buffer_clk         : std_logic := '0';
    signal frame_cnt          : integer := 0;
begin

    tdms_r : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned((frame_cnt) mod 256,8)),
            video_active => video_active,
            sync         => "00",
            d_out        => buffer_r );
            
    tdms_g : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned((1*frame_cnt) mod 256,8)),
            video_active => video_active,
            sync         => "00",
            d_out        => buffer_g );
            
    tdms_b : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned((1*frame_cnt) mod 256,8)),
            video_active => video_active,
            sync         => sync,
            d_out        => buffer_b );


    process (clk_252Mhz) is
        variable bit_cnt                    : integer range 0 to 9 := 0;
        variable hcount, vcount             : integer := 0;
        variable hsync, vsync               : std_logic := '0';
    begin
                
        if rising_edge (clk_252Mhz) then
            
            
            ---------------------------------- pixel clock ---------------------------------- 
            if (bit_cnt = 0) then
                clk_o <= "10";
            elsif (bit_cnt = 5) then
                clk_o <= "01";
            end if;
           
           
            ----------------------------------  pixel data ---------------------------------- 
            data_r <= not buffer_r(bit_cnt) & buffer_r(bit_cnt);
            data_g <= not buffer_g(bit_cnt) & buffer_g(bit_cnt);
            data_b <= not buffer_b(bit_cnt) & buffer_b(bit_cnt);
                
                
            ---------------------------------- bit_cnt++ ---------------------------------- 
            if (bit_cnt = 9) then -- end of pixel, advance hcount (and maybe vcount)
                bit_cnt := 0;
                buffer_clk <= '1';
                
                ----------------- V/H COUNTERS ----------------- 
                if (hcount = timings.H_TOTAL) then
                    hcount := 0;
                    if (vcount = timings.V_TOTAL) then -- new frame 
                        vcount := 0;
                        frame_cnt <= frame_cnt + 1;
                    else
                        vcount := vcount + 1;
                    end if;
                else
                    hcount := hcount + 1;
                end if;
                
                ----------------- V/H SYNC + ACTIVE -----------------
                hsync := not timings.H_POL;
                vsync := not timings.v_POL;
                if ( hcount >= (timings.H_TOTAL - timings.H_SYNC) ) then
                    hsync :=  timings.H_POL;
                end if;
                if ( vcount >= (timings.V_TOTAL - timings.V_SYNC) ) then
                    vsync :=  timings.V_POL;
                end if;
                
                video_active <= '0';
                if ( hcount >= timings.H_BP ) AND ( hcount < (timings.H_TOTAL - timings.H_SYNC - timings.H_FP) ) AND
                   ( vcount >= timings.V_BP ) AND ( vcount < (timings.V_TOTAL - timings.V_SYNC - timings.V_FP) ) then
                    video_active <= '1';
                end if;
                
                sync <= vsync & hsync;
                ----------------- V/H SYNC + ACTIVE -----------------
                
            else
                bit_cnt := bit_cnt + 1;
                buffer_clk <= '0';
            end if;
            
        end if;
        
    end process;  

end Behavioral;
