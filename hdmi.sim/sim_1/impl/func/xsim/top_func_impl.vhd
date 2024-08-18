-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Mon Nov  1 15:07:30 2021
-- Host        : Guy running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/FPGA/Xilinx/Projects/hdmi/hdmi.sim/sim_1/impl/func/xsim/top_func_impl.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_div is
  port (
    clk_out_reg_0 : out STD_LOGIC;
    clk_out1 : in STD_LOGIC
  );
end clk_div;

architecture STRUCTURE of clk_div is
  signal clear : STD_LOGIC;
  signal clk_out_i_1_n_0 : STD_LOGIC;
  signal \^clk_out_reg_0\ : STD_LOGIC;
  signal \cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_17_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_cnt_reg[0]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[0]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[0]_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_reg[0]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_reg[0]_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[0]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[0]_i_15_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[0]_i_16_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[0]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_10\ : label is 35;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \cnt_reg[0]_i_10\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_11\ : label is 35;
  attribute OPT_MODIFIED of \cnt_reg[0]_i_11\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_12\ : label is 35;
  attribute OPT_MODIFIED of \cnt_reg[0]_i_12\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_13\ : label is 35;
  attribute OPT_MODIFIED of \cnt_reg[0]_i_13\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_14\ : label is 35;
  attribute OPT_MODIFIED of \cnt_reg[0]_i_14\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_15\ : label is 35;
  attribute OPT_MODIFIED of \cnt_reg[0]_i_15\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_16\ : label is 35;
  attribute OPT_MODIFIED of \cnt_reg[0]_i_16\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_17\ : label is 35;
  attribute OPT_MODIFIED of \cnt_reg[0]_i_17\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_2\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[0]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[12]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[16]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[20]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[20]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[24]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[24]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[28]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[28]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[8]_i_1\ : label is "SWEEP";
begin
  clk_out_reg_0 <= \^clk_out_reg_0\;
clk_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clear,
      I1 => \^clk_out_reg_0\,
      O => clk_out_i_1_n_0
    );
clk_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => clk_out_i_1_n_0,
      Q => \^clk_out_reg_0\,
      R => '0'
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cnt[0]_i_3_n_0\,
      I1 => \cnt[0]_i_4_n_0\,
      I2 => \cnt[0]_i_5_n_0\,
      I3 => \cnt[0]_i_6_n_0\,
      I4 => \cnt[0]_i_7_n_0\,
      I5 => \cnt[0]_i_8_n_0\,
      O => clear
    );
\cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in(24),
      I1 => p_0_in(25),
      I2 => p_0_in(26),
      I3 => p_0_in(27),
      I4 => p_0_in(28),
      I5 => p_0_in(29),
      O => \cnt[0]_i_3_n_0\
    );
\cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFFFFF"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(8),
      I2 => p_0_in(7),
      I3 => p_0_in(11),
      I4 => p_0_in(10),
      I5 => p_0_in(9),
      O => \cnt[0]_i_4_n_0\
    );
\cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in(18),
      I1 => p_0_in(19),
      I2 => p_0_in(20),
      I3 => p_0_in(21),
      I4 => p_0_in(22),
      I5 => p_0_in(23),
      O => \cnt[0]_i_5_n_0\
    );
\cnt[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in(12),
      I1 => p_0_in(13),
      I2 => p_0_in(14),
      I3 => p_0_in(15),
      I4 => p_0_in(16),
      I5 => p_0_in(17),
      O => \cnt[0]_i_6_n_0\
    );
\cnt[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in(30),
      I1 => p_0_in(31),
      O => \cnt[0]_i_7_n_0\
    );
\cnt[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => p_0_in(5),
      I4 => p_0_in(4),
      I5 => p_0_in(3),
      O => \cnt[0]_i_8_n_0\
    );
\cnt[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => p_0_in(0)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_7\,
      Q => cnt_reg(0),
      R => clear
    );
\cnt_reg[0]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_15_n_0\,
      CO(3) => \cnt_reg[0]_i_10_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[0]_i_10_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(24 downto 21),
      S(3 downto 0) => cnt_reg(24 downto 21)
    );
\cnt_reg[0]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_10_n_0\,
      CO(3) => \cnt_reg[0]_i_11_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[0]_i_11_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(28 downto 25),
      S(3 downto 0) => cnt_reg(28 downto 25)
    );
\cnt_reg[0]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_11_n_0\,
      CO(3 downto 0) => \NLW_cnt_reg[0]_i_12_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_reg[0]_i_12_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => cnt_reg(31 downto 29)
    );
\cnt_reg[0]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_17_n_0\,
      CO(3) => \cnt_reg[0]_i_13_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[0]_i_13_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(8 downto 5),
      S(3 downto 0) => cnt_reg(8 downto 5)
    );
\cnt_reg[0]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_13_n_0\,
      CO(3) => \cnt_reg[0]_i_14_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[0]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(12 downto 9),
      S(3 downto 0) => cnt_reg(12 downto 9)
    );
\cnt_reg[0]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_16_n_0\,
      CO(3) => \cnt_reg[0]_i_15_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[0]_i_15_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(20 downto 17),
      S(3 downto 0) => cnt_reg(20 downto 17)
    );
\cnt_reg[0]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_14_n_0\,
      CO(3) => \cnt_reg[0]_i_16_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[0]_i_16_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(16 downto 13),
      S(3 downto 0) => cnt_reg(16 downto 13)
    );
\cnt_reg[0]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_17_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[0]_i_17_CO_UNCONNECTED\(2 downto 0),
      CYINIT => cnt_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3 downto 0) => cnt_reg(4 downto 1)
    );
\cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_2_n_4\,
      O(2) => \cnt_reg[0]_i_2_n_5\,
      O(1) => \cnt_reg[0]_i_2_n_6\,
      O(0) => \cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => cnt_reg(3 downto 1),
      S(0) => p_0_in(0)
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_5\,
      Q => cnt_reg(10),
      R => clear
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_4\,
      Q => cnt_reg(11),
      R => clear
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_7\,
      Q => cnt_reg(12),
      R => clear
    );
\cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CO(3) => \cnt_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_1_n_4\,
      O(2) => \cnt_reg[12]_i_1_n_5\,
      O(1) => \cnt_reg[12]_i_1_n_6\,
      O(0) => \cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(15 downto 12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_6\,
      Q => cnt_reg(13),
      R => clear
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_5\,
      Q => cnt_reg(14),
      R => clear
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_4\,
      Q => cnt_reg(15),
      R => clear
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_7\,
      Q => cnt_reg(16),
      R => clear
    );
\cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_1_n_0\,
      CO(3) => \cnt_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[16]_i_1_n_4\,
      O(2) => \cnt_reg[16]_i_1_n_5\,
      O(1) => \cnt_reg[16]_i_1_n_6\,
      O(0) => \cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(19 downto 16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_6\,
      Q => cnt_reg(17),
      R => clear
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_5\,
      Q => cnt_reg(18),
      R => clear
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_4\,
      Q => cnt_reg(19),
      R => clear
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_6\,
      Q => cnt_reg(1),
      R => clear
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[20]_i_1_n_7\,
      Q => cnt_reg(20),
      R => clear
    );
\cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_1_n_0\,
      CO(3) => \cnt_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[20]_i_1_n_4\,
      O(2) => \cnt_reg[20]_i_1_n_5\,
      O(1) => \cnt_reg[20]_i_1_n_6\,
      O(0) => \cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(23 downto 20)
    );
\cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[20]_i_1_n_6\,
      Q => cnt_reg(21),
      R => clear
    );
\cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[20]_i_1_n_5\,
      Q => cnt_reg(22),
      R => clear
    );
\cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[20]_i_1_n_4\,
      Q => cnt_reg(23),
      R => clear
    );
\cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[24]_i_1_n_7\,
      Q => cnt_reg(24),
      R => clear
    );
\cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[20]_i_1_n_0\,
      CO(3) => \cnt_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[24]_i_1_n_4\,
      O(2) => \cnt_reg[24]_i_1_n_5\,
      O(1) => \cnt_reg[24]_i_1_n_6\,
      O(0) => \cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(27 downto 24)
    );
\cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[24]_i_1_n_6\,
      Q => cnt_reg(25),
      R => clear
    );
\cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[24]_i_1_n_5\,
      Q => cnt_reg(26),
      R => clear
    );
\cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[24]_i_1_n_4\,
      Q => cnt_reg(27),
      R => clear
    );
\cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[28]_i_1_n_7\,
      Q => cnt_reg(28),
      R => clear
    );
\cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_cnt_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[28]_i_1_n_4\,
      O(2) => \cnt_reg[28]_i_1_n_5\,
      O(1) => \cnt_reg[28]_i_1_n_6\,
      O(0) => \cnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(31 downto 28)
    );
\cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[28]_i_1_n_6\,
      Q => cnt_reg(29),
      R => clear
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_5\,
      Q => cnt_reg(2),
      R => clear
    );
\cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[28]_i_1_n_5\,
      Q => cnt_reg(30),
      R => clear
    );
\cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[28]_i_1_n_4\,
      Q => cnt_reg(31),
      R => clear
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_4\,
      Q => cnt_reg(3),
      R => clear
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_7\,
      Q => cnt_reg(4),
      R => clear
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_2_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(7 downto 4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_6\,
      Q => cnt_reg(5),
      R => clear
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_5\,
      Q => cnt_reg(6),
      R => clear
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_4\,
      Q => cnt_reg(7),
      R => clear
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_7\,
      Q => cnt_reg(8),
      R => clear
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \cnt_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(11 downto 8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_6\,
      Q => cnt_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end clk_wiz_0_clk_wiz;

architecture STRUCTURE of clk_wiz_0_clk_wiz is
  signal clk_in1_clk_wiz_0 : STD_LOGIC;
  signal clk_out1_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_0,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 63.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 83.330002,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 3.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_clk_wiz_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_wiz_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tmds_encoder is
  port (
    \d_out_reg[9]_0\ : out STD_LOGIC;
    bit_cnt : in STD_LOGIC_VECTOR ( 3 downto 0 );
    is_video_active : in STD_LOGIC;
    \d_out_reg[4]_0\ : in STD_LOGIC;
    buffer_clk : in STD_LOGIC;
    hsync : in STD_LOGIC;
    \d_out_reg[9]_1\ : in STD_LOGIC
  );
end tmds_encoder;

architecture STRUCTURE of tmds_encoder is
  signal \data_b[1]_i_44_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_45_n_0\ : STD_LOGIC;
  signal \data_b_reg[1]_i_23_n_0\ : STD_LOGIC;
  signal tmds_buffer_b : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
\d_out_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => hsync,
      Q => tmds_buffer_b(0),
      S => is_video_active
    );
\d_out_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out_reg[4]_0\,
      Q => tmds_buffer_b(2),
      S => is_video_active
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => hsync,
      Q => tmds_buffer_b(3),
      R => is_video_active
    );
\d_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out_reg[4]_0\,
      Q => tmds_buffer_b(4),
      R => is_video_active
    );
\d_out_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out_reg[9]_1\,
      Q => tmds_buffer_b(9),
      S => is_video_active
    );
\data_b[1]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmds_buffer_b(9),
      I1 => bit_cnt(0),
      I2 => tmds_buffer_b(4),
      I3 => bit_cnt(3),
      I4 => \data_b_reg[1]_i_23_n_0\,
      O => \d_out_reg[9]_0\
    );
\data_b[1]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmds_buffer_b(3),
      I1 => bit_cnt(0),
      I2 => tmds_buffer_b(2),
      I3 => bit_cnt(1),
      I4 => tmds_buffer_b(0),
      O => \data_b[1]_i_44_n_0\
    );
\data_b[1]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmds_buffer_b(3),
      I1 => bit_cnt(1),
      I2 => tmds_buffer_b(0),
      I3 => bit_cnt(0),
      I4 => tmds_buffer_b(4),
      O => \data_b[1]_i_45_n_0\
    );
\data_b_reg[1]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_b[1]_i_44_n_0\,
      I1 => \data_b[1]_i_45_n_0\,
      O => \data_b_reg[1]_i_23_n_0\,
      S => bit_cnt(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tmds_encoder_0 is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out22_in : out STD_LOGIC;
    tmds_buffer_g : out STD_LOGIC_VECTOR ( 4 downto 0 );
    is_video_active : in STD_LOGIC;
    CTL10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    buffer_clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \d_out_reg[8]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tmds_encoder_0 : entity is "tmds_encoder";
end tmds_encoder_0;

architecture STRUCTURE of tmds_encoder_0 is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^d_out22_in\ : STD_LOGIC;
  signal \d_out3_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \d_out3_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \d_out3_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \d_out[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \d_out[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \d_out[3]_i_1_n_0\ : STD_LOGIC;
  signal disparity : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal disparity0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal disparity01_in : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal \disparity0_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__1/i__carry__4_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__1/i__carry__5_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_4__0_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_6__0_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_7__0_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_8__0_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_9__0_n_0\ : STD_LOGIC;
  signal \disparity_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disparity0_inferred__1/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__1/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__1/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__1/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__1/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__1/i__carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__1/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disparity0_inferred__1/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_disparity_reg[12]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[28]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disparity_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_disparity_reg[4]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \d_out3_inferred__0/i__carry\ : label is 11;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \d_out3_inferred__0/i__carry\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of \d_out3_inferred__0/i__carry__0\ : label is 11;
  attribute OPT_MODIFIED of \d_out3_inferred__0/i__carry__0\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of \d_out3_inferred__0/i__carry__1\ : label is 11;
  attribute OPT_MODIFIED of \d_out3_inferred__0/i__carry__1\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of \d_out3_inferred__0/i__carry__2\ : label is 11;
  attribute OPT_MODIFIED of \d_out3_inferred__0/i__carry__2\ : label is "SWEEP";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \d_out[2]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \d_out[3]_i_1\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \disparity0_inferred__1/i__carry\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__1/i__carry\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__1/i__carry__0\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__1/i__carry__0\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__1/i__carry__1\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__1/i__carry__1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__1/i__carry__2\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__1/i__carry__2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__1/i__carry__3\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__1/i__carry__3\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__1/i__carry__4\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__1/i__carry__4\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__1/i__carry__5\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__1/i__carry__5\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__1/i__carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \disparity[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \disparity[1]_i_1__0\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \disparity_reg[12]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[12]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[16]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[16]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[20]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[20]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[24]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[24]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[28]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[28]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[31]_i_3\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[31]_i_3\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[4]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[4]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[8]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[8]_i_2\ : label is "SWEEP";
begin
  CO(0) <= \^co\(0);
  d_out22_in <= \^d_out22_in\;
\d_out3_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \d_out3_inferred__0/i__carry_n_0\,
      CO(2 downto 0) => \NLW_d_out3_inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_d_out3_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\d_out3_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out3_inferred__0/i__carry_n_0\,
      CO(3) => \d_out3_inferred__0/i__carry__0_n_0\,
      CO(2 downto 0) => \NLW_d_out3_inferred__0/i__carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2__1_n_0\,
      DI(1) => \i__carry__0_i_3__1_n_0\,
      DI(0) => \i__carry__0_i_4__1_n_0\,
      O(3 downto 0) => \NLW_d_out3_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__0_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\d_out3_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out3_inferred__0/i__carry__0_n_0\,
      CO(3) => \d_out3_inferred__0/i__carry__1_n_0\,
      CO(2 downto 0) => \NLW_d_out3_inferred__0/i__carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1__0_n_0\,
      DI(2) => \i__carry__1_i_2__1_n_0\,
      DI(1) => \i__carry__1_i_3__1_n_0\,
      DI(0) => \i__carry__1_i_4__1_n_0\,
      O(3 downto 0) => \NLW_d_out3_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5__0_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\d_out3_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out3_inferred__0/i__carry__1_n_0\,
      CO(3) => \^co\(0),
      CO(2 downto 0) => \NLW_d_out3_inferred__0/i__carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1__0_n_0\,
      DI(2) => \i__carry__2_i_2__1_n_0\,
      DI(1) => \i__carry__2_i_3__1_n_0\,
      DI(0) => \i__carry__2_i_4__1_n_0\,
      O(3 downto 0) => \NLW_d_out3_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5__1_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\d_out[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \^co\(0),
      I1 => \^d_out22_in\,
      I2 => is_video_active,
      I3 => CTL10(0),
      O => \d_out[0]_i_1__0_n_0\
    );
\d_out[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0BF"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => \^co\(0),
      I2 => is_video_active,
      I3 => CTL10(0),
      O => \d_out[2]_i_1__0_n_0\
    );
\d_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => \^co\(0),
      I2 => is_video_active,
      I3 => CTL10(0),
      O => \d_out[3]_i_1_n_0\
    );
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out[0]_i_1__0_n_0\,
      Q => tmds_buffer_g(0),
      R => '0'
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out[2]_i_1__0_n_0\,
      Q => tmds_buffer_g(1),
      R => '0'
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out[3]_i_1_n_0\,
      Q => tmds_buffer_g(2),
      R => '0'
    );
\d_out_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out_reg[8]_0\,
      Q => tmds_buffer_g(3),
      S => is_video_active
    );
\d_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => D(0),
      Q => tmds_buffer_g(4),
      R => '0'
    );
\disparity0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \disparity0_inferred__1/i__carry_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__1/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 1) => disparity(5 downto 3),
      DI(0) => '0',
      O(3 downto 0) => disparity01_in(6 downto 3),
      S(3) => \i__carry_i_1__2_n_0\,
      S(2) => \i__carry_i_2__2_n_0\,
      S(1) => \i__carry_i_3__2_n_0\,
      S(0) => \i__carry_i_4__2_n_0\
    );
\disparity0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__1/i__carry_n_0\,
      CO(3) => \disparity0_inferred__1/i__carry__0_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__1/i__carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(9 downto 6),
      O(3 downto 0) => disparity01_in(10 downto 7),
      S(3) => \i__carry__0_i_1__2_n_0\,
      S(2) => \i__carry__0_i_2__2_n_0\,
      S(1) => \i__carry__0_i_3__2_n_0\,
      S(0) => \i__carry__0_i_4__2_n_0\
    );
\disparity0_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__1/i__carry__0_n_0\,
      CO(3) => \disparity0_inferred__1/i__carry__1_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__1/i__carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(13 downto 10),
      O(3 downto 0) => disparity01_in(14 downto 11),
      S(3) => \i__carry__1_i_1__2_n_0\,
      S(2) => \i__carry__1_i_2__2_n_0\,
      S(1) => \i__carry__1_i_3__2_n_0\,
      S(0) => \i__carry__1_i_4__2_n_0\
    );
\disparity0_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__1/i__carry__1_n_0\,
      CO(3) => \disparity0_inferred__1/i__carry__2_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__1/i__carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(17 downto 14),
      O(3 downto 0) => disparity01_in(18 downto 15),
      S(3) => \i__carry__2_i_1__1_n_0\,
      S(2) => \i__carry__2_i_2__2_n_0\,
      S(1) => \i__carry__2_i_3__2_n_0\,
      S(0) => \i__carry__2_i_4__2_n_0\
    );
\disparity0_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__1/i__carry__2_n_0\,
      CO(3) => \disparity0_inferred__1/i__carry__3_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__1/i__carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(21 downto 18),
      O(3 downto 0) => disparity01_in(22 downto 19),
      S(3) => \i__carry__3_i_1__0_n_0\,
      S(2) => \i__carry__3_i_2__0_n_0\,
      S(1) => \i__carry__3_i_3__0_n_0\,
      S(0) => \i__carry__3_i_4__0_n_0\
    );
\disparity0_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__1/i__carry__3_n_0\,
      CO(3) => \disparity0_inferred__1/i__carry__4_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__1/i__carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(25 downto 22),
      O(3 downto 0) => disparity01_in(26 downto 23),
      S(3) => \i__carry__4_i_1__0_n_0\,
      S(2) => \i__carry__4_i_2__0_n_0\,
      S(1) => \i__carry__4_i_3__0_n_0\,
      S(0) => \i__carry__4_i_4__0_n_0\
    );
\disparity0_inferred__1/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__1/i__carry__4_n_0\,
      CO(3) => \disparity0_inferred__1/i__carry__5_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__1/i__carry__5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(29 downto 26),
      O(3 downto 0) => disparity01_in(30 downto 27),
      S(3) => \i__carry__5_i_1__0_n_0\,
      S(2) => \i__carry__5_i_2__0_n_0\,
      S(1) => \i__carry__5_i_3__0_n_0\,
      S(0) => \i__carry__5_i_4__0_n_0\
    );
\disparity0_inferred__1/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__1/i__carry__5_n_0\,
      CO(3 downto 0) => \NLW_disparity0_inferred__1/i__carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_disparity0_inferred__1/i__carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => disparity01_in(31),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__6_i_1__0_n_0\
    );
\disparity[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => \^co\(0),
      I2 => disparity(0),
      O => \p_1_in__0\(0)
    );
\disparity[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(10),
      I2 => \^co\(0),
      I3 => disparity0(10),
      O => \p_1_in__0\(10)
    );
\disparity[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(11),
      I2 => \^co\(0),
      I3 => disparity0(11),
      O => \p_1_in__0\(11)
    );
\disparity[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(12),
      I2 => \^co\(0),
      I3 => disparity0(12),
      O => \p_1_in__0\(12)
    );
\disparity[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(13),
      I2 => \^co\(0),
      I3 => disparity0(13),
      O => \p_1_in__0\(13)
    );
\disparity[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(14),
      I2 => \^co\(0),
      I3 => disparity0(14),
      O => \p_1_in__0\(14)
    );
\disparity[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(15),
      I2 => \^co\(0),
      I3 => disparity0(15),
      O => \p_1_in__0\(15)
    );
\disparity[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(16),
      I2 => \^co\(0),
      I3 => disparity0(16),
      O => \p_1_in__0\(16)
    );
\disparity[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(17),
      I2 => \^co\(0),
      I3 => disparity0(17),
      O => \p_1_in__0\(17)
    );
\disparity[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(18),
      I2 => \^co\(0),
      I3 => disparity0(18),
      O => \p_1_in__0\(18)
    );
\disparity[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(19),
      I2 => \^co\(0),
      I3 => disparity0(19),
      O => \p_1_in__0\(19)
    );
\disparity[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity(1),
      I2 => \^co\(0),
      I3 => disparity0(1),
      O => \p_1_in__0\(1)
    );
\disparity[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(20),
      I2 => \^co\(0),
      I3 => disparity0(20),
      O => \p_1_in__0\(20)
    );
\disparity[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(21),
      I2 => \^co\(0),
      I3 => disparity0(21),
      O => \p_1_in__0\(21)
    );
\disparity[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(22),
      I2 => \^co\(0),
      I3 => disparity0(22),
      O => \p_1_in__0\(22)
    );
\disparity[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(23),
      I2 => \^co\(0),
      I3 => disparity0(23),
      O => \p_1_in__0\(23)
    );
\disparity[24]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(24),
      I2 => \^co\(0),
      I3 => disparity0(24),
      O => \p_1_in__0\(24)
    );
\disparity[25]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(25),
      I2 => \^co\(0),
      I3 => disparity0(25),
      O => \p_1_in__0\(25)
    );
\disparity[26]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(26),
      I2 => \^co\(0),
      I3 => disparity0(26),
      O => \p_1_in__0\(26)
    );
\disparity[27]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(27),
      I2 => \^co\(0),
      I3 => disparity0(27),
      O => \p_1_in__0\(27)
    );
\disparity[28]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(28),
      I2 => \^co\(0),
      I3 => disparity0(28),
      O => \p_1_in__0\(28)
    );
\disparity[29]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(29),
      I2 => \^co\(0),
      I3 => disparity0(29),
      O => \p_1_in__0\(29)
    );
\disparity[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity(2),
      I2 => \^co\(0),
      I3 => disparity0(2),
      O => \p_1_in__0\(2)
    );
\disparity[30]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(30),
      I2 => \^co\(0),
      I3 => disparity0(30),
      O => \p_1_in__0\(30)
    );
\disparity[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(31),
      I2 => \^co\(0),
      I3 => disparity0(31),
      O => \p_1_in__0\(31)
    );
\disparity[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \disparity[31]_i_4__0_n_0\,
      I1 => \disparity[31]_i_5_n_0\,
      I2 => \disparity[31]_i_6__0_n_0\,
      I3 => \disparity[31]_i_7__0_n_0\,
      I4 => \disparity[31]_i_8__0_n_0\,
      I5 => \disparity[31]_i_9__0_n_0\,
      O => \^d_out22_in\
    );
\disparity[31]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => disparity(24),
      I1 => disparity(25),
      I2 => disparity(26),
      I3 => disparity(27),
      I4 => disparity(28),
      I5 => disparity(29),
      O => \disparity[31]_i_4__0_n_0\
    );
\disparity[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => disparity(6),
      I1 => disparity(7),
      I2 => disparity(8),
      I3 => disparity(9),
      I4 => disparity(10),
      I5 => disparity(11),
      O => \disparity[31]_i_5_n_0\
    );
\disparity[31]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => disparity(18),
      I1 => disparity(19),
      I2 => disparity(20),
      I3 => disparity(21),
      I4 => disparity(22),
      I5 => disparity(23),
      O => \disparity[31]_i_6__0_n_0\
    );
\disparity[31]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => disparity(12),
      I1 => disparity(13),
      I2 => disparity(14),
      I3 => disparity(15),
      I4 => disparity(16),
      I5 => disparity(17),
      O => \disparity[31]_i_7__0_n_0\
    );
\disparity[31]_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(30),
      I1 => disparity(31),
      O => \disparity[31]_i_8__0_n_0\
    );
\disparity[31]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => disparity(0),
      I1 => disparity(1),
      I2 => disparity(2),
      I3 => disparity(3),
      I4 => disparity(4),
      I5 => disparity(5),
      O => \disparity[31]_i_9__0_n_0\
    );
\disparity[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(3),
      I2 => \^co\(0),
      I3 => disparity0(3),
      O => \p_1_in__0\(3)
    );
\disparity[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(4),
      I2 => \^co\(0),
      I3 => disparity0(4),
      O => \p_1_in__0\(4)
    );
\disparity[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(5),
      I2 => \^co\(0),
      I3 => disparity0(5),
      O => \p_1_in__0\(5)
    );
\disparity[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(6),
      I2 => \^co\(0),
      I3 => disparity0(6),
      O => \p_1_in__0\(6)
    );
\disparity[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(7),
      I2 => \^co\(0),
      I3 => disparity0(7),
      O => \p_1_in__0\(7)
    );
\disparity[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(8),
      I2 => \^co\(0),
      I3 => disparity0(8),
      O => \p_1_in__0\(8)
    );
\disparity[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity01_in(9),
      I2 => \^co\(0),
      I3 => disparity0(9),
      O => \p_1_in__0\(9)
    );
\disparity_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(0),
      Q => disparity(0),
      R => SR(0)
    );
\disparity_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(10),
      Q => disparity(10),
      R => SR(0)
    );
\disparity_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(11),
      Q => disparity(11),
      R => SR(0)
    );
\disparity_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(12),
      Q => disparity(12),
      R => SR(0)
    );
\disparity_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[8]_i_2_n_0\,
      CO(3) => \disparity_reg[12]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[12]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(12 downto 9),
      S(3 downto 0) => disparity(12 downto 9)
    );
\disparity_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(13),
      Q => disparity(13),
      R => SR(0)
    );
\disparity_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(14),
      Q => disparity(14),
      R => SR(0)
    );
\disparity_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(15),
      Q => disparity(15),
      R => SR(0)
    );
\disparity_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(16),
      Q => disparity(16),
      R => SR(0)
    );
\disparity_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[12]_i_2_n_0\,
      CO(3) => \disparity_reg[16]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[16]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(16 downto 13),
      S(3 downto 0) => disparity(16 downto 13)
    );
\disparity_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(17),
      Q => disparity(17),
      R => SR(0)
    );
\disparity_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(18),
      Q => disparity(18),
      R => SR(0)
    );
\disparity_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(19),
      Q => disparity(19),
      R => SR(0)
    );
\disparity_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(1),
      Q => disparity(1),
      R => SR(0)
    );
\disparity_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(20),
      Q => disparity(20),
      R => SR(0)
    );
\disparity_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[16]_i_2_n_0\,
      CO(3) => \disparity_reg[20]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[20]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(20 downto 17),
      S(3 downto 0) => disparity(20 downto 17)
    );
\disparity_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(21),
      Q => disparity(21),
      R => SR(0)
    );
\disparity_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(22),
      Q => disparity(22),
      R => SR(0)
    );
\disparity_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(23),
      Q => disparity(23),
      R => SR(0)
    );
\disparity_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(24),
      Q => disparity(24),
      R => SR(0)
    );
\disparity_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[20]_i_2_n_0\,
      CO(3) => \disparity_reg[24]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[24]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(24 downto 21),
      S(3 downto 0) => disparity(24 downto 21)
    );
\disparity_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(25),
      Q => disparity(25),
      R => SR(0)
    );
\disparity_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(26),
      Q => disparity(26),
      R => SR(0)
    );
\disparity_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(27),
      Q => disparity(27),
      R => SR(0)
    );
\disparity_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(28),
      Q => disparity(28),
      R => SR(0)
    );
\disparity_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[24]_i_2_n_0\,
      CO(3) => \disparity_reg[28]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[28]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(28 downto 25),
      S(3 downto 0) => disparity(28 downto 25)
    );
\disparity_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(29),
      Q => disparity(29),
      R => SR(0)
    );
\disparity_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(2),
      Q => disparity(2),
      R => SR(0)
    );
\disparity_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(30),
      Q => disparity(30),
      R => SR(0)
    );
\disparity_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(31),
      Q => disparity(31),
      R => SR(0)
    );
\disparity_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[28]_i_2_n_0\,
      CO(3 downto 0) => \NLW_disparity_reg[31]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_disparity_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => disparity0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => disparity(31 downto 29)
    );
\disparity_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(3),
      Q => disparity(3),
      R => SR(0)
    );
\disparity_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(4),
      Q => disparity(4),
      R => SR(0)
    );
\disparity_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \disparity_reg[4]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[4]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => disparity(0),
      DI(3) => '0',
      DI(2 downto 0) => disparity(3 downto 1),
      O(3 downto 0) => disparity0(4 downto 1),
      S(3 downto 0) => disparity(4 downto 1)
    );
\disparity_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(5),
      Q => disparity(5),
      R => SR(0)
    );
\disparity_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(6),
      Q => disparity(6),
      R => SR(0)
    );
\disparity_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(7),
      Q => disparity(7),
      R => SR(0)
    );
\disparity_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(8),
      Q => disparity(8),
      R => SR(0)
    );
\disparity_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[4]_i_2_n_0\,
      CO(3) => \disparity_reg[8]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[8]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(8 downto 5),
      S(3 downto 0) => disparity(8 downto 5)
    );
\disparity_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(9),
      Q => disparity(9),
      R => SR(0)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(14),
      I1 => disparity(15),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(9),
      I1 => disparity(10),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(12),
      I1 => disparity(13),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(8),
      I1 => disparity(9),
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(10),
      I1 => disparity(11),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(7),
      I1 => disparity(8),
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(8),
      I1 => disparity(9),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(6),
      I1 => disparity(7),
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(14),
      I1 => disparity(15),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(12),
      I1 => disparity(13),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(10),
      I1 => disparity(11),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(8),
      I1 => disparity(9),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(22),
      I1 => disparity(23),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(13),
      I1 => disparity(14),
      O => \i__carry__1_i_1__2_n_0\
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(20),
      I1 => disparity(21),
      O => \i__carry__1_i_2__1_n_0\
    );
\i__carry__1_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(12),
      I1 => disparity(13),
      O => \i__carry__1_i_2__2_n_0\
    );
\i__carry__1_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(18),
      I1 => disparity(19),
      O => \i__carry__1_i_3__1_n_0\
    );
\i__carry__1_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(11),
      I1 => disparity(12),
      O => \i__carry__1_i_3__2_n_0\
    );
\i__carry__1_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(16),
      I1 => disparity(17),
      O => \i__carry__1_i_4__1_n_0\
    );
\i__carry__1_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(10),
      I1 => disparity(11),
      O => \i__carry__1_i_4__2_n_0\
    );
\i__carry__1_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(22),
      I1 => disparity(23),
      O => \i__carry__1_i_5__0_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(20),
      I1 => disparity(21),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(18),
      I1 => disparity(19),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(16),
      I1 => disparity(17),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => disparity(30),
      I1 => disparity(31),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(17),
      I1 => disparity(18),
      O => \i__carry__2_i_1__1_n_0\
    );
\i__carry__2_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(28),
      I1 => disparity(29),
      O => \i__carry__2_i_2__1_n_0\
    );
\i__carry__2_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(16),
      I1 => disparity(17),
      O => \i__carry__2_i_2__2_n_0\
    );
\i__carry__2_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(26),
      I1 => disparity(27),
      O => \i__carry__2_i_3__1_n_0\
    );
\i__carry__2_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(15),
      I1 => disparity(16),
      O => \i__carry__2_i_3__2_n_0\
    );
\i__carry__2_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(24),
      I1 => disparity(25),
      O => \i__carry__2_i_4__1_n_0\
    );
\i__carry__2_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(14),
      I1 => disparity(15),
      O => \i__carry__2_i_4__2_n_0\
    );
\i__carry__2_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(30),
      I1 => disparity(31),
      O => \i__carry__2_i_5__1_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(28),
      I1 => disparity(29),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(26),
      I1 => disparity(27),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(24),
      I1 => disparity(25),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry__3_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(21),
      I1 => disparity(22),
      O => \i__carry__3_i_1__0_n_0\
    );
\i__carry__3_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(20),
      I1 => disparity(21),
      O => \i__carry__3_i_2__0_n_0\
    );
\i__carry__3_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(19),
      I1 => disparity(20),
      O => \i__carry__3_i_3__0_n_0\
    );
\i__carry__3_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(18),
      I1 => disparity(19),
      O => \i__carry__3_i_4__0_n_0\
    );
\i__carry__4_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(25),
      I1 => disparity(26),
      O => \i__carry__4_i_1__0_n_0\
    );
\i__carry__4_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(24),
      I1 => disparity(25),
      O => \i__carry__4_i_2__0_n_0\
    );
\i__carry__4_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(23),
      I1 => disparity(24),
      O => \i__carry__4_i_3__0_n_0\
    );
\i__carry__4_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(22),
      I1 => disparity(23),
      O => \i__carry__4_i_4__0_n_0\
    );
\i__carry__5_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(29),
      I1 => disparity(30),
      O => \i__carry__5_i_1__0_n_0\
    );
\i__carry__5_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(28),
      I1 => disparity(29),
      O => \i__carry__5_i_2__0_n_0\
    );
\i__carry__5_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(27),
      I1 => disparity(28),
      O => \i__carry__5_i_3__0_n_0\
    );
\i__carry__5_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(26),
      I1 => disparity(27),
      O => \i__carry__5_i_4__0_n_0\
    );
