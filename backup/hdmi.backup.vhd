library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
----------------------------------------------------------------------------------

entity hdmi is
    Port ( 
            clk_252Mhz  : in std_logic;
            
            clk_o       : out std_logic_vector(1 downto 0) := "01";
            data_b      : out std_logic_vector(1 downto 0) := "01";
            data_g      : out std_logic_vector(1 downto 0) := "01";
            data_r      : out std_logic_vector(1 downto 0) := "01"  
         );
end hdmi;

----------------------------------------------------------------------------------

architecture Behavioral of hdmi is
    
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
    
    signal hcount, vcount               : integer range 0 to 800 := 0;
    signal hsync , vsync , video_active : std_logic := '0';
    signal sync                         : std_logic_vector(1 downto 0);
    signal buffer_clk                   : std_logic := '0';
    
    constant timings : video_timing_type := VGA_TIMING;
    constant nv_nh : std_logic_vector(9 downto 0) := "1101010100";
    constant nv_h : std_logic_vector(9 downto 0)  := "0010101011";
    constant v_nh : std_logic_vector(9 downto 0)  := "0101010100";
    constant v_h : std_logic_vector(9 downto 0)   := "1010101011";
    
    signal buffer_r           : std_logic_vector(9 downto 0) := "0111110000";
    signal buffer_g           : std_logic_vector(9 downto 0) := "0111110000";
    signal buffer_b           : std_logic_vector(9 downto 0) := "0111110000";
    
    signal frame_cnt          : integer := 0;
    
    signal disparity_r, disparity_g, disparity_b    : integer := 0;
begin
    
    sync <= vsync & hsync;
    
    tdms_r : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned((frame_cnt) mod 256,8)),
            video_active => video_active,
            sync         => "00",
            --disparity    => disparity_r,
            d_out        => buffer_r );
            
    tdms_g : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned((1*frame_cnt) mod 256,8)),
            video_active => video_active,
            sync         => "00",
            --disparity    => disparity_g,
            d_out        => buffer_g );
            
    tdms_b : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned((1*frame_cnt) mod 256,8)),
            video_active => video_active,
            sync         => sync,
            --disparity    => disparity_b,
            d_out        => buffer_b );        
    
    process (clk_252Mhz) is
        variable bit_cnt            : integer range 0 to 9 := 0;
        variable video_active_var   : std_logic := '1';
    begin
                
        if rising_edge (clk_252Mhz) then
            
            data_r <= not buffer_r(bit_cnt) & buffer_r(bit_cnt);
            data_g <= not buffer_g(bit_cnt) & buffer_g(bit_cnt);
            data_b <= not buffer_b(bit_cnt) & buffer_b(bit_cnt);

            video_active_var := '1';
            if bit_cnt = 0 then
                clk_o   <= "10";
                
                ------------ VH CNT ------------
                if (hcount = timings.H_TOTAL) then
                    hcount <= 0;
                    if (vcount = 525) then -- new frame
                        vcount <= 0;
                        frame_cnt <= frame_cnt + 1;
                    else
                        vcount <= vcount + 1;
                        if not ((hcount < timings.H_VIDEO) and ((vcount + 1) < timings.V_VIDEO)) then
                            video_active_var := '0';
                        end if;
                    end if;
                else
                    hcount <= hcount + 1;
                    if not (((hcount + 1) < timings.H_VIDEO) and (vcount < timings.V_VIDEO)) then
                        video_active_var := '0';
                    end if;
                end if;
                ------------ VH CNT ------------
                
            elsif bit_cnt = 5 then
                clk_o   <= "01";
            end if;                
                
            if bit_cnt = 9 then -- next pixel
                bit_cnt := 0;
                buffer_clk <= '1';
            else
                bit_cnt := bit_cnt + 1;
                buffer_clk <= '0';
            end if;
            
            --if video_active = '0' then
            --    case sync is
            --        when "00"   => data_b <= not nv_nh(bit_cnt) & nv_nh(bit_cnt);
            --        when "01"   => data_b <= not nv_h (bit_cnt) & nv_h (bit_cnt);
            --        when "10"   => data_b <= not v_nh (bit_cnt) & v_nh (bit_cnt);
            --        when others => data_b <= not v_h  (bit_cnt) & v_h  (bit_cnt);
            --    end case;
            --end if;
            
        end if;
        
    end process;
    
    video_active <= timings.ACTIVE when (hcount < timings.H_VIDEO) and (vcount < timings.V_VIDEO ) else not timings.ACTIVE;
    hsync <= timings.H_POL when (hcount >= timings.H_VIDEO + timings.H_FP) and (hcount < timings.H_TOTAL - timings.H_BP) else not timings.H_POL;
    vsync <= timings.V_POL when (vcount >= timings.V_VIDEO + timings.V_FP) and (vcount < timings.V_TOTAL - timings.V_BP) else not timings.V_POL;
      

end Behavioral;

----------------------------------------------------------------------------------
