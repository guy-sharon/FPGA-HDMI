library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.global_params.ALL;
use IEEE.numeric_std.all;

----------------------------------------------------------------------------------

entity audio_sample_packet is
  Port (
            clk     : in std_logic;
            
            subs    : out subs_t;
            header  : out std_logic_vector(31 downto 0)
      
        );
end audio_sample_packet;

----------------------------------------------------------------------------------

architecture Behavioral of audio_sample_packet is
    
begin
    
    process (clk) is
        constant sample_present     : std_logic_vector(3 downto 0)  := "1111";
        constant sample_flat        : std_logic_vector(3 downto 0)  := "0000";
        constant is_start_of_block  : std_logic_vector(3 downto 0)  := "0000";
        
        constant yL                 : audio_sample                  := (20,40,60,70);         
        constant yR                 : audio_sample                  := (20,40,60,70); 
        
        constant VL,VR              : std_logic                     := '1';
        constant UL,UR              : std_logic                     := '0';
        constant CL,CR              : std_logic                     := '0';
        variable PL,PR              : std_logic                     := '0';
        variable L , R              : std_logic_vector(23 downto 0) := (others=>'0');
        
        variable subs_v             : subs_t                        := (others=>(others=>'0'));
        variable header_v           : std_logic_vector(31 downto 0) := (others=>'0');
    begin
        if rising_edge(clk) then
            
            header_v(23 downto 0)  := is_start_of_block & sample_flat & "0000" & sample_present & 8x"02";
            header_v(31 downto 24)  := BCH_ECC(header_v(23 downto 0));
            
            for i in 0 to 3 loop
                L := std_logic_vector(to_unsigned(yL(i),24));
                R := std_logic_vector(to_unsigned(yR(i),24));
                
                PL := xor (L & VL & UL & CL);
                PR := xor (R & VR & UR & CR);
                
                subs_v(i)(55 downto 0)  := PR & CR & UR & VR & PL & CL & UL & VL & R & L;
                subs_v(i)(63 downto 56) := BCH_ECC(subs_v(i)(55 downto 0));  
            end loop;
            
            subs   <= subs_v;
            header <= header_v;
        end if;
    end process;
    

end Behavioral;
----------------------------------------------------------------------------------