\i__carry__6_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(30),
      I1 => disparity(31),
      O => \i__carry__6_i_1__0_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(6),
      I1 => disparity(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(5),
      I1 => disparity(6),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(4),
      I1 => disparity(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(4),
      I1 => disparity(5),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(2),
      I1 => disparity(3),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => disparity(3),
      I1 => disparity(4),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(0),
      I1 => disparity(1),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(3),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(6),
      I1 => disparity(7),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(4),
      I1 => disparity(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(2),
      I1 => disparity(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(0),
      I1 => disparity(1),
      O => \i__carry_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tmds_encoder_1 is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out22_in : out STD_LOGIC;
    \d_out_reg[9]_0\ : out STD_LOGIC;
    is_video_active : in STD_LOGIC;
    CTL32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    bit_cnt : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    buffer_clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \d_out_reg[8]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of tmds_encoder_1 : entity is "tmds_encoder";
end tmds_encoder_1;

architecture STRUCTURE of tmds_encoder_1 is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^d_out22_in\ : STD_LOGIC;
  signal \d_out3_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \d_out3_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \d_out3_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \d_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \d_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \d_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \d_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_35_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_36_n_0\ : STD_LOGIC;
  signal \data_r_reg[1]_i_21_n_0\ : STD_LOGIC;
  signal disparity : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal disparity0 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal disparity00_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal disparity02_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \disparity0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \disparity0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \disparity[11]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[11]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[11]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[11]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[15]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[15]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[15]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[15]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[19]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[19]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[19]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[19]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[23]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[23]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[23]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[23]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[27]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[27]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[27]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[27]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_10_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_11_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_12_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_13_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_14_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_15_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_6_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_7_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_8_n_0\ : STD_LOGIC;
  signal \disparity[31]_i_9_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[3]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[7]_i_3_n_0\ : STD_LOGIC;
  signal \disparity[7]_i_4_n_0\ : STD_LOGIC;
  signal \disparity[7]_i_5_n_0\ : STD_LOGIC;
  signal \disparity[7]_i_6_n_0\ : STD_LOGIC;
  signal \disparity_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \disparity_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tmds_buffer_r : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out3_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disparity0_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__0/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__0/i__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__0/i__carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity0_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disparity0_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_disparity_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[23]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[27]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[31]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disparity_reg[3]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disparity_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i__carry__0_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i__carry__1_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i__carry__2_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i__carry__3_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i__carry__4_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i__carry__5_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i__carry__6_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i__carry__6_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i__carry_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \d_out3_inferred__0/i__carry\ : label is 11;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \d_out3_inferred__0/i__carry\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of \d_out3_inferred__0/i__carry__0\ : label is 11;
  attribute OPT_MODIFIED of \d_out3_inferred__0/i__carry__0\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of \d_out3_inferred__0/i__carry__1\ : label is 11;
  attribute OPT_MODIFIED of \d_out3_inferred__0/i__carry__1\ : label is "SWEEP";
  attribute COMPARATOR_THRESHOLD of \d_out3_inferred__0/i__carry__2\ : label is 11;
  attribute OPT_MODIFIED of \d_out3_inferred__0/i__carry__2\ : label is "SWEEP";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \d_out[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \d_out[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \d_out[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \d_out[6]_i_1\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \disparity0_inferred__0/i__carry\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__0/i__carry\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__0/i__carry__0\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__0/i__carry__0\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__0/i__carry__1\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__0/i__carry__1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__0/i__carry__2\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__0/i__carry__2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__0/i__carry__3\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__0/i__carry__3\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__0/i__carry__4\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__0/i__carry__4\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__0/i__carry__5\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__0/i__carry__5\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity0_inferred__0/i__carry__6\ : label is 35;
  attribute OPT_MODIFIED of \disparity0_inferred__0/i__carry__6\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[11]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[11]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[15]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[15]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[19]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[19]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[23]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[23]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[27]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[27]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[31]_i_5\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[31]_i_5\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[3]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[3]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \disparity_reg[7]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \disparity_reg[7]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \i__carry__0_i_1__1\ : label is 35;
  attribute OPT_MODIFIED of \i__carry__0_i_1__1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \i__carry__1_i_1__1\ : label is 35;
  attribute OPT_MODIFIED of \i__carry__1_i_1__1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \i__carry__2_i_1\ : label is 35;
  attribute OPT_MODIFIED of \i__carry__2_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \i__carry__3_i_1\ : label is 35;
  attribute OPT_MODIFIED of \i__carry__3_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \i__carry__4_i_1\ : label is 35;
  attribute OPT_MODIFIED of \i__carry__4_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \i__carry__5_i_1\ : label is 35;
  attribute OPT_MODIFIED of \i__carry__5_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \i__carry__6_i_1\ : label is 35;
  attribute OPT_MODIFIED of \i__carry__6_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \i__carry_i_1__1\ : label is 35;
  attribute OPT_MODIFIED of \i__carry_i_1__1\ : label is "SWEEP";
begin
  CO(0) <= \^co\(0);
  d_out22_in <= \^d_out22_in\;
\d_out3_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \d_out3_inferred__0/i__carry_n_0\,
      CO(2 downto 0) => \NLW_d_out3_inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_d_out3_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\d_out3_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out3_inferred__0/i__carry_n_0\,
      CO(3) => \d_out3_inferred__0/i__carry__0_n_0\,
      CO(2 downto 0) => \NLW_d_out3_inferred__0/i__carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_d_out3_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__1_n_0\,
      S(2) => \i__carry__0_i_6__0_n_0\,
      S(1) => \i__carry__0_i_7__0_n_0\,
      S(0) => \i__carry__0_i_8__0_n_0\
    );
\d_out3_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out3_inferred__0/i__carry__0_n_0\,
      CO(3) => \d_out3_inferred__0/i__carry__1_n_0\,
      CO(2 downto 0) => \NLW_d_out3_inferred__0/i__carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2__0_n_0\,
      DI(1) => \i__carry__1_i_3__0_n_0\,
      DI(0) => \i__carry__1_i_4__0_n_0\,
      O(3 downto 0) => \NLW_d_out3_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5__1_n_0\,
      S(2) => \i__carry__1_i_6__0_n_0\,
      S(1) => \i__carry__1_i_7__0_n_0\,
      S(0) => \i__carry__1_i_8__0_n_0\
    );
\d_out3_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out3_inferred__0/i__carry__1_n_0\,
      CO(3) => \^co\(0),
      CO(2 downto 0) => \NLW_d_out3_inferred__0/i__carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1__2_n_0\,
      DI(2) => \i__carry__2_i_2__0_n_0\,
      DI(1) => \i__carry__2_i_3__0_n_0\,
      DI(0) => \i__carry__2_i_4__0_n_0\,
      O(3 downto 0) => \NLW_d_out3_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5__0_n_0\,
      S(2) => \i__carry__2_i_6__0_n_0\,
      S(1) => \i__carry__2_i_7__0_n_0\,
      S(0) => \i__carry__2_i_8__0_n_0\
    );
\d_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => \^co\(0),
      I2 => is_video_active,
      I3 => CTL32(0),
      O => \d_out[0]_i_1_n_0\
    );
\d_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \^co\(0),
      I1 => \^d_out22_in\,
      I2 => is_video_active,
      I3 => CTL32(0),
      O => \d_out[1]_i_1_n_0\
    );
\d_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"101F"
    )
        port map (
      I0 => \^co\(0),
      I1 => \^d_out22_in\,
      I2 => is_video_active,
      I3 => CTL32(0),
      O => \d_out[2]_i_1_n_0\
    );
\d_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EF"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => \^co\(0),
      I2 => is_video_active,
      I3 => CTL32(0),
      O => \d_out[6]_i_1_n_0\
    );
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out[0]_i_1_n_0\,
      Q => tmds_buffer_r(0),
      R => '0'
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out[1]_i_1_n_0\,
      Q => tmds_buffer_r(1),
      R => '0'
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out[2]_i_1_n_0\,
      Q => tmds_buffer_r(2),
      R => '0'
    );
\d_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out[6]_i_1_n_0\,
      Q => tmds_buffer_r(6),
      R => '0'
    );
\d_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \d_out_reg[8]_0\,
      Q => tmds_buffer_r(8),
      R => is_video_active
    );
\d_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => D(0),
      Q => tmds_buffer_r(9),
      R => '0'
    );
\data_r[1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmds_buffer_r(9),
      I1 => bit_cnt(0),
      I2 => tmds_buffer_r(8),
      I3 => bit_cnt(3),
      I4 => \data_r_reg[1]_i_21_n_0\,
      O => \d_out_reg[9]_0\
    );
\data_r[1]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => tmds_buffer_r(2),
      I1 => bit_cnt(1),
      I2 => tmds_buffer_r(1),
      I3 => bit_cnt(0),
      I4 => tmds_buffer_r(0),
      O => \data_r[1]_i_35_n_0\
    );
\data_r[1]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => tmds_buffer_r(6),
      I1 => bit_cnt(1),
      I2 => tmds_buffer_r(1),
      I3 => bit_cnt(0),
      I4 => tmds_buffer_r(2),
      O => \data_r[1]_i_36_n_0\
    );
\data_r_reg[1]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_r[1]_i_35_n_0\,
      I1 => \data_r[1]_i_36_n_0\,
      O => \data_r_reg[1]_i_21_n_0\,
      S => bit_cnt(2)
    );
\disparity0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \disparity0_inferred__0/i__carry_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => disparity(0),
      DI(3 downto 1) => disparity0(4 downto 2),
      DI(0) => \i__carry_i_2__1_n_0\,
      O(3 downto 0) => disparity00_in(4 downto 1),
      S(3) => \i__carry_i_3_n_0\,
      S(2) => \i__carry_i_4_n_0\,
      S(1) => \i__carry_i_5_n_0\,
      S(0) => disparity(1)
    );
\disparity0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__0/i__carry_n_0\,
      CO(3) => \disparity0_inferred__0/i__carry__0_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__0/i__carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity0(8 downto 5),
      O(3 downto 0) => disparity00_in(8 downto 5),
      S(3) => \i__carry__0_i_2_n_0\,
      S(2) => \i__carry__0_i_3_n_0\,
      S(1) => \i__carry__0_i_4_n_0\,
      S(0) => \i__carry__0_i_5_n_0\
    );
\disparity0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__0/i__carry__0_n_0\,
      CO(3) => \disparity0_inferred__0/i__carry__1_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__0/i__carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity0(12 downto 9),
      O(3 downto 0) => disparity00_in(12 downto 9),
      S(3) => \i__carry__1_i_2_n_0\,
      S(2) => \i__carry__1_i_3_n_0\,
      S(1) => \i__carry__1_i_4_n_0\,
      S(0) => \i__carry__1_i_5_n_0\
    );
\disparity0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__0/i__carry__1_n_0\,
      CO(3) => \disparity0_inferred__0/i__carry__2_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__0/i__carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity0(16 downto 13),
      O(3 downto 0) => disparity00_in(16 downto 13),
      S(3) => \i__carry__2_i_2_n_0\,
      S(2) => \i__carry__2_i_3_n_0\,
      S(1) => \i__carry__2_i_4_n_0\,
      S(0) => \i__carry__2_i_5_n_0\
    );
\disparity0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__0/i__carry__2_n_0\,
      CO(3) => \disparity0_inferred__0/i__carry__3_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__0/i__carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity0(20 downto 17),
      O(3 downto 0) => disparity00_in(20 downto 17),
      S(3) => \i__carry__3_i_2_n_0\,
      S(2) => \i__carry__3_i_3_n_0\,
      S(1) => \i__carry__3_i_4_n_0\,
      S(0) => \i__carry__3_i_5_n_0\
    );
\disparity0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__0/i__carry__3_n_0\,
      CO(3) => \disparity0_inferred__0/i__carry__4_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__0/i__carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity0(24 downto 21),
      O(3 downto 0) => disparity00_in(24 downto 21),
      S(3) => \i__carry__4_i_2_n_0\,
      S(2) => \i__carry__4_i_3_n_0\,
      S(1) => \i__carry__4_i_4_n_0\,
      S(0) => \i__carry__4_i_5_n_0\
    );
\disparity0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__0/i__carry__4_n_0\,
      CO(3) => \disparity0_inferred__0/i__carry__5_n_0\,
      CO(2 downto 0) => \NLW_disparity0_inferred__0/i__carry__5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity0(28 downto 25),
      O(3 downto 0) => disparity00_in(28 downto 25),
      S(3) => \i__carry__5_i_2_n_0\,
      S(2) => \i__carry__5_i_3_n_0\,
      S(1) => \i__carry__5_i_4_n_0\,
      S(0) => \i__carry__5_i_5_n_0\
    );
\disparity0_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity0_inferred__0/i__carry__5_n_0\,
      CO(3 downto 0) => \NLW_disparity0_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => disparity0(30 downto 29),
      O(3) => \NLW_disparity0_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => disparity00_in(31 downto 29),
      S(3) => '0',
      S(2) => \i__carry__6_i_2_n_0\,
      S(1) => \i__carry__6_i_3_n_0\,
      S(0) => \i__carry__6_i_4_n_0\
    );
\disparity[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C8CD"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(0),
      I2 => \^co\(0),
      I3 => disparity(0),
      O => \p_1_in__0\(0)
    );
\disparity[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(10),
      I2 => \^co\(0),
      I3 => disparity00_in(10),
      O => \p_1_in__0\(10)
    );
\disparity[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(11),
      I2 => \^co\(0),
      I3 => disparity00_in(11),
      O => \p_1_in__0\(11)
    );
\disparity[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(11),
      O => \disparity[11]_i_3_n_0\
    );
\disparity[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(10),
      O => \disparity[11]_i_4_n_0\
    );
\disparity[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(9),
      O => \disparity[11]_i_5_n_0\
    );
\disparity[11]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(8),
      O => \disparity[11]_i_6_n_0\
    );
\disparity[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(12),
      I2 => \^co\(0),
      I3 => disparity00_in(12),
      O => \p_1_in__0\(12)
    );
\disparity[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(13),
      I2 => \^co\(0),
      I3 => disparity00_in(13),
      O => \p_1_in__0\(13)
    );
\disparity[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(14),
      I2 => \^co\(0),
      I3 => disparity00_in(14),
      O => \p_1_in__0\(14)
    );
\disparity[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(15),
      I2 => \^co\(0),
      I3 => disparity00_in(15),
      O => \p_1_in__0\(15)
    );
\disparity[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(15),
      O => \disparity[15]_i_3_n_0\
    );
\disparity[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(14),
      O => \disparity[15]_i_4_n_0\
    );
\disparity[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(13),
      O => \disparity[15]_i_5_n_0\
    );
\disparity[15]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(12),
      O => \disparity[15]_i_6_n_0\
    );
\disparity[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(16),
      I2 => \^co\(0),
      I3 => disparity00_in(16),
      O => \p_1_in__0\(16)
    );
\disparity[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(17),
      I2 => \^co\(0),
      I3 => disparity00_in(17),
      O => \p_1_in__0\(17)
    );
\disparity[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(18),
      I2 => \^co\(0),
      I3 => disparity00_in(18),
      O => \p_1_in__0\(18)
    );
\disparity[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(19),
      I2 => \^co\(0),
      I3 => disparity00_in(19),
      O => \p_1_in__0\(19)
    );
\disparity[19]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(19),
      O => \disparity[19]_i_3_n_0\
    );
\disparity[19]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(18),
      O => \disparity[19]_i_4_n_0\
    );
\disparity[19]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(17),
      O => \disparity[19]_i_5_n_0\
    );
\disparity[19]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(16),
      O => \disparity[19]_i_6_n_0\
    );
\disparity[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(1),
      I2 => \^co\(0),
      I3 => disparity00_in(1),
      O => \p_1_in__0\(1)
    );
\disparity[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(20),
      I2 => \^co\(0),
      I3 => disparity00_in(20),
      O => \p_1_in__0\(20)
    );
\disparity[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(21),
      I2 => \^co\(0),
      I3 => disparity00_in(21),
      O => \p_1_in__0\(21)
    );
\disparity[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(22),
      I2 => \^co\(0),
      I3 => disparity00_in(22),
      O => \p_1_in__0\(22)
    );
\disparity[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(23),
      I2 => \^co\(0),
      I3 => disparity00_in(23),
      O => \p_1_in__0\(23)
    );
\disparity[23]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(23),
      O => \disparity[23]_i_3_n_0\
    );
\disparity[23]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(22),
      O => \disparity[23]_i_4_n_0\
    );
\disparity[23]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(21),
      O => \disparity[23]_i_5_n_0\
    );
\disparity[23]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(20),
      O => \disparity[23]_i_6_n_0\
    );
\disparity[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(24),
      I2 => \^co\(0),
      I3 => disparity00_in(24),
      O => \p_1_in__0\(24)
    );
\disparity[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(25),
      I2 => \^co\(0),
      I3 => disparity00_in(25),
      O => \p_1_in__0\(25)
    );
\disparity[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(26),
      I2 => \^co\(0),
      I3 => disparity00_in(26),
      O => \p_1_in__0\(26)
    );
\disparity[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(27),
      I2 => \^co\(0),
      I3 => disparity00_in(27),
      O => \p_1_in__0\(27)
    );
\disparity[27]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(27),
      O => \disparity[27]_i_3_n_0\
    );
\disparity[27]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(26),
      O => \disparity[27]_i_4_n_0\
    );
\disparity[27]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(25),
      O => \disparity[27]_i_5_n_0\
    );
\disparity[27]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(24),
      O => \disparity[27]_i_6_n_0\
    );
\disparity[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(28),
      I2 => \^co\(0),
      I3 => disparity00_in(28),
      O => \p_1_in__0\(28)
    );
\disparity[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(29),
      I2 => \^co\(0),
      I3 => disparity00_in(29),
      O => \p_1_in__0\(29)
    );
\disparity[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(2),
      I2 => \^co\(0),
      I3 => disparity00_in(2),
      O => \p_1_in__0\(2)
    );
\disparity[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(30),
      I2 => \^co\(0),
      I3 => disparity00_in(30),
      O => \p_1_in__0\(30)
    );
\disparity[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(30),
      I1 => disparity(31),
      O => \disparity[31]_i_10_n_0\
    );
\disparity[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => disparity(0),
      I1 => disparity(1),
      I2 => disparity(2),
      I3 => disparity(3),
      I4 => disparity(4),
      I5 => disparity(5),
      O => \disparity[31]_i_11_n_0\
    );
\disparity[31]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(31),
      O => \disparity[31]_i_12_n_0\
    );
\disparity[31]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(30),
      O => \disparity[31]_i_13_n_0\
    );
\disparity[31]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(29),
      O => \disparity[31]_i_14_n_0\
    );
\disparity[31]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(28),
      O => \disparity[31]_i_15_n_0\
    );
\disparity[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(31),
      I2 => \^co\(0),
      I3 => disparity00_in(31),
      O => \p_1_in__0\(31)
    );
\disparity[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \disparity[31]_i_6_n_0\,
      I1 => \disparity[31]_i_7_n_0\,
      I2 => \disparity[31]_i_8_n_0\,
      I3 => \disparity[31]_i_9_n_0\,
      I4 => \disparity[31]_i_10_n_0\,
      I5 => \disparity[31]_i_11_n_0\,
      O => \^d_out22_in\
    );
\disparity[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => disparity(24),
      I1 => disparity(25),
      I2 => disparity(26),
      I3 => disparity(27),
      I4 => disparity(28),
      I5 => disparity(29),
      O => \disparity[31]_i_6_n_0\
    );
\disparity[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => disparity(6),
      I1 => disparity(7),
      I2 => disparity(8),
      I3 => disparity(9),
      I4 => disparity(10),
      I5 => disparity(11),
      O => \disparity[31]_i_7_n_0\
    );
\disparity[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => disparity(18),
      I1 => disparity(19),
      I2 => disparity(20),
      I3 => disparity(21),
      I4 => disparity(22),
      I5 => disparity(23),
      O => \disparity[31]_i_8_n_0\
    );
\disparity[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => disparity(12),
      I1 => disparity(13),
      I2 => disparity(14),
      I3 => disparity(15),
      I4 => disparity(16),
      I5 => disparity(17),
      O => \disparity[31]_i_9_n_0\
    );
\disparity[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(3),
      I2 => \^co\(0),
      I3 => disparity00_in(3),
      O => \p_1_in__0\(3)
    );
\disparity[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(3),
      O => \disparity[3]_i_3_n_0\
    );
\disparity[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(2),
      O => \disparity[3]_i_4_n_0\
    );
\disparity[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(0),
      O => \disparity[3]_i_5_n_0\
    );
\disparity[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(4),
      I2 => \^co\(0),
      I3 => disparity00_in(4),
      O => \p_1_in__0\(4)
    );
\disparity[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(5),
      I2 => \^co\(0),
      I3 => disparity00_in(5),
      O => \p_1_in__0\(5)
    );
\disparity[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(6),
      I2 => \^co\(0),
      I3 => disparity00_in(6),
      O => \p_1_in__0\(6)
    );
\disparity[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(7),
      I2 => \^co\(0),
      I3 => disparity00_in(7),
      O => \p_1_in__0\(7)
    );
\disparity[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(7),
      O => \disparity[7]_i_3_n_0\
    );
\disparity[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(6),
      O => \disparity[7]_i_4_n_0\
    );
\disparity[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(5),
      O => \disparity[7]_i_5_n_0\
    );
\disparity[7]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(4),
      O => \disparity[7]_i_6_n_0\
    );
\disparity[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(8),
      I2 => \^co\(0),
      I3 => disparity00_in(8),
      O => \p_1_in__0\(8)
    );
\disparity[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \^d_out22_in\,
      I1 => disparity02_in(9),
      I2 => \^co\(0),
      I3 => disparity00_in(9),
      O => \p_1_in__0\(9)
    );
\disparity_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(0),
      Q => disparity(0),
      R => SR(0)
    );
\disparity_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(10),
      Q => disparity(10),
      R => SR(0)
    );
\disparity_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(11),
      Q => disparity(11),
      R => SR(0)
    );
\disparity_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[7]_i_2_n_0\,
      CO(3) => \disparity_reg[11]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[11]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(11 downto 8),
      O(3 downto 0) => disparity02_in(11 downto 8),
      S(3) => \disparity[11]_i_3_n_0\,
      S(2) => \disparity[11]_i_4_n_0\,
      S(1) => \disparity[11]_i_5_n_0\,
      S(0) => \disparity[11]_i_6_n_0\
    );
\disparity_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(12),
      Q => disparity(12),
      R => SR(0)
    );
\disparity_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(13),
      Q => disparity(13),
      R => SR(0)
    );
\disparity_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(14),
      Q => disparity(14),
      R => SR(0)
    );
\disparity_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(15),
      Q => disparity(15),
      R => SR(0)
    );
\disparity_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[11]_i_2_n_0\,
      CO(3) => \disparity_reg[15]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[15]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(15 downto 12),
      O(3 downto 0) => disparity02_in(15 downto 12),
      S(3) => \disparity[15]_i_3_n_0\,
      S(2) => \disparity[15]_i_4_n_0\,
      S(1) => \disparity[15]_i_5_n_0\,
      S(0) => \disparity[15]_i_6_n_0\
    );
\disparity_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(16),
      Q => disparity(16),
      R => SR(0)
    );
\disparity_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(17),
      Q => disparity(17),
      R => SR(0)
    );
\disparity_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(18),
      Q => disparity(18),
      R => SR(0)
    );
\disparity_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(19),
      Q => disparity(19),
      R => SR(0)
    );
\disparity_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[15]_i_2_n_0\,
      CO(3) => \disparity_reg[19]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[19]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(19 downto 16),
      O(3 downto 0) => disparity02_in(19 downto 16),
      S(3) => \disparity[19]_i_3_n_0\,
      S(2) => \disparity[19]_i_4_n_0\,
      S(1) => \disparity[19]_i_5_n_0\,
      S(0) => \disparity[19]_i_6_n_0\
    );
\disparity_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(1),
      Q => disparity(1),
      R => SR(0)
    );
\disparity_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(20),
      Q => disparity(20),
      R => SR(0)
    );
\disparity_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(21),
      Q => disparity(21),
      R => SR(0)
    );
\disparity_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(22),
      Q => disparity(22),
      R => SR(0)
    );
\disparity_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(23),
      Q => disparity(23),
      R => SR(0)
    );
\disparity_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[19]_i_2_n_0\,
      CO(3) => \disparity_reg[23]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[23]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(23 downto 20),
      O(3 downto 0) => disparity02_in(23 downto 20),
      S(3) => \disparity[23]_i_3_n_0\,
      S(2) => \disparity[23]_i_4_n_0\,
      S(1) => \disparity[23]_i_5_n_0\,
      S(0) => \disparity[23]_i_6_n_0\
    );
\disparity_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(24),
      Q => disparity(24),
      R => SR(0)
    );
\disparity_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(25),
      Q => disparity(25),
      R => SR(0)
    );
\disparity_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(26),
      Q => disparity(26),
      R => SR(0)
    );
\disparity_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(27),
      Q => disparity(27),
      R => SR(0)
    );
\disparity_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[23]_i_2_n_0\,
      CO(3) => \disparity_reg[27]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[27]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(27 downto 24),
      O(3 downto 0) => disparity02_in(27 downto 24),
      S(3) => \disparity[27]_i_3_n_0\,
      S(2) => \disparity[27]_i_4_n_0\,
      S(1) => \disparity[27]_i_5_n_0\,
      S(0) => \disparity[27]_i_6_n_0\
    );
\disparity_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(28),
      Q => disparity(28),
      R => SR(0)
    );
\disparity_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(29),
      Q => disparity(29),
      R => SR(0)
    );
\disparity_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(2),
      Q => disparity(2),
      R => SR(0)
    );
\disparity_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(30),
      Q => disparity(30),
      R => SR(0)
    );
\disparity_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(31),
      Q => disparity(31),
      R => SR(0)
    );
\disparity_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[27]_i_2_n_0\,
      CO(3 downto 0) => \NLW_disparity_reg[31]_i_5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => disparity(30 downto 28),
      O(3 downto 0) => disparity02_in(31 downto 28),
      S(3) => \disparity[31]_i_12_n_0\,
      S(2) => \disparity[31]_i_13_n_0\,
      S(1) => \disparity[31]_i_14_n_0\,
      S(0) => \disparity[31]_i_15_n_0\
    );
\disparity_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(3),
      Q => disparity(3),
      R => SR(0)
    );
\disparity_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \disparity_reg[3]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[3]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => disparity(3 downto 0),
      O(3 downto 0) => disparity02_in(3 downto 0),
      S(3) => \disparity[3]_i_3_n_0\,
      S(2) => \disparity[3]_i_4_n_0\,
      S(1) => disparity(1),
      S(0) => \disparity[3]_i_5_n_0\
    );
\disparity_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(4),
      Q => disparity(4),
      R => SR(0)
    );
\disparity_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(5),
      Q => disparity(5),
      R => SR(0)
    );
\disparity_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(6),
      Q => disparity(6),
      R => SR(0)
    );
\disparity_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(7),
      Q => disparity(7),
      R => SR(0)
    );
\disparity_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \disparity_reg[3]_i_2_n_0\,
      CO(3) => \disparity_reg[7]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disparity_reg[7]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => disparity(7 downto 4),
      O(3 downto 0) => disparity02_in(7 downto 4),
      S(3) => \disparity[7]_i_3_n_0\,
      S(2) => \disparity[7]_i_4_n_0\,
      S(1) => \disparity[7]_i_5_n_0\,
      S(0) => \disparity[7]_i_6_n_0\
    );
\disparity_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(8),
      Q => disparity(8),
      R => SR(0)
    );
\disparity_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => buffer_clk,
      CE => '1',
      D => \p_1_in__0\(9),
      Q => disparity(9),
      R => SR(0)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(14),
      I1 => disparity(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_1__1_n_0\,
      CO(3) => \i__carry__0_i_1__1_n_0\,
      CO(2 downto 0) => \NLW_i__carry__0_i_1__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(9 downto 6),
      S(3 downto 0) => disparity(9 downto 6)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(8),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(12),
      I1 => disparity(13),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(7),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(10),
      I1 => disparity(11),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(6),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(8),
      I1 => disparity(9),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(5),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(14),
      I1 => disparity(15),
      O => \i__carry__0_i_5__1_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(12),
      I1 => disparity(13),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(10),
      I1 => disparity(11),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(8),
      I1 => disparity(9),
      O => \i__carry__0_i_8__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(22),
      I1 => disparity(23),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__0_i_1__1_n_0\,
      CO(3) => \i__carry__1_i_1__1_n_0\,
      CO(2 downto 0) => \NLW_i__carry__1_i_1__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(13 downto 10),
      S(3 downto 0) => disparity(13 downto 10)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(12),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(20),
      I1 => disparity(21),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(11),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(18),
      I1 => disparity(19),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(10),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(16),
      I1 => disparity(17),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(9),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(22),
      I1 => disparity(23),
      O => \i__carry__1_i_5__1_n_0\
    );
\i__carry__1_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(20),
      I1 => disparity(21),
      O => \i__carry__1_i_6__0_n_0\
    );
\i__carry__1_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(18),
      I1 => disparity(19),
      O => \i__carry__1_i_7__0_n_0\
    );
\i__carry__1_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(16),
      I1 => disparity(17),
      O => \i__carry__1_i_8__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__1_i_1__1_n_0\,
      CO(3) => \i__carry__2_i_1_n_0\,
      CO(2 downto 0) => \NLW_i__carry__2_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(17 downto 14),
      S(3 downto 0) => disparity(17 downto 14)
    );
\i__carry__2_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => disparity(30),
      I1 => disparity(31),
      O => \i__carry__2_i_1__2_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(16),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(28),
      I1 => disparity(29),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(15),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(26),
      I1 => disparity(27),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(14),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(24),
      I1 => disparity(25),
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(13),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(30),
      I1 => disparity(31),
      O => \i__carry__2_i_5__0_n_0\
    );
\i__carry__2_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(28),
      I1 => disparity(29),
      O => \i__carry__2_i_6__0_n_0\
    );
\i__carry__2_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(26),
      I1 => disparity(27),
      O => \i__carry__2_i_7__0_n_0\
    );
