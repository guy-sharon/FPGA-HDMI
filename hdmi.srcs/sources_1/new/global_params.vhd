library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

package global_params is

    ---------------------------------------------------------
    type video_timing_type is record
        H_VIDEO : integer;
        H_FP    : integer;
        H_SYNC  : integer;
        H_BP    : integer;
        H_TOTAL : integer;

        V_VIDEO : integer;
        V_FP    : integer;
        V_SYNC  : integer;
        V_BP    : integer;
        V_TOTAL : integer;

        H_POL   : std_logic;
        V_POL   : std_logic;
        ACTIVE  : std_logic;
    end record;

    constant VGA_TIMING : video_timing_type := (
        H_VIDEO => 640,
        H_FP    => 16,
        H_SYNC  => 96,
        H_BP    => 48,
        H_TOTAL => 800,
        V_VIDEO => 480,
        V_FP    => 10,
        V_SYNC  => 2,
        V_BP    => 33,
        V_TOTAL => 525,
        H_POL   => '0',
        V_POL   => '0',
        ACTIVE  => '1'
    );
    ---------------------------------------------------------

    constant timings : video_timing_type := VGA_TIMING;
    type operation_mode is (CONTROL,
                            AUDIO_PREAMBLE, AUDIO_GAURD_HEADER, AUDIO_ACTIVE, AUDIO_GAURD_TRAILER,
                            VIDEO_PREAMBLE, VIDEO_GAURD_HEADER, VIDEO_ACTIVE);
    type subs_t is array (0 to 3) of std_logic_vector(63 downto 0);
    type audio_sample_t is array (0 to 3) of integer;

    constant AUDIO_FS       : integer := 44100;
    constant AUDIO_LENGTH   : integer := 6272 / (128);
    
    constant audio_base_freq : integer := 80;
    constant HARMONY_VOLUME  : integer := 1;
    constant NUM_HARMONIES   : integer := 36;
    type harmony_t is record
        freq        : integer;
        th          : integer;
        phase       : integer;
        val         : integer;
    end record;
    type harmonies_t is array(0 to NUM_HARMONIES-1) of harmony_t;
    constant NOTE_RATE : integer := 2; -- hz
    type notes_t is array (natural range<>) of std_logic_vector(NUM_HARMONIES-1 downto 0);
    
    constant notesL : notes_t := (36x"4000",36x"80000",36x"200000",36x"800080",36x"800080",36x"800080",36x"200080",36x"800080",36x"200040",36x"800080",36x"1000200",36x"0",36x"4000800",36x"4000800",36x"10000800",36x"800080",36x"0",36x"800040",36x"8000020",36x"10000010",36x"0",36x"40000010",36x"0",36x"10000008",36x"0",36x"800008",36x"200000",36x"80004",36x"40000",36x"80004",36x"800000",36x"10000002",36x"10000002",36x"10000",36x"40000",36x"80001",36x"80001",36x"80001",36x"80001",36x"4000001",36x"1000001",36x"1000001",36x"800000",36x"80002",36x"80002",36x"80002",36x"80002",36x"10000002",36x"800002",36x"800002",36x"200000",36x"80004",36x"80004",36x"80004",36x"80004",36x"80004",36x"80004",36x"40004",36x"10004",36x"40004",36x"10004",36x"40004",36x"80004",36x"200001");
    constant notesR : notes_t := (36x"4000",36x"80000",36x"200000",36x"800080",36x"800080",36x"800080",36x"200080",36x"800080",36x"200040",36x"800080",36x"1000200",36x"0",36x"4000800",36x"4000800",36x"10000800",36x"800080",36x"0",36x"800040",36x"8000020",36x"10000010",36x"0",36x"40000010",36x"0",36x"10000008",36x"0",36x"800008",36x"200000",36x"80004",36x"40000",36x"80004",36x"800000",36x"10000002",36x"10000002",36x"10000",36x"40000",36x"80001",36x"80001",36x"80001",36x"80001",36x"4000001",36x"1000001",36x"1000001",36x"800000",36x"80002",36x"80002",36x"80002",36x"80002",36x"10000002",36x"800002",36x"800002",36x"200000",36x"80004",36x"80004",36x"80004",36x"80004",36x"80004",36x"80004",36x"40004",36x"10004",36x"40004",36x"10004",36x"40004",36x"80004",36x"200001");
    
    constant BIT_FREQ       : integer := 252000000;
    constant ratio          : integer := BIT_FREQ / AUDIO_FS;
    constant PREAMBLE_LENGTH     : integer := 8;
    constant GUARD_LENGTH        : integer := 2;
    constant AUDIO_PACKET_LENGTH : integer := 32;

    constant CONTROL_CTL10 : std_logic_vector(1 downto 0) := "00";
    constant CONTROL_CTL32 : std_logic_vector(1 downto 0) := "00";

    constant AUDIO_PREAMBLE_CTL10 : std_logic_vector(1 downto 0) := "01";
    constant AUDIO_PREAMBLE_CTL32 : std_logic_vector(1 downto 0) := "01";
    constant AUDIO_GUARD_G        : std_logic_vector(9 downto 0) := "0100110011";
    constant AUDIO_GUARD_R        : std_logic_vector(9 downto 0) := "0100110011";

    constant VIDEO_PREAMBLE_CTL10 : std_logic_vector(1 downto 0) := "01";
    constant VIDEO_PREAMBLE_CTL32 : std_logic_vector(1 downto 0) := "00";
    constant VIDEO_GUARD_B        : std_logic_vector(9 downto 0) := "1011001100";
    constant VIDEO_GUARD_G        : std_logic_vector(9 downto 0) := "0100110011";
    constant VIDEO_GUARD_R        : std_logic_vector(9 downto 0) := "1011001100";

    constant UART_BAUDRATE        : integer := 115200;
    type message is array (natural range <>) of character;
    
    function TERC4(D3 : std_logic; D2 : std_logic; D1 : std_logic; D0 : std_logic) return std_logic_vector;
    function BCH_ECC24(q_in : std_logic_vector(23 downto 0)) return std_logic_vector;
    function BCH_ECC56(q_in : std_logic_vector(55 downto 0)) return std_logic_vector;
    function init_harmonies return harmonies_t;
    procedure step_harmonies(signal harmonies : inout harmonies_t);
    procedure null_packet(signal subs : out subs_t; signal header : out std_logic_vector(31 downto 0));
    procedure audio_info_frame_packet(signal subs : out subs_t; signal header : out std_logic_vector(31 downto 0));
    procedure avi_info_frame_packet(signal subs : out subs_t; signal header : out std_logic_vector(31 downto 0));
    procedure clock_regeneration_packet(signal subs : out subs_t; signal header : out std_logic_vector(31 downto 0));
    procedure audio_sample_packet(signal subs : out subs_t; signal header : out std_logic_vector(31 downto 0);
                                  signal yL : in audio_sample_t; signal yR : in audio_sample_t; variable iec_block_idx : inout integer range 0 to 191;
                                  signal audio_sample_valid : in std_logic_vector(3 downto 0));
    
