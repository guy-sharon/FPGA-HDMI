library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.global_params.ALL;
use IEEE.numeric_std.all;

----------------------------------------------------------------------------------

entity clock_regeneration_packet is
  Port (
            clk     : in std_logic;
            
            subs    : out subs_t;
            header  : out std_logic_vector(31 downto 0)
      
        );
end clock_regeneration_packet;

----------------------------------------------------------------------------------

architecture Behavioral of clock_regeneration_packet is

begin

    process (clk) is
        constant CTS_VALUE  : integer                       := 28000;
        constant N_VALUE    : integer                       := 6272;
        constant CTS        : std_logic_vector(19 downto 0) := std_logic_vector(to_unsigned(CTS_VALUE,20));
        constant N          : std_logic_vector(19 downto 0) := std_logic_vector(to_unsigned(N_VALUE,20));
        
        variable subs_v     : subs_t                        := (others=>(others=>'0'));
        variable header_v   : std_logic_vector(31 downto 0) := (others=>'0');
    begin
        if rising_edge(clk) then
            
            header_v(23 downto 0)  := 24x"1";
            header_v(31 downto 24) := BCH_ECC(header_v(23 downto 0));
            
            for i in 0 to 3 loop   
                subs_v(i)(55 downto 0)  := N(7 downto 0) & N(15 downto 8) & "0000" & N(19 downto 16) & CTS(7 downto 0) & CTS(15 downto 8) & "0000" & CTS(19 downto 16) & 8x"0";             
                subs_v(i)(63 downto 56) := BCH_ECC(subs_v(i)(55 downto 0));  
            end loop;
            
            subs   <= subs_v;
            header <= header_v;
        end if;
    end process;

end Behavioral;
----------------------------------------------------------------------------------