\i__carry__2_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(24),
      I1 => disparity(25),
      O => \i__carry__2_i_8__0_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__2_i_1_n_0\,
      CO(3) => \i__carry__3_i_1_n_0\,
      CO(2 downto 0) => \NLW_i__carry__3_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(21 downto 18),
      S(3 downto 0) => disparity(21 downto 18)
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(20),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(19),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(18),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__3_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(17),
      O => \i__carry__3_i_5_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__3_i_1_n_0\,
      CO(3) => \i__carry__4_i_1_n_0\,
      CO(2 downto 0) => \NLW_i__carry__4_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(25 downto 22),
      S(3 downto 0) => disparity(25 downto 22)
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(24),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(23),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(22),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__4_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(21),
      O => \i__carry__4_i_5_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__4_i_1_n_0\,
      CO(3) => \i__carry__5_i_1_n_0\,
      CO(2 downto 0) => \NLW_i__carry__5_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => disparity0(29 downto 26),
      S(3 downto 0) => disparity(29 downto 26)
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(28),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(27),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(26),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__5_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(25),
      O => \i__carry__5_i_5_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__5_i_1_n_0\,
      CO(3 downto 0) => \NLW_i__carry__6_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_i__carry__6_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => disparity0(31 downto 30),
      S(3 downto 2) => B"00",
      S(1 downto 0) => disparity(31 downto 30)
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(31),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(30),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(29),
      O => \i__carry__6_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(6),
      I1 => disparity(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i__carry_i_1__1_n_0\,
      CO(2 downto 0) => \NLW_i__carry_i_1__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => disparity(1),
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => disparity(3 downto 2),
      O(3 downto 0) => disparity0(5 downto 2),
      S(3 downto 0) => disparity(5 downto 2)
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(4),
      I1 => disparity(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(1),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(4),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(2),
      I1 => disparity(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(3),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => disparity(0),
      I1 => disparity(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity0(2),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(6),
      I1 => disparity(7),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(4),
      I1 => disparity(5),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(2),
      I1 => disparity(3),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disparity(0),
      I1 => disparity(1),
      O => \i__carry_i_8__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0 is
  port (
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end clk_wiz_0;

architecture STRUCTURE of clk_wiz_0 is
begin
inst: entity work.clk_wiz_0_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity timing is
  port (
    hsync : out STD_LOGIC;
    buffer_clk_reg_0 : out STD_LOGIC;
    is_send_audio : out STD_LOGIC;
    CTL10 : out STD_LOGIC_VECTOR ( 0 to 0 );
    CTL32 : out STD_LOGIC_VECTOR ( 0 to 0 );
    is_video_active : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bit_cnt_reg[0]_0\ : out STD_LOGIC;
    \h_var_reg[7]_0\ : out STD_LOGIC;
    is_send_audio_reg_0 : out STD_LOGIC;
    \bit_cnt_reg[3]_0\ : out STD_LOGIC;
    hsync_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \bit_cnt_reg[3]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \bit_cnt_reg[3]_2\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hsync_reg_1 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \CTL32_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \CTL32_reg[0]_1\ : out STD_LOGIC;
    \CTL10_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \CTL10_reg[0]_1\ : out STD_LOGIC;
    tmds_clk : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \h_var_reg[4]_0\ : out STD_LOGIC;
    \v_var_reg[6]_0\ : out STD_LOGIC;
    \h_var_reg[6]_0\ : out STD_LOGIC;
    clk_out_reg : out STD_LOGIC;
    \h_var_reg[2]_0\ : out STD_LOGIC;
    \h_var_reg[5]_0\ : out STD_LOGIC;
    clk_out1 : in STD_LOGIC;
    is_send_audio_reg_1 : in STD_LOGIC;
    \CTL10_reg[0]_2\ : in STD_LOGIC;
    \CTL32_reg[0]_2\ : in STD_LOGIC;
    \data_b_reg[1]\ : in STD_LOGIC;
    \data_r_reg[1]\ : in STD_LOGIC;
    d_out22_in : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \d_out_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    d_out22_in_0 : in STD_LOGIC;
    tmds_buffer_g : in STD_LOGIC_VECTOR ( 4 downto 0 );
    audio_clock : in STD_LOGIC
  );
end timing;

architecture STRUCTURE of timing is
  signal \^ctl10\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \CTL10[0]_i_4_n_0\ : STD_LOGIC;
  signal \CTL10[0]_i_5_n_0\ : STD_LOGIC;
  signal \CTL10[0]_i_6_n_0\ : STD_LOGIC;
  signal \CTL10[0]_i_7_n_0\ : STD_LOGIC;
  signal \^ctl32\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \D2__24\ : STD_LOGIC;
  signal \D3__16\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Q[3]_repN\ : STD_LOGIC;
  signal \audio_buffer[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \audio_buffer[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \audio_buffer[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[2][5]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[2][6]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][0]_i_4_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][0]_i_5_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][0]_i_6_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][0]_i_7_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][1]_i_4_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][1]_i_5_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][1]_i_6_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][1]_i_7_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][2]_i_4_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][2]_i_5_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][2]_i_6_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][2]_i_7_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][3]_i_4_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][3]_i_5_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][3]_i_6_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][3]_i_7_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][4]_i_4_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][4]_i_5_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][4]_i_6_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][4]_i_7_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][5]_i_4_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][5]_i_5_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][5]_i_6_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][5]_i_7_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][6]_i_4_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][6]_i_5_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][6]_i_6_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][6]_i_7_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][7]_i_5_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][7]_i_6_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][7]_i_7_n_0\ : STD_LOGIC;
  signal \audio_buffer[3][7]_i_8_n_0\ : STD_LOGIC;
  signal \audio_buffer_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer_idx[2]_i_4_n_0\ : STD_LOGIC;
  signal \audio_buffer_idx[2]_i_5_n_0\ : STD_LOGIC;
  signal \audio_buffer_idx[2]_i_6_n_0\ : STD_LOGIC;
  signal \audio_buffer_idx[2]_i_7_n_0\ : STD_LOGIC;
  signal \audio_buffer_idx[2]_i_8_n_0\ : STD_LOGIC;
  signal \audio_buffer_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \audio_buffer_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \audio_buffer_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal \audio_buffer_reg[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][0]_i_2_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][0]_i_3_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][1]_i_2_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][1]_i_3_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][2]_i_2_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][2]_i_3_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][3]_i_2_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][3]_i_3_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][4]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][4]_i_2_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][4]_i_3_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][5]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][5]_i_2_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][5]_i_3_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][6]_i_1_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][6]_i_2_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][6]_i_3_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][7]_i_2_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][7]_i_3_n_0\ : STD_LOGIC;
  signal \audio_buffer_reg[3][7]_i_4_n_0\ : STD_LOGIC;
  signal audio_cnt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \audio_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \audio_cnt[15]_i_3_n_0\ : STD_LOGIC;
  signal \audio_cnt[15]_i_4_n_0\ : STD_LOGIC;
  signal \audio_cnt[15]_i_5_n_0\ : STD_LOGIC;
  signal \audio_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \audio_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \audio_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \audio_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \audio_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \audio_cnt_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \audio_cnt_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \audio_cnt_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \audio_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \audio_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \audio_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \audio_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \audio_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \audio_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \audio_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \audio_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \audio_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \audio_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \audio_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal audio_idx : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \audio_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \audio_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \audio_idx[3]_i_1_n_0\ : STD_LOGIC;
  signal \audio_idx[4]_i_1_n_0\ : STD_LOGIC;
  signal \audio_idx[6]_i_1_n_0\ : STD_LOGIC;
  signal \audio_idx[7]_i_1_n_0\ : STD_LOGIC;
  signal \audio_idx[7]_i_2_n_0\ : STD_LOGIC;
  signal \audio_idx[7]_i_3_n_0\ : STD_LOGIC;
  signal \audio_idx[7]_i_4_n_0\ : STD_LOGIC;
  signal \audio_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \audio_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \audio_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal \audio_idx_reg_n_0_[3]\ : STD_LOGIC;
  signal \audio_idx_reg_n_0_[4]\ : STD_LOGIC;
  signal \audio_idx_reg_n_0_[5]\ : STD_LOGIC;
  signal \audio_idx_reg_n_0_[6]\ : STD_LOGIC;
  signal \audio_idx_reg_n_0_[7]\ : STD_LOGIC;
  signal \audio_idx_reg_rep_n_0_[0]\ : STD_LOGIC;
  signal \audio_idx_reg_rep_n_0_[1]\ : STD_LOGIC;
  signal \audio_idx_reg_rep_n_0_[2]\ : STD_LOGIC;
  signal \audio_idx_reg_rep_n_0_[3]\ : STD_LOGIC;
  signal \audio_idx_reg_rep_n_0_[4]\ : STD_LOGIC;
  signal \audio_idx_reg_rep_n_0_[5]\ : STD_LOGIC;
  signal \audio_idx_reg_rep_n_0_[6]\ : STD_LOGIC;
  signal \audio_idx_reg_rep_n_0_[7]\ : STD_LOGIC;
  signal \audio_last_idx[7]_i_1_n_0\ : STD_LOGIC;
  signal \audio_last_idx[7]_i_2_n_0\ : STD_LOGIC;
  signal \audio_last_idx[8]_i_1_n_0\ : STD_LOGIC;
  signal \audio_last_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \audio_last_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \audio_last_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal \audio_last_idx_reg_n_0_[3]\ : STD_LOGIC;
  signal \audio_last_idx_reg_n_0_[4]\ : STD_LOGIC;
  signal \audio_last_idx_reg_n_0_[5]\ : STD_LOGIC;
  signal \audio_last_idx_reg_n_0_[6]\ : STD_LOGIC;
  signal \audio_last_idx_reg_n_0_[7]\ : STD_LOGIC;
  signal \audio_last_idx_reg_n_0_[8]\ : STD_LOGIC;
  signal audio_send_clk1 : STD_LOGIC;
  signal audio_send_clk_i_1_n_0 : STD_LOGIC;
  signal audio_send_clk_i_2_n_0 : STD_LOGIC;
  signal audio_send_clk_i_3_n_0 : STD_LOGIC;
  signal audio_send_clk_i_4_n_0 : STD_LOGIC;
  signal audio_send_clk_i_5_n_0 : STD_LOGIC;
  signal audio_send_clk_i_6_n_0 : STD_LOGIC;
  signal audio_send_clk_reg_n_0 : STD_LOGIC;
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_1_n_0_repN\ : STD_LOGIC;
  signal \^bit_cnt_reg[3]_0\ : STD_LOGIC;
  signal buffer_clk_i_1_n_0 : STD_LOGIC;
  signal \data_b[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_b[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_b[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_11_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_12_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_14_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_15_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_16_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_17_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_18_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_19_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_20_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_21_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_22_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_24_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_25_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_26_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_27_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_28_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_29_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_30_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_31_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_32_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_33_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_34_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_35_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_36_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_37_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_38_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_39_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_42_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_46_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_47_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_48_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_49_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_50_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_51_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_b[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_b_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_b_reg[1]_i_40_n_0\ : STD_LOGIC;
  signal \data_b_reg[1]_i_41_n_0\ : STD_LOGIC;
  signal \data_b_reg[1]_i_43_n_0\ : STD_LOGIC;
  signal \data_b_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_b_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_b_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \data_g[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_g[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_10_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_14_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_15_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_16_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_17_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_18_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_19_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_20_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_21_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_22_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_23_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_24_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_25_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_26_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_27_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_28_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_29_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_30_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_31_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_32_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_33_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_34_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_35_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_36_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_37_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_38_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_40_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_41_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_42_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_g[1]_i_8_n_0\ : STD_LOGIC;
  signal \data_g_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \data_g_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \data_g_reg[1]_i_39_n_0\ : STD_LOGIC;
  signal \data_g_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_g_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \data_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_r[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_13_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_14_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_15_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_16_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_17_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_18_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_19_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_20_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_22_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_23_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_24_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_25_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_26_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_27_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_28_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_29_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_30_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_31_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_32_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_33_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_34_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_37_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_38_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_39_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_40_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_r[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_r_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_r_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \data_r_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \h_var[0]_i_1_n_0\ : STD_LOGIC;
  signal \h_var[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_var[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_var[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_var[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_var[5]_i_1_n_0\ : STD_LOGIC;
  signal \h_var[5]_i_2_n_0\ : STD_LOGIC;
  signal \h_var[6]_i_1_n_0\ : STD_LOGIC;
  signal \h_var[7]_i_1_n_0\ : STD_LOGIC;
  signal \h_var[7]_i_2_n_0\ : STD_LOGIC;
  signal \h_var[8]_i_1_n_0\ : STD_LOGIC;
  signal \h_var[9]_i_1_n_0\ : STD_LOGIC;
  signal \h_var[9]_i_2_n_0\ : STD_LOGIC;
  signal \^h_var_reg[4]_0\ : STD_LOGIC;
  signal \^h_var_reg[6]_0\ : STD_LOGIC;
  signal \^h_var_reg[7]_0\ : STD_LOGIC;
  signal \h_var_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_var_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_var_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_var_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_var_reg_n_0_[4]\ : STD_LOGIC;
  signal \h_var_reg_n_0_[5]\ : STD_LOGIC;
  signal \h_var_reg_n_0_[6]\ : STD_LOGIC;
  signal \h_var_reg_n_0_[7]\ : STD_LOGIC;
  signal \h_var_reg_n_0_[8]\ : STD_LOGIC;
  signal \h_var_reg_n_0_[9]\ : STD_LOGIC;
  signal header : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \header[0]_i_1_n_0\ : STD_LOGIC;
  signal \header[16]_i_1_n_0\ : STD_LOGIC;
  signal \header[1]_i_1_n_0\ : STD_LOGIC;
  signal \header[20]_i_1_n_0\ : STD_LOGIC;
  signal \header[24]_i_1_n_0\ : STD_LOGIC;
  signal \header[25]_i_1_n_0\ : STD_LOGIC;
  signal \header[25]_i_2_n_0\ : STD_LOGIC;
  signal \header[27]_i_1_n_0\ : STD_LOGIC;
  signal \header[28]_i_1_n_0\ : STD_LOGIC;
  signal \header[29]_i_1_n_0\ : STD_LOGIC;
  signal \header[2]_i_1_n_0\ : STD_LOGIC;
  signal \header[30]_i_1_n_0\ : STD_LOGIC;
  signal \header[31]_i_1_n_0\ : STD_LOGIC;
  signal \header[31]_i_2_n_0\ : STD_LOGIC;
  signal \header[31]_i_3_n_0\ : STD_LOGIC;
  signal \header[31]_i_5_n_0\ : STD_LOGIC;
  signal \header[7]_i_1_n_0\ : STD_LOGIC;
  signal \header[7]_i_2_n_0\ : STD_LOGIC;
  signal \header[7]_i_3_n_0\ : STD_LOGIC;
  signal \header[8]_i_1_n_0\ : STD_LOGIC;
  signal \^hsync\ : STD_LOGIC;
  signal hsync_i_1_n_0 : STD_LOGIC;
  signal \iec_block_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \iec_block_idx[3]_i_1_n_0\ : STD_LOGIC;
  signal \iec_block_idx[4]_i_1_n_0\ : STD_LOGIC;
  signal \iec_block_idx[5]_i_1_n_0\ : STD_LOGIC;
  signal \iec_block_idx[6]_i_1_n_0\ : STD_LOGIC;
  signal \iec_block_idx[7]_i_1_n_0\ : STD_LOGIC;
  signal \iec_block_idx[7]_i_2_n_0\ : STD_LOGIC;
  signal \iec_block_idx[7]_i_3_n_0\ : STD_LOGIC;
  signal \iec_block_idx[7]_i_3_n_0_repN\ : STD_LOGIC;
  signal \iec_block_idx[7]_i_4_n_0\ : STD_LOGIC;
  signal \iec_block_idx[7]_i_5_n_0\ : STD_LOGIC;
  signal \iec_block_idx[7]_i_6_n_0\ : STD_LOGIC;
  signal \iec_block_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal \iec_block_idx_reg_n_0_[3]\ : STD_LOGIC;
  signal \iec_block_idx_reg_n_0_[4]\ : STD_LOGIC;
  signal \iec_block_idx_reg_n_0_[5]\ : STD_LOGIC;
  signal \iec_block_idx_reg_n_0_[6]\ : STD_LOGIC;
  signal \iec_block_idx_reg_n_0_[7]\ : STD_LOGIC;
  signal \^is_send_audio\ : STD_LOGIC;
  signal is_send_audio_i_3_n_0 : STD_LOGIC;
  signal is_send_audio_i_4_n_0 : STD_LOGIC;
  signal is_send_audio_i_5_n_0 : STD_LOGIC;
  signal \^is_send_audio_reg_0\ : STD_LOGIC;
  signal \^is_video_active\ : STD_LOGIC;
  signal is_video_active_i_1_n_0 : STD_LOGIC;
  signal is_video_active_i_3_n_0 : STD_LOGIC;
  signal is_video_active_i_4_n_0 : STD_LOGIC;
  signal opmode : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal opmode115_out : STD_LOGIC;
  signal \opmode[0]_i_1_n_0\ : STD_LOGIC;
  signal \opmode[0]_i_2_n_0\ : STD_LOGIC;
  signal \opmode[0]_i_3_n_0\ : STD_LOGIC;
  signal \opmode[0]_i_4_n_0\ : STD_LOGIC;
  signal \opmode[0]_i_5_n_0\ : STD_LOGIC;
  signal \opmode[0]_i_5_n_0_repN\ : STD_LOGIC;
  signal \opmode[0]_i_6_n_0\ : STD_LOGIC;
  signal \opmode[1]_i_1_n_0\ : STD_LOGIC;
  signal \opmode[1]_i_2_n_0\ : STD_LOGIC;
  signal \opmode[1]_i_4_n_0\ : STD_LOGIC;
  signal \opmode[1]_i_5_n_0\ : STD_LOGIC;
  signal \opmode[2]_i_1_n_0\ : STD_LOGIC;
  signal \opmode[2]_i_2_n_0\ : STD_LOGIC;
  signal \opmode[2]_i_3_n_0\ : STD_LOGIC;
  signal \opmode[2]_i_5_n_0\ : STD_LOGIC;
  signal \opmode[2]_i_6_n_0\ : STD_LOGIC;
  signal \opmode[2]_i_7_n_0\ : STD_LOGIC;
  signal p_0_in231_in : STD_LOGIC;
  signal p_0_in234_in : STD_LOGIC;
  signal p_0_in237_in : STD_LOGIC;
  signal p_0_in240_in : STD_LOGIC;
  signal p_0_in243_in : STD_LOGIC;
  signal p_0_in246_in : STD_LOGIC;
  signal p_0_in249_in : STD_LOGIC;
  signal p_0_in252_in : STD_LOGIC;
  signal p_0_in396_in : STD_LOGIC;
  signal p_0_in399_in : STD_LOGIC;
  signal p_0_in402_in : STD_LOGIC;
  signal p_0_in405_in : STD_LOGIC;
  signal p_0_in408_in : STD_LOGIC;
  signal p_0_in411_in : STD_LOGIC;
  signal p_0_in414_in : STD_LOGIC;
  signal p_0_in417_in : STD_LOGIC;
  signal p_0_in561_in : STD_LOGIC;
  signal p_0_in564_in : STD_LOGIC;
  signal p_0_in567_in : STD_LOGIC;
  signal p_0_in570_in : STD_LOGIC;
  signal p_0_in573_in : STD_LOGIC;
  signal p_0_in576_in : STD_LOGIC;
  signal p_0_in579_in : STD_LOGIC;
  signal p_0_in582_in : STD_LOGIC;
  signal p_0_in66_in : STD_LOGIC;
  signal p_0_in69_in : STD_LOGIC;
  signal p_0_in72_in : STD_LOGIC;
  signal p_0_in75_in : STD_LOGIC;
  signal p_0_in78_in : STD_LOGIC;
  signal p_0_in81_in : STD_LOGIC;
  signal p_0_in84_in : STD_LOGIC;
  signal p_0_in87_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pkt_idx : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \pkt_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_idx[3]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_idx[4]_i_1_n_0\ : STD_LOGIC;
  signal \pkt_idx[4]_i_2_n_0\ : STD_LOGIC;
  signal \pkt_idx[4]_i_3_n_0\ : STD_LOGIC;
  signal \pkt_idx[4]_i_4_n_0\ : STD_LOGIC;
  signal \pkt_idx[4]_i_5_n_0\ : STD_LOGIC;
  signal \pkt_idx[4]_i_6_n_0\ : STD_LOGIC;
  signal \pkt_idx[4]_i_7_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \sel0[6]_repN\ : STD_LOGIC;
  signal \sel0[9]_repN\ : STD_LOGIC;
  signal \subs[0][25]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][26]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][27]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][28]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][29]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][30]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][50]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][51]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][51]_i_1_n_0_repN\ : STD_LOGIC;
  signal \subs[0][51]_i_2_n_0\ : STD_LOGIC;
  signal \subs[0][55]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][55]_i_2_n_0\ : STD_LOGIC;
  signal \subs[0][56]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][56]_i_2_n_0\ : STD_LOGIC;
  signal \subs[0][57]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][57]_i_2_n_0\ : STD_LOGIC;
  signal \subs[0][57]_i_3_n_0\ : STD_LOGIC;
  signal \subs[0][58]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][58]_i_2_n_0\ : STD_LOGIC;
  signal \subs[0][59]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][59]_i_2_n_0\ : STD_LOGIC;
  signal \subs[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][60]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][60]_i_2_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_10_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_11_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_12_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_13_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_14_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_15_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_16_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_17_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_18_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_1_n_0_repN\ : STD_LOGIC;
  signal \subs[0][61]_i_2_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_3_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_4_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_5_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_6_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_7_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_8_n_0\ : STD_LOGIC;
  signal \subs[0][61]_i_9_n_0\ : STD_LOGIC;
  signal \subs[0][62]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][62]_i_2_n_0\ : STD_LOGIC;
  signal \subs[0][63]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \subs[0]_0\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \subs[1]3_out\ : STD_LOGIC_VECTOR ( 59 downto 6 );
  signal \subs[1][51]_i_1_n_0\ : STD_LOGIC;
  signal \subs[1][54]_i_1_n_0\ : STD_LOGIC;
  signal \subs[1][55]_i_2_n_0\ : STD_LOGIC;
  signal \subs[1][56]_i_2_n_0\ : STD_LOGIC;
  signal \subs[1][57]_i_2_n_0\ : STD_LOGIC;
  signal \subs[1][57]_i_3_n_0\ : STD_LOGIC;
  signal \subs[1][58]_i_1_n_0\ : STD_LOGIC;
  signal \subs[1][58]_i_2_n_0\ : STD_LOGIC;
  signal \subs[1][58]_i_3_n_0\ : STD_LOGIC;
  signal \subs[1][58]_i_4_n_0\ : STD_LOGIC;
  signal \subs[1][58]_i_5_n_0\ : STD_LOGIC;
  signal \subs[1][59]_i_2_n_0\ : STD_LOGIC;
  signal \subs[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \subs[1][60]_i_1_n_0\ : STD_LOGIC;
  signal \subs[1][60]_i_2_n_0\ : STD_LOGIC;
  signal \subs[1][61]_i_1_n_0\ : STD_LOGIC;
  signal \subs[1][61]_i_2_n_0\ : STD_LOGIC;
  signal \subs[1][61]_i_3_n_0\ : STD_LOGIC;
  signal \subs[1][62]_i_1_n_0\ : STD_LOGIC;
  signal \subs[1][63]_i_1_n_0\ : STD_LOGIC;
  signal \subs[1]_1\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \subs[2][50]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][51]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][51]_i_2_n_0\ : STD_LOGIC;
  signal \subs[2][51]_i_3_n_0\ : STD_LOGIC;
  signal \subs[2][54]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][55]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][56]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][57]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][58]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][58]_i_2_n_0\ : STD_LOGIC;
  signal \subs[2][59]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][5]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][60]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][60]_i_2_n_0\ : STD_LOGIC;
  signal \subs[2][60]_i_3_n_0\ : STD_LOGIC;
  signal \subs[2][60]_i_4_n_0\ : STD_LOGIC;
  signal \subs[2][60]_i_5_n_0\ : STD_LOGIC;
  signal \subs[2][61]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][61]_i_2_n_0\ : STD_LOGIC;
  signal \subs[2][62]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][62]_i_2_n_0\ : STD_LOGIC;
  signal \subs[2][63]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2][63]_i_2_n_0\ : STD_LOGIC;
  signal \subs[2][63]_i_3_n_0\ : STD_LOGIC;
  signal \subs[2][6]_i_1_n_0\ : STD_LOGIC;
  signal \subs[2]_2\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \subs[3][51]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3][55]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3][55]_i_2_n_0\ : STD_LOGIC;
  signal \subs[3][55]_i_3_n_0\ : STD_LOGIC;
  signal \subs[3][56]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3][56]_i_2_n_0\ : STD_LOGIC;
  signal \subs[3][56]_i_3_n_0\ : STD_LOGIC;
  signal \subs[3][57]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3][57]_i_2_n_0\ : STD_LOGIC;
  signal \subs[3][57]_i_3_n_0\ : STD_LOGIC;
  signal \subs[3][57]_i_4_n_0\ : STD_LOGIC;
  signal \subs[3][58]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3][59]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3][5]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3][60]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3][60]_i_2_n_0\ : STD_LOGIC;
  signal \subs[3][60]_i_3_n_0\ : STD_LOGIC;
  signal \subs[3][60]_i_4_n_0\ : STD_LOGIC;
  signal \subs[3][60]_i_5_n_0\ : STD_LOGIC;
  signal \subs[3][61]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3][62]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3][63]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3][6]_i_1_n_0\ : STD_LOGIC;
  signal \subs[3]_3\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \terc4_buffer_b__42\ : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal \tmds_clk[1]_i_1_n_0\ : STD_LOGIC;
  signal \tmds_clk[1]_i_2_n_0\ : STD_LOGIC;
  signal \v_var[4]_i_2_n_0\ : STD_LOGIC;
  signal \v_var[5]_i_2_n_0\ : STD_LOGIC;
  signal \v_var[5]_i_2_n_0_repN\ : STD_LOGIC;
  signal \v_var[6]_i_2_n_0\ : STD_LOGIC;
  signal \v_var[7]_i_2_n_0\ : STD_LOGIC;
  signal \v_var[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_var[8]_i_2_n_0\ : STD_LOGIC;
  signal \v_var[8]_i_2_n_0_repN\ : STD_LOGIC;
  signal \v_var[8]_i_3_n_0\ : STD_LOGIC;
  signal \v_var[8]_i_4_n_0\ : STD_LOGIC;
  signal \v_var[8]_i_4_n_0_repN\ : STD_LOGIC;
  signal \v_var[9]_i_2_n_0\ : STD_LOGIC;
  signal \v_var[9]_i_3_n_0\ : STD_LOGIC;
  signal \v_var[9]_i_4_n_0\ : STD_LOGIC;
  signal \^v_var_reg[6]_0\ : STD_LOGIC;
  signal \v_var_reg_n_0_[0]\ : STD_LOGIC;
  signal \v_var_reg_n_0_[1]\ : STD_LOGIC;
  signal \v_var_reg_n_0_[2]\ : STD_LOGIC;
  signal \v_var_reg_n_0_[3]\ : STD_LOGIC;
  signal \v_var_reg_n_0_[4]\ : STD_LOGIC;
  signal \v_var_reg_n_0_[5]\ : STD_LOGIC;
  signal \v_var_reg_n_0_[6]\ : STD_LOGIC;
  signal \v_var_reg_n_0_[7]\ : STD_LOGIC;
  signal \v_var_reg_n_0_[8]\ : STD_LOGIC;
  signal \v_var_reg_n_0_[9]\ : STD_LOGIC;
  signal vsync : STD_LOGIC;
  signal vsync_i_1_n_0 : STD_LOGIC;
  signal vsync_i_2_n_0 : STD_LOGIC;
  signal \NLW_audio_buffer_idx_reg[2]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_audio_buffer_idx_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_audio_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_audio_cnt_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_audio_cnt_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_audio_cnt_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_audio_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \audio_buffer[0][0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \audio_buffer[0][1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \audio_buffer[0][2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \audio_buffer[0][3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \audio_buffer[0][6]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \audio_buffer[0][7]_i_2\ : label is "soft_lutpair51";
  attribute \PinAttr:I2:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I2:HOLD_DETOUR\ of \audio_buffer[1][4]_i_1\ : label is 197;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \audio_buffer_idx_reg[2]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \audio_cnt_reg[12]_i_1\ : label is 35;
  attribute OPT_MODIFIED of \audio_cnt_reg[12]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \audio_cnt_reg[15]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \audio_cnt_reg[15]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \audio_cnt_reg[4]_i_1\ : label is 35;
  attribute OPT_MODIFIED of \audio_cnt_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \audio_cnt_reg[8]_i_1\ : label is 35;
  attribute OPT_MODIFIED of \audio_cnt_reg[8]_i_1\ : label is "SWEEP";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \audio_idx_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \audio_idx_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \audio_idx_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \audio_idx_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \audio_idx_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \audio_idx_reg_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \audio_idx_reg_rep[6]\ : label is "no";
  attribute equivalent_register_removal of \audio_idx_reg_rep[7]\ : label is "no";
  attribute PHYS_OPT_MODIFIED : string;
  attribute PHYS_OPT_MODIFIED of audio_send_clk_i_5 : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED : string;
  attribute PHYS_OPT_SKIPPED of audio_send_clk_i_5 : label is "CRITICAL_CELL_OPT";
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \bit_cnt[1]_i_1\ : label is 206;
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair23";
  attribute \PinAttr:I0:HOLD_DETOUR\ of \bit_cnt[3]_i_1\ : label is 207;
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_1\ : label is "soft_lutpair37";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \bit_cnt[3]_i_1_replica\ : label is "bit_cnt[3]_i_1";
  attribute PHYS_OPT_MODIFIED of \bit_cnt[3]_i_1_replica\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of \bit_cnt_reg[3]\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of \bit_cnt_reg[3]\ : label is "CRITICAL_CELL_OPT";
  attribute ORIG_CELL_NAME of \bit_cnt_reg[3]_replica\ : label is "bit_cnt_reg[3]";
  attribute PHYS_OPT_MODIFIED of \bit_cnt_reg[3]_replica\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of \bit_cnt_reg[3]_replica\ : label is "CRITICAL_CELL_OPT";
  attribute \PinAttr:I2:HOLD_DETOUR\ of buffer_clk_i_1 : label is 207;
  attribute SOFT_HLUTNM of buffer_clk_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \d_out[8]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \d_out[8]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \d_out[9]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \d_out[9]_i_1__0\ : label is "soft_lutpair42";
  attribute \PinAttr:I3:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I3:HOLD_DETOUR\ of \h_var[0]_i_1\ : label is 206;
  attribute SOFT_HLUTNM of \h_var[0]_i_1\ : label is "soft_lutpair23";
  attribute \PinAttr:I3:HOLD_DETOUR\ of \h_var[1]_i_1\ : label is 168;
  attribute PHYS_OPT_MODIFIED of \h_var[5]_i_2\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of \h_var[5]_i_2\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of \h_var[7]_i_2\ : label is "FANOUT_OPT CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of \h_var[7]_i_2\ : label is "FANOUT_OPT CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of \h_var[7]_i_3\ : label is "FANOUT_OPT";
  attribute PHYS_OPT_SKIPPED of \h_var[7]_i_3\ : label is "FANOUT_OPT";
  attribute PHYS_OPT_MODIFIED of \h_var_reg[6]\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of \h_var_reg[9]\ : label is "CRITICAL_CELL_OPT";
  attribute SOFT_HLUTNM of \header[24]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \header[28]_i_1\ : label is "soft_lutpair25";
  attribute PHYS_OPT_MODIFIED of \header[31]_i_4\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of \header[31]_i_4\ : label is "CRITICAL_CELL_OPT";
  attribute SOFT_HLUTNM of \iec_block_idx[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \iec_block_idx[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \iec_block_idx[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \iec_block_idx[5]_i_1\ : label is "soft_lutpair38";
  attribute PHYS_OPT_MODIFIED of \iec_block_idx[7]_i_1_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \iec_block_idx[7]_i_3\ : label is "FANOUT_OPT";
  attribute PHYS_OPT_SKIPPED of \iec_block_idx[7]_i_3\ : label is "FANOUT_OPT";
  attribute PHYS_OPT_MODIFIED of \iec_block_idx[7]_i_3_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \iec_block_idx[7]_i_4_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \opmode[0]_i_5\ : label is "PLACEMENT_OPT";
  attribute PHYS_OPT_MODIFIED of \opmode[0]_i_5_comp\ : label is "RESTRUCT_OPT";
  attribute OPT_MODIFIED of \pkt_idx[4]_i_3\ : label is "RETARGET";
  attribute PHYS_OPT_MODIFIED of \subs[0][51]_i_1\ : label is "RESTRUCT_OPT FANOUT_OPT";
  attribute PHYS_OPT_SKIPPED of \subs[0][51]_i_1\ : label is "FANOUT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs[0][51]_i_1_replica_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs[0][61]_i_1\ : label is "FANOUT_OPT";
  attribute PHYS_OPT_SKIPPED of \subs[0][61]_i_1\ : label is "FANOUT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs[0][61]_i_13_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs[0][61]_i_14\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs[0][61]_i_16_comp_1\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs[0][61]_i_1_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs[0][61]_i_4_comp\ : label is "RESTRUCT_OPT CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of \subs[0][61]_i_4_comp\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of \subs[0][61]_i_5_comp\ : label is "RESTRUCT_OPT CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of \subs[0][61]_i_5_comp\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of \subs[0][61]_i_6_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs[0][61]_i_7_comp\ : label is "RESTRUCT_OPT CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of \subs[0][61]_i_7_comp\ : label is "CRITICAL_CELL_OPT";
  attribute SOFT_HLUTNM of \subs[1][60]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \subs[2][57]_i_1\ : label is "soft_lutpair26";
  attribute PHYS_OPT_MODIFIED of \subs_reg[0][0]\ : label is "PLACEMENT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs_reg[0][50]\ : label is "PLACEMENT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs_reg[2][1]\ : label is "PLACEMENT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs_reg[2][3]\ : label is "PLACEMENT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs_reg[2][4]\ : label is "PLACEMENT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs_reg[3][0]\ : label is "PLACEMENT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs_reg[3][2]\ : label is "PLACEMENT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs_reg[3][3]\ : label is "PLACEMENT_OPT";
  attribute PHYS_OPT_MODIFIED of \subs_reg[3][7]\ : label is "PLACEMENT_OPT";
  attribute SOFT_HLUTNM of \v_var[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \v_var[2]_i_1\ : label is "soft_lutpair18";
  attribute OPT_MODIFIED of \v_var[3]_i_2\ : label is "RETARGET";
  attribute PHYS_OPT_MODIFIED of \v_var[3]_i_2\ : label is "CRITICAL_CELL_OPT RESTRUCT_OPT";
  attribute PHYS_OPT_SKIPPED of \v_var[3]_i_2\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of \v_var[4]_i_2\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of \v_var[4]_i_2\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of \v_var[5]_i_2_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \v_var[5]_i_2_rewire\ : label is "REWIRE";
  attribute PHYS_OPT_MODIFIED of \v_var[6]_i_1_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \v_var[7]_i_1_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \v_var[7]_i_2_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \v_var[8]_i_2_comp\ : label is "RESTRUCT_OPT PLACEMENT_OPT";
  attribute PHYS_OPT_MODIFIED of \v_var[8]_i_3\ : label is "PLACEMENT_OPT";
  attribute ORIG_CELL_NAME of \v_var[8]_i_4_replica\ : label is "v_var[8]_i_4";
  attribute PHYS_OPT_MODIFIED of \v_var[8]_i_4_replica\ : label is "REWIRE";
  attribute PHYS_OPT_MODIFIED of \v_var[8]_i_4_rewire\ : label is "REWIRE CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of \v_var[8]_i_4_rewire\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of \v_var[9]_i_1_comp\ : label is "RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \v_var[9]_i_2_rewire\ : label is "REWIRE RESTRUCT_OPT";
  attribute PHYS_OPT_MODIFIED of \v_var[9]_i_3_comp\ : label is "RESTRUCT_OPT";
begin
  CTL10(0) <= \^ctl10\(0);
  CTL32(0) <= \^ctl32\(0);
  Q(3 downto 0) <= \^q\(3 downto 0);
  \bit_cnt_reg[3]_0\ <= \^bit_cnt_reg[3]_0\;
  \h_var_reg[4]_0\ <= \^h_var_reg[4]_0\;
  \h_var_reg[6]_0\ <= \^h_var_reg[6]_0\;
  \h_var_reg[7]_0\ <= \^h_var_reg[7]_0\;
  hsync <= \^hsync\;
  is_send_audio <= \^is_send_audio\;
  is_send_audio_reg_0 <= \^is_send_audio_reg_0\;
  is_video_active <= \^is_video_active\;
  \v_var_reg[6]_0\ <= \^v_var_reg[6]_0\;
\CTL10[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000B00000"
    )
        port map (
      I0 => \CTL10[0]_i_4_n_0\,
      I1 => \CTL10[0]_i_5_n_0\,
      I2 => \h_var_reg_n_0_[5]\,
      I3 => \CTL10[0]_i_6_n_0\,
      I4 => is_video_active_i_3_n_0,
      I5 => \CTL10[0]_i_7_n_0\,
      O => \h_var_reg[5]_0\
    );
\CTL10[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^h_var_reg[7]_0\,
      I5 => \^is_send_audio_reg_0\,
      O => \bit_cnt_reg[0]_0\
    );
\CTL10[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \h_var_reg_n_0_[2]\,
      I1 => \h_var_reg_n_0_[0]\,
      I2 => \h_var_reg_n_0_[1]\,
      O => \CTL10[0]_i_4_n_0\
    );
\CTL10[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_var_reg_n_0_[3]\,
      I1 => \h_var_reg_n_0_[4]\,
      O => \CTL10[0]_i_5_n_0\
    );
\CTL10[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \h_var_reg_n_0_[9]\,
      I1 => \h_var_reg_n_0_[7]\,
      I2 => \h_var_reg_n_0_[8]\,
      I3 => is_video_active_i_4_n_0,
      O => \CTL10[0]_i_6_n_0\
    );
\CTL10[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAF8"
    )
        port map (
      I0 => \h_var_reg_n_0_[5]\,
      I1 => \h_var_reg_n_0_[4]\,
      I2 => \h_var_reg_n_0_[6]\,
      I3 => \pkt_idx[4]_i_5_n_0\,
      O => \CTL10[0]_i_7_n_0\
    );
\CTL10_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \CTL10_reg[0]_2\,
      Q => \^ctl10\(0),
      R => '0'
    );
\CTL32[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008008"
    )
        port map (
      I0 => \h_var_reg_n_0_[7]\,
      I1 => \h_var_reg_n_0_[6]\,
      I2 => \h_var_reg_n_0_[3]\,
      I3 => \pkt_idx[4]_i_6_n_0\,
      I4 => \h_var_reg_n_0_[5]\,
      I5 => \h_var_reg_n_0_[4]\,
      O => \^h_var_reg[7]_0\
    );
\CTL32_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \CTL32_reg[0]_2\,
      Q => \^ctl32\(0),
      R => '0'
    );
\audio_buffer[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in396_in,
      I1 => \audio_buffer_idx_reg_n_0_[2]\,
      I2 => \audio_buffer_reg[3][0]_i_1_n_0\,
      O => \audio_buffer[0][0]_i_1_n_0\
    );
\audio_buffer[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in399_in,
      I1 => \audio_buffer_idx_reg_n_0_[2]\,
      I2 => \audio_buffer_reg[3][1]_i_1_n_0\,
      O => \audio_buffer[0][1]_i_1_n_0\
    );
\audio_buffer[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in402_in,
      I1 => \audio_buffer_idx_reg_n_0_[2]\,
      I2 => \audio_buffer_reg[3][2]_i_1_n_0\,
      O => \audio_buffer[0][2]_i_1_n_0\
    );
\audio_buffer[0][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in405_in,
      I1 => \audio_buffer_idx_reg_n_0_[2]\,
      I2 => \audio_buffer_reg[3][3]_i_1_n_0\,
      O => \audio_buffer[0][3]_i_1_n_0\
    );
\audio_buffer[0][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in408_in,
      I1 => \audio_buffer_idx_reg_n_0_[2]\,
      I2 => \audio_buffer_reg[3][4]_i_1_n_0\,
      O => \audio_buffer[0][4]_i_1_n_0\
    );
\audio_buffer[0][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in411_in,
      I1 => \audio_buffer_idx_reg_n_0_[2]\,
      I2 => \audio_buffer_reg[3][5]_i_1_n_0\,
      O => \audio_buffer[0][5]_i_1_n_0\
    );
\audio_buffer[0][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in414_in,
      I1 => \audio_buffer_idx_reg_n_0_[2]\,
      I2 => \audio_buffer_reg[3][6]_i_1_n_0\,
      O => \audio_buffer[0][6]_i_1_n_0\
    );
\audio_buffer[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \audio_buffer_idx_reg_n_0_[0]\,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \^bit_cnt_reg[3]_0\,
      I3 => audio_send_clk1,
      O => \audio_buffer[0][7]_i_1_n_0\
    );
\audio_buffer[0][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in417_in,
      I1 => \audio_buffer_idx_reg_n_0_[2]\,
      I2 => \audio_buffer_reg[3][7]_i_2_n_0\,
      O => \audio_buffer[0][7]_i_2_n_0\
    );
\audio_buffer[1][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in231_in,
      I1 => \audio_buffer_idx_reg_n_0_[0]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][0]_i_1_n_0\,
      O => \audio_buffer[1][0]_i_1_n_0\
    );
\audio_buffer[1][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in234_in,
      I1 => \audio_buffer_idx_reg_n_0_[0]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][1]_i_1_n_0\,
      O => \audio_buffer[1][1]_i_1_n_0\
    );
\audio_buffer[1][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in237_in,
      I1 => \audio_buffer_idx_reg_n_0_[0]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][2]_i_1_n_0\,
      O => \audio_buffer[1][2]_i_1_n_0\
    );
\audio_buffer[1][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in240_in,
      I1 => \audio_buffer_idx_reg_n_0_[0]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][3]_i_1_n_0\,
      O => \audio_buffer[1][3]_i_1_n_0\
    );
\audio_buffer[1][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in243_in,
      I1 => \audio_buffer_idx_reg_n_0_[0]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][4]_i_1_n_0\,
      O => \audio_buffer[1][4]_i_1_n_0\
    );
\audio_buffer[1][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in246_in,
      I1 => \audio_buffer_idx_reg_n_0_[0]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][5]_i_1_n_0\,
      O => \audio_buffer[1][5]_i_1_n_0\
    );
\audio_buffer[1][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in249_in,
      I1 => \audio_buffer_idx_reg_n_0_[0]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][6]_i_1_n_0\,
      O => \audio_buffer[1][6]_i_1_n_0\
    );
