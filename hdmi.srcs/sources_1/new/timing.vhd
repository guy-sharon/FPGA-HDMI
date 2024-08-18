library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.global_params.ALL;
use IEEE.numeric_std.all;
--use STD.textio.all;
--use ieee.std_logic_textio.all;

----------------------------------------------------------------------------------
entity timing is
    Port(
        bit_clk            : in  std_logic;
        vcount             : out integer range 0 to timings.V_TOTAL - 1 := 0;
        hcount             : out integer range 0 to timings.H_TOTAL - 1 := 0;
        vsync, hsync       : out std_logic                              := '1';
        frame_cnt          : out integer range 0 to 59                  := 0;
        bit_cnt            : out integer range 0 to 9                   := 0;
        tmds_clk           : out std_logic_vector(1 downto 0)           := "10";
        buffer_clk         : out std_logic                              := '0';
        sync, CTL10, CTL32 : out std_logic_vector(1 downto 0)           := "00";
        opmode             : out operation_mode                         := AUDIO_PREAMBLE;
        subs               : out subs_t                                 := (others => (others => '0'));
        header             : out std_logic_vector(31 downto 0)          := (others => '0');
        pkt_idx            : out std_logic_vector(4 downto 0)           := (others => '0');
        is_video_active    : out std_logic                              := '0';
        leds               : out std_logic_vector(3 downto 0)           := "0000"
    );
end timing;

----------------------------------------------------------------------------------
architecture Behavioral of timing is
    --file fp                 : text open write_mode is "D:\\FPGA\\Xilinx\\Projects\\hdmi\\debug.txt";
    
    signal note_clock       : std_logic                            := '0';
    signal audio_clock      : std_logic                            := '0';
    signal audio_bufferL    : audio_sample_t                       := (others => 0);
    signal audio_bufferR    : audio_sample_t                       := (others => 0);
    signal audio_cnt        : integer range 0 to AUDIO_LENGTH - 1  := 0;
    signal audio_idx        : integer range 0 to 1  := 0;
    signal audio_last_idx   : integer range -1 to 1 := -1;
    signal is_send_audio    : std_logic                            := '0';
    signal audio_send_clk   : std_logic                            := '1';
    signal audio_sample_valid     : std_logic_vector(3 downto 0)                           := "0000";
    
    signal harmonies : harmonies_t := init_harmonies;
    signal audio_sampleL : integer;
    signal audio_sampleR : integer;
    signal audio_sample_ready : std_logic := '0';
    signal note_idx     : integer := 0;
    
    signal note             : std_logic_vector(NUM_HARMONIES-1 downto 0) := (others=>'0');
    signal cnt              : integer := 0;
