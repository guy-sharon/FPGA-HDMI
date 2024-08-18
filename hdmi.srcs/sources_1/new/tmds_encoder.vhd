library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------

entity tmds_encoder is
    Port ( 
            clk             : in std_logic;
            d_in            : in STD_LOGIC_VECTOR (7 downto 0);
            video_active    : in std_logic;
            CTL             : in std_logic_vector(1 downto 0);
            
            d_out           : out STD_LOGIC_VECTOR (9 downto 0)
         );
end tmds_encoder;

----------------------------------------------------------------------------------

architecture Behavioral of tmds_encoder is

    procedure cnt_ones( variable val    : in std_logic_vector(7 downto 0);
                        variable cnt    : out integer range 0 to 8) is
    begin
        cnt := 0;
        for i in 0 to 7 loop
            if val(i) = '1' then
                cnt := cnt + 1;
            end if;
        end loop;
    end procedure cnt_ones;
    
begin
    
    process (clk) is
        variable d_in_ones  : integer range 0 to 8 := 0;
        variable q_m_ones   : integer range 0 to 8 := 0;
        variable diff_d_out : integer range 0 to 8;
        variable q_m        : std_logic_vector(9 downto 0);
        variable tmp        : STD_LOGIC_VECTOR (7 downto 0);
        variable disparity  : integer := 0;
    begin
        if rising_edge(clk) then
            
            tmp := d_in;
            cnt_ones(val => tmp, cnt => d_in_ones);
            q_m(0) := d_in(0);
            if d_in_ones > 4 OR (d_in_ones = 4 AND d_in(0) = '0') then
                for i in 1 to 7 loop
                    q_m(i) := q_m(i-1) XNOR d_in(i);
                end loop;
                q_m(8) := '0';
            else
                for i in 1 to 7 loop
                    q_m(i) := q_m(i-1) XOR d_in(i);
                end loop;
                q_m(8) := '1';
            end if;
            
            cnt_ones(val => q_m(7 downto 0), cnt => q_m_ones);
            diff_d_out := q_m_ones - 4;
            
            if video_active = '1' then
                if disparity = 0 OR q_m_ones = 4 then
                    if q_m(8) = '0' then
                        d_out(9) <= '1';
                        d_out(8) <= '0';
                        d_out(7 downto 0) <= not q_m(7 downto 0);
                        disparity := disparity - diff_d_out;
                    else
                        d_out(9) <= '0';
                        d_out(8) <= '1';
                        d_out(7 downto 0) <= q_m(7 downto 0);
                        disparity := disparity + diff_d_out;
                    end if;
                else
                    if (disparity > 0 AND q_m_ones > 4) OR (disparity < 0 AND q_m_ones < 4) then
                        d_out(9) <= '1';
                        d_out(7 downto 0) <= not q_m(7 downto 0);
                        if q_m(8) = '0' then
                            d_out(8) <= '0';
                            disparity := disparity - diff_d_out;
                        else
                            d_out(8) <= '1';
                            disparity := disparity - diff_d_out + 1;
                        end if;
                    else
                        d_out(9) <= '0';
                        d_out(7 downto 0) <= q_m(7 downto 0);
                        if q_m(8) = '0' then
                            d_out(8) <= '0';
                            disparity := disparity + diff_d_out - 1;
                        else
                            d_out(8) <= '1';
                            disparity := disparity + diff_d_out;
                        end if;
                    end if;
                end if;
            else
            
                case CTL is
                    when "00"   => d_out <= "1101010100";
                    when "01"   => d_out <= "0010101011";
                    when "10"   => d_out <= "0101010100";
                    when others => d_out <= "1010101011";
                end case;
                
                disparity := 0;
            end if;
            
        end if;
    end process;
    

end Behavioral;
----------------------------------------------------------------------------------