\audio_buffer[1][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040400"
    )
        port map (
      I0 => \^bit_cnt_reg[3]_0\,
      I1 => audio_send_clk1,
      I2 => \audio_buffer_idx_reg_n_0_[1]\,
      I3 => \audio_buffer_idx_reg_n_0_[0]\,
      I4 => \audio_buffer_idx_reg_n_0_[2]\,
      O => \audio_buffer[1][7]_i_1_n_0\
    );
\audio_buffer[1][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in252_in,
      I1 => \audio_buffer_idx_reg_n_0_[0]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][7]_i_2_n_0\,
      O => \audio_buffer[1][7]_i_2_n_0\
    );
\audio_buffer[2][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in66_in,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][0]_i_1_n_0\,
      O => \audio_buffer[2][0]_i_1_n_0\
    );
\audio_buffer[2][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in69_in,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][1]_i_1_n_0\,
      O => \audio_buffer[2][1]_i_1_n_0\
    );
\audio_buffer[2][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in72_in,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][2]_i_1_n_0\,
      O => \audio_buffer[2][2]_i_1_n_0\
    );
\audio_buffer[2][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in75_in,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][3]_i_1_n_0\,
      O => \audio_buffer[2][3]_i_1_n_0\
    );
\audio_buffer[2][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in78_in,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][4]_i_1_n_0\,
      O => \audio_buffer[2][4]_i_1_n_0\
    );
\audio_buffer[2][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in81_in,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][5]_i_1_n_0\,
      O => \audio_buffer[2][5]_i_1_n_0\
    );
\audio_buffer[2][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in84_in,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][6]_i_1_n_0\,
      O => \audio_buffer[2][6]_i_1_n_0\
    );
\audio_buffer[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040400"
    )
        port map (
      I0 => \^bit_cnt_reg[3]_0\,
      I1 => audio_send_clk1,
      I2 => \audio_buffer_idx_reg_n_0_[0]\,
      I3 => \audio_buffer_idx_reg_n_0_[1]\,
      I4 => \audio_buffer_idx_reg_n_0_[2]\,
      O => \audio_buffer[2][7]_i_1_n_0\
    );
\audio_buffer[2][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => p_0_in87_in,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => \audio_buffer_reg[3][7]_i_2_n_0\,
      O => \audio_buffer[2][7]_i_2_n_0\
    );
\audio_buffer[3][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55E61AFAF353D070"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][0]_i_4_n_0\
    );
\audio_buffer[3][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14C420539AB32373"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[0]\,
      I3 => \audio_idx_reg_rep_n_0_[3]\,
      I4 => \audio_idx_reg_rep_n_0_[1]\,
      I5 => \audio_idx_reg_rep_n_0_[2]\,
      O => \audio_buffer[3][0]_i_5_n_0\
    );
\audio_buffer[3][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"116C767BABFDA819"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[2]\,
      I3 => \audio_idx_reg_rep_n_0_[3]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][0]_i_6_n_0\
    );
\audio_buffer[3][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001EF42084"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[0]\,
      I1 => \audio_idx_reg_rep_n_0_[1]\,
      I2 => \audio_idx_reg_rep_n_0_[2]\,
      I3 => \audio_idx_reg_rep_n_0_[3]\,
      I4 => \audio_idx_reg_rep_n_0_[4]\,
      I5 => \audio_idx_reg_rep_n_0_[7]\,
      O => \audio_buffer[3][0]_i_7_n_0\
    );
\audio_buffer[3][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5CB3F89C621E2F4"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[1]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[2]\,
      O => \audio_buffer[3][1]_i_4_n_0\
    );
\audio_buffer[3][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6E9B8875FFD961A"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][1]_i_5_n_0\
    );
\audio_buffer[3][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7AA660D3E52FC4CD"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][1]_i_6_n_0\
    );
\audio_buffer[3][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004FB7129D"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[0]\,
      I1 => \audio_idx_reg_rep_n_0_[2]\,
      I2 => \audio_idx_reg_rep_n_0_[1]\,
      I3 => \audio_idx_reg_rep_n_0_[3]\,
      I4 => \audio_idx_reg_rep_n_0_[4]\,
      I5 => \audio_idx_reg_rep_n_0_[7]\,
      O => \audio_buffer[3][1]_i_7_n_0\
    );
\audio_buffer[3][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B5501EFFB07966AC"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[1]\,
      I5 => \audio_idx_reg_rep_n_0_[0]\,
      O => \audio_buffer[3][2]_i_4_n_0\
    );
\audio_buffer[3][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"971A90DFFBB181D7"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[0]\,
      I4 => \audio_idx_reg_rep_n_0_[1]\,
      I5 => \audio_idx_reg_rep_n_0_[2]\,
      O => \audio_buffer[3][2]_i_5_n_0\
    );
\audio_buffer[3][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"58F85D1D92C5D8F9"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][2]_i_6_n_0\
    );
\audio_buffer[3][2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008BA21631"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[0]\,
      I1 => \audio_idx_reg_rep_n_0_[1]\,
      I2 => \audio_idx_reg_rep_n_0_[2]\,
      I3 => \audio_idx_reg_rep_n_0_[3]\,
      I4 => \audio_idx_reg_rep_n_0_[4]\,
      I5 => \audio_idx_reg_rep_n_0_[7]\,
      O => \audio_buffer[3][2]_i_7_n_0\
    );
\audio_buffer[3][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2F73C3FC7DB163C"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][3]_i_4_n_0\
    );
\audio_buffer[3][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6B90E69AC0F688E4"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[0]\,
      I4 => \audio_idx_reg_rep_n_0_[1]\,
      I5 => \audio_idx_reg_rep_n_0_[2]\,
      O => \audio_buffer[3][3]_i_5_n_0\
    );
\audio_buffer[3][3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"62C70AE1A576C0FD"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][3]_i_6_n_0\
    );
\audio_buffer[3][3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000242AD62A"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[1]\,
      I1 => \audio_idx_reg_rep_n_0_[3]\,
      I2 => \audio_idx_reg_rep_n_0_[2]\,
      I3 => \audio_idx_reg_rep_n_0_[4]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[7]\,
      O => \audio_buffer[3][3]_i_7_n_0\
    );
\audio_buffer[3][4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6D579CA796BF6F40"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][4]_i_4_n_0\
    );
\audio_buffer[3][4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DAADD7E9601C4A34"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[1]\,
      I4 => \audio_idx_reg_rep_n_0_[2]\,
      I5 => \audio_idx_reg_rep_n_0_[0]\,
      O => \audio_buffer[3][4]_i_5_n_0\
    );
\audio_buffer[3][4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"549BFC9C6D868009"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[1]\,
      I5 => \audio_idx_reg_rep_n_0_[0]\,
      O => \audio_buffer[3][4]_i_6_n_0\
    );
\audio_buffer[3][4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000036D80256"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[0]\,
      I1 => \audio_idx_reg_rep_n_0_[1]\,
      I2 => \audio_idx_reg_rep_n_0_[2]\,
      I3 => \audio_idx_reg_rep_n_0_[3]\,
      I4 => \audio_idx_reg_rep_n_0_[4]\,
      I5 => \audio_idx_reg_rep_n_0_[7]\,
      O => \audio_buffer[3][4]_i_7_n_0\
    );
\audio_buffer[3][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22C105D779B1AF4C"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][5]_i_4_n_0\
    );
\audio_buffer[3][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"61E906A6E950F5F9"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[2]\,
      I3 => \audio_idx_reg_rep_n_0_[0]\,
      I4 => \audio_idx_reg_rep_n_0_[3]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][5]_i_5_n_0\
    );
\audio_buffer[3][5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7CDAE5C213BCA7A9"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[1]\,
      I5 => \audio_idx_reg_rep_n_0_[0]\,
      O => \audio_buffer[3][5]_i_6_n_0\
    );
\audio_buffer[3][5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A4E001CD"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[0]\,
      I1 => \audio_idx_reg_rep_n_0_[1]\,
      I2 => \audio_idx_reg_rep_n_0_[2]\,
      I3 => \audio_idx_reg_rep_n_0_[3]\,
      I4 => \audio_idx_reg_rep_n_0_[4]\,
      I5 => \audio_idx_reg_rep_n_0_[7]\,
      O => \audio_buffer[3][5]_i_7_n_0\
    );
\audio_buffer[3][6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F79D7830701ED18"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[1]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[2]\,
      O => \audio_buffer[3][6]_i_4_n_0\
    );
\audio_buffer[3][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A279F2465D8D05B"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[1]\,
      I5 => \audio_idx_reg_rep_n_0_[0]\,
      O => \audio_buffer[3][6]_i_5_n_0\
    );
\audio_buffer[3][6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38876EF6DFE1889D"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][6]_i_6_n_0\
    );
\audio_buffer[3][6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008214A214"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[3]\,
      I1 => \audio_idx_reg_rep_n_0_[2]\,
      I2 => \audio_idx_reg_rep_n_0_[1]\,
      I3 => \audio_idx_reg_rep_n_0_[4]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[7]\,
      O => \audio_buffer[3][6]_i_7_n_0\
    );
\audio_buffer[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00044000"
    )
        port map (
      I0 => \^bit_cnt_reg[3]_0\,
      I1 => audio_send_clk1,
      I2 => \audio_buffer_idx_reg_n_0_[0]\,
      I3 => \audio_buffer_idx_reg_n_0_[1]\,
      I4 => \audio_buffer_idx_reg_n_0_[2]\,
      O => \audio_buffer[3][7]_i_1_n_0\
    );
\audio_buffer[3][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B270BF5F5195D10"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[1]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[2]\,
      O => \audio_buffer[3][7]_i_5_n_0\
    );
\audio_buffer[3][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"19942919E369E667"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][7]_i_6_n_0\
    );
\audio_buffer[3][7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F9A4DBBCDAF98E7"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[7]\,
      I1 => \audio_idx_reg_rep_n_0_[4]\,
      I2 => \audio_idx_reg_rep_n_0_[3]\,
      I3 => \audio_idx_reg_rep_n_0_[2]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[1]\,
      O => \audio_buffer[3][7]_i_7_n_0\
    );
\audio_buffer[3][7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A801A001"
    )
        port map (
      I0 => \audio_idx_reg_rep_n_0_[3]\,
      I1 => \audio_idx_reg_rep_n_0_[1]\,
      I2 => \audio_idx_reg_rep_n_0_[2]\,
      I3 => \audio_idx_reg_rep_n_0_[4]\,
      I4 => \audio_idx_reg_rep_n_0_[0]\,
      I5 => \audio_idx_reg_rep_n_0_[7]\,
      O => \audio_buffer[3][7]_i_8_n_0\
    );
\audio_buffer_idx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAA45AA"
    )
        port map (
      I0 => \audio_buffer_idx_reg_n_0_[0]\,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => audio_send_clk1,
      I4 => \^bit_cnt_reg[3]_0\,
      I5 => \^h_var_reg[4]_0\,
      O => \audio_buffer_idx[0]_i_1_n_0\
    );
\audio_buffer_idx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00CC6C"
    )
        port map (
      I0 => \audio_buffer_idx_reg_n_0_[0]\,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => audio_send_clk1,
      I3 => \^bit_cnt_reg[3]_0\,
      I4 => \^h_var_reg[4]_0\,
      O => \audio_buffer_idx[1]_i_1_n_0\
    );
\audio_buffer_idx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F00000F0F078F0"
    )
        port map (
      I0 => \audio_buffer_idx_reg_n_0_[0]\,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      I3 => audio_send_clk1,
      I4 => \^bit_cnt_reg[3]_0\,
      I5 => \^h_var_reg[4]_0\,
      O => \audio_buffer_idx[2]_i_1_n_0\
    );
\audio_buffer_idx[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \audio_buffer_idx[2]_i_7_n_0\,
      O => \^h_var_reg[4]_0\
    );
\audio_buffer_idx[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \audio_last_idx_reg_n_0_[6]\,
      I1 => \audio_idx_reg_n_0_[6]\,
      I2 => \audio_idx_reg_n_0_[7]\,
      I3 => \audio_last_idx_reg_n_0_[7]\,
      I4 => \audio_last_idx_reg_n_0_[8]\,
      O => \audio_buffer_idx[2]_i_4_n_0\
    );
\audio_buffer_idx[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \audio_last_idx_reg_n_0_[5]\,
      I1 => \audio_idx_reg_n_0_[5]\,
      I2 => \audio_idx_reg_n_0_[3]\,
      I3 => \audio_last_idx_reg_n_0_[3]\,
      I4 => \audio_idx_reg_n_0_[4]\,
      I5 => \audio_last_idx_reg_n_0_[4]\,
      O => \audio_buffer_idx[2]_i_5_n_0\
    );
\audio_buffer_idx[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[2]\,
      I1 => \audio_last_idx_reg_n_0_[2]\,
      I2 => \audio_idx_reg_n_0_[0]\,
      I3 => \audio_last_idx_reg_n_0_[0]\,
      I4 => \audio_last_idx_reg_n_0_[1]\,
      I5 => \audio_idx_reg_n_0_[1]\,
      O => \audio_buffer_idx[2]_i_6_n_0\
    );
\audio_buffer_idx[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2228222222A822AA"
    )
        port map (
      I0 => \opmode[0]_i_5_n_0\,
      I1 => \h_var_reg_n_0_[5]\,
      I2 => \h_var_reg_n_0_[3]\,
      I3 => \h_var_reg_n_0_[4]\,
      I4 => \pkt_idx[4]_i_6_n_0\,
      I5 => \audio_buffer_idx[2]_i_8_n_0\,
      O => \audio_buffer_idx[2]_i_7_n_0\
    );
\audio_buffer_idx[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \h_var_reg_n_0_[3]\,
      I1 => \h_var_reg_n_0_[0]\,
      I2 => \h_var_reg_n_0_[2]\,
      I3 => \h_var_reg_n_0_[1]\,
      O => \audio_buffer_idx[2]_i_8_n_0\
    );
\audio_buffer_idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \audio_buffer_idx[0]_i_1_n_0\,
      Q => \audio_buffer_idx_reg_n_0_[0]\,
      R => '0'
    );
\audio_buffer_idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \audio_buffer_idx[1]_i_1_n_0\,
      Q => \audio_buffer_idx_reg_n_0_[1]\,
      R => '0'
    );
\audio_buffer_idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \audio_buffer_idx[2]_i_1_n_0\,
      Q => \audio_buffer_idx_reg_n_0_[2]\,
      R => '0'
    );
\audio_buffer_idx_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_audio_buffer_idx_reg[2]_i_2_CO_UNCONNECTED\(3),
      CO(2) => audio_send_clk1,
      CO(1 downto 0) => \NLW_audio_buffer_idx_reg[2]_i_2_CO_UNCONNECTED\(1 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW_audio_buffer_idx_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \audio_buffer_idx[2]_i_4_n_0\,
      S(1) => \audio_buffer_idx[2]_i_5_n_0\,
      S(0) => \audio_buffer_idx[2]_i_6_n_0\
    );
\audio_buffer_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[0][7]_i_1_n_0\,
      D => \audio_buffer[0][0]_i_1_n_0\,
      Q => p_0_in561_in,
      R => '0'
    );
\audio_buffer_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[0][7]_i_1_n_0\,
      D => \audio_buffer[0][1]_i_1_n_0\,
      Q => p_0_in564_in,
      R => '0'
    );
\audio_buffer_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[0][7]_i_1_n_0\,
      D => \audio_buffer[0][2]_i_1_n_0\,
      Q => p_0_in567_in,
      R => '0'
    );
\audio_buffer_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[0][7]_i_1_n_0\,
      D => \audio_buffer[0][3]_i_1_n_0\,
      Q => p_0_in570_in,
      R => '0'
    );
\audio_buffer_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[0][7]_i_1_n_0\,
      D => \audio_buffer[0][4]_i_1_n_0\,
      Q => p_0_in573_in,
      R => '0'
    );
\audio_buffer_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[0][7]_i_1_n_0\,
      D => \audio_buffer[0][5]_i_1_n_0\,
      Q => p_0_in576_in,
      R => '0'
    );
\audio_buffer_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[0][7]_i_1_n_0\,
      D => \audio_buffer[0][6]_i_1_n_0\,
      Q => p_0_in579_in,
      R => '0'
    );
\audio_buffer_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[0][7]_i_1_n_0\,
      D => \audio_buffer[0][7]_i_2_n_0\,
      Q => p_0_in582_in,
      R => '0'
    );
\audio_buffer_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[1][7]_i_1_n_0\,
      D => \audio_buffer[1][0]_i_1_n_0\,
      Q => p_0_in396_in,
      R => '0'
    );
\audio_buffer_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[1][7]_i_1_n_0\,
      D => \audio_buffer[1][1]_i_1_n_0\,
      Q => p_0_in399_in,
      R => '0'
    );
\audio_buffer_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[1][7]_i_1_n_0\,
      D => \audio_buffer[1][2]_i_1_n_0\,
      Q => p_0_in402_in,
      R => '0'
    );
\audio_buffer_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[1][7]_i_1_n_0\,
      D => \audio_buffer[1][3]_i_1_n_0\,
      Q => p_0_in405_in,
      R => '0'
    );
\audio_buffer_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[1][7]_i_1_n_0\,
      D => \audio_buffer[1][4]_i_1_n_0\,
      Q => p_0_in408_in,
      R => '0'
    );
\audio_buffer_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[1][7]_i_1_n_0\,
      D => \audio_buffer[1][5]_i_1_n_0\,
      Q => p_0_in411_in,
      R => '0'
    );
\audio_buffer_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[1][7]_i_1_n_0\,
      D => \audio_buffer[1][6]_i_1_n_0\,
      Q => p_0_in414_in,
      R => '0'
    );
\audio_buffer_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[1][7]_i_1_n_0\,
      D => \audio_buffer[1][7]_i_2_n_0\,
      Q => p_0_in417_in,
      R => '0'
    );
\audio_buffer_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[2][7]_i_1_n_0\,
      D => \audio_buffer[2][0]_i_1_n_0\,
      Q => p_0_in231_in,
      R => '0'
    );
\audio_buffer_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[2][7]_i_1_n_0\,
      D => \audio_buffer[2][1]_i_1_n_0\,
      Q => p_0_in234_in,
      R => '0'
    );
\audio_buffer_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[2][7]_i_1_n_0\,
      D => \audio_buffer[2][2]_i_1_n_0\,
      Q => p_0_in237_in,
      R => '0'
    );
\audio_buffer_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[2][7]_i_1_n_0\,
      D => \audio_buffer[2][3]_i_1_n_0\,
      Q => p_0_in240_in,
      R => '0'
    );
\audio_buffer_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[2][7]_i_1_n_0\,
      D => \audio_buffer[2][4]_i_1_n_0\,
      Q => p_0_in243_in,
      R => '0'
    );
\audio_buffer_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[2][7]_i_1_n_0\,
      D => \audio_buffer[2][5]_i_1_n_0\,
      Q => p_0_in246_in,
      R => '0'
    );
\audio_buffer_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[2][7]_i_1_n_0\,
      D => \audio_buffer[2][6]_i_1_n_0\,
      Q => p_0_in249_in,
      R => '0'
    );
\audio_buffer_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[2][7]_i_1_n_0\,
      D => \audio_buffer[2][7]_i_2_n_0\,
      Q => p_0_in252_in,
      R => '0'
    );
\audio_buffer_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[3][7]_i_1_n_0\,
      D => \audio_buffer_reg[3][0]_i_1_n_0\,
      Q => p_0_in66_in,
      R => '0'
    );
\audio_buffer_reg[3][0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \audio_buffer_reg[3][0]_i_2_n_0\,
      I1 => \audio_buffer_reg[3][0]_i_3_n_0\,
      O => \audio_buffer_reg[3][0]_i_1_n_0\,
      S => \audio_idx_reg_rep_n_0_[6]\
    );
\audio_buffer_reg[3][0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][0]_i_4_n_0\,
      I1 => \audio_buffer[3][0]_i_5_n_0\,
      O => \audio_buffer_reg[3][0]_i_2_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][0]_i_6_n_0\,
      I1 => \audio_buffer[3][0]_i_7_n_0\,
      O => \audio_buffer_reg[3][0]_i_3_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[3][7]_i_1_n_0\,
      D => \audio_buffer_reg[3][1]_i_1_n_0\,
      Q => p_0_in69_in,
      R => '0'
    );
\audio_buffer_reg[3][1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \audio_buffer_reg[3][1]_i_2_n_0\,
      I1 => \audio_buffer_reg[3][1]_i_3_n_0\,
      O => \audio_buffer_reg[3][1]_i_1_n_0\,
      S => \audio_idx_reg_rep_n_0_[6]\
    );
\audio_buffer_reg[3][1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][1]_i_4_n_0\,
      I1 => \audio_buffer[3][1]_i_5_n_0\,
      O => \audio_buffer_reg[3][1]_i_2_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][1]_i_6_n_0\,
      I1 => \audio_buffer[3][1]_i_7_n_0\,
      O => \audio_buffer_reg[3][1]_i_3_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[3][7]_i_1_n_0\,
      D => \audio_buffer_reg[3][2]_i_1_n_0\,
      Q => p_0_in72_in,
      R => '0'
    );
\audio_buffer_reg[3][2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \audio_buffer_reg[3][2]_i_2_n_0\,
      I1 => \audio_buffer_reg[3][2]_i_3_n_0\,
      O => \audio_buffer_reg[3][2]_i_1_n_0\,
      S => \audio_idx_reg_rep_n_0_[6]\
    );
\audio_buffer_reg[3][2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][2]_i_4_n_0\,
      I1 => \audio_buffer[3][2]_i_5_n_0\,
      O => \audio_buffer_reg[3][2]_i_2_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][2]_i_6_n_0\,
      I1 => \audio_buffer[3][2]_i_7_n_0\,
      O => \audio_buffer_reg[3][2]_i_3_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[3][7]_i_1_n_0\,
      D => \audio_buffer_reg[3][3]_i_1_n_0\,
      Q => p_0_in75_in,
      R => '0'
    );
\audio_buffer_reg[3][3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \audio_buffer_reg[3][3]_i_2_n_0\,
      I1 => \audio_buffer_reg[3][3]_i_3_n_0\,
      O => \audio_buffer_reg[3][3]_i_1_n_0\,
      S => \audio_idx_reg_rep_n_0_[6]\
    );
\audio_buffer_reg[3][3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][3]_i_4_n_0\,
      I1 => \audio_buffer[3][3]_i_5_n_0\,
      O => \audio_buffer_reg[3][3]_i_2_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][3]_i_6_n_0\,
      I1 => \audio_buffer[3][3]_i_7_n_0\,
      O => \audio_buffer_reg[3][3]_i_3_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[3][7]_i_1_n_0\,
      D => \audio_buffer_reg[3][4]_i_1_n_0\,
      Q => p_0_in78_in,
      R => '0'
    );
\audio_buffer_reg[3][4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \audio_buffer_reg[3][4]_i_2_n_0\,
      I1 => \audio_buffer_reg[3][4]_i_3_n_0\,
      O => \audio_buffer_reg[3][4]_i_1_n_0\,
      S => \audio_idx_reg_rep_n_0_[6]\
    );
\audio_buffer_reg[3][4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][4]_i_4_n_0\,
      I1 => \audio_buffer[3][4]_i_5_n_0\,
      O => \audio_buffer_reg[3][4]_i_2_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][4]_i_6_n_0\,
      I1 => \audio_buffer[3][4]_i_7_n_0\,
      O => \audio_buffer_reg[3][4]_i_3_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[3][7]_i_1_n_0\,
      D => \audio_buffer_reg[3][5]_i_1_n_0\,
      Q => p_0_in81_in,
      R => '0'
    );
\audio_buffer_reg[3][5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \audio_buffer_reg[3][5]_i_2_n_0\,
      I1 => \audio_buffer_reg[3][5]_i_3_n_0\,
      O => \audio_buffer_reg[3][5]_i_1_n_0\,
      S => \audio_idx_reg_rep_n_0_[6]\
    );
\audio_buffer_reg[3][5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][5]_i_4_n_0\,
      I1 => \audio_buffer[3][5]_i_5_n_0\,
      O => \audio_buffer_reg[3][5]_i_2_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][5]_i_6_n_0\,
      I1 => \audio_buffer[3][5]_i_7_n_0\,
      O => \audio_buffer_reg[3][5]_i_3_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[3][7]_i_1_n_0\,
      D => \audio_buffer_reg[3][6]_i_1_n_0\,
      Q => p_0_in84_in,
      R => '0'
    );
\audio_buffer_reg[3][6]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \audio_buffer_reg[3][6]_i_2_n_0\,
      I1 => \audio_buffer_reg[3][6]_i_3_n_0\,
      O => \audio_buffer_reg[3][6]_i_1_n_0\,
      S => \audio_idx_reg_rep_n_0_[6]\
    );
\audio_buffer_reg[3][6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][6]_i_4_n_0\,
      I1 => \audio_buffer[3][6]_i_5_n_0\,
      O => \audio_buffer_reg[3][6]_i_2_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][6]_i_6_n_0\,
      I1 => \audio_buffer[3][6]_i_7_n_0\,
      O => \audio_buffer_reg[3][6]_i_3_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \audio_buffer[3][7]_i_1_n_0\,
      D => \audio_buffer_reg[3][7]_i_2_n_0\,
      Q => p_0_in87_in,
      R => '0'
    );
\audio_buffer_reg[3][7]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \audio_buffer_reg[3][7]_i_3_n_0\,
      I1 => \audio_buffer_reg[3][7]_i_4_n_0\,
      O => \audio_buffer_reg[3][7]_i_2_n_0\,
      S => \audio_idx_reg_rep_n_0_[6]\
    );
\audio_buffer_reg[3][7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][7]_i_5_n_0\,
      I1 => \audio_buffer[3][7]_i_6_n_0\,
      O => \audio_buffer_reg[3][7]_i_3_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_buffer_reg[3][7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \audio_buffer[3][7]_i_7_n_0\,
      I1 => \audio_buffer[3][7]_i_8_n_0\,
      O => \audio_buffer_reg[3][7]_i_4_n_0\,
      S => \audio_idx_reg_rep_n_0_[5]\
    );
\audio_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \audio_cnt_reg_n_0_[0]\,
      O => audio_cnt(0)
    );
\audio_cnt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \audio_cnt[15]_i_3_n_0\,
      I1 => \audio_cnt[15]_i_4_n_0\,
      I2 => \audio_cnt_reg_n_0_[0]\,
      I3 => \audio_cnt_reg_n_0_[13]\,
      I4 => \audio_cnt_reg_n_0_[15]\,
      I5 => \audio_cnt_reg_n_0_[12]\,
      O => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \audio_cnt_reg_n_0_[14]\,
      I1 => \audio_cnt_reg_n_0_[4]\,
      I2 => \audio_cnt_reg_n_0_[2]\,
      I3 => \audio_cnt_reg_n_0_[8]\,
      I4 => \audio_cnt[15]_i_5_n_0\,
      O => \audio_cnt[15]_i_3_n_0\
    );
\audio_cnt[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \audio_cnt_reg_n_0_[11]\,
      I1 => \audio_cnt_reg_n_0_[1]\,
      I2 => \audio_cnt_reg_n_0_[10]\,
      I3 => \audio_cnt_reg_n_0_[6]\,
      O => \audio_cnt[15]_i_4_n_0\
    );
\audio_cnt[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \audio_cnt_reg_n_0_[7]\,
      I1 => \audio_cnt_reg_n_0_[9]\,
      I2 => \audio_cnt_reg_n_0_[5]\,
      I3 => \audio_cnt_reg_n_0_[3]\,
      O => \audio_cnt[15]_i_5_n_0\
    );
\audio_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => audio_cnt(0),
      Q => \audio_cnt_reg_n_0_[0]\,
      R => '0'
    );
\audio_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[12]_i_1_n_6\,
      Q => \audio_cnt_reg_n_0_[10]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[12]_i_1_n_5\,
      Q => \audio_cnt_reg_n_0_[11]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[12]_i_1_n_4\,
      Q => \audio_cnt_reg_n_0_[12]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \audio_cnt_reg[8]_i_1_n_0\,
      CO(3) => \audio_cnt_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_audio_cnt_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \audio_cnt_reg[12]_i_1_n_4\,
      O(2) => \audio_cnt_reg[12]_i_1_n_5\,
      O(1) => \audio_cnt_reg[12]_i_1_n_6\,
      O(0) => \audio_cnt_reg[12]_i_1_n_7\,
      S(3) => \audio_cnt_reg_n_0_[12]\,
      S(2) => \audio_cnt_reg_n_0_[11]\,
      S(1) => \audio_cnt_reg_n_0_[10]\,
      S(0) => \audio_cnt_reg_n_0_[9]\
    );
\audio_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[15]_i_2_n_7\,
      Q => \audio_cnt_reg_n_0_[13]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[15]_i_2_n_6\,
      Q => \audio_cnt_reg_n_0_[14]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[15]_i_2_n_5\,
      Q => \audio_cnt_reg_n_0_[15]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \audio_cnt_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_audio_cnt_reg[15]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_audio_cnt_reg[15]_i_2_O_UNCONNECTED\(3),
      O(2) => \audio_cnt_reg[15]_i_2_n_5\,
      O(1) => \audio_cnt_reg[15]_i_2_n_6\,
      O(0) => \audio_cnt_reg[15]_i_2_n_7\,
      S(3) => '0',
      S(2) => \audio_cnt_reg_n_0_[15]\,
      S(1) => \audio_cnt_reg_n_0_[14]\,
      S(0) => \audio_cnt_reg_n_0_[13]\
    );
\audio_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[4]_i_1_n_7\,
      Q => \audio_cnt_reg_n_0_[1]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[4]_i_1_n_6\,
      Q => \audio_cnt_reg_n_0_[2]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[4]_i_1_n_5\,
      Q => \audio_cnt_reg_n_0_[3]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[4]_i_1_n_4\,
      Q => \audio_cnt_reg_n_0_[4]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \audio_cnt_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_audio_cnt_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \audio_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \audio_cnt_reg[4]_i_1_n_4\,
      O(2) => \audio_cnt_reg[4]_i_1_n_5\,
      O(1) => \audio_cnt_reg[4]_i_1_n_6\,
      O(0) => \audio_cnt_reg[4]_i_1_n_7\,
      S(3) => \audio_cnt_reg_n_0_[4]\,
      S(2) => \audio_cnt_reg_n_0_[3]\,
      S(1) => \audio_cnt_reg_n_0_[2]\,
      S(0) => \audio_cnt_reg_n_0_[1]\
    );
\audio_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[8]_i_1_n_7\,
      Q => \audio_cnt_reg_n_0_[5]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[8]_i_1_n_6\,
      Q => \audio_cnt_reg_n_0_[6]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[8]_i_1_n_5\,
      Q => \audio_cnt_reg_n_0_[7]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[8]_i_1_n_4\,
      Q => \audio_cnt_reg_n_0_[8]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \audio_cnt_reg[4]_i_1_n_0\,
      CO(3) => \audio_cnt_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_audio_cnt_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \audio_cnt_reg[8]_i_1_n_4\,
      O(2) => \audio_cnt_reg[8]_i_1_n_5\,
      O(1) => \audio_cnt_reg[8]_i_1_n_6\,
      O(0) => \audio_cnt_reg[8]_i_1_n_7\,
      S(3) => \audio_cnt_reg_n_0_[8]\,
      S(2) => \audio_cnt_reg_n_0_[7]\,
      S(1) => \audio_cnt_reg_n_0_[6]\,
      S(0) => \audio_cnt_reg_n_0_[5]\
    );
\audio_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_cnt_reg[12]_i_1_n_7\,
      Q => \audio_cnt_reg_n_0_[9]\,
      R => \audio_cnt[15]_i_1_n_0\
    );
\audio_idx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[0]\,
      O => audio_idx(0)
    );
\audio_idx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[0]\,
      I1 => \audio_idx_reg_n_0_[1]\,
      O => \audio_idx[1]_i_1_n_0\
    );
\audio_idx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[2]\,
      I1 => \audio_idx_reg_n_0_[1]\,
      I2 => \audio_idx_reg_n_0_[0]\,
      O => \audio_idx[2]_i_1_n_0\
    );
\audio_idx[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[3]\,
      I1 => \audio_idx_reg_n_0_[2]\,
      I2 => \audio_idx_reg_n_0_[0]\,
      I3 => \audio_idx_reg_n_0_[1]\,
      O => \audio_idx[3]_i_1_n_0\
    );
\audio_idx[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[4]\,
      I1 => \audio_idx_reg_n_0_[1]\,
      I2 => \audio_idx_reg_n_0_[0]\,
      I3 => \audio_idx_reg_n_0_[2]\,
      I4 => \audio_idx_reg_n_0_[3]\,
      O => \audio_idx[4]_i_1_n_0\
    );
\audio_idx[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[5]\,
      I1 => \audio_idx_reg_n_0_[3]\,
      I2 => \audio_idx_reg_n_0_[2]\,
      I3 => \audio_idx_reg_n_0_[0]\,
      I4 => \audio_idx_reg_n_0_[1]\,
      I5 => \audio_idx_reg_n_0_[4]\,
      O => audio_idx(5)
    );
\audio_idx[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[6]\,
      I1 => \audio_idx[7]_i_4_n_0\,
      O => \audio_idx[6]_i_1_n_0\
    );
\audio_idx[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[1]\,
      I1 => \audio_idx_reg_n_0_[3]\,
      I2 => \audio_idx_reg_n_0_[5]\,
      I3 => \audio_idx_reg_n_0_[4]\,
      I4 => \audio_idx[7]_i_3_n_0\,
      O => \audio_idx[7]_i_1_n_0\
    );
\audio_idx[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[7]\,
      I1 => \audio_idx[7]_i_4_n_0\,
      I2 => \audio_idx_reg_n_0_[6]\,
      O => \audio_idx[7]_i_2_n_0\
    );
\audio_idx[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[0]\,
      I1 => \audio_idx_reg_n_0_[2]\,
      I2 => \audio_idx_reg_n_0_[6]\,
      I3 => \audio_idx_reg_n_0_[7]\,
      O => \audio_idx[7]_i_3_n_0\
    );
\audio_idx[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \audio_idx_reg_n_0_[3]\,
      I1 => \audio_idx_reg_n_0_[2]\,
      I2 => \audio_idx_reg_n_0_[0]\,
      I3 => \audio_idx_reg_n_0_[1]\,
      I4 => \audio_idx_reg_n_0_[4]\,
      I5 => \audio_idx_reg_n_0_[5]\,
      O => \audio_idx[7]_i_4_n_0\
    );
\audio_idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => audio_idx(0),
      Q => \audio_idx_reg_n_0_[0]\,
      R => '0'
    );
\audio_idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[1]_i_1_n_0\,
      Q => \audio_idx_reg_n_0_[1]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[2]_i_1_n_0\,
      Q => \audio_idx_reg_n_0_[2]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[3]_i_1_n_0\,
      Q => \audio_idx_reg_n_0_[3]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_idx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[4]_i_1_n_0\,
      Q => \audio_idx_reg_n_0_[4]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_idx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => audio_idx(5),
      Q => \audio_idx_reg_n_0_[5]\,
      R => '0'
    );
\audio_idx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[6]_i_1_n_0\,
      Q => \audio_idx_reg_n_0_[6]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_idx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[7]_i_2_n_0\,
      Q => \audio_idx_reg_n_0_[7]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_idx_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => audio_idx(0),
      Q => \audio_idx_reg_rep_n_0_[0]\,
      R => '0'
    );
\audio_idx_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[1]_i_1_n_0\,
      Q => \audio_idx_reg_rep_n_0_[1]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_idx_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[2]_i_1_n_0\,
      Q => \audio_idx_reg_rep_n_0_[2]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_idx_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[3]_i_1_n_0\,
      Q => \audio_idx_reg_rep_n_0_[3]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_idx_reg_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[4]_i_1_n_0\,
      Q => \audio_idx_reg_rep_n_0_[4]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_idx_reg_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => audio_idx(5),
      Q => \audio_idx_reg_rep_n_0_[5]\,
      R => '0'
    );
