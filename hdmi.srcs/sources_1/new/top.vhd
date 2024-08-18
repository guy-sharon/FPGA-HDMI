library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.global_params.ALL;
use IEEE.numeric_std.all;

----------------------------------------------------------------------------------

entity top is
  Port (
            clk_12Mhz   : in  std_logic;
            
            pio1        : out std_logic;
            pio2        : out std_logic;
            pio3        : out std_logic;
            pio4        : out std_logic;
            pio5        : out std_logic;
            pio6        : out std_logic;
            pio7        : out std_logic;
            pio8        : out std_logic;
            
            uart_tx     : out std_logic;
            leds        : out std_logic_vector(3 downto 0)
       );
end top;

----------------------------------------------------------------------------------

architecture Behavioral of top is
    signal clk_252Mhz   : std_logic;
    signal clk_uart     : std_logic;
begin
    
    --------------------------MMCM 100 MHZ--------------------------
    MMCM : entity work.clk_wiz_0
        port map (clk_out1 => clk_252Mhz, clk_in1 => clk_12Mhz);
    --------------------------MMCM 100 MHZ--------------------------
    
    uart_clk : entity work.clk_div
        generic map(freq_in  => 12e6, freq_out => UART_BAUDRATE)
        port map(clk_in  => clk_12Mhz, clk_out => clk_uart);
        
    uart : entity work.uart
        port map(clk_in => clk_uart,
                 msg    => "Hello World!\n",
                 tx     => uart_tx);
        
    hdmi_inst : entity work.hdmi2
    port map(
                bit_clk     => clk_252Mhz,
                
                tmds_clk(0) => pio1, -- pin 10
                tmds_clk(1) => pio2, -- pin 12
                
                data_b(0)   => pio3, -- pin 7
                data_b(1)   => pio4, -- pin 9
                
                data_g(0)   => pio5, -- pin 4
                data_g(1)   => pio6, -- pin 6
                
                data_r(0)   => pio7, -- pin 1
                data_r(1)   => pio8,  -- pin 3
                
                leds        => leds
            );    
    
end Behavioral;

----------------------------------------------------------------------------------