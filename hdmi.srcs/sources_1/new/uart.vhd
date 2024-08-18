library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.global_params.ALL;
use IEEE.numeric_std.all;

----------------------------------------------------------------------------------

entity uart is
  Port ( 
            clk_in      : in std_logic;
            msg         : in message;
            
            tx          : out std_logic
        );
end uart;

----------------------------------------------------------------------------------

architecture Behavioral of uart is
    signal val_reg      : std_logic_vector(7 downto 0);
    
    signal msg_reg      : message(0 to msg'LENGTH-1);
    signal msg_idx      : integer range 0 to msg'LENGTH         := 0;
    
    signal sync_cnt     : integer range 0 to UART_BAUDRATE-1    := 0;
    signal sync         : std_logic                             := '1';
    signal sync_pending : std_logic                             := '0';
begin
    
    process (clk_in) is
        variable bit_cnt    : integer := 0;
    begin
        if rising_edge(clk_in) then
            
            if sync = '1' then
                tx <= '1';
            else
                if bit_cnt = 0 then     -- start bit
                    tx      <= '0';
                    if msg_idx = 0 then
                        msg_reg <= msg;
                        val_reg <= std_logic_vector(to_unsigned(character'pos(msg(msg_idx)), 8));
                    elsif msg_idx = msg'LENGTH then
                        val_reg <= 8x"A"; -- new line
                    else
                        val_reg <= std_logic_vector(to_unsigned(character'pos(msg_reg(msg_idx)), 8));
                    end if;
                elsif bit_cnt = 9 then  -- stop bit
                    tx      <= '1';
                else
                    tx      <= val_reg(bit_cnt-1);
                end if;
            end if;
            
            if bit_cnt = 9 then
                bit_cnt := 0;
                
                if sync = '0' then
                    if msg_idx = msg'LENGTH then
                        msg_idx <= 0;
                    else
                        msg_idx <= msg_idx + 1;
                    end if;
                end if;
            
                if (sync_pending = '1') AND (msg_idx = msg'LENGTH) then
                    sync            <= '1';
                    sync_pending    <= '0';
                else
                    sync            <= '0';
                end if;
            else
                bit_cnt := bit_cnt + 1;
            end if;
            
            if sync_cnt = UART_BAUDRATE-1 then
                sync_cnt        <= 0;
                sync_pending    <= '1';
            else
                sync_cnt        <= sync_cnt + 1;
            end if;
        end if;
    end process;
    
    
end Behavioral;
----------------------------------------------------------------------------------