\audio_idx_reg_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[6]_i_1_n_0\,
      Q => \audio_idx_reg_rep_n_0_[6]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_idx_reg_rep[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => audio_clock,
      CE => '1',
      D => \audio_idx[7]_i_2_n_0\,
      Q => \audio_idx_reg_rep_n_0_[7]\,
      R => \audio_idx[7]_i_1_n_0\
    );
\audio_last_idx[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => audio_send_clk1,
      I5 => \audio_last_idx[7]_i_2_n_0\,
      O => \audio_last_idx[7]_i_1_n_0\
    );
\audio_last_idx[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \audio_buffer_idx_reg_n_0_[0]\,
      I1 => \audio_buffer_idx_reg_n_0_[1]\,
      I2 => \audio_buffer_idx_reg_n_0_[2]\,
      O => \audio_last_idx[7]_i_2_n_0\
    );
\audio_last_idx[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0200AAAA"
    )
        port map (
      I0 => \audio_last_idx_reg_n_0_[8]\,
      I1 => \audio_buffer_idx_reg_n_0_[0]\,
      I2 => \audio_buffer_idx_reg_n_0_[1]\,
      I3 => \audio_buffer_idx_reg_n_0_[2]\,
      I4 => audio_send_clk1,
      I5 => \^bit_cnt_reg[3]_0\,
      O => \audio_last_idx[8]_i_1_n_0\
    );
\audio_last_idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => \audio_last_idx[7]_i_1_n_0\,
      D => \audio_idx_reg_n_0_[0]\,
      Q => \audio_last_idx_reg_n_0_[0]\,
      R => '0'
    );
\audio_last_idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => \audio_last_idx[7]_i_1_n_0\,
      D => \audio_idx_reg_n_0_[1]\,
      Q => \audio_last_idx_reg_n_0_[1]\,
      R => '0'
    );
\audio_last_idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => \audio_last_idx[7]_i_1_n_0\,
      D => \audio_idx_reg_n_0_[2]\,
      Q => \audio_last_idx_reg_n_0_[2]\,
      R => '0'
    );
\audio_last_idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => \audio_last_idx[7]_i_1_n_0\,
      D => \audio_idx_reg_n_0_[3]\,
      Q => \audio_last_idx_reg_n_0_[3]\,
      R => '0'
    );
\audio_last_idx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => \audio_last_idx[7]_i_1_n_0\,
      D => \audio_idx_reg_n_0_[4]\,
      Q => \audio_last_idx_reg_n_0_[4]\,
      R => '0'
    );
\audio_last_idx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => \audio_last_idx[7]_i_1_n_0\,
      D => \audio_idx_reg_n_0_[5]\,
      Q => \audio_last_idx_reg_n_0_[5]\,
      R => '0'
    );
\audio_last_idx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => \audio_last_idx[7]_i_1_n_0\,
      D => \audio_idx_reg_n_0_[6]\,
      Q => \audio_last_idx_reg_n_0_[6]\,
      R => '0'
    );
\audio_last_idx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => \audio_last_idx[7]_i_1_n_0\,
      D => \audio_idx_reg_n_0_[7]\,
      Q => \audio_last_idx_reg_n_0_[7]\,
      R => '0'
    );
\audio_last_idx_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \audio_last_idx[8]_i_1_n_0\,
      Q => \audio_last_idx_reg_n_0_[8]\,
      R => '0'
    );
audio_send_clk_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => audio_send_clk_i_2_n_0,
      I1 => audio_send_clk_i_3_n_0,
      I2 => audio_send_clk_reg_n_0,
      I3 => audio_send_clk_i_4_n_0,
      O => audio_send_clk_i_1_n_0
    );
audio_send_clk_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \subs[0][61]_i_6_n_0\,
      I1 => \pkt_idx[4]_i_3_n_0\,
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => audio_send_clk_i_2_n_0
    );
audio_send_clk_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \header[7]_i_2_n_0\,
      I1 => \opmode[2]_i_7_n_0\,
      I2 => sel0(6),
      I3 => audio_send_clk_i_5_n_0,
      I4 => audio_send_clk_reg_n_0,
      I5 => \header[7]_i_1_n_0\,
      O => audio_send_clk_i_3_n_0
    );
audio_send_clk_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \audio_cnt[15]_i_3_n_0\,
      I1 => \^bit_cnt_reg[3]_0\,
      I2 => \audio_cnt_reg_n_0_[6]\,
      I3 => \audio_cnt_reg_n_0_[12]\,
      I4 => \audio_cnt_reg_n_0_[15]\,
      I5 => audio_send_clk_i_6_n_0,
      O => audio_send_clk_i_4_n_0
    );
audio_send_clk_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFBFFFFFF"
    )
        port map (
      I0 => \h_var_reg_n_0_[4]\,
      I1 => \h_var_reg_n_0_[1]\,
      I2 => \h_var_reg_n_0_[2]\,
      I3 => \h_var_reg_n_0_[3]\,
      I4 => \^bit_cnt_reg[3]_0\,
      I5 => \h_var_reg_n_0_[0]\,
      O => audio_send_clk_i_5_n_0
    );
audio_send_clk_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => audio_send_clk1,
      I1 => \audio_cnt_reg_n_0_[10]\,
      I2 => \audio_cnt_reg_n_0_[13]\,
      I3 => \audio_cnt_reg_n_0_[0]\,
      I4 => \audio_cnt_reg_n_0_[1]\,
      I5 => \audio_cnt_reg_n_0_[11]\,
      O => audio_send_clk_i_6_n_0
    );
audio_send_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => audio_send_clk_i_1_n_0,
      Q => audio_send_clk_reg_n_0,
      R => '0'
    );
audio_timer: entity work.clk_div
     port map (
      clk_out1 => clk_out1,
      clk_out_reg_0 => clk_out_reg
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FB0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7B80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \bit_cnt[3]_i_1_n_0\
    );
\bit_cnt[3]_i_1_replica\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7B80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \bit_cnt[3]_i_1_n_0_repN\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \bit_cnt[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \bit_cnt[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \bit_cnt[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \bit_cnt[3]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\bit_cnt_reg[3]_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \bit_cnt[3]_i_1_n_0_repN\,
      Q => \Q[3]_repN\,
      R => '0'
    );
buffer_clk_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => buffer_clk_i_1_n_0
    );
buffer_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => buffer_clk_i_1_n_0,
      Q => buffer_clk_reg_0,
      R => '0'
    );
\d_out[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^hsync\,
      O => hsync_reg_1
    );
\d_out[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ctl32\(0),
      O => \CTL32_reg[0]_1\
    );
\d_out[8]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ctl10\(0),
      O => \CTL10_reg[0]_1\
    );
\d_out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD1"
    )
        port map (
      I0 => \^ctl32\(0),
      I1 => \^is_video_active\,
      I2 => d_out22_in,
      I3 => CO(0),
      O => \CTL32_reg[0]_0\(0)
    );
\d_out[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"11D1"
    )
        port map (
      I0 => \^ctl10\(0),
      I1 => \^is_video_active\,
      I2 => \d_out_reg[9]\(0),
      I3 => d_out22_in_0,
      O => \CTL10_reg[0]_0\(0)
    );
\d_out[9]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^hsync\,
      I1 => vsync,
      O => hsync_reg_0
    );
\data_b[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \data_b_reg[1]_i_3_n_0\,
      I1 => \^q\(3),
      I2 => \data_b_reg[1]_i_4_n_0\,
      I3 => \data_b[1]_i_2_n_0\,
      I4 => \data_b[0]_i_2_n_0\,
      I5 => \data_b[0]_i_3_n_0\,
      O => \bit_cnt_reg[3]_1\(0)
    );
\data_b[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0208"
    )
        port map (
      I0 => \data_b[1]_i_11_n_0\,
      I1 => opmode(1),
      I2 => opmode(0),
      I3 => opmode(2),
      O => \data_b[0]_i_2_n_0\
    );
\data_b[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFBAAAA"
    )
        port map (
      I0 => \data_b[0]_i_4_n_0\,
      I1 => opmode(2),
      I2 => opmode(0),
      I3 => opmode(1),
      I4 => \data_b_reg[1]\,
      O => \data_b[0]_i_3_n_0\
    );
\data_b[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2000000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => opmode(0),
      I4 => opmode(2),
      I5 => opmode(1),
      O => \data_b[0]_i_4_n_0\
    );
\data_b[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF02A2"
    )
        port map (
      I0 => \data_b[1]_i_2_n_0\,
      I1 => \data_b_reg[1]_i_3_n_0\,
      I2 => \^q\(3),
      I3 => \data_b_reg[1]_i_4_n_0\,
      I4 => \data_b[1]_i_5_n_0\,
      I5 => \data_b[1]_i_6_n_0\,
      O => \bit_cnt_reg[3]_1\(1)
    );
\data_b[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FE00FF00FF01"
    )
        port map (
      I0 => pkt_idx(4),
      I1 => pkt_idx(3),
      I2 => \data_b[1]_i_18_n_0\,
      I3 => \data_b[1]_i_22_n_0\,
      I4 => \data_b[1]_i_20_n_0\,
      I5 => \data_b[1]_i_21_n_0\,
      O => \terc4_buffer_b__42\(9)
    );
\data_b[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB4105EBAE45FB10"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^hsync\,
      I5 => vsync,
      O => \data_b[1]_i_11_n_0\
    );
\data_b[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004040400040"
    )
        port map (
      I0 => opmode(0),
      I1 => opmode(2),
      I2 => opmode(1),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(0),
      O => \data_b[1]_i_12_n_0\
    );
\data_b[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_b[1]_i_24_n_0\,
      I1 => \data_b[1]_i_25_n_0\,
      I2 => \^q\(0),
      I3 => \data_b[1]_i_26_n_0\,
      I4 => pkt_idx(4),
      I5 => \data_b[1]_i_27_n_0\,
      O => \data_b[1]_i_14_n_0\
    );
\data_b[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_b[1]_i_28_n_0\,
      I1 => \data_b[1]_i_29_n_0\,
      I2 => \^q\(0),
      I3 => \data_b[1]_i_30_n_0\,
      I4 => pkt_idx(4),
      I5 => \data_b[1]_i_31_n_0\,
      O => \data_b[1]_i_15_n_0\
    );
\data_b[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_b[1]_i_32_n_0\,
      I1 => \data_b[1]_i_33_n_0\,
      I2 => \^q\(0),
      I3 => \data_b[1]_i_34_n_0\,
      I4 => pkt_idx(4),
      I5 => \data_b[1]_i_35_n_0\,
      O => \data_b[1]_i_16_n_0\
    );
\data_b[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_b[1]_i_36_n_0\,
      I1 => \data_b[1]_i_37_n_0\,
      I2 => \^q\(0),
      I3 => \data_b[1]_i_38_n_0\,
      I4 => pkt_idx(4),
      I5 => \data_b[1]_i_39_n_0\,
      O => \data_b[1]_i_17_n_0\
    );
\data_b[1]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pkt_idx(1),
      I1 => pkt_idx(2),
      O => \data_b[1]_i_18_n_0\
    );
\data_b[1]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1C"
    )
        port map (
      I0 => \data_b[1]_i_21_n_0\,
      I1 => vsync,
      I2 => \^hsync\,
      O => \data_b[1]_i_19_n_0\
    );
\data_b[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => opmode(2),
      I1 => opmode(0),
      I2 => opmode(1),
      O => \data_b[1]_i_2_n_0\
    );
\data_b[1]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => pkt_idx(2),
      I1 => pkt_idx(1),
      I2 => pkt_idx(0),
      O => \data_b[1]_i_20_n_0\
    );
\data_b[1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_b_reg[1]_i_40_n_0\,
      I1 => \data_b_reg[1]_i_41_n_0\,
      I2 => pkt_idx(4),
      I3 => \data_b[1]_i_42_n_0\,
      I4 => pkt_idx(3),
      I5 => \data_b_reg[1]_i_43_n_0\,
      O => \data_b[1]_i_21_n_0\
    );
\data_b[1]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CB"
    )
        port map (
      I0 => \data_b[1]_i_21_n_0\,
      I1 => \^hsync\,
      I2 => vsync,
      O => \data_b[1]_i_22_n_0\
    );
\data_b[1]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \data_b[1]_i_21_n_0\,
      I1 => vsync,
      I2 => \^hsync\,
      O => \data_b[1]_i_24_n_0\
    );
\data_b[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FF01FFFE0000"
    )
        port map (
      I0 => pkt_idx(3),
      I1 => \data_b[1]_i_18_n_0\,
      I2 => \data_b[1]_i_20_n_0\,
      I3 => vsync,
      I4 => \data_b[1]_i_21_n_0\,
      I5 => \^hsync\,
      O => \data_b[1]_i_25_n_0\
    );
\data_b[1]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \data_b[1]_i_21_n_0\,
      I1 => \^hsync\,
      I2 => vsync,
      O => \data_b[1]_i_26_n_0\
    );
\data_b[1]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE00FEFF0100"
    )
        port map (
      I0 => pkt_idx(3),
      I1 => \data_b[1]_i_18_n_0\,
      I2 => \data_b[1]_i_20_n_0\,
      I3 => \data_b[1]_i_21_n_0\,
      I4 => \^hsync\,
      I5 => vsync,
      O => \data_b[1]_i_27_n_0\
    );
\data_b[1]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \data_b[1]_i_21_n_0\,
      I1 => \^hsync\,
      I2 => vsync,
      O => \data_b[1]_i_28_n_0\
    );
\data_b[1]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010001FE01FEFEFF"
    )
        port map (
      I0 => pkt_idx(3),
      I1 => \data_b[1]_i_18_n_0\,
      I2 => \data_b[1]_i_20_n_0\,
      I3 => \data_b[1]_i_21_n_0\,
      I4 => \^hsync\,
      I5 => vsync,
      O => \data_b[1]_i_29_n_0\
    );
\data_b[1]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \data_b[1]_i_21_n_0\,
      I1 => vsync,
      I2 => \^hsync\,
      O => \data_b[1]_i_30_n_0\
    );
\data_b[1]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101FE0001FEFFFF"
    )
        port map (
      I0 => pkt_idx(3),
      I1 => \data_b[1]_i_18_n_0\,
      I2 => \data_b[1]_i_20_n_0\,
      I3 => vsync,
      I4 => \data_b[1]_i_21_n_0\,
      I5 => \^hsync\,
      O => \data_b[1]_i_31_n_0\
    );
\data_b[1]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2C"
    )
        port map (
      I0 => \data_b[1]_i_21_n_0\,
      I1 => \^hsync\,
      I2 => vsync,
      O => \data_b[1]_i_32_n_0\
    );
\data_b[1]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101FE01FEFF0100"
    )
        port map (
      I0 => pkt_idx(3),
      I1 => \data_b[1]_i_18_n_0\,
      I2 => \data_b[1]_i_20_n_0\,
      I3 => \data_b[1]_i_21_n_0\,
      I4 => \^hsync\,
      I5 => vsync,
      O => \data_b[1]_i_33_n_0\
    );
\data_b[1]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \data_b[1]_i_21_n_0\,
      I1 => vsync,
      I2 => \^hsync\,
      O => \data_b[1]_i_34_n_0\
    );
\data_b[1]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFE00FE0101"
    )
        port map (
      I0 => pkt_idx(3),
      I1 => \data_b[1]_i_18_n_0\,
      I2 => \data_b[1]_i_20_n_0\,
      I3 => \data_b[1]_i_21_n_0\,
      I4 => vsync,
      I5 => \^hsync\,
      O => \data_b[1]_i_35_n_0\
    );
\data_b[1]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C7"
    )
        port map (
      I0 => \data_b[1]_i_21_n_0\,
      I1 => vsync,
      I2 => \^hsync\,
      O => \data_b[1]_i_36_n_0\
    );
\data_b[1]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF000001FFFEFF"
    )
        port map (
      I0 => pkt_idx(3),
      I1 => \data_b[1]_i_18_n_0\,
      I2 => \data_b[1]_i_20_n_0\,
      I3 => \data_b[1]_i_21_n_0\,
      I4 => vsync,
      I5 => \^hsync\,
      O => \data_b[1]_i_37_n_0\
    );
\data_b[1]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E9"
    )
        port map (
      I0 => \data_b[1]_i_21_n_0\,
      I1 => \^hsync\,
      I2 => vsync,
      O => \data_b[1]_i_38_n_0\
    );
\data_b[1]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFE01FE0101FE"
    )
        port map (
      I0 => pkt_idx(3),
      I1 => \data_b[1]_i_18_n_0\,
      I2 => \data_b[1]_i_20_n_0\,
      I3 => \data_b[1]_i_21_n_0\,
      I4 => vsync,
      I5 => \^hsync\,
      O => \data_b[1]_i_39_n_0\
    );
\data_b[1]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => header(8),
      I1 => pkt_idx(0),
      I2 => header(1),
      I3 => pkt_idx(1),
      I4 => header(10),
      I5 => pkt_idx(2),
      O => \data_b[1]_i_42_n_0\
    );
\data_b[1]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => header(27),
      I1 => header(16),
      I2 => pkt_idx(1),
      I3 => header(25),
      I4 => pkt_idx(0),
      I5 => header(24),
      O => \data_b[1]_i_46_n_0\
    );
\data_b[1]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => header(31),
      I1 => header(30),
      I2 => pkt_idx(1),
      I3 => header(29),
      I4 => pkt_idx(0),
      I5 => header(28),
      O => \data_b[1]_i_47_n_0\
    );
\data_b[1]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => header(7),
      I1 => pkt_idx(1),
      I2 => header(2),
      I3 => pkt_idx(0),
      I4 => header(16),
      O => \data_b[1]_i_48_n_0\
    );
\data_b[1]_i_49\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pkt_idx(1),
      I1 => header(20),
      I2 => pkt_idx(0),
      O => \data_b[1]_i_49_n_0\
    );
\data_b[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0012"
    )
        port map (
      I0 => opmode(1),
      I1 => opmode(0),
      I2 => opmode(2),
      I3 => \data_b[1]_i_11_n_0\,
      O => \data_b[1]_i_5_n_0\
    );
\data_b[1]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => header(2),
      I1 => pkt_idx(1),
      I2 => header(1),
      I3 => pkt_idx(0),
      I4 => header(0),
      O => \data_b[1]_i_50_n_0\
    );
\data_b[1]_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pkt_idx(1),
      I1 => header(7),
      I2 => pkt_idx(0),
      O => \data_b[1]_i_51_n_0\
    );
\data_b[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAABBAB"
    )
        port map (
      I0 => \data_b[1]_i_12_n_0\,
      I1 => \data_b_reg[1]\,
      I2 => opmode(2),
      I3 => opmode(0),
      I4 => opmode(1),
      O => \data_b[1]_i_6_n_0\
    );
\data_b[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => pkt_idx(4),
      I1 => pkt_idx(3),
      I2 => \data_b[1]_i_18_n_0\,
      I3 => \data_b[1]_i_19_n_0\,
      I4 => \data_b[1]_i_20_n_0\,
      I5 => \data_b[1]_i_21_n_0\,
      O => \terc4_buffer_b__42\(8)
    );
\data_b_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_b_reg[1]_i_7_n_0\,
      I1 => \data_b_reg[1]_i_8_n_0\,
      O => \data_b_reg[1]_i_3_n_0\,
      S => \^q\(2)
    );
\data_b_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \terc4_buffer_b__42\(8),
      I1 => \terc4_buffer_b__42\(9),
      O => \data_b_reg[1]_i_4_n_0\,
      S => \^q\(0)
    );
\data_b_reg[1]_i_40\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_b[1]_i_46_n_0\,
      I1 => \data_b[1]_i_47_n_0\,
      O => \data_b_reg[1]_i_40_n_0\,
      S => pkt_idx(2)
    );
\data_b_reg[1]_i_41\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_b[1]_i_48_n_0\,
      I1 => \data_b[1]_i_49_n_0\,
      O => \data_b_reg[1]_i_41_n_0\,
      S => pkt_idx(2)
    );
\data_b_reg[1]_i_43\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_b[1]_i_50_n_0\,
      I1 => \data_b[1]_i_51_n_0\,
      O => \data_b_reg[1]_i_43_n_0\,
      S => pkt_idx(2)
    );
\data_b_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_b[1]_i_14_n_0\,
      I1 => \data_b[1]_i_15_n_0\,
      O => \data_b_reg[1]_i_7_n_0\,
      S => \^q\(1)
    );
\data_b_reg[1]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_b[1]_i_16_n_0\,
      I1 => \data_b[1]_i_17_n_0\,
      O => \data_b_reg[1]_i_8_n_0\,
      S => \^q\(1)
    );
\data_g[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \data_g_reg[1]_i_3_n_0\,
      I1 => \^q\(3),
      I2 => \data_g[1]_i_4_n_0\,
      I3 => \data_g[1]_i_2_n_0\,
      I4 => \data_g[0]_i_2_n_0\,
      I5 => \data_g[0]_i_3_n_0\,
      O => D(0)
    );
\data_g[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001D1D00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => opmode(2),
      I4 => opmode(1),
      I5 => opmode(0),
      O => \data_g[0]_i_2_n_0\
    );
\data_g[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF830080"
    )
        port map (
      I0 => p_1_in(0),
      I1 => opmode(2),
      I2 => opmode(1),
      I3 => opmode(0),
      I4 => \data_g[1]_i_14_n_0\,
      O => \data_g[0]_i_3_n_0\
    );
\data_g[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF02A2"
    )
        port map (
      I0 => \data_g[1]_i_2_n_0\,
      I1 => \data_g_reg[1]_i_3_n_0\,
      I2 => \^q\(3),
      I3 => \data_g[1]_i_4_n_0\,
      I4 => \data_g[1]_i_5_n_0\,
      I5 => \data_g[1]_i_6_n_0\,
      O => D(1)
    );
\data_g[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_g[1]_i_17_n_0\,
      I1 => \data_g[1]_i_18_n_0\,
      I2 => pkt_idx(4),
      I3 => \data_g[1]_i_19_n_0\,
      I4 => pkt_idx(3),
      I5 => \data_g[1]_i_20_n_0\,
      O => \data_g[1]_i_10_n_0\
    );
\data_g[1]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(1),
      O => p_1_in(0)
    );
\data_g[1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmds_buffer_g(4),
      I1 => \^q\(0),
      I2 => tmds_buffer_g(3),
      I3 => \^q\(3),
      I4 => \data_g[1]_i_25_n_0\,
      O => \data_g[1]_i_14_n_0\
    );
\data_g[1]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \data_g[1]_i_26_n_0\,
      I1 => \data_g[1]_i_27_n_0\,
      I2 => pkt_idx(3),
      I3 => \data_g[1]_i_28_n_0\,
      I4 => pkt_idx(2),
      O => \data_g[1]_i_15_n_0\
    );
\data_g[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888B88888888888"
    )
        port map (
      I0 => \data_g[1]_i_29_n_0\,
      I1 => pkt_idx(3),
      I2 => pkt_idx(2),
      I3 => header(0),
      I4 => pkt_idx(0),
      I5 => pkt_idx(1),
      O => \data_g[1]_i_16_n_0\
    );
\data_g[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888888"
    )
        port map (
      I0 => \data_g[1]_i_30_n_0\,
      I1 => pkt_idx(2),
      I2 => pkt_idx(1),
      I3 => \subs[0]_0\(50),
      I4 => pkt_idx(0),
      I5 => header(10),
      O => \data_g[1]_i_17_n_0\
    );
\data_g[1]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080300"
    )
        port map (
      I0 => header(0),
      I1 => pkt_idx(2),
      I2 => pkt_idx(0),
      I3 => header(16),
      I4 => pkt_idx(1),
      O => \data_g[1]_i_18_n_0\
    );
\data_g[1]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB8888"
    )
        port map (
      I0 => \data_g[1]_i_31_n_0\,
      I1 => pkt_idx(2),
      I2 => pkt_idx(0),
      I3 => pkt_idx(1),
      I4 => header(0),
      O => \data_g[1]_i_19_n_0\
    );
\data_g[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => opmode(2),
      I1 => opmode(1),
      I2 => opmode(0),
      O => \data_g[1]_i_2_n_0\
    );
\data_g[1]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => pkt_idx(0),
      I1 => header(2),
      I2 => pkt_idx(1),
      I3 => pkt_idx(2),
      I4 => \data_g[1]_i_32_n_0\,
      O => \data_g[1]_i_20_n_0\
    );
\data_g[1]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \data_g[1]_i_33_n_0\,
      I1 => \data_g[1]_i_27_n_0\,
      I2 => pkt_idx(3),
      I3 => \data_g[1]_i_34_n_0\,
      I4 => pkt_idx(2),
      O => \data_g[1]_i_21_n_0\
    );
\data_g[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88FFFF8B880000"
    )
        port map (
      I0 => \data_g[1]_i_35_n_0\,
      I1 => pkt_idx(2),
      I2 => pkt_idx(0),
      I3 => header(10),
      I4 => pkt_idx(3),
      I5 => \data_g[1]_i_36_n_0\,
      O => \data_g[1]_i_22_n_0\
    );
\data_g[1]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \data_g[1]_i_37_n_0\,
      I1 => \data_g[1]_i_27_n_0\,
      I2 => pkt_idx(3),
      I3 => \data_g[1]_i_38_n_0\,
      I4 => pkt_idx(2),
      O => \data_g[1]_i_23_n_0\
    );
\data_g[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888B88888888888"
    )
        port map (
      I0 => \data_g_reg[1]_i_39_n_0\,
      I1 => pkt_idx(3),
      I2 => pkt_idx(2),
      I3 => header(0),
      I4 => pkt_idx(0),
      I5 => pkt_idx(1),
      O => \data_g[1]_i_24_n_0\
    );
\data_g[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0FFF5CFC00A00"
    )
        port map (
      I0 => \^q\(2),
      I1 => tmds_buffer_g(2),
      I2 => \^q\(0),
      I3 => tmds_buffer_g(1),
      I4 => \^q\(1),
      I5 => tmds_buffer_g(0),
      O => \data_g[1]_i_25_n_0\
    );
\data_g[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[1]_1\(30),
      I1 => \subs[1]_1\(4),
      I2 => pkt_idx(1),
      I3 => \subs[1]_1\(2),
      I4 => pkt_idx(0),
      I5 => \subs[1]_1\(0),
      O => \data_g[1]_i_26_n_0\
    );
\data_g[1]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pkt_idx(0),
      I1 => pkt_idx(1),
      I2 => header(0),
      O => \data_g[1]_i_27_n_0\
    );
\data_g[1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[1]_1\(6),
      I1 => \subs[1]_1\(4),
      I2 => pkt_idx(1),
      I3 => \subs[1]_1\(2),
      I4 => pkt_idx(0),
      I5 => \subs[1]_1\(0),
      O => \data_g[1]_i_28_n_0\
    );
\data_g[1]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \data_g[1]_i_40_n_0\,
      I1 => pkt_idx(2),
      I2 => \subs[1]_1\(54),
      I3 => pkt_idx(1),
      I4 => pkt_idx(0),
      I5 => header(10),
      O => \data_g[1]_i_29_n_0\
    );
\data_g[1]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[0]_0\(62),
      I1 => \subs[0]_0\(60),
      I2 => pkt_idx(1),
      I3 => \subs[0]_0\(58),
      I4 => pkt_idx(0),
      I5 => \subs[0]_0\(56),
      O => \data_g[1]_i_30_n_0\
    );
\data_g[1]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[0]_0\(30),
      I1 => \subs[0]_0\(28),
      I2 => pkt_idx(1),
      I3 => \subs[0]_0\(26),
      I4 => pkt_idx(0),
      I5 => \subs[0]_0\(0),
      O => \data_g[1]_i_31_n_0\
    );
\data_g[1]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[0]_0\(6),
      I1 => \subs[0]_0\(4),
      I2 => pkt_idx(1),
      I3 => \subs[0]_0\(2),
      I4 => pkt_idx(0),
      I5 => \subs[0]_0\(0),
      O => \data_g[1]_i_32_n_0\
    );
\data_g[1]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[3]_3\(30),
      I1 => \subs[3]_3\(4),
      I2 => pkt_idx(1),
      I3 => \subs[3]_3\(2),
      I4 => pkt_idx(0),
      I5 => \subs[3]_3\(0),
      O => \data_g[1]_i_33_n_0\
    );
\data_g[1]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[3]_3\(6),
      I1 => \subs[3]_3\(4),
      I2 => pkt_idx(1),
      I3 => \subs[3]_3\(2),
      I4 => pkt_idx(0),
      I5 => \subs[3]_3\(0),
      O => \data_g[1]_i_34_n_0\
    );
\data_g[1]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[3]_3\(62),
      I1 => \subs[3]_3\(60),
      I2 => pkt_idx(1),
      I3 => \subs[3]_3\(58),
      I4 => pkt_idx(0),
      I5 => \subs[3]_3\(56),
      O => \data_g[1]_i_35_n_0\
    );
\data_g[1]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => pkt_idx(2),
      I1 => header(0),
      I2 => pkt_idx(0),
      I3 => pkt_idx(1),
      O => \data_g[1]_i_36_n_0\
    );
\data_g[1]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[2]_2\(30),
      I1 => \subs[2]_2\(4),
      I2 => pkt_idx(1),
      I3 => \subs[2]_2\(2),
      I4 => pkt_idx(0),
      I5 => \subs[2]_2\(0),
      O => \data_g[1]_i_37_n_0\
    );
\data_g[1]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[2]_2\(6),
      I1 => \subs[2]_2\(4),
      I2 => pkt_idx(1),
      I3 => \subs[2]_2\(2),
      I4 => pkt_idx(0),
      I5 => \subs[2]_2\(0),
      O => \data_g[1]_i_38_n_0\
    );
\data_g[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65596AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \data_g_reg[1]_i_9_n_0\,
      I2 => \data_g[1]_i_10_n_0\,
      I3 => \data_g_reg[1]_i_11_n_0\,
      I4 => \data_g_reg[1]_i_12_n_0\,
      O => \data_g[1]_i_4_n_0\
    );
\data_g[1]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[1]_1\(62),
      I1 => \subs[1]_1\(60),
      I2 => pkt_idx(1),
      I3 => \subs[1]_1\(58),
      I4 => pkt_idx(0),
      I5 => \subs[1]_1\(56),
      O => \data_g[1]_i_40_n_0\
    );
\data_g[1]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \subs[2]_2\(54),
      I1 => pkt_idx(1),
      I2 => \subs[2]_2\(50),
      I3 => pkt_idx(0),
      I4 => header(10),
      O => \data_g[1]_i_41_n_0\
    );
\data_g[1]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[2]_2\(62),
      I1 => \subs[2]_2\(60),
      I2 => pkt_idx(1),
      I3 => \subs[2]_2\(58),
      I4 => pkt_idx(0),
      I5 => \subs[2]_2\(56),
      O => \data_g[1]_i_42_n_0\
    );
\data_g[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606060000000600"
    )
        port map (
      I0 => opmode(2),
      I1 => opmode(1),
      I2 => opmode(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(0),
      O => \data_g[1]_i_5_n_0\
    );
\data_g[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30335003"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \data_g[1]_i_14_n_0\,
      I2 => opmode(2),
      I3 => opmode(1),
      I4 => opmode(0),
      O => \data_g[1]_i_6_n_0\
    );
\data_g[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A645EA21E95E1AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \data_g_reg[1]_i_11_n_0\,
      I3 => \data_g_reg[1]_i_12_n_0\,
      I4 => \data_g[1]_i_10_n_0\,
      I5 => \data_g_reg[1]_i_9_n_0\,
      O => \data_g[1]_i_7_n_0\
    );
\data_g[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5AE7156689E87A9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \data_g_reg[1]_i_11_n_0\,
      I3 => \data_g_reg[1]_i_12_n_0\,
      I4 => \data_g_reg[1]_i_9_n_0\,
      I5 => \data_g[1]_i_10_n_0\,
      O => \data_g[1]_i_8_n_0\
    );
\data_g_reg[1]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_g[1]_i_21_n_0\,
      I1 => \data_g[1]_i_22_n_0\,
      O => \data_g_reg[1]_i_11_n_0\,
      S => pkt_idx(4)
    );
\data_g_reg[1]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_g[1]_i_23_n_0\,
      I1 => \data_g[1]_i_24_n_0\,
      O => \data_g_reg[1]_i_12_n_0\,
      S => pkt_idx(4)
    );
\data_g_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_g[1]_i_7_n_0\,
      I1 => \data_g[1]_i_8_n_0\,
      O => \data_g_reg[1]_i_3_n_0\,
      S => \^q\(2)
    );
\data_g_reg[1]_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_g[1]_i_41_n_0\,
      I1 => \data_g[1]_i_42_n_0\,
      O => \data_g_reg[1]_i_39_n_0\,
      S => pkt_idx(2)
    );
\data_g_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_g[1]_i_15_n_0\,
      I1 => \data_g[1]_i_16_n_0\,
      O => \data_g_reg[1]_i_9_n_0\,
      S => pkt_idx(4)
    );
\data_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE200"
    )
        port map (
      I0 => \data_r_reg[1]_i_2_n_0\,
      I1 => \^q\(3),
      I2 => \data_r[1]_i_3_n_0\,
      I3 => \data_b[1]_i_2_n_0\,
      I4 => \data_r[0]_i_2_n_0\,
      I5 => \data_r[0]_i_3_n_0\,
      O => \bit_cnt_reg[3]_2\(0)
    );
\data_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001D00001D00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => opmode(1),
      I4 => opmode(0),
      I5 => opmode(2),
      O => \data_r[0]_i_2_n_0\
    );
\data_r[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFBAAAA"
    )
        port map (
      I0 => \data_b[0]_i_4_n_0\,
      I1 => opmode(2),
      I2 => opmode(0),
      I3 => opmode(1),
      I4 => \data_r_reg[1]\,
      O => \data_r[0]_i_3_n_0\
    );
\data_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF02A2"
    )
        port map (
      I0 => \data_b[1]_i_2_n_0\,
      I1 => \data_r_reg[1]_i_2_n_0\,
      I2 => \^q\(3),
      I3 => \data_r[1]_i_3_n_0\,
      I4 => \data_r[1]_i_4_n_0\,
      I5 => \data_r[1]_i_5_n_0\,
      O => \bit_cnt_reg[3]_2\(1)
    );
\data_r[1]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \data_r[1]_i_22_n_0\,
      I1 => \data_r[1]_i_23_n_0\,
      I2 => pkt_idx(3),
      I3 => \data_r[1]_i_24_n_0\,
      I4 => pkt_idx(2),
      O => \data_r[1]_i_13_n_0\
    );
\data_r[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => \data_r[1]_i_25_n_0\,
      I1 => pkt_idx(3),
      I2 => pkt_idx(2),
      I3 => pkt_idx(1),
      I4 => pkt_idx(0),
      I5 => header(0),
      O => \data_r[1]_i_14_n_0\
    );
\data_r[1]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \data_r[1]_i_26_n_0\,
      I1 => \data_r[1]_i_23_n_0\,
      I2 => pkt_idx(3),
      I3 => \data_r[1]_i_27_n_0\,
      I4 => pkt_idx(2),
      O => \data_r[1]_i_15_n_0\
    );
\data_r[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => \data_r[1]_i_28_n_0\,
      I1 => pkt_idx(3),
      I2 => pkt_idx(2),
      I3 => pkt_idx(1),
      I4 => pkt_idx(0),
      I5 => header(0),
      O => \data_r[1]_i_16_n_0\
    );
\data_r[1]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \data_r[1]_i_29_n_0\,
      I1 => \data_r[1]_i_23_n_0\,
      I2 => pkt_idx(3),
      I3 => \data_r[1]_i_30_n_0\,
      I4 => pkt_idx(2),
      O => \data_r[1]_i_17_n_0\
    );
\data_r[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => \data_r[1]_i_31_n_0\,
      I1 => pkt_idx(3),
      I2 => pkt_idx(2),
      I3 => pkt_idx(1),
      I4 => pkt_idx(0),
      I5 => header(0),
      O => \data_r[1]_i_18_n_0\
    );
\data_r[1]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \data_r[1]_i_32_n_0\,
      I1 => \data_r[1]_i_23_n_0\,
      I2 => pkt_idx(3),
      I3 => \data_r[1]_i_33_n_0\,
      I4 => pkt_idx(2),
      O => \data_r[1]_i_19_n_0\
    );
