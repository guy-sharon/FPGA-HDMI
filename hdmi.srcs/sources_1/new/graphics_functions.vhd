library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.global_params.ALL;
use std.textio.all;


package graphics_functions_pckg is
    
    ------------------------------- TYPES -------------------------------
    type bitmat is array(natural range<>, natural range<>) of std_logic;
    
    type model is record
        color       : pixel;
        top         : integer;-- range 0 to timings.V_VIDEO-1;
        left        : integer;-- range 0 to timings.H_VIDEO-1;
        scale       : integer;-- range 0 to 127;
        enable      : std_logic;
        bitmat      : bitmat;
    end record;
    
    type models_t is array(natural range<>) of model;
    
    type kernel_t is array(4 downto 0, 4 downto 0) of integer range -255 to 255;
    ------------------------------- TYPES -------------------------------

    
    
    ------------------------------- MODELS -------------------------------
    constant text_model  : model := (
    color => (255,255,255), top => 40, 
    left => 40, scale => 4, enable => '1',
     bitmat => (84x"000000000000000000000",84x"400102000000000080108",84x"400102000000000080108",84x"7871020380111C5880F08",84x"448902044011226481108",84x"44F902044011224081108",84x"448102044015224081100",84x"4478E1C3800A1C4070F08",84x"000000000000000000000"));
    
    constant ascii_models : models_t := ((
        color => (255,255,255), top => 20, left => 20, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"00",7x"00",7x"00",7x"00",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 27, scale => 1, enable => '1', bitmat => (7x"00",7x"08",7x"08",7x"08",7x"08",7x"08",7x"00",7x"08",7x"00")),(
        color => (255,255,255), top => 20, left => 34, scale => 1, enable => '1', bitmat => (7x"00",7x"14",7x"14",7x"00",7x"00",7x"00",7x"00",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 41, scale => 1, enable => '1', bitmat => (7x"00",7x"14",7x"14",7x"3E",7x"14",7x"3E",7x"14",7x"14",7x"00")),(
        color => (255,255,255), top => 20, left => 48, scale => 1, enable => '1', bitmat => (7x"00",7x"08",7x"1E",7x"28",7x"1C",7x"0A",7x"3C",7x"08",7x"00")),(
        color => (255,255,255), top => 20, left => 55, scale => 1, enable => '1', bitmat => (7x"00",7x"30",7x"32",7x"04",7x"08",7x"10",7x"26",7x"06",7x"00")),(
        color => (255,255,255), top => 20, left => 62, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"24",7x"28",7x"10",7x"2A",7x"24",7x"1A",7x"00")),(
        color => (255,255,255), top => 20, left => 69, scale => 1, enable => '1', bitmat => (7x"00",7x"08",7x"08",7x"00",7x"00",7x"00",7x"00",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 76, scale => 1, enable => '1', bitmat => (7x"00",7x"04",7x"08",7x"10",7x"10",7x"10",7x"08",7x"04",7x"00")),(
        color => (255,255,255), top => 20, left => 83, scale => 1, enable => '1', bitmat => (7x"00",7x"10",7x"08",7x"04",7x"04",7x"04",7x"08",7x"10",7x"00")),(
        color => (255,255,255), top => 20, left => 90, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"2A",7x"1C",7x"3E",7x"1C",7x"2A",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 97, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"08",7x"08",7x"3E",7x"08",7x"08",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 104, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"00",7x"00",7x"08",7x"08",7x"10",7x"00")),(
        color => (255,255,255), top => 20, left => 111, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"00",7x"3E",7x"00",7x"00",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 118, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"00",7x"00",7x"00",7x"00",7x"08",7x"00")),(
        color => (255,255,255), top => 20, left => 125, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"02",7x"04",7x"08",7x"10",7x"20",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 132, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"26",7x"2A",7x"32",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 139, scale => 1, enable => '1', bitmat => (7x"00",7x"08",7x"18",7x"28",7x"08",7x"08",7x"08",7x"3E",7x"00")),(
        color => (255,255,255), top => 20, left => 146, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"02",7x"04",7x"08",7x"10",7x"3E",7x"00")),(
        color => (255,255,255), top => 20, left => 153, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"02",7x"0C",7x"02",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 160, scale => 1, enable => '1', bitmat => (7x"00",7x"0C",7x"14",7x"24",7x"3E",7x"04",7x"04",7x"04",7x"00")),(
        color => (255,255,255), top => 20, left => 167, scale => 1, enable => '1', bitmat => (7x"00",7x"3E",7x"20",7x"20",7x"3C",7x"02",7x"02",7x"3C",7x"00")),(
        color => (255,255,255), top => 20, left => 174, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"20",7x"20",7x"3C",7x"22",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 181, scale => 1, enable => '1', bitmat => (7x"00",7x"3E",7x"02",7x"04",7x"08",7x"10",7x"10",7x"10",7x"00")),(
        color => (255,255,255), top => 20, left => 188, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"22",7x"1C",7x"22",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 195, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"22",7x"1E",7x"02",7x"02",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 202, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"08",7x"00",7x"00",7x"00",7x"08",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 209, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"08",7x"00",7x"00",7x"08",7x"08",7x"10",7x"00")),(
        color => (255,255,255), top => 20, left => 216, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"04",7x"08",7x"10",7x"08",7x"04",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 223, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"3E",7x"00",7x"3E",7x"00",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 230, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"10",7x"08",7x"04",7x"08",7x"10",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 237, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"22",7x"04",7x"08",7x"00",7x"08",7x"00")),(
        color => (255,255,255), top => 20, left => 244, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"2E",7x"2A",7x"2E",7x"20",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 251, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"22",7x"3E",7x"22",7x"22",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 258, scale => 1, enable => '1', bitmat => (7x"00",7x"3C",7x"22",7x"22",7x"3C",7x"22",7x"22",7x"3C",7x"00")),(
        color => (255,255,255), top => 20, left => 265, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"20",7x"20",7x"20",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 272, scale => 1, enable => '1', bitmat => (7x"00",7x"3C",7x"22",7x"22",7x"22",7x"22",7x"22",7x"3C",7x"00")),(
        color => (255,255,255), top => 20, left => 279, scale => 1, enable => '1', bitmat => (7x"00",7x"3E",7x"20",7x"20",7x"3C",7x"20",7x"20",7x"3E",7x"00")),(
        color => (255,255,255), top => 20, left => 286, scale => 1, enable => '1', bitmat => (7x"00",7x"3E",7x"20",7x"20",7x"3C",7x"20",7x"20",7x"20",7x"00")),(
        color => (255,255,255), top => 20, left => 293, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"20",7x"20",7x"26",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 300, scale => 1, enable => '1', bitmat => (7x"00",7x"22",7x"22",7x"22",7x"3E",7x"22",7x"22",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 307, scale => 1, enable => '1', bitmat => (7x"00",7x"3E",7x"08",7x"08",7x"08",7x"08",7x"08",7x"3E",7x"00")),(
        color => (255,255,255), top => 20, left => 314, scale => 1, enable => '1', bitmat => (7x"00",7x"3E",7x"02",7x"02",7x"02",7x"02",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 321, scale => 1, enable => '1', bitmat => (7x"00",7x"22",7x"22",7x"24",7x"38",7x"24",7x"22",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 328, scale => 1, enable => '1', bitmat => (7x"00",7x"20",7x"20",7x"20",7x"20",7x"20",7x"20",7x"3E",7x"00")),(
        color => (255,255,255), top => 20, left => 335, scale => 1, enable => '1', bitmat => (7x"00",7x"22",7x"36",7x"2A",7x"22",7x"22",7x"22",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 342, scale => 1, enable => '1', bitmat => (7x"00",7x"22",7x"22",7x"32",7x"2A",7x"26",7x"22",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 349, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"22",7x"22",7x"22",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 356, scale => 1, enable => '1', bitmat => (7x"00",7x"3C",7x"22",7x"22",7x"3C",7x"20",7x"20",7x"20",7x"00")),(
        color => (255,255,255), top => 20, left => 363, scale => 1, enable => '1', bitmat => (7x"00",7x"1C",7x"22",7x"22",7x"22",7x"2A",7x"24",7x"1A",7x"00")),(
        color => (255,255,255), top => 20, left => 370, scale => 1, enable => '1', bitmat => (7x"00",7x"3C",7x"22",7x"22",7x"3C",7x"22",7x"22",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 377, scale => 1, enable => '1', bitmat => (7x"00",7x"1E",7x"20",7x"20",7x"1C",7x"02",7x"02",7x"3C",7x"00")),(
        color => (255,255,255), top => 20, left => 384, scale => 1, enable => '1', bitmat => (7x"00",7x"3E",7x"08",7x"08",7x"08",7x"08",7x"08",7x"08",7x"00")),(
        color => (255,255,255), top => 20, left => 391, scale => 1, enable => '1', bitmat => (7x"00",7x"22",7x"22",7x"22",7x"22",7x"22",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 398, scale => 1, enable => '1', bitmat => (7x"00",7x"22",7x"22",7x"22",7x"22",7x"22",7x"14",7x"08",7x"00")),(
        color => (255,255,255), top => 20, left => 405, scale => 1, enable => '1', bitmat => (7x"00",7x"22",7x"22",7x"22",7x"22",7x"2A",7x"36",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 412, scale => 1, enable => '1', bitmat => (7x"00",7x"22",7x"22",7x"14",7x"08",7x"14",7x"22",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 419, scale => 1, enable => '1', bitmat => (7x"00",7x"22",7x"22",7x"14",7x"08",7x"08",7x"08",7x"08",7x"00")),(
        color => (255,255,255), top => 20, left => 426, scale => 1, enable => '1', bitmat => (7x"00",7x"3E",7x"02",7x"04",7x"08",7x"10",7x"20",7x"3E",7x"00")),(
        color => (255,255,255), top => 20, left => 433, scale => 1, enable => '1', bitmat => (7x"00",7x"0C",7x"08",7x"08",7x"08",7x"08",7x"08",7x"0C",7x"00")),(
        color => (255,255,255), top => 20, left => 440, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"20",7x"10",7x"08",7x"04",7x"02",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 447, scale => 1, enable => '1', bitmat => (7x"00",7x"18",7x"08",7x"08",7x"08",7x"08",7x"08",7x"18",7x"00")),(
        color => (255,255,255), top => 20, left => 454, scale => 1, enable => '1', bitmat => (7x"00",7x"08",7x"14",7x"00",7x"00",7x"00",7x"00",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 461, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"00",7x"00",7x"00",7x"00",7x"3E",7x"00")),(
        color => (255,255,255), top => 20, left => 468, scale => 1, enable => '1', bitmat => (7x"00",7x"10",7x"08",7x"00",7x"00",7x"00",7x"00",7x"00",7x"00")),(
        color => (255,255,255), top => 20, left => 475, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"1C",7x"02",7x"1E",7x"22",7x"1E",7x"00")),(
        color => (255,255,255), top => 20, left => 482, scale => 1, enable => '1', bitmat => (7x"00",7x"20",7x"20",7x"3C",7x"22",7x"22",7x"22",7x"3C",7x"00")),(
        color => (255,255,255), top => 20, left => 489, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"1C",7x"22",7x"20",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 496, scale => 1, enable => '1', bitmat => (7x"00",7x"02",7x"02",7x"1E",7x"22",7x"22",7x"22",7x"1E",7x"00")),(
        color => (255,255,255), top => 20, left => 503, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"1C",7x"22",7x"3E",7x"20",7x"1E",7x"00")),(
        color => (255,255,255), top => 20, left => 510, scale => 1, enable => '1', bitmat => (7x"00",7x"0C",7x"10",7x"3E",7x"10",7x"10",7x"10",7x"10",7x"00")),(
        color => (255,255,255), top => 20, left => 517, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"1E",7x"22",7x"1E",7x"02",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 524, scale => 1, enable => '1', bitmat => (7x"00",7x"20",7x"20",7x"3C",7x"22",7x"22",7x"22",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 531, scale => 1, enable => '1', bitmat => (7x"00",7x"08",7x"00",7x"38",7x"08",7x"08",7x"08",7x"3E",7x"00")),(
        color => (255,255,255), top => 20, left => 538, scale => 1, enable => '1', bitmat => (7x"00",7x"02",7x"00",7x"0E",7x"02",7x"02",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 545, scale => 1, enable => '1', bitmat => (7x"00",7x"20",7x"20",7x"24",7x"38",7x"24",7x"22",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 552, scale => 1, enable => '1', bitmat => (7x"00",7x"20",7x"20",7x"20",7x"20",7x"20",7x"20",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 559, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"34",7x"2A",7x"2A",7x"22",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 566, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"3C",7x"22",7x"22",7x"22",7x"22",7x"00")),(
        color => (255,255,255), top => 20, left => 573, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"1C",7x"22",7x"22",7x"22",7x"1C",7x"00")),(
        color => (255,255,255), top => 20, left => 580, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"3C",7x"22",7x"3C",7x"20",7x"20",7x"00")),(
        color => (255,255,255), top => 20, left => 587, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"1E",7x"22",7x"1E",7x"02",7x"02",7x"00")),(
        color => (255,255,255), top => 20, left => 594, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"2C",7x"32",7x"20",7x"20",7x"20",7x"00")),(
        color => (255,255,255), top => 20, left => 601, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"1E",7x"20",7x"1C",7x"02",7x"3C",7x"00")),(
        color => (255,255,255), top => 20, left => 608, scale => 1, enable => '1', bitmat => (7x"00",7x"10",7x"10",7x"3C",7x"10",7x"10",7x"12",7x"0C",7x"00")),(
        color => (255,255,255), top => 20, left => 615, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"22",7x"22",7x"22",7x"22",7x"1E",7x"00")),(
        color => (255,255,255), top => 20, left => 622, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"22",7x"22",7x"22",7x"14",7x"08",7x"00")),(
        color => (255,255,255), top => 27, left => 20, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"22",7x"22",7x"22",7x"2A",7x"14",7x"00")),(
        color => (255,255,255), top => 27, left => 27, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"22",7x"14",7x"08",7x"14",7x"22",7x"00")),(
        color => (255,255,255), top => 27, left => 34, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"22",7x"22",7x"1E",7x"02",7x"1C",7x"00")),(
        color => (255,255,255), top => 27, left => 41, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"3E",7x"04",7x"08",7x"10",7x"3E",7x"00")),(
        color => (255,255,255), top => 27, left => 48, scale => 1, enable => '1', bitmat => (7x"00",7x"04",7x"08",7x"08",7x"10",7x"08",7x"08",7x"04",7x"00")),(
        color => (255,255,255), top => 27, left => 55, scale => 1, enable => '1', bitmat => (7x"00",7x"08",7x"08",7x"08",7x"08",7x"08",7x"08",7x"08",7x"00")),(
        color => (255,255,255), top => 27, left => 62, scale => 1, enable => '1', bitmat => (7x"00",7x"10",7x"08",7x"08",7x"04",7x"08",7x"08",7x"10",7x"00")),(
        color => (255,255,255), top => 27, left => 69, scale => 1, enable => '1', bitmat => (7x"00",7x"00",7x"00",7x"12",7x"2C",7x"00",7x"00",7x"00",7x"00"))
    );
    
        procedure get_text_models(constant str       : in string(1 to 12);
                                  constant top       : in integer;
                                  constant left      : in integer;
                                  constant scale     : in integer;
                                  constant color     : in pixel;
                                  constant first     : in integer;
                                  variable models    : out models_t );
        
        
end graphics_functions_pckg;

package body graphics_functions_pckg is
    
    procedure get_text_models(constant str       : in string(1 to 12);
                              constant top       : in integer;
                              constant left      : in integer;
                              constant scale     : in integer;
                              constant color     : in pixel;
                              constant first     : in integer;
                              variable models    : out models_t ) is
    variable idx : integer;
    begin
        for i in 0 to str'LENGTH(1)-1 loop
            idx := character'pos(str(1+i))-32;
            models(first+i)         := ascii_models(idx);
            models(first+i).scale   := scale;
            models(first+i).color   := color;
            models(first+i).top     := top;
            models(first+i).left    := left + i*models(first+i).bitmat'LENGTH(2)*scale;
            
        end loop;
    end procedure get_text_models;
    
    
end graphics_functions_pckg;