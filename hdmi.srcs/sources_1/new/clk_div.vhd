library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
------------------------------------------------------------------------
entity clk_div is
    generic (   freq_in     : integer;
                freq_out    : integer );
    Port    (   clk_in      : in std_logic;
                clk_out     : out STD_LOGIC := '0');       
end clk_div;
------------------------------------------------------------------------
architecture Behavioral of clk_div is
    constant N : integer := freq_in / (2*freq_out);
begin
    
    process (clk_in) is
        variable cnt : integer := N-1; -- N-1 and not 0 becuase of clock sync
    begin
        if ( rising_edge(clk_in) ) then
            cnt := cnt + 1;
            if cnt = N then
                clk_out <= not clk_out;
                cnt := 0;
            end if;
        end if;
    end process ;
    
end Behavioral;
------------------------------------------------------------------------