\data_r[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => \data_r[1]_i_34_n_0\,
      I1 => pkt_idx(3),
      I2 => pkt_idx(2),
      I3 => pkt_idx(1),
      I4 => pkt_idx(0),
      I5 => header(0),
      O => \data_r[1]_i_20_n_0\
    );
\data_r[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[1]_1\(7),
      I1 => \subs[1]_1\(29),
      I2 => pkt_idx(1),
      I3 => \subs[1]_1\(3),
      I4 => pkt_idx(0),
      I5 => \subs[1]_1\(1),
      O => \data_r[1]_i_22_n_0\
    );
\data_r[1]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => pkt_idx(1),
      I1 => pkt_idx(0),
      I2 => header(0),
      O => \data_r[1]_i_23_n_0\
    );
\data_r[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[1]_1\(7),
      I1 => \subs[1]_1\(5),
      I2 => pkt_idx(1),
      I3 => \subs[1]_1\(3),
      I4 => pkt_idx(0),
      I5 => \subs[1]_1\(1),
      O => \data_r[1]_i_24_n_0\
    );
\data_r[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8888B8888888"
    )
        port map (
      I0 => \data_r[1]_i_37_n_0\,
      I1 => pkt_idx(2),
      I2 => \subs[1]_1\(55),
      I3 => pkt_idx(1),
      I4 => pkt_idx(0),
      I5 => \subs[1]_1\(51),
      O => \data_r[1]_i_25_n_0\
    );
\data_r[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[0]_0\(7),
      I1 => \subs[0]_0\(29),
      I2 => pkt_idx(1),
      I3 => \subs[0]_0\(27),
      I4 => pkt_idx(0),
      I5 => \subs[0]_0\(25),
      O => \data_r[1]_i_26_n_0\
    );
\data_r[1]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[0]_0\(7),
      I1 => \subs[0]_0\(5),
      I2 => pkt_idx(1),
      I3 => \subs[0]_0\(3),
      I4 => pkt_idx(0),
      I5 => \subs[0]_0\(1),
      O => \data_r[1]_i_27_n_0\
    );
\data_r[1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8888B8888888"
    )
        port map (
      I0 => \data_r[1]_i_38_n_0\,
      I1 => pkt_idx(2),
      I2 => \subs[0]_0\(55),
      I3 => pkt_idx(1),
      I4 => pkt_idx(0),
      I5 => \subs[0]_0\(51),
      O => \data_r[1]_i_28_n_0\
    );
\data_r[1]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[3]_3\(7),
      I1 => \subs[3]_3\(29),
      I2 => pkt_idx(1),
      I3 => \subs[3]_3\(3),
      I4 => pkt_idx(0),
      I5 => \subs[3]_3\(1),
      O => \data_r[1]_i_29_n_0\
    );
\data_r[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65596AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \data_r_reg[1]_i_8_n_0\,
      I2 => \data_r_reg[1]_i_9_n_0\,
      I3 => \D3__16\,
      I4 => \D2__24\,
      O => \data_r[1]_i_3_n_0\
    );
\data_r[1]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[3]_3\(7),
      I1 => \subs[3]_3\(5),
      I2 => pkt_idx(1),
      I3 => \subs[3]_3\(3),
      I4 => pkt_idx(0),
      I5 => \subs[3]_3\(1),
      O => \data_r[1]_i_30_n_0\
    );
\data_r[1]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8888B8888888"
    )
        port map (
      I0 => \data_r[1]_i_39_n_0\,
      I1 => pkt_idx(2),
      I2 => \subs[3]_3\(55),
      I3 => pkt_idx(1),
      I4 => pkt_idx(0),
      I5 => \subs[3]_3\(51),
      O => \data_r[1]_i_31_n_0\
    );
\data_r[1]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[2]_2\(7),
      I1 => \subs[2]_2\(29),
      I2 => pkt_idx(1),
      I3 => \subs[2]_2\(3),
      I4 => pkt_idx(0),
      I5 => \subs[2]_2\(1),
      O => \data_r[1]_i_32_n_0\
    );
\data_r[1]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[2]_2\(7),
      I1 => \subs[2]_2\(5),
      I2 => pkt_idx(1),
      I3 => \subs[2]_2\(3),
      I4 => pkt_idx(0),
      I5 => \subs[2]_2\(1),
      O => \data_r[1]_i_33_n_0\
    );
\data_r[1]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8888B8888888"
    )
        port map (
      I0 => \data_r[1]_i_40_n_0\,
      I1 => pkt_idx(2),
      I2 => \subs[2]_2\(55),
      I3 => pkt_idx(1),
      I4 => pkt_idx(0),
      I5 => \subs[2]_2\(51),
      O => \data_r[1]_i_34_n_0\
    );
\data_r[1]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[1]_1\(63),
      I1 => \subs[1]_1\(61),
      I2 => pkt_idx(1),
      I3 => \subs[1]_1\(59),
      I4 => pkt_idx(0),
      I5 => \subs[1]_1\(57),
      O => \data_r[1]_i_37_n_0\
    );
\data_r[1]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[0]_0\(63),
      I1 => \subs[0]_0\(61),
      I2 => pkt_idx(1),
      I3 => \subs[0]_0\(59),
      I4 => pkt_idx(0),
      I5 => \subs[0]_0\(57),
      O => \data_r[1]_i_38_n_0\
    );
\data_r[1]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[3]_3\(63),
      I1 => \subs[3]_3\(61),
      I2 => pkt_idx(1),
      I3 => \subs[3]_3\(59),
      I4 => pkt_idx(0),
      I5 => \subs[3]_3\(57),
      O => \data_r[1]_i_39_n_0\
    );
\data_r[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1212120000001200"
    )
        port map (
      I0 => opmode(1),
      I1 => opmode(0),
      I2 => opmode(2),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(0),
      O => \data_r[1]_i_4_n_0\
    );
\data_r[1]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \subs[2]_2\(63),
      I1 => \subs[2]_2\(61),
      I2 => pkt_idx(1),
      I3 => \subs[2]_2\(59),
      I4 => pkt_idx(0),
      I5 => \subs[2]_2\(57),
      O => \data_r[1]_i_40_n_0\
    );
\data_r[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAABBAB"
    )
        port map (
      I0 => \data_b[1]_i_12_n_0\,
      I1 => \data_r_reg[1]\,
      I2 => opmode(2),
      I3 => opmode(0),
      I4 => opmode(1),
      O => \data_r[1]_i_5_n_0\
    );
\data_r[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A645EA21E95E1AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \D3__16\,
      I3 => \D2__24\,
      I4 => \data_r_reg[1]_i_9_n_0\,
      I5 => \data_r_reg[1]_i_8_n_0\,
      O => \data_r[1]_i_6_n_0\
    );
\data_r[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5AE7156689E87A9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \D3__16\,
      I3 => \D2__24\,
      I4 => \data_r_reg[1]_i_8_n_0\,
      I5 => \data_r_reg[1]_i_9_n_0\,
      O => \data_r[1]_i_7_n_0\
    );
\data_r_reg[1]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_r[1]_i_17_n_0\,
      I1 => \data_r[1]_i_18_n_0\,
      O => \D3__16\,
      S => pkt_idx(4)
    );
\data_r_reg[1]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_r[1]_i_19_n_0\,
      I1 => \data_r[1]_i_20_n_0\,
      O => \D2__24\,
      S => pkt_idx(4)
    );
\data_r_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_r[1]_i_6_n_0\,
      I1 => \data_r[1]_i_7_n_0\,
      O => \data_r_reg[1]_i_2_n_0\,
      S => \^q\(2)
    );
\data_r_reg[1]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_r[1]_i_13_n_0\,
      I1 => \data_r[1]_i_14_n_0\,
      O => \data_r_reg[1]_i_8_n_0\,
      S => pkt_idx(4)
    );
\data_r_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_r[1]_i_15_n_0\,
      I1 => \data_r[1]_i_16_n_0\,
      O => \data_r_reg[1]_i_9_n_0\,
      S => pkt_idx(4)
    );
\disparity[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^is_video_active\,
      O => SR(0)
    );
\h_var[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA6AAAA"
    )
        port map (
      I0 => \h_var_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \h_var[0]_i_1_n_0\
    );
\h_var[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFF0200FFFF0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \h_var_reg_n_0_[1]\,
      I5 => \h_var_reg_n_0_[0]\,
      O => \h_var[1]_i_1_n_0\
    );
\h_var[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \h_var_reg_n_0_[2]\,
      I1 => \h_var_reg_n_0_[1]\,
      I2 => \h_var_reg_n_0_[0]\,
      I3 => \^bit_cnt_reg[3]_0\,
      O => \h_var[2]_i_1_n_0\
    );
\h_var[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \h_var_reg_n_0_[1]\,
      I1 => \h_var_reg_n_0_[0]\,
      I2 => \^bit_cnt_reg[3]_0\,
      I3 => \h_var_reg_n_0_[2]\,
      I4 => \h_var_reg_n_0_[3]\,
      O => \h_var[3]_i_1_n_0\
    );
\h_var[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => \^bit_cnt_reg[3]_0\,
      I1 => \h_var_reg_n_0_[4]\,
      I2 => \h_var_reg_n_0_[1]\,
      I3 => \h_var_reg_n_0_[2]\,
      I4 => \h_var_reg_n_0_[0]\,
      I5 => \h_var_reg_n_0_[3]\,
      O => \h_var[4]_i_1_n_0\
    );
\h_var[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00000000FE"
    )
        port map (
      I0 => \h_var[5]_i_2_n_0\,
      I1 => \h_var_reg_n_0_[6]\,
      I2 => \h_var_reg_n_0_[7]\,
      I3 => \^bit_cnt_reg[3]_0\,
      I4 => \h_var[7]_i_2_n_0\,
      I5 => \h_var_reg_n_0_[5]\,
      O => \h_var[5]_i_1_n_0\
    );
\h_var[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \h_var_reg_n_0_[9]\,
      I1 => \h_var_reg_n_0_[8]\,
      O => \h_var[5]_i_2_n_0\
    );
\h_var[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => \h_var_reg_n_0_[6]\,
      I1 => \^bit_cnt_reg[3]_0\,
      I2 => \h_var[7]_i_2_n_0\,
      I3 => \h_var_reg_n_0_[5]\,
      O => \h_var[6]_i_1_n_0\
    );
\h_var[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA6AAAA"
    )
        port map (
      I0 => \h_var_reg_n_0_[7]\,
      I1 => \h_var_reg_n_0_[5]\,
      I2 => \h_var[7]_i_2_n_0\,
      I3 => \^bit_cnt_reg[3]_0\,
      I4 => \h_var_reg_n_0_[6]\,
      O => \h_var[7]_i_1_n_0\
    );
\h_var[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \h_var_reg_n_0_[4]\,
      I1 => \h_var_reg_n_0_[1]\,
      I2 => \h_var_reg_n_0_[2]\,
      I3 => \h_var_reg_n_0_[0]\,
      I4 => \h_var_reg_n_0_[3]\,
      O => \h_var[7]_i_2_n_0\
    );
\h_var[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \Q[3]_repN\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \^bit_cnt_reg[3]_0\
    );
\h_var[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF3FFFFD00C00000"
    )
        port map (
      I0 => \h_var_reg_n_0_[9]\,
      I1 => \h_var_reg_n_0_[6]\,
      I2 => \h_var_reg_n_0_[7]\,
      I3 => \h_var[9]_i_2_n_0\,
      I4 => \h_var_reg_n_0_[5]\,
      I5 => \h_var_reg_n_0_[8]\,
      O => \h_var[8]_i_1_n_0\
    );
\h_var[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFEFFFF20000000"
    )
        port map (
      I0 => \h_var_reg_n_0_[5]\,
      I1 => \h_var[9]_i_2_n_0\,
      I2 => \h_var_reg_n_0_[7]\,
      I3 => \h_var_reg_n_0_[6]\,
      I4 => \h_var_reg_n_0_[8]\,
      I5 => \h_var_reg_n_0_[9]\,
      O => \h_var[9]_i_1_n_0\
    );
\h_var[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^bit_cnt_reg[3]_0\,
      I1 => \h_var_reg_n_0_[3]\,
      I2 => \h_var_reg_n_0_[0]\,
      I3 => \h_var_reg_n_0_[2]\,
      I4 => \h_var_reg_n_0_[1]\,
      I5 => \h_var_reg_n_0_[4]\,
      O => \h_var[9]_i_2_n_0\
    );
\h_var_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \h_var[0]_i_1_n_0\,
      Q => \h_var_reg_n_0_[0]\,
      R => '0'
    );
\h_var_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \h_var[1]_i_1_n_0\,
      Q => \h_var_reg_n_0_[1]\,
      R => '0'
    );
\h_var_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \h_var[2]_i_1_n_0\,
      Q => \h_var_reg_n_0_[2]\,
      R => '0'
    );
\h_var_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \h_var[3]_i_1_n_0\,
      Q => \h_var_reg_n_0_[3]\,
      R => '0'
    );
\h_var_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \h_var[4]_i_1_n_0\,
      Q => \h_var_reg_n_0_[4]\,
      R => '0'
    );
\h_var_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \h_var[5]_i_1_n_0\,
      Q => \h_var_reg_n_0_[5]\,
      R => '0'
    );
\h_var_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \h_var[6]_i_1_n_0\,
      Q => \h_var_reg_n_0_[6]\,
      R => '0'
    );
\h_var_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \h_var[7]_i_1_n_0\,
      Q => \h_var_reg_n_0_[7]\,
      R => '0'
    );
\h_var_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \h_var[8]_i_1_n_0\,
      Q => \h_var_reg_n_0_[8]\,
      R => '0'
    );
\h_var_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \h_var[9]_i_1_n_0\,
      Q => \h_var_reg_n_0_[9]\,
      R => '0'
    );
\header[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      O => \header[0]_i_1_n_0\
    );
\header[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000007F00F07"
    )
        port map (
      I0 => \v_var[4]_i_2_n_0\,
      I1 => \header[7]_i_3_n_0\,
      I2 => \h_var_reg_n_0_[6]\,
      I3 => \h_var[9]_i_2_n_0\,
      I4 => \h_var_reg_n_0_[5]\,
      I5 => \header[7]_i_2_n_0\,
      O => \header[16]_i_1_n_0\
    );
\header[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \header[16]_i_1_n_0\,
      O => \header[1]_i_1_n_0\
    );
\header[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \iec_block_idx_reg_n_0_[5]\,
      I1 => \iec_block_idx_reg_n_0_[6]\,
      I2 => \iec_block_idx_reg_n_0_[7]\,
      I3 => \iec_block_idx_reg_n_0_[3]\,
      I4 => \iec_block_idx_reg_n_0_[2]\,
      I5 => \iec_block_idx_reg_n_0_[4]\,
      O => \header[20]_i_1_n_0\
    );
\header[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \header[20]_i_1_n_0\,
      O => \header[24]_i_1_n_0\
    );
\header[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCC070007000700"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \header[16]_i_1_n_0\,
      I3 => \subs[0][59]_i_2_n_0\,
      I4 => \header[20]_i_1_n_0\,
      I5 => \header[25]_i_2_n_0\,
      O => \header[25]_i_1_n_0\
    );
\header[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \header[31]_i_2_n_0\,
      I1 => \header[31]_i_3_n_0\,
      I2 => \^is_send_audio_reg_0\,
      O => \header[25]_i_2_n_0\
    );
\header[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007770"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => \header[16]_i_1_n_0\,
      O => \header[27]_i_1_n_0\
    );
\header[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \header[20]_i_1_n_0\,
      O => \header[28]_i_1_n_0\
    );
\header[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F870"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \header[16]_i_1_n_0\,
      I3 => \header[20]_i_1_n_0\,
      O => \header[29]_i_1_n_0\
    );
\header[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0041100400005104"
    )
        port map (
      I0 => \header[7]_i_2_n_0\,
      I1 => \h_var_reg_n_0_[5]\,
      I2 => \h_var[9]_i_2_n_0\,
      I3 => \h_var_reg_n_0_[6]\,
      I4 => \header[7]_i_3_n_0\,
      I5 => \v_var[4]_i_2_n_0\,
      O => \header[2]_i_1_n_0\
    );
\header[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      O => \header[30]_i_1_n_0\
    );
\header[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAAAAAAAAAAA"
    )
        port map (
      I0 => \header[16]_i_1_n_0\,
      I1 => \header[31]_i_2_n_0\,
      I2 => \header[31]_i_3_n_0\,
      I3 => \^is_send_audio_reg_0\,
      I4 => \header[20]_i_1_n_0\,
      I5 => \iec_block_idx[7]_i_3_n_0\,
      O => \header[31]_i_1_n_0\
    );
\header[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2228222222A822AA"
    )
        port map (
      I0 => \opmode[0]_i_5_n_0\,
      I1 => \h_var_reg_n_0_[5]\,
      I2 => \h_var_reg_n_0_[3]\,
      I3 => \h_var_reg_n_0_[4]\,
      I4 => \pkt_idx[4]_i_6_n_0\,
      I5 => \pkt_idx[4]_i_5_n_0\,
      O => \header[31]_i_2_n_0\
    );
\header[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEEEEEEFEFEF"
    )
        port map (
      I0 => \h_var_reg_n_0_[5]\,
      I1 => \h_var_reg_n_0_[4]\,
      I2 => \h_var_reg_n_0_[3]\,
      I3 => \h_var_reg_n_0_[0]\,
      I4 => \h_var_reg_n_0_[1]\,
      I5 => \h_var_reg_n_0_[2]\,
      O => \header[31]_i_3_n_0\
    );
\header[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C400C000C000C000"
    )
        port map (
      I0 => \header[31]_i_5_n_0\,
      I1 => \^is_send_audio\,
      I2 => \h_var_reg_n_0_[8]\,
      I3 => \h_var_reg_n_0_[9]\,
      I4 => \h_var_reg_n_0_[7]\,
      I5 => \h_var_reg_n_0_[6]\,
      O => \^is_send_audio_reg_0\
    );
\header[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000015"
    )
        port map (
      I0 => \h_var_reg_n_0_[2]\,
      I1 => \h_var_reg_n_0_[1]\,
      I2 => \h_var_reg_n_0_[0]\,
      I3 => \h_var_reg_n_0_[3]\,
      I4 => \h_var_reg_n_0_[4]\,
      I5 => \h_var_reg_n_0_[5]\,
      O => \header[31]_i_5_n_0\
    );
\header[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0150115155155515"
    )
        port map (
      I0 => \header[7]_i_2_n_0\,
      I1 => \header[7]_i_3_n_0\,
      I2 => \h_var_reg_n_0_[5]\,
      I3 => \h_var[9]_i_2_n_0\,
      I4 => \v_var[4]_i_2_n_0\,
      I5 => \h_var_reg_n_0_[6]\,
      O => \header[7]_i_1_n_0\
    );
\header[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFDFAFEFAFA"
    )
        port map (
      I0 => \h_var_reg_n_0_[9]\,
      I1 => \h_var_reg_n_0_[6]\,
      I2 => \h_var_reg_n_0_[7]\,
      I3 => \h_var[9]_i_2_n_0\,
      I4 => \h_var_reg_n_0_[5]\,
      I5 => \h_var_reg_n_0_[8]\,
      O => \header[7]_i_2_n_0\
    );
\header[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEE7FFEAAAAAAAA"
    )
        port map (
      I0 => \h_var_reg_n_0_[4]\,
      I1 => \h_var_reg_n_0_[2]\,
      I2 => \h_var_reg_n_0_[0]\,
      I3 => \h_var_reg_n_0_[1]\,
      I4 => \^bit_cnt_reg[3]_0\,
      I5 => \h_var_reg_n_0_[3]\,
      O => \header[7]_i_3_n_0\
    );
\header[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      O => \header[8]_i_1_n_0\
    );
\header_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[0]_i_1_n_0\,
      Q => header(0),
      R => '0'
    );
\header_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[8]_i_1_n_0\,
      Q => header(10),
      R => '0'
    );
\header_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[16]_i_1_n_0\,
      Q => header(16),
      R => '0'
    );
\header_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[1]_i_1_n_0\,
      Q => header(1),
      R => '0'
    );
\header_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[20]_i_1_n_0\,
      Q => header(20),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\header_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[24]_i_1_n_0\,
      Q => header(24),
      R => '0'
    );
\header_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[25]_i_1_n_0\,
      Q => header(25),
      R => '0'
    );
\header_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[27]_i_1_n_0\,
      Q => header(27),
      R => '0'
    );
\header_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[28]_i_1_n_0\,
      Q => header(28),
      R => '0'
    );
\header_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[29]_i_1_n_0\,
      Q => header(29),
      R => '0'
    );
\header_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[2]_i_1_n_0\,
      Q => header(2),
      R => '0'
    );
\header_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[30]_i_1_n_0\,
      Q => header(30),
      R => '0'
    );
\header_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[31]_i_1_n_0\,
      Q => header(31),
      S => '0'
    );
\header_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[7]_i_1_n_0\,
      Q => header(7),
      R => '0'
    );
\header_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \header[8]_i_1_n_0\,
      Q => header(8),
      S => \subs[0][62]_i_1_n_0\
    );
hsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFFFFDFBFFF"
    )
        port map (
      I0 => \h_var[7]_i_2_n_0\,
      I1 => \h_var_reg_n_0_[5]\,
      I2 => \h_var_reg_n_0_[9]\,
      I3 => \h_var_reg_n_0_[7]\,
      I4 => \h_var_reg_n_0_[8]\,
      I5 => \h_var_reg_n_0_[6]\,
      O => hsync_i_1_n_0
    );
hsync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => hsync_i_1_n_0,
      Q => \^hsync\,
      R => '0'
    );
\iec_block_idx[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \iec_block_idx_reg_n_0_[2]\,
      O => \iec_block_idx[2]_i_1_n_0\
    );
\iec_block_idx[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \iec_block_idx_reg_n_0_[3]\,
      I1 => \iec_block_idx_reg_n_0_[2]\,
      O => \iec_block_idx[3]_i_1_n_0\
    );
\iec_block_idx[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \iec_block_idx_reg_n_0_[4]\,
      I1 => \iec_block_idx_reg_n_0_[2]\,
      I2 => \iec_block_idx_reg_n_0_[3]\,
      O => \iec_block_idx[4]_i_1_n_0\
    );
\iec_block_idx[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \iec_block_idx_reg_n_0_[5]\,
      I1 => \iec_block_idx_reg_n_0_[4]\,
      I2 => \iec_block_idx_reg_n_0_[2]\,
      I3 => \iec_block_idx_reg_n_0_[3]\,
      O => \iec_block_idx[5]_i_1_n_0\
    );
\iec_block_idx[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFF00008000"
    )
        port map (
      I0 => \iec_block_idx_reg_n_0_[5]\,
      I1 => \iec_block_idx_reg_n_0_[4]\,
      I2 => \iec_block_idx_reg_n_0_[2]\,
      I3 => \iec_block_idx_reg_n_0_[3]\,
      I4 => \iec_block_idx_reg_n_0_[7]\,
      I5 => \iec_block_idx_reg_n_0_[6]\,
      O => \iec_block_idx[6]_i_1_n_0\
    );
\iec_block_idx[7]_i_1_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \h_var_reg_n_0_[0]\,
      I1 => \h_var_reg_n_0_[1]\,
      I2 => \iec_block_idx[7]_i_6_n_0\,
      I3 => \iec_block_idx[7]_i_4_n_0\,
      I4 => \iec_block_idx[7]_i_5_n_0\,
      I5 => \iec_block_idx[7]_i_3_n_0_repN\,
      O => \iec_block_idx[7]_i_1_n_0\
    );
\iec_block_idx[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => \iec_block_idx_reg_n_0_[6]\,
      I1 => \iec_block_idx_reg_n_0_[7]\,
      I2 => \iec_block_idx_reg_n_0_[3]\,
      I3 => \iec_block_idx_reg_n_0_[2]\,
      I4 => \iec_block_idx_reg_n_0_[4]\,
      I5 => \iec_block_idx_reg_n_0_[5]\,
      O => \iec_block_idx[7]_i_2_n_0\
    );
\iec_block_idx[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \h_var_reg_n_0_[1]\,
      I1 => \h_var_reg_n_0_[2]\,
      I2 => \h_var_reg_n_0_[0]\,
      I3 => \h_var_reg_n_0_[3]\,
      I4 => \iec_block_idx[7]_i_5_n_0\,
      I5 => \iec_block_idx[7]_i_6_n_0\,
      O => \iec_block_idx[7]_i_3_n_0\
    );
\iec_block_idx[7]_i_3_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \Q[3]_repN\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \h_var_reg_n_0_[2]\,
      I5 => \h_var_reg_n_0_[3]\,
      O => \iec_block_idx[7]_i_3_n_0_repN\
    );
\iec_block_idx[7]_i_4_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FB00FE00"
    )
        port map (
      I0 => \h_var_reg_n_0_[4]\,
      I1 => \h_var_reg_n_0_[3]\,
      I2 => \h_var_reg_n_0_[5]\,
      I3 => \^is_send_audio_reg_0\,
      I4 => \pkt_idx[4]_i_6_n_0\,
      I5 => \opmode[0]_i_5_n_0_repN\,
      O => \iec_block_idx[7]_i_4_n_0\
    );
\iec_block_idx[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555559AAAAAAAA"
    )
        port map (
      I0 => \h_var_reg_n_0_[7]\,
      I1 => \pkt_idx[4]_i_6_n_0\,
      I2 => \h_var_reg_n_0_[3]\,
      I3 => \h_var_reg_n_0_[4]\,
      I4 => \h_var_reg_n_0_[5]\,
      I5 => \h_var_reg_n_0_[6]\,
      O => \iec_block_idx[7]_i_5_n_0\
    );
\iec_block_idx[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF46"
    )
        port map (
      I0 => \h_var_reg_n_0_[3]\,
      I1 => \pkt_idx[4]_i_6_n_0\,
      I2 => \h_var_reg_n_0_[6]\,
      I3 => \h_var_reg_n_0_[5]\,
      I4 => \h_var_reg_n_0_[4]\,
      O => \iec_block_idx[7]_i_6_n_0\
    );
\iec_block_idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \iec_block_idx[7]_i_1_n_0\,
      D => \iec_block_idx[2]_i_1_n_0\,
      Q => \iec_block_idx_reg_n_0_[2]\,
      R => '0'
    );
\iec_block_idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \iec_block_idx[7]_i_1_n_0\,
      D => \iec_block_idx[3]_i_1_n_0\,
      Q => \iec_block_idx_reg_n_0_[3]\,
      R => '0'
    );
\iec_block_idx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \iec_block_idx[7]_i_1_n_0\,
      D => \iec_block_idx[4]_i_1_n_0\,
      Q => \iec_block_idx_reg_n_0_[4]\,
      R => '0'
    );
\iec_block_idx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \iec_block_idx[7]_i_1_n_0\,
      D => \iec_block_idx[5]_i_1_n_0\,
      Q => \iec_block_idx_reg_n_0_[5]\,
      R => '0'
    );
\iec_block_idx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \iec_block_idx[7]_i_1_n_0\,
      D => \iec_block_idx[6]_i_1_n_0\,
      Q => \iec_block_idx_reg_n_0_[6]\,
      R => '0'
    );
\iec_block_idx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \iec_block_idx[7]_i_1_n_0\,
      D => \iec_block_idx[7]_i_2_n_0\,
      Q => \iec_block_idx_reg_n_0_[7]\,
      R => '0'
    );
is_send_audio_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00020000"
    )
        port map (
      I0 => \audio_last_idx[7]_i_2_n_0\,
      I1 => is_send_audio_i_3_n_0,
      I2 => \h_var_reg_n_0_[2]\,
      I3 => \h_var_reg_n_0_[8]\,
      I4 => is_send_audio_i_4_n_0,
      I5 => is_send_audio_i_5_n_0,
      O => \h_var_reg[2]_0\
    );
is_send_audio_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \h_var_reg_n_0_[5]\,
      I1 => \h_var_reg_n_0_[4]\,
      I2 => \h_var_reg_n_0_[3]\,
      O => is_send_audio_i_3_n_0
    );
is_send_audio_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_var_reg_n_0_[1]\,
      I1 => \h_var_reg_n_0_[0]\,
      O => is_send_audio_i_4_n_0
    );
is_send_audio_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3777"
    )
        port map (
      I0 => \h_var_reg_n_0_[8]\,
      I1 => \h_var_reg_n_0_[9]\,
      I2 => \h_var_reg_n_0_[7]\,
      I3 => \h_var_reg_n_0_[6]\,
      O => is_send_audio_i_5_n_0
    );
is_send_audio_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => is_send_audio_reg_1,
      Q => \^is_send_audio\,
      R => '0'
    );
is_video_active_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCA0"
    )
        port map (
      I0 => opmode115_out,
      I1 => \^is_video_active\,
      I2 => is_video_active_i_3_n_0,
      I3 => \^bit_cnt_reg[3]_0\,
      O => is_video_active_i_1_n_0
    );
is_video_active_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5E57"
    )
        port map (
      I0 => \h_var_reg_n_0_[9]\,
      I1 => \h_var_reg_n_0_[7]\,
      I2 => \h_var_reg_n_0_[8]\,
      I3 => is_video_active_i_4_n_0,
      O => opmode115_out
    );
is_video_active_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => \v_var_reg_n_0_[9]\,
      I1 => \v_var_reg_n_0_[5]\,
      I2 => \v_var_reg_n_0_[8]\,
      I3 => \v_var_reg_n_0_[7]\,
      I4 => \v_var_reg_n_0_[6]\,
      O => is_video_active_i_3_n_0
    );
is_video_active_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"010F"
    )
        port map (
      I0 => \h_var_reg_n_0_[4]\,
      I1 => \audio_buffer_idx[2]_i_8_n_0\,
      I2 => \h_var_reg_n_0_[6]\,
      I3 => \h_var_reg_n_0_[5]\,
      O => is_video_active_i_4_n_0
    );
is_video_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => is_video_active_i_1_n_0,
      Q => \^is_video_active\,
      R => '0'
    );
\opmode[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAE0000FFAE"
    )
        port map (
      I0 => \opmode[0]_i_2_n_0\,
      I1 => \^v_var_reg[6]_0\,
      I2 => \opmode[0]_i_3_n_0\,
      I3 => \opmode[0]_i_4_n_0\,
      I4 => \^bit_cnt_reg[3]_0\,
      I5 => opmode(0),
      O => \opmode[0]_i_1_n_0\
    );
\opmode[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8088AAAA"
    )
        port map (
      I0 => \^is_send_audio_reg_0\,
      I1 => \header[31]_i_2_n_0\,
      I2 => \header[31]_i_3_n_0\,
      I3 => \opmode[0]_i_5_n_0\,
      I4 => \iec_block_idx[7]_i_4_n_0\,
      O => \opmode[0]_i_2_n_0\
    );
\opmode[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF000000D"
    )
        port map (
      I0 => \opmode[1]_i_5_n_0\,
      I1 => \h_var[4]_i_1_n_0\,
      I2 => \header[7]_i_3_n_0\,
      I3 => \h_var[5]_i_1_n_0\,
      I4 => \h_var[6]_i_1_n_0\,
      I5 => \header[7]_i_2_n_0\,
      O => \opmode[0]_i_3_n_0\
    );
\opmode[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF05070000"
    )
        port map (
      I0 => \h_var_reg_n_0_[5]\,
      I1 => \h_var_reg_n_0_[4]\,
      I2 => \h_var_reg_n_0_[6]\,
      I3 => \pkt_idx[4]_i_5_n_0\,
      I4 => \opmode[2]_i_6_n_0\,
      I5 => \opmode[0]_i_6_n_0\,
      O => \opmode[0]_i_4_n_0\
    );
\opmode[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAA00010000"
    )
        port map (
      I0 => \h_var_reg_n_0_[6]\,
      I1 => \h_var_reg_n_0_[5]\,
      I2 => \h_var_reg_n_0_[4]\,
      I3 => \h_var_reg_n_0_[3]\,
      I4 => \pkt_idx[4]_i_6_n_0\,
      I5 => \h_var_reg_n_0_[7]\,
      O => \opmode[0]_i_5_n_0\
    );
\opmode[0]_i_5_comp\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \h_var_reg_n_0_[7]\,
      I1 => \h_var_reg_n_0_[6]\,
      O => \opmode[0]_i_5_n_0_repN\
    );
\opmode[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFE00000000"
    )
        port map (
      I0 => \v_var_reg_n_0_[6]\,
      I1 => \v_var_reg_n_0_[7]\,
      I2 => \v_var_reg_n_0_[8]\,
      I3 => \v_var_reg_n_0_[5]\,
      I4 => \v_var_reg_n_0_[9]\,
      I5 => opmode115_out,
      O => \opmode[0]_i_6_n_0\
    );
\opmode[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF400000FF40"
    )
        port map (
      I0 => \opmode[1]_i_2_n_0\,
      I1 => \^v_var_reg[6]_0\,
      I2 => \^h_var_reg[6]_0\,
      I3 => \opmode[1]_i_4_n_0\,
      I4 => \^bit_cnt_reg[3]_0\,
      I5 => opmode(1),
      O => \opmode[1]_i_1_n_0\
    );
\opmode[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \header[7]_i_2_n_0\,
      I1 => \opmode[2]_i_7_n_0\,
      O => \opmode[1]_i_2_n_0\
    );
\opmode[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \h_var[6]_i_1_n_0\,
      I1 => \header[7]_i_2_n_0\,
      I2 => \h_var[4]_i_1_n_0\,
      I3 => \opmode[1]_i_5_n_0\,
      I4 => \h_var[5]_i_1_n_0\,
      O => \^h_var_reg[6]_0\
    );
\opmode[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \opmode[2]_i_5_n_0\,
      I1 => \header[31]_i_2_n_0\,
      I2 => \iec_block_idx[7]_i_4_n_0\,
      O => \opmode[1]_i_4_n_0\
    );
\opmode[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"59555555"
    )
        port map (
      I0 => \h_var_reg_n_0_[3]\,
      I1 => \h_var_reg_n_0_[2]\,
      I2 => \^bit_cnt_reg[3]_0\,
      I3 => \h_var_reg_n_0_[0]\,
      I4 => \h_var_reg_n_0_[1]\,
      O => \opmode[1]_i_5_n_0\
    );
\opmode[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBA00BA"
    )
        port map (
      I0 => \opmode[2]_i_2_n_0\,
      I1 => \opmode[2]_i_3_n_0\,
      I2 => \^v_var_reg[6]_0\,
      I3 => \^bit_cnt_reg[3]_0\,
      I4 => opmode(2),
      O => \opmode[2]_i_1_n_0\
    );
\opmode[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEEEEE"
    )
        port map (
      I0 => \opmode[2]_i_5_n_0\,
      I1 => \opmode[2]_i_6_n_0\,
      I2 => \header[31]_i_2_n_0\,
      I3 => \iec_block_idx[7]_i_4_n_0\,
      I4 => \audio_buffer_idx[2]_i_7_n_0\,
      O => \opmode[2]_i_2_n_0\
    );
\opmode[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBBBBBBB"
    )
        port map (
      I0 => \header[7]_i_2_n_0\,
      I1 => \opmode[2]_i_7_n_0\,
      I2 => \h_var_reg_n_0_[6]\,
      I3 => \h_var[2]_i_1_n_0\,
      I4 => \h_var_reg_n_0_[3]\,
      I5 => \h_var[4]_i_1_n_0\,
      O => \opmode[2]_i_3_n_0\
    );
\opmode[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \subs[0][61]_i_6_n_0\,
      I1 => sel0(6),
      I2 => \pkt_idx[4]_i_3_n_0\,
      O => \^v_var_reg[6]_0\
    );
\opmode[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33FE333F00000000"
    )
        port map (
      I0 => \CTL10[0]_i_7_n_0\,
      I1 => \h_var_reg_n_0_[9]\,
      I2 => \h_var_reg_n_0_[7]\,
      I3 => \h_var_reg_n_0_[8]\,
      I4 => is_video_active_i_4_n_0,
      I5 => is_video_active_i_3_n_0,
      O => \opmode[2]_i_5_n_0\
    );
