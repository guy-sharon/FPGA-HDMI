library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.global_params.ALL;
use IEEE.numeric_std.all;

----------------------------------------------------------------------------------

entity info_frame_packet is
  Port (
            clk     : in std_logic;
            
            subs    : out subs_t;
            header  : out std_logic_vector(31 downto 0)
      
        );
end info_frame_packet;

----------------------------------------------------------------------------------

architecture Behavioral of info_frame_packet is
begin
    
    process (clk) is
        constant ftype      : std_logic_vector(7 downto 0)      := 8x"84";
        constant fver       : std_logic_vector(7 downto 0)      := 8x"01";
        constant flen       : std_logic_vector(7 downto 0)      := 8x"0A";
        constant CC         : std_logic_vector(2 downto 0)      := "001";
        constant CT         : std_logic_vector(3 downto 0)      := "0000";
        constant SS         : std_logic_vector(1 downto 0)      := "00";
        constant SF         : std_logic_vector(2 downto 0)      := "000";
        constant CA         : std_logic_vector(7 downto 0)      := "00000000";
        constant LSV        : std_logic_vector(3 downto 0)      := "0000";
        constant DM_INH     : std_logic                         := '0';
        
        variable checksum   : std_logic_vector(7 downto 0);
        
        variable subs_v     : subs_t                            := (others=>(others=>'0'));
        variable header_v   : std_logic_vector(31 downto 0);
    begin
        if rising_edge(clk) then
            
            header_v(23 downto 0)  := flen & fver & ftype;
            header_v(31 downto 24)  := BCH_ECC(header_v(23 downto 0));
            
            subs_v(0)(55 downto 0)  := 8x"0" & DM_INH & LSV & "000" & CA & 11x"0" & SF & SS & CT & '0' & CC & "00000000";
            
            for i in 0 to 2 loop
                checksum := std_logic_vector(unsigned(checksum) + unsigned(header_v((23-8*i) downto (16-8*i))));
            end loop;
            for i in 1 to 5 loop
                checksum := std_logic_vector(unsigned(checksum) + unsigned(subs_v(0)((55-8*i) downto (48-8*i))));
            end loop;
            checksum := std_logic_vector(unsigned(not checksum) + 1);
            
            subs_v(0)(7 downto 0) := checksum;
            
            for i in 0 to 3 loop                
                subs_v(i)(63 downto 56) := BCH_ECC(subs_v(i)(55 downto 0));  
            end loop;
            
            subs   <= subs_v;
            header <= header_v;
        end if;
    end process;

end Behavioral;
----------------------------------------------------------------------------------