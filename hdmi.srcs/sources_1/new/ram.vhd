library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.global_params.ALL;
use std.textio.all;

entity ram is
  generic( DATA_WIDTH : integer;
           NUM_WORDS  : integer  );
           
  Port (    clk         : IN std_logic;
            data        : IN std_logic_vector ((DATA_WIDTH-1) downto 0);
            rdaddress   : IN integer range 0 to NUM_WORDS-1;
            wraddress   : IN integer range 0 to NUM_WORDS-1;
            we          : IN std_logic;
            re          : IN std_logic;
            
            q           : OUT std_logic_vector ((DATA_WIDTH-1) downto 0) );
end ram;

architecture Behavioral of ram is
    
    TYPE mem_type IS ARRAY(0 TO NUM_WORDS-1) OF std_logic_vector((DATA_WIDTH-1) DOWNTO 0);
    
    impure function init_mem(mif_file_name : in string) return mem_type is
        file mif_file : text open read_mode is mif_file_name;
        variable mif_line : line;
        variable temp_bv : bit_vector(DATA_WIDTH-1 downto 0);
        variable temp_mem : mem_type := (others=>(others=>'0'));
    begin
        for i in mem_type'range loop
            if endfile(mif_file) then
                return temp_mem;
            end if;
            readline(mif_file, mif_line);
            read(mif_line, temp_bv);
            temp_mem(i) := to_stdlogicvector(temp_bv);
        end loop;
        return temp_mem;
    end function;
    
    signal ram_block: mem_type := init_mem("D:\FPGA\Xilinx\Projects\hdmi\ds3.txt");
begin
    
    process (clk) is
    begin
        if rising_edge(clk) then
            
            if (we = '1') then
                ram_block(wraddress) <= data;
            end if;
            if (re = '1') then
              q <= ram_block(rdaddress);
          end if;
          
        end if;
    end process;
    

end Behavioral;