\opmode[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202020202000"
    )
        port map (
      I0 => is_video_active_i_3_n_0,
      I1 => \CTL10[0]_i_6_n_0\,
      I2 => \h_var_reg_n_0_[5]\,
      I3 => \h_var_reg_n_0_[4]\,
      I4 => \h_var_reg_n_0_[3]\,
      I5 => \CTL10[0]_i_4_n_0\,
      O => \opmode[2]_i_6_n_0\
    );
\opmode[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880000800000000"
    )
        port map (
      I0 => \h_var_reg_n_0_[6]\,
      I1 => \v_var[4]_i_2_n_0\,
      I2 => \^bit_cnt_reg[3]_0\,
      I3 => \h_var[7]_i_2_n_0\,
      I4 => \h_var_reg_n_0_[5]\,
      I5 => \header[7]_i_3_n_0\,
      O => \opmode[2]_i_7_n_0\
    );
\opmode_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \opmode[0]_i_1_n_0\,
      Q => opmode(0),
      R => '0'
    );
\opmode_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \opmode[1]_i_1_n_0\,
      Q => opmode(1),
      R => '0'
    );
\opmode_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \opmode[2]_i_1_n_0\,
      Q => opmode(2),
      R => '0'
    );
\pkt_idx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFDFF0200"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \h_var_reg_n_0_[0]\,
      I5 => \header[25]_i_2_n_0\,
      O => \pkt_idx[0]_i_1_n_0\
    );
\pkt_idx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \h_var_reg_n_0_[1]\,
      I1 => \h_var_reg_n_0_[0]\,
      O => \pkt_idx[1]_i_1_n_0\
    );
\pkt_idx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F807F807F80807F"
    )
        port map (
      I0 => \header[31]_i_2_n_0\,
      I1 => \header[31]_i_3_n_0\,
      I2 => \^is_send_audio_reg_0\,
      I3 => \h_var_reg_n_0_[2]\,
      I4 => \h_var_reg_n_0_[0]\,
      I5 => \h_var_reg_n_0_[1]\,
      O => \pkt_idx[2]_i_1_n_0\
    );
\pkt_idx[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02ABFD54"
    )
        port map (
      I0 => \header[25]_i_2_n_0\,
      I1 => \h_var_reg_n_0_[1]\,
      I2 => \h_var_reg_n_0_[0]\,
      I3 => \h_var_reg_n_0_[2]\,
      I4 => \h_var_reg_n_0_[3]\,
      O => \pkt_idx[3]_i_1_n_0\
    );
\pkt_idx[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF00000002"
    )
        port map (
      I0 => \subs[0][61]_i_6_n_0\,
      I1 => sel0(6),
      I2 => \pkt_idx[4]_i_3_n_0\,
      I3 => \^bit_cnt_reg[3]_0\,
      I4 => \pkt_idx[4]_i_4_n_0\,
      I5 => \header[25]_i_2_n_0\,
      O => \pkt_idx[4]_i_1_n_0\
    );
\pkt_idx[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9959FFFF99590000"
    )
        port map (
      I0 => \h_var_reg_n_0_[4]\,
      I1 => \pkt_idx[4]_i_5_n_0\,
      I2 => \pkt_idx[4]_i_6_n_0\,
      I3 => \h_var_reg_n_0_[3]\,
      I4 => \header[25]_i_2_n_0\,
      I5 => \pkt_idx[4]_i_7_n_0\,
      O => \pkt_idx[4]_i_2_n_0\
    );
\pkt_idx[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDDFFFFFE"
    )
        port map (
      I0 => \v_var_reg_n_0_[5]\,
      I1 => \subs[0][61]_i_17_n_0\,
      I2 => sel0(3),
      I3 => \v_var_reg_n_0_[4]\,
      I4 => \subs[0][61]_i_15_n_0\,
      I5 => \v_var[8]_i_1_n_0\,
      O => \pkt_idx[4]_i_3_n_0\
    );
\pkt_idx[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAEAABEEBBAB"
    )
        port map (
      I0 => \header[7]_i_2_n_0\,
      I1 => \h_var_reg_n_0_[6]\,
      I2 => \v_var[4]_i_2_n_0\,
      I3 => \h_var[9]_i_2_n_0\,
      I4 => \h_var_reg_n_0_[5]\,
      I5 => \header[7]_i_3_n_0\,
      O => \pkt_idx[4]_i_4_n_0\
    );
\pkt_idx[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \h_var_reg_n_0_[1]\,
      I1 => \h_var_reg_n_0_[0]\,
      I2 => \h_var_reg_n_0_[2]\,
      I3 => \h_var_reg_n_0_[3]\,
      O => \pkt_idx[4]_i_5_n_0\
    );
\pkt_idx[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \h_var_reg_n_0_[0]\,
      I1 => \h_var_reg_n_0_[1]\,
      I2 => \h_var_reg_n_0_[2]\,
      O => \pkt_idx[4]_i_6_n_0\
    );
\pkt_idx[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0555FAAA85557"
    )
        port map (
      I0 => \h_var_reg_n_0_[3]\,
      I1 => \h_var_reg_n_0_[0]\,
      I2 => \h_var_reg_n_0_[2]\,
      I3 => \h_var_reg_n_0_[1]\,
      I4 => \h_var_reg_n_0_[4]\,
      I5 => \^bit_cnt_reg[3]_0\,
      O => \pkt_idx[4]_i_7_n_0\
    );
\pkt_idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \pkt_idx[4]_i_1_n_0\,
      D => \pkt_idx[0]_i_1_n_0\,
      Q => pkt_idx(0),
      R => '0'
    );
\pkt_idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \pkt_idx[4]_i_1_n_0\,
      D => \pkt_idx[1]_i_1_n_0\,
      Q => pkt_idx(1),
      R => '0'
    );
\pkt_idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \pkt_idx[4]_i_1_n_0\,
      D => \pkt_idx[2]_i_1_n_0\,
      Q => pkt_idx(2),
      R => '0'
    );
\pkt_idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \pkt_idx[4]_i_1_n_0\,
      D => \pkt_idx[3]_i_1_n_0\,
      Q => pkt_idx(3),
      R => '0'
    );
\pkt_idx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \pkt_idx[4]_i_1_n_0\,
      D => \pkt_idx[4]_i_2_n_0\,
      Q => pkt_idx(4),
      R => '0'
    );
\subs[0][25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in564_in,
      O => \subs[0][25]_i_1_n_0\
    );
\subs[0][26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in567_in,
      O => \subs[0][26]_i_1_n_0\
    );
\subs[0][27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in570_in,
      O => \subs[0][27]_i_1_n_0\
    );
\subs[0][28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in573_in,
      O => \subs[0][28]_i_1_n_0\
    );
\subs[0][29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F80070"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => p_0_in576_in,
      O => \subs[0][29]_i_1_n_0\
    );
\subs[0][30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F80070"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => p_0_in579_in,
      O => \subs[0][30]_i_1_n_0\
    );
\subs[0][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \header[16]_i_1_n_0\,
      I1 => \subs[0][61]_i_1_n_0\,
      O => \subs[0][3]_i_1_n_0\
    );
\subs[0][50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \iec_block_idx_reg_n_0_[5]\,
      I1 => \iec_block_idx_reg_n_0_[6]\,
      I2 => \iec_block_idx_reg_n_0_[7]\,
      I3 => \iec_block_idx_reg_n_0_[4]\,
      I4 => \iec_block_idx_reg_n_0_[3]\,
      I5 => \iec_block_idx_reg_n_0_[2]\,
      O => \subs[0][50]_i_1_n_0\
    );
\subs[0][51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \subs[0][61]_i_1_n_0\,
      O => \subs[0][51]_i_1_n_0\
    );
\subs[0][51]_i_1_replica_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7707770077007700"
    )
        port map (
      I0 => \iec_block_idx[7]_i_3_n_0\,
      I1 => \iec_block_idx[7]_i_4_n_0\,
      I2 => \subs[0][61]_i_7_n_0\,
      I3 => \iec_block_idx[7]_i_1_n_0\,
      I4 => \subs[0][61]_i_6_n_0\,
      I5 => \subs[0][61]_i_1_n_0_repN\,
      O => \subs[0][51]_i_1_n_0_repN\
    );
\subs[0][51]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in576_in,
      I1 => p_0_in567_in,
      I2 => p_0_in582_in,
      I3 => \subs[0][61]_i_9_n_0\,
      I4 => \subs[0][50]_i_1_n_0\,
      I5 => p_0_in579_in,
      O => \subs[0][51]_i_2_n_0\
    );
\subs[0][55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F80070007088F8"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => \subs[0][55]_i_2_n_0\,
      I5 => p_0_in579_in,
      O => \subs[0][55]_i_1_n_0\
    );
\subs[0][55]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \subs[0][61]_i_9_n_0\,
      I1 => p_0_in582_in,
      I2 => p_0_in567_in,
      I3 => p_0_in576_in,
      O => \subs[0][55]_i_2_n_0\
    );
\subs[0][56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6900690069FF6900"
    )
        port map (
      I0 => \subs[0][57]_i_2_n_0\,
      I1 => \subs[0][56]_i_2_n_0\,
      I2 => \subs[0][57]_i_3_n_0\,
      I3 => \header[8]_i_1_n_0\,
      I4 => \subs[0][59]_i_2_n_0\,
      I5 => \header[16]_i_1_n_0\,
      O => \subs[0][56]_i_1_n_0\
    );
\subs[0][56]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => p_0_in582_in,
      I1 => p_0_in579_in,
      I2 => p_0_in570_in,
      I3 => p_0_in573_in,
      I4 => p_0_in561_in,
      I5 => p_0_in564_in,
      O => \subs[0][56]_i_2_n_0\
    );
\subs[0][57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4EE4E44EE44E4EE4"
    )
        port map (
      I0 => \header[8]_i_1_n_0\,
      I1 => \header[16]_i_1_n_0\,
      I2 => \subs[0][57]_i_2_n_0\,
      I3 => \subs[0][57]_i_3_n_0\,
      I4 => p_0_in567_in,
      I5 => p_0_in561_in,
      O => \subs[0][57]_i_1_n_0\
    );
\subs[0][57]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in579_in,
      I1 => p_0_in582_in,
      I2 => p_0_in561_in,
      I3 => \subs[0][61]_i_8_n_0\,
      O => \subs[0][57]_i_2_n_0\
    );
\subs[0][57]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \subs[0][55]_i_2_n_0\,
      I1 => p_0_in561_in,
      I2 => p_0_in564_in,
      I3 => p_0_in579_in,
      O => \subs[0][57]_i_3_n_0\
    );
\subs[0][58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80080880"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in576_in,
      I3 => p_0_in570_in,
      I4 => \subs[0][58]_i_2_n_0\,
      O => \subs[0][58]_i_1_n_0\
    );
\subs[0][58]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \subs[0][61]_i_9_n_0\,
      I1 => p_0_in579_in,
      I2 => p_0_in582_in,
      I3 => \subs[0][50]_i_1_n_0\,
      I4 => p_0_in561_in,
      O => \subs[0][58]_i_2_n_0\
    );
\subs[0][59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => p_0_in570_in,
      I1 => p_0_in573_in,
      I2 => p_0_in561_in,
      I3 => p_0_in564_in,
      I4 => \header[8]_i_1_n_0\,
      I5 => \subs[0][59]_i_2_n_0\,
      O => \subs[0][59]_i_1_n_0\
    );
\subs[0][59]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => audio_send_clk_reg_n_0,
      I1 => \header[7]_i_1_n_0\,
      O => \subs[0][59]_i_2_n_0\
    );
\subs[0][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8F0"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \header[7]_i_1_n_0\,
      I3 => p_0_in576_in,
      O => \subs[0][5]_i_1_n_0\
    );
\subs[0][60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \header[16]_i_1_n_0\,
      I1 => \header[7]_i_1_n_0\,
      I2 => \iec_block_idx[7]_i_4_n_0\,
      I3 => \iec_block_idx[7]_i_3_n_0\,
      I4 => \subs[0][60]_i_2_n_0\,
      O => \subs[0][60]_i_1_n_0\
    );
\subs[0][60]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => p_0_in579_in,
      I1 => p_0_in564_in,
      I2 => p_0_in561_in,
      I3 => \subs[0][55]_i_2_n_0\,
      I4 => \subs[0][58]_i_2_n_0\,
      I5 => p_0_in573_in,
      O => \subs[0][60]_i_2_n_0\
    );
\subs[0][61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAEFAAAA"
    )
        port map (
      I0 => \iec_block_idx[7]_i_1_n_0\,
      I1 => \subs[0][61]_i_3_n_0\,
      I2 => \subs[0][61]_i_4_n_0\,
      I3 => \subs[0][61]_i_5_n_0\,
      I4 => \subs[0][61]_i_6_n_0\,
      I5 => \subs[0][61]_i_7_n_0\,
      O => \subs[0][61]_i_1_n_0\
    );
\subs[0][61]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBEEAEAEAAA"
    )
        port map (
      I0 => audio_send_clk_i_5_n_0,
      I1 => \subs[0][61]_i_12_n_0\,
      I2 => \h_var_reg_n_0_[6]\,
      I3 => \h_var[5]_i_1_n_0\,
      I4 => \header[7]_i_3_n_0\,
      I5 => \h_var_reg_n_0_[7]\,
      O => \subs[0][61]_i_10_n_0\
    );
\subs[0][61]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFDAEAAAAAA"
    )
        port map (
      I0 => \h_var_reg_n_0_[8]\,
      I1 => \h_var_reg_n_0_[5]\,
      I2 => \h_var[9]_i_2_n_0\,
      I3 => \h_var_reg_n_0_[7]\,
      I4 => \h_var_reg_n_0_[6]\,
      I5 => \h_var_reg_n_0_[9]\,
      O => \subs[0][61]_i_11_n_0\
    );
\subs[0][61]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \h_var_reg_n_0_[5]\,
      I1 => \h_var[7]_i_2_n_0\,
      I2 => \Q[3]_repN\,
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \subs[0][61]_i_12_n_0\
    );
\subs[0][61]_i_13_comp\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => \h_var_reg_n_0_[7]\,
      I1 => \h_var_reg_n_0_[8]\,
      I2 => \h_var_reg_n_0_[6]\,
      I3 => \h_var_reg_n_0_[9]\,
      I4 => \subs[0][61]_i_12_n_0\,
      O => \subs[0][61]_i_13_n_0\
    );
\subs[0][61]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000111A5551"
    )
        port map (
      I0 => \h_var_reg_n_0_[6]\,
      I1 => \v_var[4]_i_2_n_0\,
      I2 => \^bit_cnt_reg[3]_0\,
      I3 => \h_var[7]_i_2_n_0\,
      I4 => \h_var_reg_n_0_[5]\,
      I5 => \header[7]_i_3_n_0\,
      O => \subs[0][61]_i_14_n_0\
    );
\subs[0][61]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \v_var_reg_n_0_[3]\,
      I1 => \v_var_reg_n_0_[1]\,
      I2 => \v_var[4]_i_2_n_0\,
      I3 => \v_var_reg_n_0_[0]\,
      I4 => \v_var_reg_n_0_[2]\,
      O => \subs[0][61]_i_15_n_0\
    );
\subs[0][61]_i_16_comp_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFFFFAAA6"
    )
        port map (
      I0 => \v_var_reg_n_0_[4]\,
      I1 => \v_var_reg_n_0_[0]\,
      I2 => \h_var[7]_i_2_n_0\,
      I3 => \v_var[8]_i_4_n_0_repN\,
      I4 => \^bit_cnt_reg[3]_0\,
      I5 => \v_var[5]_i_2_n_0_repN\,
      O => \subs[0][61]_i_16_n_0\
    );
\subs[0][61]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3CCF7EF"
    )
        port map (
      I0 => \v_var_reg_n_0_[2]\,
      I1 => \v_var_reg_n_0_[1]\,
      I2 => \v_var[4]_i_2_n_0\,
      I3 => \v_var_reg_n_0_[0]\,
      I4 => \v_var[9]_i_2_n_0\,
      O => \subs[0][61]_i_17_n_0\
    );
\subs[0][61]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFDF"
    )
        port map (
      I0 => \h_var_reg_n_0_[0]\,
      I1 => \^bit_cnt_reg[3]_0\,
      I2 => \h_var_reg_n_0_[3]\,
      I3 => \h_var_reg_n_0_[2]\,
      I4 => \h_var_reg_n_0_[1]\,
      O => \subs[0][61]_i_18_n_0\
    );
\subs[0][61]_i_1_comp\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"23"
    )
        port map (
      I0 => \subs[0][61]_i_3_n_0\,
      I1 => \subs[0][61]_i_5_n_0\,
      I2 => \subs[0][61]_i_4_n_0\,
      O => \subs[0][61]_i_1_n_0_repN\
    );
\subs[0][61]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7770FFF8FFF87770"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => \subs[0][61]_i_8_n_0\,
      I5 => \subs[0][61]_i_9_n_0\,
      O => \subs[0][61]_i_2_n_0\
    );
\subs[0][61]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001444"
    )
        port map (
      I0 => \header[7]_i_2_n_0\,
      I1 => \h_var[6]_i_1_n_0\,
      I2 => \header[7]_i_3_n_0\,
      I3 => \h_var[5]_i_1_n_0\,
      I4 => \subs[0][61]_i_10_n_0\,
      I5 => \subs[0][61]_i_11_n_0\,
      O => \subs[0][61]_i_3_n_0\
    );
\subs[0][61]_i_4_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE7FFFFFFEE"
    )
        port map (
      I0 => \h_var_reg_n_0_[5]\,
      I1 => \h_var_reg_n_0_[4]\,
      I2 => \^bit_cnt_reg[3]_0\,
      I3 => \subs[0][61]_i_18_n_0\,
      I4 => \subs[0][61]_i_13_n_0\,
      I5 => \audio_buffer_idx[2]_i_8_n_0\,
      O => \subs[0][61]_i_4_n_0\
    );
\subs[0][61]_i_5_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B0A3B0A3B0A3705"
    )
        port map (
      I0 => \v_var_reg_n_0_[6]\,
      I1 => \header[7]_i_2_n_0\,
      I2 => sel0(7),
      I3 => \subs[0][61]_i_14_n_0\,
      I4 => \v_var[6]_i_2_n_0\,
      I5 => \sel0[6]_repN\,
      O => \subs[0][61]_i_5_n_0\
    );
\subs[0][61]_i_6_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A5842155554411"
    )
        port map (
      I0 => \v_var_reg_n_0_[7]\,
      I1 => \v_var_reg_n_0_[9]\,
      I2 => \subs[0][61]_i_15_n_0\,
      I3 => \v_var[9]_i_3_n_0\,
      I4 => \v_var[9]_i_2_n_0\,
      I5 => \sel0[9]_repN\,
      O => \subs[0][61]_i_6_n_0\
    );
\subs[0][61]_i_7_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFC"
    )
        port map (
      I0 => \v_var_reg_n_0_[4]\,
      I1 => sel0(5),
      I2 => \subs[0][61]_i_17_n_0\,
      I3 => sel0(3),
      I4 => \subs[0][61]_i_16_n_0\,
      I5 => \v_var[8]_i_1_n_0\,
      O => \subs[0][61]_i_7_n_0\
    );
\subs[0][61]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in573_in,
      I1 => \subs[0][58]_i_2_n_0\,
      I2 => p_0_in561_in,
      I3 => p_0_in564_in,
      I4 => p_0_in579_in,
      O => \subs[0][61]_i_8_n_0\
    );
\subs[0][61]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => p_0_in564_in,
      I1 => p_0_in561_in,
      I2 => p_0_in573_in,
      I3 => p_0_in570_in,
      O => \subs[0][61]_i_9_n_0\
    );
\subs[0][62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \header[16]_i_1_n_0\,
      I1 => \header[7]_i_1_n_0\,
      I2 => \subs[0][61]_i_1_n_0\,
      O => \subs[0][62]_i_1_n_0\
    );
\subs[0][62]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08808008"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in582_in,
      I3 => p_0_in579_in,
      I4 => \subs[0][61]_i_9_n_0\,
      O => \subs[0][62]_i_2_n_0\
    );
\subs[0][63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF777788F80070"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => \subs[0][57]_i_2_n_0\,
      I5 => \header[16]_i_1_n_0\,
      O => \subs[0][63]_i_1_n_0\
    );
\subs[0][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8F0"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \header[7]_i_1_n_0\,
      I3 => p_0_in579_in,
      O => \subs[0][6]_i_1_n_0\
    );
\subs[1][51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008088008808008"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \subs[1][58]_i_3_n_0\,
      I3 => p_0_in408_in,
      I4 => p_0_in411_in,
      I5 => p_0_in414_in,
      O => \subs[1][51]_i_1_n_0\
    );
\subs[1][54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \iec_block_idx_reg_n_0_[6]\,
      I1 => \iec_block_idx_reg_n_0_[7]\,
      I2 => \iec_block_idx_reg_n_0_[5]\,
      I3 => \iec_block_idx_reg_n_0_[4]\,
      I4 => \iec_block_idx_reg_n_0_[3]\,
      I5 => \iec_block_idx_reg_n_0_[2]\,
      O => \subs[1][54]_i_1_n_0\
    );
\subs[1][55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F80070007088F8"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => \subs[1][54]_i_1_n_0\,
      I5 => \subs[1][55]_i_2_n_0\,
      O => \subs[1]3_out\(55)
    );
\subs[1][55]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in414_in,
      I1 => p_0_in411_in,
      I2 => p_0_in408_in,
      I3 => \subs[1][58]_i_3_n_0\,
      O => \subs[1][55]_i_2_n_0\
    );
\subs[1][56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => \subs[1][57]_i_3_n_0\,
      I1 => \subs[1][57]_i_2_n_0\,
      I2 => \subs[1][56]_i_2_n_0\,
      I3 => \subs[1][54]_i_1_n_0\,
      I4 => \header[8]_i_1_n_0\,
      I5 => \subs[1][59]_i_2_n_0\,
      O => \subs[1]3_out\(56)
    );
\subs[1][56]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in408_in,
      I1 => p_0_in405_in,
      I2 => p_0_in399_in,
      I3 => p_0_in396_in,
      I4 => p_0_in414_in,
      I5 => p_0_in417_in,
      O => \subs[1][56]_i_2_n_0\
    );
\subs[1][57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880800880080880"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in396_in,
      I3 => p_0_in402_in,
      I4 => \subs[1][57]_i_2_n_0\,
      I5 => \subs[1][57]_i_3_n_0\,
      O => \subs[1]3_out\(57)
    );
\subs[1][57]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \subs[1][58]_i_3_n_0\,
      I1 => p_0_in408_in,
      I2 => \subs[1][58]_i_2_n_0\,
      I3 => \subs[1][61]_i_3_n_0\,
      I4 => p_0_in414_in,
      O => \subs[1][57]_i_2_n_0\
    );
\subs[1][57]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \subs[1][60]_i_2_n_0\,
      I1 => p_0_in411_in,
      I2 => \subs[1][61]_i_3_n_0\,
      O => \subs[1][57]_i_3_n_0\
    );
\subs[1][58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08808008"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \subs[1][58]_i_2_n_0\,
      I3 => \subs[1][58]_i_3_n_0\,
      I4 => p_0_in411_in,
      O => \subs[1][58]_i_1_n_0\
    );
\subs[1][58]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \subs[1][58]_i_4_n_0\,
      I1 => p_0_in402_in,
      I2 => p_0_in405_in,
      I3 => \subs[1][56]_i_2_n_0\,
      O => \subs[1][58]_i_2_n_0\
    );
\subs[1][58]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in402_in,
      I1 => p_0_in405_in,
      I2 => p_0_in399_in,
      I3 => p_0_in396_in,
      I4 => p_0_in417_in,
      O => \subs[1][58]_i_3_n_0\
    );
\subs[1][58]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \subs[1][60]_i_2_n_0\,
      I1 => p_0_in411_in,
      I2 => p_0_in402_in,
      I3 => p_0_in414_in,
      I4 => p_0_in417_in,
      I5 => \subs[1][58]_i_5_n_0\,
      O => \subs[1][58]_i_4_n_0\
    );
\subs[1][58]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in405_in,
      I1 => p_0_in408_in,
      I2 => p_0_in411_in,
      I3 => p_0_in414_in,
      O => \subs[1][58]_i_5_n_0\
    );
\subs[1][59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => p_0_in396_in,
      I1 => p_0_in399_in,
      I2 => p_0_in405_in,
      I3 => p_0_in408_in,
      I4 => \header[8]_i_1_n_0\,
      I5 => \subs[1][59]_i_2_n_0\,
      O => \subs[1]3_out\(59)
    );
\subs[1][59]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => audio_send_clk_reg_n_0,
      I1 => \header[7]_i_1_n_0\,
      O => \subs[1][59]_i_2_n_0\
    );
\subs[1][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in411_in,
      O => \subs[1][5]_i_1_n_0\
    );
\subs[1][60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \subs[1][60]_i_2_n_0\,
      I3 => p_0_in411_in,
      O => \subs[1][60]_i_1_n_0\
    );
\subs[1][60]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in408_in,
      I1 => p_0_in399_in,
      I2 => p_0_in402_in,
      O => \subs[1][60]_i_2_n_0\
    );
\subs[1][61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00700000"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => \subs[0][61]_i_1_n_0\,
      O => \subs[1][61]_i_1_n_0\
    );
\subs[1][61]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699600000000"
    )
        port map (
      I0 => \subs[1][60]_i_2_n_0\,
      I1 => p_0_in411_in,
      I2 => \subs[1][61]_i_3_n_0\,
      I3 => p_0_in396_in,
      I4 => \subs[1][56]_i_2_n_0\,
      I5 => \header[8]_i_1_n_0\,
      O => \subs[1][61]_i_2_n_0\
    );
\subs[1][61]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in399_in,
      I1 => p_0_in402_in,
      I2 => p_0_in414_in,
      I3 => p_0_in411_in,
      I4 => p_0_in408_in,
      I5 => p_0_in405_in,
      O => \subs[1][61]_i_3_n_0\
    );
\subs[1][62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \subs[1][56]_i_2_n_0\,
      I3 => \subs[1][54]_i_1_n_0\,
      O => \subs[1][62]_i_1_n_0\
    );
\subs[1][63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007088F8"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => \subs[1][57]_i_3_n_0\,
      O => \subs[1][63]_i_1_n_0\
    );
\subs[1][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in414_in,
      O => \subs[1]3_out\(6)
    );
\subs[2][50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \iec_block_idx_reg_n_0_[4]\,
      I1 => \iec_block_idx_reg_n_0_[2]\,
      I2 => \iec_block_idx_reg_n_0_[3]\,
      I3 => \iec_block_idx_reg_n_0_[5]\,
      I4 => \iec_block_idx_reg_n_0_[7]\,
      I5 => \iec_block_idx_reg_n_0_[6]\,
      O => \subs[2][50]_i_1_n_0\
    );
\subs[2][51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228288228828228"
    )
        port map (
      I0 => \header[8]_i_1_n_0\,
      I1 => \subs[2][51]_i_2_n_0\,
      I2 => \subs[2][51]_i_3_n_0\,
      I3 => p_0_in234_in,
      I4 => p_0_in243_in,
      I5 => p_0_in252_in,
      O => \subs[2][51]_i_1_n_0\
    );
\subs[2][51]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \iec_block_idx_reg_n_0_[6]\,
      I1 => \iec_block_idx_reg_n_0_[7]\,
      I2 => \iec_block_idx_reg_n_0_[5]\,
      I3 => \iec_block_idx_reg_n_0_[3]\,
      I4 => \iec_block_idx_reg_n_0_[2]\,
      I5 => \iec_block_idx_reg_n_0_[4]\,
      O => \subs[2][51]_i_2_n_0\
    );
\subs[2][51]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in231_in,
      I1 => p_0_in237_in,
      I2 => p_0_in246_in,
      I3 => p_0_in240_in,
      I4 => p_0_in249_in,
      O => \subs[2][51]_i_3_n_0\
    );
\subs[2][54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \subs[2][50]_i_1_n_0\,
      O => \subs[2][54]_i_1_n_0\
    );
\subs[2][55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882822882282882"
    )
        port map (
      I0 => \header[8]_i_1_n_0\,
      I1 => \subs[2][51]_i_3_n_0\,
      I2 => p_0_in234_in,
      I3 => p_0_in243_in,
      I4 => p_0_in252_in,
      I5 => \subs[2][50]_i_1_n_0\,
      O => \subs[2][55]_i_1_n_0\
    );
\subs[2][56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6900960096006900"
    )
        port map (
      I0 => \subs[2][61]_i_2_n_0\,
      I1 => \subs[2][50]_i_1_n_0\,
      I2 => p_0_in252_in,
      I3 => \header[8]_i_1_n_0\,
      I4 => \subs[2][51]_i_3_n_0\,
      I5 => p_0_in243_in,
      O => \subs[2][56]_i_1_n_0\
    );
\subs[2][57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \subs[2][60]_i_2_n_0\,
      I3 => \subs[2][63]_i_2_n_0\,
      O => \subs[2][57]_i_1_n_0\
    );
\subs[2][58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \subs[2][58]_i_2_n_0\,
      I3 => \subs[2][51]_i_2_n_0\,
      O => \subs[2][58]_i_1_n_0\
    );
\subs[2][58]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \subs[2][62]_i_2_n_0\,
      I1 => p_0_in252_in,
      I2 => p_0_in249_in,
      I3 => p_0_in240_in,
      I4 => p_0_in246_in,
      I5 => p_0_in231_in,
      O => \subs[2][58]_i_2_n_0\
    );
\subs[2][59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880800880080880"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in243_in,
      I3 => p_0_in240_in,
      I4 => p_0_in234_in,
      I5 => p_0_in231_in,
      O => \subs[2][59]_i_1_n_0\
    );
\subs[2][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in246_in,
      O => \subs[2][5]_i_1_n_0\
    );
\subs[2][60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996000096690000"
    )
        port map (
      I0 => \subs[2][60]_i_2_n_0\,
      I1 => p_0_in237_in,
      I2 => p_0_in231_in,
      I3 => p_0_in243_in,
      I4 => \header[8]_i_1_n_0\,
      I5 => \subs[2][60]_i_3_n_0\,
      O => \subs[2][60]_i_1_n_0\
    );
\subs[2][60]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \subs[2][60]_i_4_n_0\,
      I1 => \subs[2][60]_i_5_n_0\,
      I2 => \subs[2][63]_i_3_n_0\,
      I3 => p_0_in240_in,
      I4 => \subs[2][51]_i_3_n_0\,
      O => \subs[2][60]_i_2_n_0\
    );
\subs[2][60]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => p_0_in240_in,
      I1 => p_0_in246_in,
      I2 => \subs[2][58]_i_2_n_0\,
      I3 => \subs[2][51]_i_2_n_0\,
      O => \subs[2][60]_i_3_n_0\
    );
\subs[2][60]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \subs[2][62]_i_2_n_0\,
      I1 => \subs[2][60]_i_5_n_0\,
      I2 => p_0_in243_in,
      I3 => p_0_in234_in,
      I4 => p_0_in237_in,
      I5 => p_0_in246_in,
      O => \subs[2][60]_i_4_n_0\
    );
\subs[2][60]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in252_in,
      I1 => p_0_in249_in,
      O => \subs[2][60]_i_5_n_0\
    );
\subs[2][61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007088F8"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => \subs[2][61]_i_2_n_0\,
      O => \subs[2][61]_i_1_n_0\
    );
\subs[2][61]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \subs[2][60]_i_3_n_0\,
      I1 => \subs[2][60]_i_4_n_0\,
      I2 => p_0_in252_in,
      I3 => p_0_in249_in,
      I4 => p_0_in240_in,
      I5 => \subs[2][51]_i_3_n_0\,
      O => \subs[2][61]_i_2_n_0\
    );
\subs[2][62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008088008808008"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in249_in,
      I3 => p_0_in252_in,
      I4 => \subs[2][50]_i_1_n_0\,
      I5 => \subs[2][62]_i_2_n_0\,
      O => \subs[2][62]_i_1_n_0\
    );
\subs[2][62]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => p_0_in231_in,
      I1 => p_0_in234_in,
      I2 => p_0_in240_in,
      I3 => p_0_in243_in,
      O => \subs[2][62]_i_2_n_0\
    );
\subs[2][63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F80070"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => \subs[2][63]_i_2_n_0\,
      O => \subs[2][63]_i_1_n_0\
    );
\subs[2][63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \subs[2][61]_i_2_n_0\,
      I1 => \subs[2][63]_i_3_n_0\,
      I2 => p_0_in234_in,
      I3 => \subs[2][62]_i_2_n_0\,
      I4 => \subs[2][58]_i_2_n_0\,
      I5 => p_0_in252_in,
      O => \subs[2][63]_i_2_n_0\
    );
\subs[2][63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in234_in,
      I1 => p_0_in231_in,
      I2 => p_0_in237_in,
      I3 => \subs[2][51]_i_3_n_0\,
      I4 => \subs[2][60]_i_5_n_0\,
      I5 => \subs[2][62]_i_2_n_0\,
      O => \subs[2][63]_i_3_n_0\
    );
\subs[2][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in249_in,
      O => \subs[2][6]_i_1_n_0\
    );
\subs[3][51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882822882282882"
    )
        port map (
      I0 => \header[8]_i_1_n_0\,
      I1 => p_0_in87_in,
      I2 => \subs[3][55]_i_3_n_0\,
      I3 => p_0_in72_in,
      I4 => p_0_in81_in,
      I5 => p_0_in84_in,
      O => \subs[3][51]_i_1_n_0\
    );
\subs[3][55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669FFFF96690000"
    )
        port map (
      I0 => \subs[3][55]_i_2_n_0\,
      I1 => p_0_in72_in,
      I2 => \subs[3][55]_i_3_n_0\,
      I3 => p_0_in87_in,
      I4 => \header[8]_i_1_n_0\,
      I5 => \subs[1][59]_i_2_n_0\,
      O => \subs[3][55]_i_1_n_0\
    );
\subs[3][55]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in84_in,
      I1 => p_0_in81_in,
      O => \subs[3][55]_i_2_n_0\
    );
\subs[3][55]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in66_in,
      I1 => p_0_in69_in,
      I2 => p_0_in75_in,
      I3 => p_0_in78_in,
      O => \subs[3][55]_i_3_n_0\
    );
\subs[3][56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33C3CC3AAAAAAAA"
    )
        port map (
      I0 => \subs[1][59]_i_2_n_0\,
      I1 => p_0_in69_in,
      I2 => \subs[3][56]_i_2_n_0\,
      I3 => p_0_in66_in,
      I4 => \subs[3][56]_i_3_n_0\,
      I5 => \header[8]_i_1_n_0\,
      O => \subs[3][56]_i_1_n_0\
    );
\subs[3][56]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => p_0_in78_in,
      I1 => p_0_in69_in,
      I2 => p_0_in72_in,
      I3 => p_0_in81_in,
      I4 => \subs[3][57]_i_2_n_0\,
      I5 => p_0_in84_in,
      O => \subs[3][56]_i_2_n_0\
    );
\subs[3][56]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in87_in,
      I1 => \subs[3][55]_i_3_n_0\,
      I2 => p_0_in81_in,
      I3 => p_0_in84_in,
      I4 => p_0_in75_in,
      O => \subs[3][56]_i_3_n_0\
    );
\subs[3][57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880800880080880"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in75_in,
      I3 => p_0_in84_in,
      I4 => \subs[3][57]_i_2_n_0\,
      I5 => p_0_in78_in,
      O => \subs[3][57]_i_1_n_0\
    );
\subs[3][57]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => p_0_in84_in,
      I1 => \subs[3][55]_i_3_n_0\,
      I2 => \subs[3][57]_i_3_n_0\,
      I3 => p_0_in87_in,
      I4 => p_0_in69_in,
      I5 => \subs[3][57]_i_4_n_0\,
      O => \subs[3][57]_i_2_n_0\
    );