end package global_params;

package body global_params is

    function TERC4(D3 : std_logic; D2 : std_logic; D1 : std_logic; D0 : std_logic)
    return std_logic_vector is
        constant q_in : std_logic_vector(3 downto 0) := D3 & D2 & D1 & D0;
    begin
        case q_in is
            when "0000" => return "1010011100";
            when "0001" => return "1001100011";
            when "0010" => return "1011100100";
            when "0011" => return "1011100010";
            when "0100" => return "0101110001";
            when "0101" => return "0100011110";
            when "0110" => return "0110001110";
            when "0111" => return "0100111100";
            when "1000" => return "1011001100";
            when "1001" => return "0100111001";
            when "1010" => return "0110011100";
            when "1011" => return "1011000110";
            when "1100" => return "1010001110";
            when "1101" => return "1001110001";
            when "1110" => return "0101100011";
            when "1111" => return "1011000011";
        end case;
    end function TERC4;

    function BCH_ECC24(q_in : std_logic_vector(23 downto 0))
    return std_logic_vector is
        variable ecc     : std_logic_vector(7 downto 0) := (others => '0');
        variable xor_res : std_logic;
    begin
        for i in 0 to 23 loop
            xor_res := ecc(0) xor q_in(i);
            ecc     := '0' & ecc(7 downto 1);
            if xor_res = '1' then
                ecc := ecc xor "10000011";
            end if;
        end loop;
        return ecc;
    end function BCH_ECC24;
    
    function BCH_ECC56(q_in : std_logic_vector(55 downto 0))
    return std_logic_vector is
        variable ecc     : std_logic_vector(7 downto 0) := (others => '0');
        variable xor_res : std_logic;
    begin
        for i in 0 to 55 loop
            xor_res := ecc(0) xor q_in(i);
            ecc     := '0' & ecc(7 downto 1);
            if xor_res = '1' then
                ecc := ecc xor "10000011";
            end if;
        end loop;
        return ecc;
    end function BCH_ECC56;
    
    function init_harmonies return harmonies_t is
        variable res : harmonies_t;
        variable tmp : real;
        variable x   : real;
        variable seed1 , seed2 : positive := 1;
    begin
        for i in 0 to res'LENGTH-1 loop
            uniform(seed1, seed2, x);
            --tmp             := 2.0 ** (real(i) * 0.0833333333333334);
            tmp := 0.0;
            res(i).freq     := integer( ROUND( real(audio_base_freq) * tmp ) );
            res(i).th       := AUDIO_FS / (2 * res(i).freq);
            res(i).val      := HARMONY_VOLUME;
            res(i).phase    := 0;
        end loop;
        return res;
    end function init_harmonies;
    
    
    procedure step_harmonies(signal harmonies : inout harmonies_t) is
    begin
        for i in 0 to harmonies'LENGTH-1 loop
            if harmonies(i).phase = harmonies(i).th then
                harmonies(i).phase  <= 0;
                harmonies(i).val    <= -harmonies(i).val;
            else
                harmonies(i).phase  <= harmonies(i).phase + 1;
            end if;   
        end loop;
    end procedure step_harmonies;
    
    procedure null_packet(signal subs : out subs_t; signal header : out std_logic_vector(31 downto 0)) is
    begin
        header  <= (others=>'0');
        subs    <= (others=>(others=>'0'));
    end procedure null_packet;
    
    procedure audio_info_frame_packet(signal subs : out subs_t; signal header : out std_logic_vector(31 downto 0)) is
        constant ftype  : std_logic_vector(7 downto 0) := 8x"84";
        constant fver   : std_logic_vector(7 downto 0) := 8x"01";
        constant flen   : std_logic_vector(7 downto 0) := 8x"0A";
        constant CC     : std_logic_vector(2 downto 0) := 3x"1";
        constant CT     : std_logic_vector(3 downto 0) := 4x"0";
        constant SS     : std_logic_vector(1 downto 0) := "00";
        constant SF     : std_logic_vector(2 downto 0) := "000";
        constant CA     : std_logic_vector(7 downto 0) := "00000000";
        constant LSV    : std_logic_vector(3 downto 0) := "0000";
        constant DM_INH : std_logic                    := '0';

        variable checksum : std_logic_vector(7 downto 0) := (others => '0');

        variable subs_v   : subs_t := (others => (others => '0'));
        variable header_v : std_logic_vector(31 downto 0);
    begin
        header_v(23 downto 0)  := flen & fver & ftype;
        header_v(31 downto 24) := BCH_ECC24(header_v(23 downto 0));

        subs_v(0)(55 downto 0) := 8x"0" & DM_INH & LSV & "000" & CA & 11x"0" & SF & SS & CT & '0' & CC & "00000000";

        checksum := std_logic_vector( unsigned(checksum) + unsigned(header_v(7  downto 0 )) + 
                                                           unsigned(header_v(15 downto 8 )) + 
                                                           unsigned(header_v(23 downto 16)) );
        checksum := std_logic_vector( unsigned(checksum) + unsigned(subs_v(0)(15 downto 8 )) + 
                                                           unsigned(subs_v(0)(23 downto 16)) + 
                                                           unsigned(subs_v(0)(31 downto 24)) + 
                                                           unsigned(subs_v(0)(39 downto 32)) + 
                                                           unsigned(subs_v(0)(47 downto 40)) );
        checksum := std_logic_vector(unsigned(not checksum) + 1);

        subs_v(0)(7 downto 0) := checksum;

        for i in 0 to 3 loop
            subs_v(i)(63 downto 56) := BCH_ECC56(subs_v(i)(55 downto 0));
        end loop;

        subs   <= subs_v;
        header <= header_v;
    end procedure;

    procedure clock_regeneration_packet(signal subs : out subs_t; signal header : out std_logic_vector(31 downto 0)) is
        constant CTS_VALUE : integer                       := 28000;
        constant N_VALUE   : integer                       := 6272;
        constant CTS       : std_logic_vector(19 downto 0) := std_logic_vector(to_unsigned(CTS_VALUE, 20));
        constant N         : std_logic_vector(19 downto 0) := std_logic_vector(to_unsigned(N_VALUE, 20));

        variable subs_v   : subs_t                        := (others => (others => '0'));
        variable header_v : std_logic_vector(31 downto 0) := (others => '0');
    begin
        header_v(23 downto 0)  := 24x"1";
        header_v(31 downto 24) := BCH_ECC24(header_v(23 downto 0));

        for i in 0 to 3 loop
            subs_v(i)(55 downto 0)  := N(7 downto 0) & N(15 downto 8) & "0000" & N(19 downto 16) & CTS(7 downto 0) & CTS(15 downto 8) & "0000" & CTS(19 downto 16) & 8x"0";
            subs_v(i)(63 downto 56) := BCH_ECC56(subs_v(i)(55 downto 0));
        end loop;

        subs   <= subs_v;
        header <= header_v;
    end procedure;

    procedure audio_sample_packet(signal subs : out subs_t; signal header : out std_logic_vector(31 downto 0);
                                  signal yL : in audio_sample_t; signal yR : in audio_sample_t; variable iec_block_idx : inout integer range 0 to 191;
                                  signal audio_sample_valid : in std_logic_vector(3 downto 0)) is
        constant sample_flat       : std_logic_vector(3 downto 0) := "0000";
        variable is_start_of_block : std_logic_vector(3 downto 0) := "0000";

        constant VL, VR : std_logic                     := '0';
        constant UL, UR : std_logic                     := '0';
        variable CL, CR : std_logic                     := '0';
        variable PL, PR : std_logic                     := '0';
        variable L , R  : std_logic_vector(23 downto 0) := (others => '0');

        constant ORIGINAL_SAMPLING_FREQUENCY : std_logic_vector(3 downto 0)   := "0000";
        constant COPYRIGHT_NOT_ASSERTED      : std_logic                      := '1';
        constant PRE_EMPHASIS                : std_logic_vector(2 downto 0)   := "000";
        constant MODE                        : std_logic_vector(1 downto 0)   := "00";               
        constant WORD_LENGTH                 : std_logic_vector(2 downto 0)   := "000"; 
        constant CLOCK_ACCURACY              : std_logic_vector(1 downto 0)   := "00";
        constant SAMPLING_FREQUENCY          : std_logic_vector(3 downto 0)   := "0000"; -- 32KHz = "0011"
        constant CHANNEL_L                   : std_logic_vector(3 downto 0)   := 4x"1";
        constant CHANNEL_R                   : std_logic_vector(3 downto 0)   := 4x"2";
        constant SOURCE_NUMBER               : std_logic_vector(3 downto 0)   := "0000"; -- maybe change to 1?
        constant CATEGORY_CODE               : std_logic_vector(7 downto 0)   := "00000000";
        constant MAX_WORD_LENGTH_IS_24_BITS  : std_logic                      := '0';
        constant SAMPLE_WORD_TYPE            : std_logic                      := '0';
        constant GRADE                       : std_logic                      := '0';
        --                                                                                       36-39                     33-35                  32                30-31      28-29               24-27            20-23        16-19           8-15          6-7      3-5                    2                     1            0                       
        constant statusL                     : std_logic_vector(191 downto 0) := 152x"0" & ORIGINAL_SAMPLING_FREQUENCY & WORD_LENGTH & MAX_WORD_LENGTH_IS_24_BITS & 2x"0" & CLOCK_ACCURACY & SAMPLING_FREQUENCY & CHANNEL_L & SOURCE_NUMBER & CATEGORY_CODE & MODE & PRE_EMPHASIS & COPYRIGHT_NOT_ASSERTED & SAMPLE_WORD_TYPE & GRADE;
        constant statusR                     : std_logic_vector(191 downto 0) := 152x"0" & ORIGINAL_SAMPLING_FREQUENCY & WORD_LENGTH & MAX_WORD_LENGTH_IS_24_BITS & 2x"0" & CLOCK_ACCURACY & SAMPLING_FREQUENCY & CHANNEL_R & SOURCE_NUMBER & CATEGORY_CODE & MODE & PRE_EMPHASIS & COPYRIGHT_NOT_ASSERTED & SAMPLE_WORD_TYPE & GRADE;
        
        variable subs_v   : subs_t                        := (others => (others => '0'));
        variable header_v : std_logic_vector(31 downto 0) := (others => '0');
    begin
       
        for i in 0 to 3 loop
            if (audio_sample_valid(i) = '1') then
                L := std_logic_vector(to_signed(yL(i), 8)) & 16x"0";
                R := L;
                
                CL := statusL(iec_block_idx);
                CR := statusR(iec_block_idx);
    
                if (iec_block_idx = 0) then
                    is_start_of_block(i) := '1';
                end if;
                
                if (iec_block_idx = 191) then
                    iec_block_idx := 0;
                else
                    iec_block_idx := iec_block_idx + 1;
                end if;
    
                PL := xor (L & VL & UL & CL);
                PR := xor (R & VR & UR & CR);
    
                subs_v(i)(55 downto 0)  := PR & CR & UR & VR & PL & CL & UL & VL & R & L;
                subs_v(i)(63 downto 56) := BCH_ECC56(subs_v(i)(55 downto 0));
                                
            end if;
        end loop;

        --                            20-23             16-19        12-15       8-11          0-7      
        header_v(23 downto 0)  := is_start_of_block & sample_flat & "0000" & audio_sample_valid & 8x"02";
        header_v(31 downto 24) := BCH_ECC24(header_v(23 downto 0));

        subs   <= subs_v;
        header <= header_v;
    end procedure;

    procedure avi_info_frame_packet(signal subs : out subs_t; signal header : out std_logic_vector(31 downto 0)) is
        constant ftype    : std_logic_vector(7 downto 0) := 8x"82";
        constant fver     : std_logic_vector(7 downto 0) := 8x"02";
        constant flen     : std_logic_vector(7 downto 0) := 8x"0D";
        constant Y        : std_logic_vector(1 downto 0) := (others => '0');
        constant A        : std_logic                    := '0';
        constant B        : std_logic_vector(1 downto 0) := (others => '0');
        constant S        : std_logic_vector(1 downto 0) := (others => '0');
        constant C        : std_logic_vector(1 downto 0) := (others => '0');
        constant M        : std_logic_vector(1 downto 0) := (others => '0');
        constant R        : std_logic_vector(3 downto 0) := (others => '0');
        constant ITC      : std_logic                    := '0';
        constant EC       : std_logic_vector(2 downto 0) := (others => '0');
        constant Q        : std_logic_vector(1 downto 0) := (others => '0');
        constant SC       : std_logic_vector(1 downto 0) := (others => '0');
        constant VIC      : std_logic_vector(6 downto 0) := 7x"1"; -- 640x480p @ 60hz
        constant PR       : std_logic_vector(3 downto 0) := (others => '0'); -- no pixel repetition
        constant CN       : std_logic_vector(1 downto 0) := (others => '0');
        constant YQ       : std_logic_vector(1 downto 0) := (others => '0');
        variable checksum : std_logic_vector(7 downto 0) := (others => '0');

        variable subs_v   : subs_t := (others => (others => '0'));
        variable header_v : std_logic_vector(31 downto 0);
    begin
        header_v(23 downto 0)  := flen & fver & ftype;
        header_v(31 downto 24) := BCH_ECC24(header_v(23 downto 0));

        subs_v(0)(55 downto 0) := 8x"0" & YQ & CN & PR & '0' & VIC & ITC & EC & Q & SC & C & M & R & '0' & Y & A & B & S & "00000000";
        
        checksum := std_logic_vector( unsigned(checksum) + unsigned(header_v(7  downto 0 )) + 
                                                           unsigned(header_v(15 downto 8 )) + 
                                                           unsigned(header_v(23 downto 16)) );
        checksum := std_logic_vector( unsigned(checksum) + unsigned(subs_v(0)(15 downto 8 )) + 
                                                           unsigned(subs_v(0)(23 downto 16)) + 
                                                           unsigned(subs_v(0)(31 downto 24)) + 
                                                           unsigned(subs_v(0)(39 downto 32)) + 
                                                           unsigned(subs_v(0)(47 downto 40)) );
        checksum := std_logic_vector(unsigned(not checksum) + 1);

        subs_v(0)(7 downto 0) := checksum;

        for i in 0 to 3 loop
            subs_v(i)(63 downto 56) := BCH_ECC56(subs_v(i)(55 downto 0));
        end loop;

        subs   <= subs_v;
        header <= header_v;
    end procedure;


    
end package body global_params;
