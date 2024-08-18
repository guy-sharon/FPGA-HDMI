library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.global_params.ALL;

----------------------------------------------------------------------------------

entity hdmi2 is
    Port ( 
            bit_clk     : in std_logic;
            
            tmds_clk    : out std_logic_vector(1 downto 0) := "01";
            data_b      : out std_logic_vector(1 downto 0) := "01";
            data_g      : out std_logic_vector(1 downto 0) := "01";
            data_r      : out std_logic_vector(1 downto 0) := "01";
            
            leds        : out std_logic_vector(3 downto 0) := "0000" 
         );
end hdmi2;

----------------------------------------------------------------------------------

architecture Behavioral of hdmi2 is
    signal vcount               : integer range 0 to timings.V_TOTAL-1  := 0;
    signal hcount               : integer range 0 to timings.H_TOTAL-1  := 0;
    signal vsync, hsync         : std_logic                             := '1';
    signal is_video_active      : std_logic                             := '0';
    signal frame_cnt            : integer range 0 to 59                 := 0;
    signal bit_cnt              : integer range 0 to 9                  := 0;
    signal buffer_clk           : std_logic                             := '0';
    signal sync, CTL10, CTL32   : std_logic_vector(1 downto 0)          := "00";
    signal opmode               : operation_mode                        := AUDIO_PREAMBLE;
    signal subs                 : subs_t                                := (others=>(others=>'0'));
    signal header               : std_logic_vector(31 downto 0)         := (others=>'0');
    signal pkt_idx              : std_logic_vector(4 downto 0)          := (others=>'0');
          
    signal tmds_buffer_r             : std_logic_vector(9 downto 0)  := "1000100111";
    signal tmds_buffer_g             : std_logic_vector(9 downto 0)  := "1000100111";
    signal tmds_buffer_b             : std_logic_vector(9 downto 0)  := "1000100111";
    
    signal clk_60hz             : std_logic                             := '0';
    signal red_val              : integer range 0 to 255                := 180;
begin
    
    clock_1s : entity work.clk_div
    generic map(freq_in => 252e6, freq_out => 90)
    port map(clk_in  => bit_clk, clk_out => clk_60hz);
    
    process (vcount,hcount) is
        variable top , bottom   : integer range 0 to timings.V_VIDEO := 0;
    begin
        if (vcount >= timings.V_BP-1 + top) AND vcount < (timings.V_TOTAL - timings.V_SYNC - timings.V_FP - 100 - bottom) AND
           (hcount >= timings.H_BP-1) AND hcount < (timings.H_TOTAL - timings.H_SYNC - timings.H_FP - 130) then
            red_val <= 150;
        else
            red_val <= 0;
        end if;
        top := top + 2;
        bottom := bottom + 1;
    end process;
            
    timing_inst : entity work.timing
        port map(bit_clk => bit_clk,vcount => vcount, hcount => hcount, vsync => vsync, hsync => hsync,
                 frame_cnt => frame_cnt,bit_cnt => bit_cnt,tmds_clk => tmds_clk,buffer_clk => buffer_clk, sync => sync,
                 CTL10 => CTL10, CTL32 => CTL32, opmode => opmode, subs => subs, header => header, pkt_idx => pkt_idx,
                 is_video_active => is_video_active, leds => leds);

    tdms_r : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned(red_val,8)),
            video_active => is_video_active,
            CTL          => CTL32,
            d_out        => tmds_buffer_r );
            
    tdms_g : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned(100,8)),
            video_active => is_video_active,
            CTL          => CTL10,
            d_out        => tmds_buffer_g );
            
    tdms_b : entity work.tmds_encoder
        port map(
            clk          => buffer_clk,
            d_in         => std_logic_vector(to_unsigned(150,8)),
            video_active => is_video_active,
            CTL          => sync,
            d_out        => tmds_buffer_b );  
    
    process (bit_clk) is
        variable terc4_buffer_r : std_logic_vector(9 downto 0);
        variable terc4_buffer_g : std_logic_vector(9 downto 0);
        variable terc4_buffer_b : std_logic_vector(9 downto 0);
        variable pkt_idx_2even  : integer range 0 to 63 := 0;
        variable pkt_idx_2odd   : integer range 0 to 63 := 0;
    begin
        if rising_edge(bit_clk) then
            
            pkt_idx_2even   := to_integer(unsigned(pkt_idx & '0'));
            pkt_idx_2odd    := to_integer(unsigned(pkt_idx & '1'));
            
            case opmode is 
                
                when AUDIO_GAURD_HEADER | AUDIO_GAURD_TRAILER =>
                    data_r <= not AUDIO_GUARD_R(bit_cnt) & AUDIO_GUARD_R(bit_cnt);
                    data_g <= not AUDIO_GUARD_G(bit_cnt) & AUDIO_GUARD_G(bit_cnt);
                    
                    terc4_buffer_b := TERC4('1','1',vsync,hsync);
                    data_b <= not terc4_buffer_b(bit_cnt) & terc4_buffer_b(bit_cnt);
                    
                when AUDIO_ACTIVE =>
                    terc4_buffer_r := TERC4(subs(3)(pkt_idx_2odd),  subs(2)(pkt_idx_2odd),  subs(1)(pkt_idx_2odd),  subs(0)(pkt_idx_2odd));
                    terc4_buffer_g := TERC4(subs(3)(pkt_idx_2even), subs(2)(pkt_idx_2even), subs(1)(pkt_idx_2even), subs(0)(pkt_idx_2even));
                    
                    if pkt_idx = "00000" then
                        terc4_buffer_b := TERC4('0',header(to_integer(unsigned((pkt_idx)))),vsync,hsync);
                    else
                        terc4_buffer_b := TERC4('1',header(to_integer(unsigned((pkt_idx)))),vsync,hsync);
                    end if;
                    
                    data_r <= not terc4_buffer_r(bit_cnt) & terc4_buffer_r(bit_cnt);
                    data_g <= not terc4_buffer_g(bit_cnt) & terc4_buffer_g(bit_cnt);
                    data_b <= not terc4_buffer_b(bit_cnt) & terc4_buffer_b(bit_cnt);
                    
                when VIDEO_GAURD_HEADER =>
                    data_r <= not VIDEO_GUARD_R(bit_cnt) & VIDEO_GUARD_R(bit_cnt);
                    data_g <= not VIDEO_GUARD_G(bit_cnt) & VIDEO_GUARD_G(bit_cnt);
                    data_b <= not VIDEO_GUARD_B(bit_cnt) & VIDEO_GUARD_B(bit_cnt);
                    
                when VIDEO_ACTIVE | VIDEO_PREAMBLE | AUDIO_PREAMBLE | CONTROL =>
                    data_r <= not tmds_buffer_r(bit_cnt) & tmds_buffer_r(bit_cnt);
                    data_g <= not tmds_buffer_g(bit_cnt) & tmds_buffer_g(bit_cnt);
                    data_b <= not tmds_buffer_b(bit_cnt) & tmds_buffer_b(bit_cnt);
                    
            end case;
            
        end if;
    end process ;
    

end Behavioral;
----------------------------------------------------------------------------------