\subs[3][57]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in72_in,
      I1 => p_0_in81_in,
      I2 => p_0_in84_in,
      O => \subs[3][57]_i_3_n_0\
    );
\subs[3][57]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_0_in84_in,
      I1 => p_0_in78_in,
      I2 => p_0_in72_in,
      O => \subs[3][57]_i_4_n_0\
    );
\subs[3][58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \subs[3][60]_i_2_n_0\,
      O => \subs[3][58]_i_1_n_0\
    );
\subs[3][59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => p_0_in66_in,
      I1 => p_0_in69_in,
      I2 => p_0_in75_in,
      I3 => p_0_in78_in,
      I4 => \header[8]_i_1_n_0\,
      I5 => \subs[1][59]_i_2_n_0\,
      O => \subs[3][59]_i_1_n_0\
    );
\subs[3][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in81_in,
      O => \subs[3][5]_i_1_n_0\
    );
\subs[3][60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => \subs[3][60]_i_2_n_0\,
      I3 => \subs[3][60]_i_3_n_0\,
      O => \subs[3][60]_i_1_n_0\
    );
\subs[3][60]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => p_0_in81_in,
      I1 => p_0_in84_in,
      I2 => p_0_in66_in,
      I3 => \subs[3][56]_i_2_n_0\,
      I4 => p_0_in75_in,
      I5 => p_0_in72_in,
      O => \subs[3][60]_i_2_n_0\
    );
\subs[3][60]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \subs[3][60]_i_4_n_0\,
      I1 => \subs[3][57]_i_2_n_0\,
      I2 => \subs[3][60]_i_5_n_0\,
      I3 => p_0_in66_in,
      I4 => \subs[3][55]_i_3_n_0\,
      O => \subs[3][60]_i_3_n_0\
    );
\subs[3][60]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in66_in,
      I1 => p_0_in75_in,
      I2 => p_0_in72_in,
      I3 => \subs[3][55]_i_2_n_0\,
      I4 => p_0_in87_in,
      I5 => p_0_in69_in,
      O => \subs[3][60]_i_4_n_0\
    );
\subs[3][60]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_0_in75_in,
      I1 => p_0_in78_in,
      I2 => p_0_in87_in,
      I3 => p_0_in84_in,
      O => \subs[3][60]_i_5_n_0\
    );
\subs[3][61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008088008808008"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in66_in,
      I3 => \subs[3][56]_i_2_n_0\,
      I4 => p_0_in75_in,
      I5 => p_0_in72_in,
      O => \subs[3][61]_i_1_n_0\
    );
\subs[3][62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => p_0_in78_in,
      I1 => p_0_in75_in,
      I2 => p_0_in69_in,
      I3 => p_0_in66_in,
      I4 => p_0_in87_in,
      I5 => p_0_in84_in,
      O => \subs[3][62]_i_1_n_0\
    );
\subs[3][63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007088F888F80070"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => audio_send_clk_reg_n_0,
      I3 => \header[7]_i_1_n_0\,
      I4 => p_0_in75_in,
      I5 => p_0_in84_in,
      O => \subs[3][63]_i_1_n_0\
    );
\subs[3][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \iec_block_idx[7]_i_4_n_0\,
      I1 => \iec_block_idx[7]_i_3_n_0\,
      I2 => p_0_in84_in,
      O => \subs[3][6]_i_1_n_0\
    );
\subs_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in561_in,
      Q => \subs[0]_0\(0),
      R => \subs[0][51]_i_1_n_0\
    );
\subs_reg[0][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][25]_i_1_n_0\,
      Q => \subs[0]_0\(1),
      S => \subs[0][3]_i_1_n_0\
    );
\subs_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][25]_i_1_n_0\,
      Q => \subs[0]_0\(25),
      R => '0'
    );
\subs_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][26]_i_1_n_0\,
      Q => \subs[0]_0\(26),
      R => '0'
    );
\subs_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][27]_i_1_n_0\,
      Q => \subs[0]_0\(27),
      R => '0'
    );
\subs_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][28]_i_1_n_0\,
      Q => \subs[0]_0\(28),
      R => '0'
    );
\subs_reg[0][29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][29]_i_1_n_0\,
      Q => \subs[0]_0\(29),
      S => '0'
    );
\subs_reg[0][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][26]_i_1_n_0\,
      Q => \subs[0]_0\(2),
      S => \subs[0][3]_i_1_n_0\
    );
\subs_reg[0][30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][30]_i_1_n_0\,
      Q => \subs[0]_0\(30),
      S => '0'
    );
\subs_reg[0][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][27]_i_1_n_0\,
      Q => \subs[0]_0\(3),
      S => \subs[0][3]_i_1_n_0\
    );
\subs_reg[0][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][28]_i_1_n_0\,
      Q => \subs[0]_0\(4),
      S => \subs[0][62]_i_1_n_0\
    );
\subs_reg[0][50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][50]_i_1_n_0\,
      Q => \subs[0]_0\(50),
      R => \subs[0][51]_i_1_n_0\
    );
\subs_reg[0][51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][51]_i_2_n_0\,
      Q => \subs[0]_0\(51),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[0][55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][55]_i_1_n_0\,
      Q => \subs[0]_0\(55),
      R => '0'
    );
\subs_reg[0][56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][56]_i_1_n_0\,
      Q => \subs[0]_0\(56),
      R => '0'
    );
\subs_reg[0][57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][57]_i_1_n_0\,
      Q => \subs[0]_0\(57),
      R => '0'
    );
\subs_reg[0][58]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][58]_i_1_n_0\,
      Q => \subs[0]_0\(58),
      S => \subs[0][62]_i_1_n_0\
    );
\subs_reg[0][59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][59]_i_1_n_0\,
      Q => \subs[0]_0\(59),
      R => '0'
    );
\subs_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][5]_i_1_n_0\,
      Q => \subs[0]_0\(5),
      R => '0'
    );
\subs_reg[0][60]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][60]_i_1_n_0\,
      Q => \subs[0]_0\(60),
      S => '0'
    );
\subs_reg[0][61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][61]_i_2_n_0\,
      Q => \subs[0]_0\(61),
      R => '0'
    );
\subs_reg[0][62]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][62]_i_2_n_0\,
      Q => \subs[0]_0\(62),
      S => \subs[0][62]_i_1_n_0\
    );
\subs_reg[0][63]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][63]_i_1_n_0\,
      Q => \subs[0]_0\(63),
      S => '0'
    );
\subs_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[0][6]_i_1_n_0\,
      Q => \subs[0]_0\(6),
      R => '0'
    );
\subs_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in582_in,
      Q => \subs[0]_0\(7),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in396_in,
      Q => \subs[1]_1\(0),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in399_in,
      Q => \subs[1]_1\(1),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[1][29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1][5]_i_1_n_0\,
      Q => \subs[1]_1\(29),
      S => \subs[1][61]_i_1_n_0\
    );
\subs_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in402_in,
      Q => \subs[1]_1\(2),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[1][30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1]3_out\(6),
      Q => \subs[1]_1\(30),
      S => \subs[1][61]_i_1_n_0\
    );
\subs_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in405_in,
      Q => \subs[1]_1\(3),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in408_in,
      Q => \subs[1]_1\(4),
      R => \subs[0][51]_i_1_n_0\
    );
\subs_reg[1][51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1][51]_i_1_n_0\,
      Q => \subs[1]_1\(51),
      R => '0'
    );
\subs_reg[1][54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1][54]_i_1_n_0\,
      Q => \subs[1]_1\(54),
      R => \subs[0][51]_i_1_n_0\
    );
\subs_reg[1][55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1]3_out\(55),
      Q => \subs[1]_1\(55),
      R => '0'
    );
\subs_reg[1][56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1]3_out\(56),
      Q => \subs[1]_1\(56),
      R => '0'
    );
\subs_reg[1][57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1]3_out\(57),
      Q => \subs[1]_1\(57),
      R => '0'
    );
\subs_reg[1][58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1][58]_i_1_n_0\,
      Q => \subs[1]_1\(58),
      R => '0'
    );
\subs_reg[1][59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1]3_out\(59),
      Q => \subs[1]_1\(59),
      R => '0'
    );
\subs_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1][5]_i_1_n_0\,
      Q => \subs[1]_1\(5),
      R => '0'
    );
\subs_reg[1][60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1][60]_i_1_n_0\,
      Q => \subs[1]_1\(60),
      R => '0'
    );
\subs_reg[1][61]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1][61]_i_2_n_0\,
      Q => \subs[1]_1\(61),
      S => \subs[1][61]_i_1_n_0\
    );
\subs_reg[1][62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1][62]_i_1_n_0\,
      Q => \subs[1]_1\(62),
      R => '0'
    );
\subs_reg[1][63]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1][63]_i_1_n_0\,
      Q => \subs[1]_1\(63),
      S => '0'
    );
\subs_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[1]3_out\(6),
      Q => \subs[1]_1\(6),
      R => '0'
    );
\subs_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in417_in,
      Q => \subs[1]_1\(7),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in231_in,
      Q => \subs[2]_2\(0),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in234_in,
      Q => \subs[2]_2\(1),
      R => \subs[0][51]_i_1_n_0\
    );
\subs_reg[2][29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][5]_i_1_n_0\,
      Q => \subs[2]_2\(29),
      S => \subs[1][61]_i_1_n_0\
    );
\subs_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in237_in,
      Q => \subs[2]_2\(2),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[2][30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][6]_i_1_n_0\,
      Q => \subs[2]_2\(30),
      S => \subs[1][61]_i_1_n_0\
    );
\subs_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in240_in,
      Q => \subs[2]_2\(3),
      R => \subs[0][51]_i_1_n_0\
    );
\subs_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in243_in,
      Q => \subs[2]_2\(4),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[2][50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][50]_i_1_n_0\,
      Q => \subs[2]_2\(50),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[2][51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][51]_i_1_n_0\,
      Q => \subs[2]_2\(51),
      R => '0'
    );
\subs_reg[2][54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][54]_i_1_n_0\,
      Q => \subs[2]_2\(54),
      R => '0'
    );
\subs_reg[2][55]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][55]_i_1_n_0\,
      Q => \subs[2]_2\(55),
      S => \subs[1][61]_i_1_n_0\
    );
\subs_reg[2][56]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][56]_i_1_n_0\,
      Q => \subs[2]_2\(56),
      S => \subs[1][61]_i_1_n_0\
    );
\subs_reg[2][57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][57]_i_1_n_0\,
      Q => \subs[2]_2\(57),
      R => '0'
    );
\subs_reg[2][58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][58]_i_1_n_0\,
      Q => \subs[2]_2\(58),
      R => '0'
    );
\subs_reg[2][59]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][59]_i_1_n_0\,
      Q => \subs[2]_2\(59),
      S => \subs[1][61]_i_1_n_0\
    );
\subs_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][5]_i_1_n_0\,
      Q => \subs[2]_2\(5),
      R => '0'
    );
\subs_reg[2][60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][60]_i_1_n_0\,
      Q => \subs[2]_2\(60),
      R => '0'
    );
\subs_reg[2][61]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][61]_i_1_n_0\,
      Q => \subs[2]_2\(61),
      S => '0'
    );
\subs_reg[2][62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][62]_i_1_n_0\,
      Q => \subs[2]_2\(62),
      R => '0'
    );
\subs_reg[2][63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][63]_i_1_n_0\,
      Q => \subs[2]_2\(63),
      R => '0'
    );
\subs_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[2][6]_i_1_n_0\,
      Q => \subs[2]_2\(6),
      R => '0'
    );
\subs_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in252_in,
      Q => \subs[2]_2\(7),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in66_in,
      Q => \subs[3]_3\(0),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in69_in,
      Q => \subs[3]_3\(1),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[3][29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][5]_i_1_n_0\,
      Q => \subs[3]_3\(29),
      S => \subs[1][61]_i_1_n_0\
    );
\subs_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in72_in,
      Q => \subs[3]_3\(2),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[3][30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][6]_i_1_n_0\,
      Q => \subs[3]_3\(30),
      S => \subs[1][61]_i_1_n_0\
    );
\subs_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in75_in,
      Q => \subs[3]_3\(3),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in78_in,
      Q => \subs[3]_3\(4),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[3][51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][51]_i_1_n_0\,
      Q => \subs[3]_3\(51),
      R => '0'
    );
\subs_reg[3][55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][55]_i_1_n_0\,
      Q => \subs[3]_3\(55),
      R => '0'
    );
\subs_reg[3][56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][56]_i_1_n_0\,
      Q => \subs[3]_3\(56),
      R => '0'
    );
\subs_reg[3][57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][57]_i_1_n_0\,
      Q => \subs[3]_3\(57),
      R => '0'
    );
\subs_reg[3][58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][58]_i_1_n_0\,
      Q => \subs[3]_3\(58),
      R => '0'
    );
\subs_reg[3][59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][59]_i_1_n_0\,
      Q => \subs[3]_3\(59),
      R => '0'
    );
\subs_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][5]_i_1_n_0\,
      Q => \subs[3]_3\(5),
      R => '0'
    );
\subs_reg[3][60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][60]_i_1_n_0\,
      Q => \subs[3]_3\(60),
      R => '0'
    );
\subs_reg[3][61]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][61]_i_1_n_0\,
      Q => \subs[3]_3\(61),
      S => \subs[1][61]_i_1_n_0\
    );
\subs_reg[3][62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][62]_i_1_n_0\,
      Q => \subs[3]_3\(62),
      R => \subs[0][51]_i_1_n_0_repN\
    );
\subs_reg[3][63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][63]_i_1_n_0\,
      Q => \subs[3]_3\(63),
      R => '0'
    );
\subs_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => \subs[3][6]_i_1_n_0\,
      Q => \subs[3]_3\(6),
      R => '0'
    );
\subs_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \subs[0][61]_i_1_n_0\,
      D => p_0_in87_in,
      Q => \subs[3]_3\(7),
      R => \subs[0][51]_i_1_n_0\
    );
\tmds_clk[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \tmds_clk[1]_i_1_n_0\
    );
\tmds_clk[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \tmds_clk[1]_i_2_n_0\
    );
\tmds_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => \tmds_clk[1]_i_2_n_0\,
      D => \tmds_clk[1]_i_2_n_0\,
      Q => tmds_clk(0),
      R => \tmds_clk[1]_i_1_n_0\
    );
\tmds_clk_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => \tmds_clk[1]_i_2_n_0\,
      D => '0',
      Q => tmds_clk(1),
      S => \tmds_clk[1]_i_1_n_0\
    );
\v_var[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \v_var[9]_i_2_n_0\,
      I1 => \v_var[4]_i_2_n_0\,
      I2 => \v_var_reg_n_0_[0]\,
      O => sel0(0)
    );
\v_var[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \v_var_reg_n_0_[1]\,
      I1 => \v_var[4]_i_2_n_0\,
      I2 => \v_var_reg_n_0_[0]\,
      O => sel0(1)
    );
\v_var[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F708"
    )
        port map (
      I0 => \v_var_reg_n_0_[1]\,
      I1 => \v_var_reg_n_0_[0]\,
      I2 => \v_var[4]_i_2_n_0\,
      I3 => \v_var_reg_n_0_[2]\,
      I4 => \v_var[9]_i_2_n_0\,
      O => sel0(2)
    );
\v_var[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFF2000"
    )
        port map (
      I0 => \v_var_reg_n_0_[2]\,
      I1 => \v_var[4]_i_2_n_0\,
      I2 => \v_var_reg_n_0_[0]\,
      I3 => \v_var_reg_n_0_[1]\,
      I4 => \v_var_reg_n_0_[3]\,
      I5 => \v_var[9]_i_2_n_0\,
      O => sel0(3)
    );
\v_var[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \v_var_reg_n_0_[4]\,
      I1 => \v_var_reg_n_0_[2]\,
      I2 => \v_var_reg_n_0_[0]\,
      I3 => \v_var[4]_i_2_n_0\,
      I4 => \v_var_reg_n_0_[1]\,
      I5 => \v_var_reg_n_0_[3]\,
      O => sel0(4)
    );
\v_var[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \h_var[7]_i_2_n_0\,
      I1 => \^bit_cnt_reg[3]_0\,
      I2 => \h_var_reg_n_0_[7]\,
      I3 => \h_var_reg_n_0_[6]\,
      I4 => \h_var_reg_n_0_[5]\,
      I5 => \h_var[5]_i_2_n_0\,
      O => \v_var[4]_i_2_n_0\
    );
\v_var[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \v_var_reg_n_0_[5]\,
      I1 => \v_var_reg_n_0_[4]\,
      I2 => \v_var_reg_n_0_[3]\,
      I3 => \v_var_reg_n_0_[1]\,
      I4 => \v_var[5]_i_2_n_0\,
      I5 => \v_var_reg_n_0_[2]\,
      O => sel0(5)
    );
\v_var[5]_i_2_comp\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \v_var_reg_n_0_[1]\,
      I1 => \v_var_reg_n_0_[3]\,
      I2 => \v_var_reg_n_0_[2]\,
      O => \v_var[5]_i_2_n_0_repN\
    );
\v_var[5]_i_2_rewire\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \h_var_reg_n_0_[8]\,
      I1 => \v_var_reg_n_0_[0]\,
      I2 => \v_var[8]_i_4_n_0\,
      I3 => \^bit_cnt_reg[3]_0\,
      I4 => \h_var[7]_i_2_n_0\,
      O => \v_var[5]_i_2_n_0\
    );
\v_var[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \v_var_reg_n_0_[6]\,
      I1 => \v_var[6]_i_2_n_0\,
      I2 => \v_var_reg_n_0_[5]\,
      I3 => \v_var_reg_n_0_[3]\,
      I4 => \v_var_reg_n_0_[4]\,
      O => sel0(6)
    );
\v_var[6]_i_1_comp\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \v_var_reg_n_0_[4]\,
      I1 => \v_var_reg_n_0_[5]\,
      I2 => \v_var_reg_n_0_[3]\,
      O => \sel0[6]_repN\
    );
\v_var[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => \v_var_reg_n_0_[1]\,
      I1 => \v_var_reg_n_0_[0]\,
      I2 => \h_var[7]_i_2_n_0\,
      I3 => \^bit_cnt_reg[3]_0\,
      I4 => \v_var[8]_i_4_n_0_repN\,
      I5 => \v_var_reg_n_0_[2]\,
      O => \v_var[6]_i_2_n_0\
    );
\v_var[7]_i_1_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA6"
    )
        port map (
      I0 => \v_var_reg_n_0_[7]\,
      I1 => \v_var_reg_n_0_[2]\,
      I2 => \h_var[7]_i_2_n_0\,
      I3 => \^bit_cnt_reg[3]_0\,
      I4 => \v_var[7]_i_2_n_0\,
      I5 => \v_var[8]_i_4_n_0_repN\,
      O => sel0(7)
    );
\v_var[7]_i_2_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \v_var_reg_n_0_[6]\,
      I1 => \v_var_reg_n_0_[4]\,
      I2 => \v_var_reg_n_0_[5]\,
      I3 => \v_var_reg_n_0_[3]\,
      I4 => \v_var_reg_n_0_[1]\,
      I5 => \v_var_reg_n_0_[0]\,
      O => \v_var[7]_i_2_n_0\
    );
\v_var[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \v_var_reg_n_0_[8]\,
      I1 => \v_var[8]_i_2_n_0\,
      I2 => \v_var[8]_i_3_n_0\,
      I3 => \h_var[7]_i_2_n_0\,
      I4 => \v_var[8]_i_4_n_0_repN\,
      I5 => \^bit_cnt_reg[3]_0\,
      O => \v_var[8]_i_1_n_0\
    );
\v_var[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \v_var_reg_n_0_[2]\,
      I1 => \v_var_reg_n_0_[7]\,
      I2 => \v_var_reg_n_0_[6]\,
      I3 => \v_var_reg_n_0_[0]\,
      I4 => \v_var_reg_n_0_[1]\,
      O => \v_var[8]_i_2_n_0\
    );
\v_var[8]_i_2_comp\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \v_var_reg_n_0_[8]\,
      I1 => \v_var_reg_n_0_[0]\,
      I2 => \v_var_reg_n_0_[6]\,
      I3 => \v_var_reg_n_0_[1]\,
      I4 => \v_var_reg_n_0_[7]\,
      O => \v_var[8]_i_2_n_0_repN\
    );
\v_var[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \v_var_reg_n_0_[5]\,
      I1 => \v_var_reg_n_0_[3]\,
      I2 => \v_var_reg_n_0_[4]\,
      O => \v_var[8]_i_3_n_0\
    );
\v_var[8]_i_4_replica\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \h_var_reg_n_0_[8]\,
      I1 => \h_var_reg_n_0_[9]\,
      I2 => \h_var_reg_n_0_[5]\,
      I3 => \h_var_reg_n_0_[6]\,
      I4 => \h_var_reg_n_0_[7]\,
      O => \v_var[8]_i_4_n_0_repN\
    );
\v_var[8]_i_4_rewire\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \h_var_reg_n_0_[9]\,
      I1 => \h_var_reg_n_0_[5]\,
      I2 => \h_var_reg_n_0_[6]\,
      I3 => \h_var_reg_n_0_[7]\,
      O => \v_var[8]_i_4_n_0\
    );
\v_var[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \v_var[9]_i_2_n_0\,
      I1 => \v_var_reg_n_0_[9]\,
      I2 => \v_var[9]_i_3_n_0\,
      O => sel0(9)
    );
\v_var[9]_i_1_comp\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \v_var_reg_n_0_[5]\,
      I1 => \v_var_reg_n_0_[6]\,
      I2 => \v_var_reg_n_0_[4]\,
      O => \sel0[9]_repN\
    );
\v_var[9]_i_2_rewire\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \h_var_reg_n_0_[8]\,
      I1 => \v_var[8]_i_4_n_0\,
      I2 => \^bit_cnt_reg[3]_0\,
      I3 => \h_var[7]_i_2_n_0\,
      I4 => \v_var[9]_i_4_n_0\,
      I5 => vsync_i_2_n_0,
      O => \v_var[9]_i_2_n_0\
    );
\v_var[9]_i_3_comp\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \^bit_cnt_reg[3]_0\,
      I1 => \v_var[8]_i_4_n_0_repN\,
      I2 => \h_var[7]_i_2_n_0\,
      I3 => \v_var[8]_i_3_n_0\,
      I4 => \v_var_reg_n_0_[2]\,
      I5 => \v_var[8]_i_2_n_0_repN\,
      O => \v_var[9]_i_3_n_0\
    );
\v_var[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => \v_var_reg_n_0_[9]\,
      I1 => \v_var_reg_n_0_[3]\,
      I2 => \v_var_reg_n_0_[2]\,
      I3 => \v_var_reg_n_0_[1]\,
      I4 => \v_var_reg_n_0_[0]\,
      O => \v_var[9]_i_4_n_0\
    );
\v_var_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sel0(0),
      Q => \v_var_reg_n_0_[0]\,
      R => '0'
    );
\v_var_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sel0(1),
      Q => \v_var_reg_n_0_[1]\,
      R => '0'
    );
\v_var_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sel0(2),
      Q => \v_var_reg_n_0_[2]\,
      R => '0'
    );
\v_var_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sel0(3),
      Q => \v_var_reg_n_0_[3]\,
      R => '0'
    );
\v_var_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sel0(4),
      Q => \v_var_reg_n_0_[4]\,
      R => '0'
    );
\v_var_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sel0(5),
      Q => \v_var_reg_n_0_[5]\,
      R => '0'
    );
\v_var_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sel0(6),
      Q => \v_var_reg_n_0_[6]\,
      R => '0'
    );
\v_var_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sel0(7),
      Q => \v_var_reg_n_0_[7]\,
      R => '0'
    );
\v_var_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \v_var[8]_i_1_n_0\,
      Q => \v_var_reg_n_0_[8]\,
      R => '0'
    );
\v_var_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => sel0(9),
      Q => \v_var_reg_n_0_[9]\,
      R => '0'
    );
vsync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => vsync_i_2_n_0,
      I1 => \v_var_reg_n_0_[2]\,
      I2 => \v_var_reg_n_0_[1]\,
      I3 => \v_var_reg_n_0_[3]\,
      I4 => \v_var_reg_n_0_[9]\,
      O => vsync_i_1_n_0
    );
vsync_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \v_var_reg_n_0_[4]\,
      I1 => \v_var_reg_n_0_[5]\,
      I2 => \v_var_reg_n_0_[8]\,
      I3 => \v_var_reg_n_0_[7]\,
      I4 => \v_var_reg_n_0_[6]\,
      O => vsync_i_2_n_0
    );
vsync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => vsync_i_1_n_0,
      Q => vsync,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi2 is
  port (
    clk_out_reg : out STD_LOGIC;
    tmds_clk : out STD_LOGIC_VECTOR ( 1 downto 0 );
    buffer_clk_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_g_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_r_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_out1 : in STD_LOGIC;
    audio_clock : in STD_LOGIC;
    buffer_clk : in STD_LOGIC
  );
end hdmi2;

architecture STRUCTURE of hdmi2 is
  signal CTL10 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \CTL10[0]_i_1_n_0\ : STD_LOGIC;
  signal CTL32 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \CTL32[0]_i_1_n_0\ : STD_LOGIC;
  signal bit_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal d_out22_in : STD_LOGIC;
  signal d_out22_in_0 : STD_LOGIC;
  signal d_out32_in : STD_LOGIC;
  signal d_out32_in_1 : STD_LOGIC;
  signal hsync : STD_LOGIC;
  signal is_send_audio : STD_LOGIC;
  signal is_send_audio_i_1_n_0 : STD_LOGIC;
  signal is_video_active : STD_LOGIC;
  signal tdms_b_n_0 : STD_LOGIC;
  signal tdms_r_n_2 : STD_LOGIC;
  signal timing_inst_n_10 : STD_LOGIC;
  signal timing_inst_n_11 : STD_LOGIC;
  signal timing_inst_n_12 : STD_LOGIC;
  signal timing_inst_n_13 : STD_LOGIC;
  signal timing_inst_n_14 : STD_LOGIC;
  signal timing_inst_n_15 : STD_LOGIC;
  signal timing_inst_n_16 : STD_LOGIC;
  signal timing_inst_n_17 : STD_LOGIC;
  signal timing_inst_n_18 : STD_LOGIC;
  signal timing_inst_n_19 : STD_LOGIC;
  signal timing_inst_n_20 : STD_LOGIC;
  signal timing_inst_n_21 : STD_LOGIC;
  signal timing_inst_n_22 : STD_LOGIC;
  signal timing_inst_n_23 : STD_LOGIC;
  signal timing_inst_n_24 : STD_LOGIC;
  signal timing_inst_n_25 : STD_LOGIC;
  signal timing_inst_n_26 : STD_LOGIC;
  signal timing_inst_n_29 : STD_LOGIC;
  signal timing_inst_n_30 : STD_LOGIC;
  signal timing_inst_n_31 : STD_LOGIC;
  signal timing_inst_n_33 : STD_LOGIC;
  signal timing_inst_n_34 : STD_LOGIC;
  signal tmds_buffer_g : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
\CTL10[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB8B8BBB8"
    )
        port map (
      I0 => CTL10(0),
      I1 => timing_inst_n_13,
      I2 => timing_inst_n_34,
      I3 => timing_inst_n_30,
      I4 => timing_inst_n_31,
      I5 => timing_inst_n_10,
      O => \CTL10[0]_i_1_n_0\
    );
\CTL32[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFF303030"
    )
        port map (
      I0 => CTL32(0),
      I1 => timing_inst_n_31,
      I2 => timing_inst_n_30,
      I3 => timing_inst_n_12,
      I4 => timing_inst_n_11,
      I5 => timing_inst_n_13,
      O => \CTL32[0]_i_1_n_0\
    );
\data_b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => timing_inst_n_18,
      Q => Q(0),
      R => '0'
    );
\data_b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => timing_inst_n_17,
      Q => Q(1),
      R => '0'
    );
\data_g_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => timing_inst_n_16,
      Q => \data_g_reg[1]_0\(0),
      R => '0'
    );
\data_g_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => timing_inst_n_15,
      Q => \data_g_reg[1]_0\(1),
      R => '0'
    );
\data_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => timing_inst_n_20,
      Q => \data_r_reg[1]_0\(0),
      R => '0'
    );
\data_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => timing_inst_n_19,
      Q => \data_r_reg[1]_0\(1),
      R => '0'
    );
is_send_audio_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF44"
    )
        port map (
      I0 => timing_inst_n_13,
      I1 => timing_inst_n_33,
      I2 => timing_inst_n_29,
      I3 => is_send_audio,
      O => is_send_audio_i_1_n_0
    );
tdms_b: entity work.tmds_encoder
     port map (
      bit_cnt(3 downto 0) => bit_cnt(3 downto 0),
      buffer_clk => buffer_clk,
      \d_out_reg[4]_0\ => timing_inst_n_21,
      \d_out_reg[9]_0\ => tdms_b_n_0,
      \d_out_reg[9]_1\ => timing_inst_n_14,
      hsync => hsync,
      is_video_active => is_video_active
    );
tdms_g: entity work.tmds_encoder_0
     port map (
      CO(0) => d_out32_in,
      CTL10(0) => CTL10(0),
      D(0) => timing_inst_n_25,
      SR(0) => timing_inst_n_22,
      buffer_clk => buffer_clk,
      d_out22_in => d_out22_in,
      \d_out_reg[8]_0\ => timing_inst_n_26,
      is_video_active => is_video_active,
      tmds_buffer_g(4 downto 3) => tmds_buffer_g(9 downto 8),
      tmds_buffer_g(2 downto 1) => tmds_buffer_g(3 downto 2),
      tmds_buffer_g(0) => tmds_buffer_g(0)
    );
tdms_r: entity work.tmds_encoder_1
     port map (
      CO(0) => d_out32_in_1,
      CTL32(0) => CTL32(0),
      D(0) => timing_inst_n_23,
      SR(0) => timing_inst_n_22,
      bit_cnt(3 downto 0) => bit_cnt(3 downto 0),
      buffer_clk => buffer_clk,
      d_out22_in => d_out22_in_0,
      \d_out_reg[8]_0\ => timing_inst_n_24,
      \d_out_reg[9]_0\ => tdms_r_n_2,
      is_video_active => is_video_active
    );
timing_inst: entity work.timing
     port map (
      CO(0) => d_out32_in_1,
      CTL10(0) => CTL10(0),
      \CTL10_reg[0]_0\(0) => timing_inst_n_25,
      \CTL10_reg[0]_1\ => timing_inst_n_26,
      \CTL10_reg[0]_2\ => \CTL10[0]_i_1_n_0\,
      CTL32(0) => CTL32(0),
      \CTL32_reg[0]_0\(0) => timing_inst_n_23,
      \CTL32_reg[0]_1\ => timing_inst_n_24,
      \CTL32_reg[0]_2\ => \CTL32[0]_i_1_n_0\,
      D(1) => timing_inst_n_15,
      D(0) => timing_inst_n_16,
      Q(3 downto 0) => bit_cnt(3 downto 0),
      SR(0) => timing_inst_n_22,
      audio_clock => audio_clock,
      \bit_cnt_reg[0]_0\ => timing_inst_n_10,
      \bit_cnt_reg[3]_0\ => timing_inst_n_13,
      \bit_cnt_reg[3]_1\(1) => timing_inst_n_17,
      \bit_cnt_reg[3]_1\(0) => timing_inst_n_18,
      \bit_cnt_reg[3]_2\(1) => timing_inst_n_19,
      \bit_cnt_reg[3]_2\(0) => timing_inst_n_20,
      buffer_clk_reg_0 => buffer_clk_reg,
      clk_out1 => clk_out1,
      clk_out_reg => clk_out_reg,
      d_out22_in => d_out22_in_0,
      d_out22_in_0 => d_out22_in,
      \d_out_reg[9]\(0) => d_out32_in,
      \data_b_reg[1]\ => tdms_b_n_0,
      \data_r_reg[1]\ => tdms_r_n_2,
      \h_var_reg[2]_0\ => timing_inst_n_33,
      \h_var_reg[4]_0\ => timing_inst_n_29,
      \h_var_reg[5]_0\ => timing_inst_n_34,
      \h_var_reg[6]_0\ => timing_inst_n_31,
      \h_var_reg[7]_0\ => timing_inst_n_11,
      hsync => hsync,
      hsync_reg_0 => timing_inst_n_14,
      hsync_reg_1 => timing_inst_n_21,
      is_send_audio => is_send_audio,
      is_send_audio_reg_0 => timing_inst_n_12,
      is_send_audio_reg_1 => is_send_audio_i_1_n_0,
      is_video_active => is_video_active,
      tmds_buffer_g(4 downto 3) => tmds_buffer_g(9 downto 8),
      tmds_buffer_g(2 downto 1) => tmds_buffer_g(3 downto 2),
      tmds_buffer_g(0) => tmds_buffer_g(0),
      tmds_clk(1 downto 0) => tmds_clk(1 downto 0),
      \v_var_reg[6]_0\ => timing_inst_n_30
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    clk_12Mhz : in STD_LOGIC;
    pio1 : out STD_LOGIC;
    pio2 : out STD_LOGIC;
    pio3 : out STD_LOGIC;
    pio4 : out STD_LOGIC;
    pio5 : out STD_LOGIC;
    pio6 : out STD_LOGIC;
    pio7 : out STD_LOGIC;
    pio8 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of top : entity is "68c24fde";
end top;

architecture STRUCTURE of top is
  signal buffer_clk : STD_LOGIC;
  signal clk_252Mhz : STD_LOGIC;
  signal hdmi_inst_n_0 : STD_LOGIC;
  signal hdmi_inst_n_3 : STD_LOGIC;
  signal pio1_OBUF : STD_LOGIC;
  signal pio2_OBUF : STD_LOGIC;
  signal pio3_OBUF : STD_LOGIC;
  signal pio4_OBUF : STD_LOGIC;
  signal pio5_OBUF : STD_LOGIC;
  signal pio6_OBUF : STD_LOGIC;
  signal pio7_OBUF : STD_LOGIC;
  signal pio8_OBUF : STD_LOGIC;
  signal \timing_inst/audio_clock\ : STD_LOGIC;
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of MMCM : label is "d:/FPGA/Xilinx/Projects/hdmi/hdmi.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of MMCM : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of MMCM : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of MMCM : label is "TRUE";
begin
MMCM: entity work.clk_wiz_0
     port map (
      clk_in1 => clk_12Mhz,
      clk_out1 => clk_252Mhz
    );
\audio_idx_reg[5]_i_2\: unisim.vcomponents.BUFG
     port map (
      I => hdmi_inst_n_0,
      O => \timing_inst/audio_clock\
    );
\disparity_reg[31]_i_3__0\: unisim.vcomponents.BUFG
     port map (
      I => hdmi_inst_n_3,
      O => buffer_clk
    );
hdmi_inst: entity work.hdmi2
     port map (
      Q(1) => pio4_OBUF,
      Q(0) => pio3_OBUF,
      audio_clock => \timing_inst/audio_clock\,
      buffer_clk => buffer_clk,
      buffer_clk_reg => hdmi_inst_n_3,
      clk_out1 => clk_252Mhz,
      clk_out_reg => hdmi_inst_n_0,
      \data_g_reg[1]_0\(1) => pio6_OBUF,
      \data_g_reg[1]_0\(0) => pio5_OBUF,
      \data_r_reg[1]_0\(1) => pio8_OBUF,
      \data_r_reg[1]_0\(0) => pio7_OBUF,
      tmds_clk(1) => pio2_OBUF,
      tmds_clk(0) => pio1_OBUF
    );
pio1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => pio1_OBUF,
      O => pio1
    );
pio2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => pio2_OBUF,
      O => pio2
    );
pio3_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => pio3_OBUF,
      O => pio3
    );
pio4_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => pio4_OBUF,
      O => pio4
    );
pio5_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => pio5_OBUF,
      O => pio5
    );
pio6_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => pio6_OBUF,
      O => pio6
    );
pio7_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => pio7_OBUF,
      O => pio7
    );
pio8_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => pio8_OBUF,
      O => pio8
    );
end STRUCTURE;