begin

    audio_timer : entity work.clk_div
        generic map(freq_in => BIT_FREQ, freq_out => AUDIO_FS)
        port map(clk_in => bit_clk, clk_out => audio_clock);

    note_timer : entity work.clk_div
        generic map(freq_in => BIT_FREQ, freq_out => NOTE_RATE)
        port map(clk_in => bit_clk, clk_out => note_clock);
        
    process (note_clock) is
    begin
        if rising_edge(note_clock) then
            if (note_idx = notesL'LENGTH-1) then
                note_idx <= 0;
            else
                note_idx <= note_idx + 1;
            end if;
            note <= std_logic_vector(unsigned(note) + 1);
            leds <= not leds;
        end if;
    end process;
        
    process(bit_clk,audio_clock) is
        variable audio_sample_varL : integer;
        variable audio_sample_varR : integer;
        variable harmony_idx      : integer range 0 to NUM_HARMONIES := 0;
    begin
        
        if rising_edge(bit_clk) then
            if audio_clock = '1' then                
                if harmony_idx = NUM_HARMONIES then
                    audio_sampleL <= audio_sample_varL;
                    audio_sampleR <= audio_sample_varR;
                    audio_sample_ready <= '1';
                else
                    if harmony_idx = 0 then
                        audio_sample_varL := 0;
                        audio_sample_varR := 0;
                    end if;
                    if harmonies(harmony_idx).phase = harmonies(harmony_idx).th then
                        harmonies(harmony_idx).phase  <= 0;
                        harmonies(harmony_idx).val    <= -harmonies(harmony_idx).val;
                    else
                        harmonies(harmony_idx).phase  <= harmonies(harmony_idx).phase + 1;
                    end if;
                    if (notesL(note_idx)(harmony_idx) = '1') then  
                        audio_sample_varL := audio_sample_varL + harmonies(harmony_idx).val;
                    end if;
                    if (notesR(note_idx)(harmony_idx) = '1') then  
                        audio_sample_varR := audio_sample_varR + harmonies(harmony_idx).val;
                    end if;
                    harmony_idx := harmony_idx + 1;
                end if;
            else
                harmony_idx := 0;
                audio_sample_ready <= '0';
            end if;
            
        end if;
        
        if rising_edge(audio_clock) then
            --cnt <= cnt + 1;
            --step_harmonies(harmonies);
            --audio_sample_var := 0;
            /*if (cnt > AUDIO_FS*15) then
                for i in 0 to NUM_HARMONIES-1 loop
                    if (notes(note_idx)(i) = '1') then
                         if harmonies(i).phase = harmonies(i).th then
                            harmonies(i).phase  <= 0;
                            harmonies(i).val    <= -harmonies(i).val;
                        else
                            harmonies(i).phase  <= harmonies(i).phase + 1;
                        end if;   
                        audio_sample_var := audio_sample_var + harmonies(i).val;
                    end if;
                end loop;
            end if;*/
            --audio_sample <= audio_sample_var;
            
            if (audio_idx = 1) then
                audio_idx <= 0;
            else
                audio_idx <= audio_idx + 1;
            end if;
            
            if (audio_cnt = AUDIO_LENGTH - 1) then
                audio_cnt <= 0;
            else
                audio_cnt <= audio_cnt + 1;
            end if;
        end if;
    end process;

    process(bit_clk) is
        variable h_var                  : integer range 0 to timings.H_TOTAL - 1                 := 0;
        variable v_var                  : integer range 0 to timings.V_TOTAL - 1                 := 0;
        variable eff_h_var              : integer range 0 to (timings.H_SYNC + timings.H_BP + 1) := 0;
        variable yL                     : audio_sample_t                                         := (others => 0);
        variable yR                     : audio_sample_t                                         := (others => 0);
        variable iec_block_idx          : integer range 0 to 191                                 := 0;
        variable bit_clk_cnt            : unsigned(63 downto 0)                                  := (others=>'0');
        --variable row : line;
    begin
        if rising_edge(bit_clk) then
            bit_clk_cnt := bit_clk_cnt + 1;
            
            /*if (bit_cnt = 0) AND (frame_cnt = 1) then
                write(row,hcount,right,4);
                write(row,string'(","),right,1);
                write(row,vcount,right,4);
                write(row,string'(","),right,1);
                
                case opmode is
                    when CONTROL                => write(row,0,right,1);
                    when AUDIO_PREAMBLE         => write(row,1,right,1);
                    when AUDIO_GAURD_HEADER     => write(row,2,right,1);
                    when AUDIO_ACTIVE           => write(row,3,right,1);
                    when AUDIO_GAURD_TRAILER    => write(row,4,right,1);
                    when VIDEO_PREAMBLE         => write(row,5,right,1);
                    when VIDEO_GAURD_HEADER     => write(row,6,right,1);
                    when VIDEO_ACTIVE           => write(row,7,right,1);
                end case;
                
                write(row,string'(","),right,1);
                
                write(row,pkt_idx,right,4);
                write(row,string'(","),right,1);
                
                writeline(fp,row);
            end if;
            
            if (frame_cnt = 2) then
                h_var := 0;
            end if;*/

            ---------------------------------- DATA BITS ----------------------------------
            if (bit_cnt = 0) then
                tmds_clk <= "10";
            elsif (bit_cnt = 5) then
                tmds_clk <= "01";
            end if;

            if bit_cnt = 9 then
                bit_cnt    <= 0;
                buffer_clk <= '1';
                if (h_var = timings.H_TOTAL - 1) then
                    h_var := 0;
                    if (v_var = timings.V_TOTAL - 1) then -- new frame 
                        v_var     := 0;
                        frame_cnt <= frame_cnt + 1;
                    else
                        v_var := v_var + 1;
                    end if;
                else
                    h_var := h_var + 1;
                end if;
            else
                buffer_clk <= '0';
                bit_cnt    <= bit_cnt + 1;
            end if;
            hcount <= h_var;
            vcount <= v_var;
            ---------------------------------- DATA BITS ----------------------------------

            ---------------------------------- V/H SYNC ----------------------------------
            if (hcount >= (timings.H_TOTAL - timings.H_SYNC - 1)) AND (hcount < (timings.H_TOTAL - 1)) then
                hsync <= timings.H_POL;
            else
                hsync <= not timings.H_POL;
            end if;

            if (vcount >= (timings.V_TOTAL - timings.V_SYNC - 1)) AND (vcount < (timings.V_TOTAL - 1)) then
                vsync <= timings.V_POL;
            else
                vsync <= not timings.V_POL;
            end if;
            ---------------------------------- V/H SYNC ----------------------------------

            ------------------------------- OPERATION MODE -------------------------------
            if bit_cnt = 9 then
                opmode          <= CONTROL;
                is_video_active <= '0';
                CTL10           <= CONTROL_CTL10;
                CTL32           <= CONTROL_CTL32;

                if (v_var = 0) then

                    if (h_var < PREAMBLE_LENGTH) then -- audio preamble
                        opmode <= AUDIO_PREAMBLE;
                        CTL10  <= AUDIO_PREAMBLE_CTL10;
                        CTL32  <= AUDIO_PREAMBLE_CTL32;

                    elsif (h_var < (PREAMBLE_LENGTH + GUARD_LENGTH)) then -- audio header guard
                        opmode <= AUDIO_GAURD_HEADER;

                    elsif (h_var < (PREAMBLE_LENGTH + GUARD_LENGTH + 1 * AUDIO_PACKET_LENGTH)) then -- avi
                        opmode  <= AUDIO_ACTIVE;
                        pkt_idx <= std_logic_vector(to_unsigned(h_var - PREAMBLE_LENGTH - GUARD_LENGTH - 0 * AUDIO_PACKET_LENGTH, 5));
                        if (h_var - PREAMBLE_LENGTH - GUARD_LENGTH - 0 * AUDIO_PACKET_LENGTH) = 0 then
                            avi_info_frame_packet(subs => subs, header => header);
                        end if;

                    elsif (h_var < (PREAMBLE_LENGTH + GUARD_LENGTH + 2 * AUDIO_PACKET_LENGTH)) then -- info
                        opmode  <= AUDIO_ACTIVE;
                        pkt_idx <= std_logic_vector(to_unsigned(h_var - PREAMBLE_LENGTH - GUARD_LENGTH - 1 * AUDIO_PACKET_LENGTH, 5));
                        if (h_var - PREAMBLE_LENGTH - GUARD_LENGTH - 1 * AUDIO_PACKET_LENGTH) = 0 then
                            audio_info_frame_packet(subs => subs, header => header);
                        end if;

                    elsif (h_var < (PREAMBLE_LENGTH + 2 * GUARD_LENGTH + 2 * AUDIO_PACKET_LENGTH)) then -- audio trailer guard
                        opmode <= AUDIO_GAURD_TRAILER;
                    end if;
                    
                end if;

                if  (vcount >= (timings.V_BP - 1)) AND (vcount < (timings.V_BP + timings.V_VIDEO - 1)) then -- V
                    if (hcount >= (timings.H_BP - 1)) AND (hcount < (timings.H_BP + timings.H_VIDEO - 1)) then -- V,H
                        opmode          <= VIDEO_ACTIVE;
                        is_video_active <= '1';
                    else                -- V,!H
                        if (hcount < (timings.H_BP - 1)) then -- horizontal is back porch
                            if (hcount >= (timings.H_BP - GUARD_LENGTH - 1)) then -- video guard header
                                opmode <= VIDEO_GAURD_HEADER;
                            elsif (hcount >= (timings.H_BP - PREAMBLE_LENGTH - GUARD_LENGTH - 1)) then -- video preamble
                                opmode <= VIDEO_PREAMBLE;
                                CTL10  <= VIDEO_PREAMBLE_CTL10;
                                CTL32  <= VIDEO_PREAMBLE_CTL32;
                            end if;
                        end if;
                    end if;
                end if;

                if (audio_last_idx /= audio_idx) AND (audio_sample_ready = '1') then -- audio sample is pending to get into buffer
                    if (audio_sample_valid /= "1111") then
                        case audio_sample_valid is
                            when "0000" =>
                                audio_bufferL(0)         <= audio_sampleL;
                                audio_bufferR(0)         <= audio_sampleR;
                                audio_sample_valid(0)   <= '1';
                            when "0001" =>
                                audio_bufferL(1)         <= audio_sampleL;
                                audio_bufferR(1)         <= audio_sampleR;
                                audio_sample_valid(1)   <= '1';
                            when "0011" =>
                                audio_bufferL(2)         <= audio_sampleL;
                                audio_bufferR(2)         <= audio_sampleR;
                                audio_sample_valid(2)   <= '1';
                            when "0111" =>
                                audio_bufferL(3)         <= audio_sampleL;
                                audio_bufferR(3)         <= audio_sampleR;
                                audio_sample_valid(3)   <= '1';
                            when others => null;
                        end case;
                    else
                        audio_bufferL <= audio_bufferL(1 to 3) & audio_sampleL;
                        audio_bufferR <= audio_bufferR(1 to 3) & audio_sampleR;
                    end if;
                    audio_last_idx <= audio_idx;
                end if;
                
                if (audio_cnt = 0) AND (hcount = (timings.H_TOTAL-1)) AND ((vcount /= (timings.V_TOTAL-1))) then
                    audio_send_clk <= '1';
                end if;

                if hcount >= (timings.H_TOTAL - timings.H_FP - timings.H_SYNC - 1 + 5) then -- after video active
                    eff_h_var := hcount - (timings.H_TOTAL - timings.H_FP - timings.H_SYNC - 1 + 5);
                    if (eff_h_var < PREAMBLE_LENGTH) then -- audio preamble
                        opmode <= AUDIO_PREAMBLE;
                        CTL10  <= AUDIO_PREAMBLE_CTL10;
                        CTL32  <= AUDIO_PREAMBLE_CTL32;

                    elsif (eff_h_var < (PREAMBLE_LENGTH + GUARD_LENGTH)) then -- audio header guard
                        opmode <= AUDIO_GAURD_HEADER;

                    elsif (eff_h_var < (PREAMBLE_LENGTH + GUARD_LENGTH + 1*AUDIO_PACKET_LENGTH)) then -- sample
                        opmode  <= AUDIO_ACTIVE;
                        pkt_idx <= std_logic_vector(to_unsigned(eff_h_var - PREAMBLE_LENGTH - GUARD_LENGTH, 5));
                        if (eff_h_var - PREAMBLE_LENGTH - GUARD_LENGTH) = 0 then
                            audio_sample_packet(subs => subs, header => header, yL => audio_bufferL, yR => audio_bufferR, iec_block_idx => iec_block_idx, audio_sample_valid => audio_sample_valid);
                            audio_sample_valid <= "0000";
                            
                            /*for ii in 0 to 3 loop
                                if (audio_sample_valid(ii) = '1') then
                                    write(row,audio_buffer(ii),right,1);
                                    write(row,string'(","),right,1);
                                    write(row,to_integer(unsigned(bit_clk_cnt)),right,1);
                                    writeline(fp,row);
                                end if;
                            end loop;*/
                        end if;
                        
                    elsif (eff_h_var < (PREAMBLE_LENGTH + GUARD_LENGTH + 2*AUDIO_PACKET_LENGTH)) then -- sample
                        opmode  <= AUDIO_ACTIVE;
                        pkt_idx <= std_logic_vector(to_unsigned(eff_h_var - PREAMBLE_LENGTH - GUARD_LENGTH - AUDIO_PACKET_LENGTH, 5));
                        if (eff_h_var - PREAMBLE_LENGTH - GUARD_LENGTH - AUDIO_PACKET_LENGTH) = 0 then
                            if (audio_send_clk = '1') then
                                clock_regeneration_packet(subs => subs, header => header);
                                audio_send_clk <= '0';
                            else
                                null_packet(subs => subs, header => header);
                            end if;
                        end if;

                    elsif (eff_h_var < (PREAMBLE_LENGTH + 2*GUARD_LENGTH + 2*AUDIO_PACKET_LENGTH)) then -- audio trailer guard
                        opmode <= AUDIO_GAURD_TRAILER;

                    else
                    end if;

                end if;

            end if;
            ------------------------------- OPERATION MODE -------------------------------

        end if;
    end process;

    sync <= vsync & hsync;

end Behavioral;
----------------------------------------------------------------------------------