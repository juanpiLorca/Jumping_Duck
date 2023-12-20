-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Dec  8 13:29:14 2023
-- Host        : Juanpy running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_Music_0_0/DEMO_Music_0_0_sim_netlist.vhdl
-- Design      : DEMO_Music_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DEMO_Music_0_0_clock_divider is
  port (
    out_clk : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DEMO_Music_0_0_clock_divider : entity is "clock_divider";
end DEMO_Music_0_0_clock_divider;

architecture STRUCTURE of DEMO_Music_0_0_clock_divider is
  signal clear : STD_LOGIC;
  signal \counter_clk[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_clk[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_clk[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter_clk[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter_clk[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter_clk[0]_i_8_n_0\ : STD_LOGIC;
  signal \counter_clk[0]_i_9_n_0\ : STD_LOGIC;
  signal counter_clk_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_clk_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_clk_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_clk_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_clk_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_clk_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_clk_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_clk_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_clk_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_clk_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal enable_clk : STD_LOGIC;
  signal enable_clk_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \NLW_counter_clk_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_clk_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_clk_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_clk_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_clk_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_clk_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_clk_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_clk_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_clk_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of enable_clk_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of out_clk_i_1 : label is "soft_lutpair0";
begin
\counter_clk[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \counter_clk[0]_i_3_n_0\,
      I1 => \counter_clk[0]_i_4_n_0\,
      I2 => \counter_clk[0]_i_5_n_0\,
      I3 => \counter_clk[0]_i_6_n_0\,
      I4 => \counter_clk[0]_i_7_n_0\,
      I5 => \counter_clk[0]_i_8_n_0\,
      O => clear
    );
\counter_clk[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_clk_reg(0),
      I1 => counter_clk_reg(1),
      O => \counter_clk[0]_i_3_n_0\
    );
\counter_clk[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => counter_clk_reg(4),
      I1 => counter_clk_reg(5),
      I2 => counter_clk_reg(3),
      I3 => counter_clk_reg(2),
      I4 => counter_clk_reg(7),
      I5 => counter_clk_reg(6),
      O => \counter_clk[0]_i_4_n_0\
    );
\counter_clk[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => counter_clk_reg(10),
      I1 => counter_clk_reg(11),
      I2 => counter_clk_reg(8),
      I3 => counter_clk_reg(9),
      I4 => counter_clk_reg(12),
      I5 => counter_clk_reg(13),
      O => \counter_clk[0]_i_5_n_0\
    );
\counter_clk[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => counter_clk_reg(16),
      I1 => counter_clk_reg(17),
      I2 => counter_clk_reg(14),
      I3 => counter_clk_reg(15),
      I4 => counter_clk_reg(19),
      I5 => counter_clk_reg(18),
      O => \counter_clk[0]_i_6_n_0\
    );
\counter_clk[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => counter_clk_reg(22),
      I1 => counter_clk_reg(23),
      I2 => counter_clk_reg(20),
      I3 => counter_clk_reg(21),
      I4 => counter_clk_reg(25),
      I5 => counter_clk_reg(24),
      O => \counter_clk[0]_i_7_n_0\
    );
\counter_clk[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_clk_reg(28),
      I1 => counter_clk_reg(29),
      I2 => counter_clk_reg(26),
      I3 => counter_clk_reg(27),
      I4 => counter_clk_reg(31),
      I5 => counter_clk_reg(30),
      O => \counter_clk[0]_i_8_n_0\
    );
\counter_clk[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_clk_reg(0),
      O => \counter_clk[0]_i_9_n_0\
    );
\counter_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[0]_i_2_n_7\,
      Q => counter_clk_reg(0),
      R => clear
    );
\counter_clk_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_clk_reg[0]_i_2_n_0\,
      CO(2) => \counter_clk_reg[0]_i_2_n_1\,
      CO(1) => \counter_clk_reg[0]_i_2_n_2\,
      CO(0) => \counter_clk_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_clk_reg[0]_i_2_n_4\,
      O(2) => \counter_clk_reg[0]_i_2_n_5\,
      O(1) => \counter_clk_reg[0]_i_2_n_6\,
      O(0) => \counter_clk_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_clk_reg(3 downto 1),
      S(0) => \counter_clk[0]_i_9_n_0\
    );
\counter_clk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[8]_i_1_n_5\,
      Q => counter_clk_reg(10),
      R => clear
    );
\counter_clk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[8]_i_1_n_4\,
      Q => counter_clk_reg(11),
      R => clear
    );
\counter_clk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[12]_i_1_n_7\,
      Q => counter_clk_reg(12),
      R => clear
    );
\counter_clk_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_clk_reg[8]_i_1_n_0\,
      CO(3) => \counter_clk_reg[12]_i_1_n_0\,
      CO(2) => \counter_clk_reg[12]_i_1_n_1\,
      CO(1) => \counter_clk_reg[12]_i_1_n_2\,
      CO(0) => \counter_clk_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_clk_reg[12]_i_1_n_4\,
      O(2) => \counter_clk_reg[12]_i_1_n_5\,
      O(1) => \counter_clk_reg[12]_i_1_n_6\,
      O(0) => \counter_clk_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_clk_reg(15 downto 12)
    );
\counter_clk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[12]_i_1_n_6\,
      Q => counter_clk_reg(13),
      R => clear
    );
\counter_clk_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[12]_i_1_n_5\,
      Q => counter_clk_reg(14),
      R => clear
    );
\counter_clk_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[12]_i_1_n_4\,
      Q => counter_clk_reg(15),
      R => clear
    );
\counter_clk_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[16]_i_1_n_7\,
      Q => counter_clk_reg(16),
      R => clear
    );
\counter_clk_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_clk_reg[12]_i_1_n_0\,
      CO(3) => \counter_clk_reg[16]_i_1_n_0\,
      CO(2) => \counter_clk_reg[16]_i_1_n_1\,
      CO(1) => \counter_clk_reg[16]_i_1_n_2\,
      CO(0) => \counter_clk_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_clk_reg[16]_i_1_n_4\,
      O(2) => \counter_clk_reg[16]_i_1_n_5\,
      O(1) => \counter_clk_reg[16]_i_1_n_6\,
      O(0) => \counter_clk_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_clk_reg(19 downto 16)
    );
\counter_clk_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[16]_i_1_n_6\,
      Q => counter_clk_reg(17),
      R => clear
    );
\counter_clk_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[16]_i_1_n_5\,
      Q => counter_clk_reg(18),
      R => clear
    );
\counter_clk_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[16]_i_1_n_4\,
      Q => counter_clk_reg(19),
      R => clear
    );
\counter_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[0]_i_2_n_6\,
      Q => counter_clk_reg(1),
      R => clear
    );
\counter_clk_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[20]_i_1_n_7\,
      Q => counter_clk_reg(20),
      R => clear
    );
\counter_clk_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_clk_reg[16]_i_1_n_0\,
      CO(3) => \counter_clk_reg[20]_i_1_n_0\,
      CO(2) => \counter_clk_reg[20]_i_1_n_1\,
      CO(1) => \counter_clk_reg[20]_i_1_n_2\,
      CO(0) => \counter_clk_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_clk_reg[20]_i_1_n_4\,
      O(2) => \counter_clk_reg[20]_i_1_n_5\,
      O(1) => \counter_clk_reg[20]_i_1_n_6\,
      O(0) => \counter_clk_reg[20]_i_1_n_7\,
      S(3 downto 0) => counter_clk_reg(23 downto 20)
    );
\counter_clk_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[20]_i_1_n_6\,
      Q => counter_clk_reg(21),
      R => clear
    );
\counter_clk_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[20]_i_1_n_5\,
      Q => counter_clk_reg(22),
      R => clear
    );
\counter_clk_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[20]_i_1_n_4\,
      Q => counter_clk_reg(23),
      R => clear
    );
\counter_clk_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[24]_i_1_n_7\,
      Q => counter_clk_reg(24),
      R => clear
    );
\counter_clk_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_clk_reg[20]_i_1_n_0\,
      CO(3) => \counter_clk_reg[24]_i_1_n_0\,
      CO(2) => \counter_clk_reg[24]_i_1_n_1\,
      CO(1) => \counter_clk_reg[24]_i_1_n_2\,
      CO(0) => \counter_clk_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_clk_reg[24]_i_1_n_4\,
      O(2) => \counter_clk_reg[24]_i_1_n_5\,
      O(1) => \counter_clk_reg[24]_i_1_n_6\,
      O(0) => \counter_clk_reg[24]_i_1_n_7\,
      S(3 downto 0) => counter_clk_reg(27 downto 24)
    );
\counter_clk_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[24]_i_1_n_6\,
      Q => counter_clk_reg(25),
      R => clear
    );
\counter_clk_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[24]_i_1_n_5\,
      Q => counter_clk_reg(26),
      R => clear
    );
\counter_clk_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[24]_i_1_n_4\,
      Q => counter_clk_reg(27),
      R => clear
    );
\counter_clk_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[28]_i_1_n_7\,
      Q => counter_clk_reg(28),
      R => clear
    );
\counter_clk_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_clk_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_clk_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_clk_reg[28]_i_1_n_1\,
      CO(1) => \counter_clk_reg[28]_i_1_n_2\,
      CO(0) => \counter_clk_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_clk_reg[28]_i_1_n_4\,
      O(2) => \counter_clk_reg[28]_i_1_n_5\,
      O(1) => \counter_clk_reg[28]_i_1_n_6\,
      O(0) => \counter_clk_reg[28]_i_1_n_7\,
      S(3 downto 0) => counter_clk_reg(31 downto 28)
    );
\counter_clk_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[28]_i_1_n_6\,
      Q => counter_clk_reg(29),
      R => clear
    );
\counter_clk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[0]_i_2_n_5\,
      Q => counter_clk_reg(2),
      R => clear
    );
\counter_clk_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[28]_i_1_n_5\,
      Q => counter_clk_reg(30),
      R => clear
    );
\counter_clk_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[28]_i_1_n_4\,
      Q => counter_clk_reg(31),
      R => clear
    );
\counter_clk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[0]_i_2_n_4\,
      Q => counter_clk_reg(3),
      R => clear
    );
\counter_clk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[4]_i_1_n_7\,
      Q => counter_clk_reg(4),
      R => clear
    );
\counter_clk_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_clk_reg[0]_i_2_n_0\,
      CO(3) => \counter_clk_reg[4]_i_1_n_0\,
      CO(2) => \counter_clk_reg[4]_i_1_n_1\,
      CO(1) => \counter_clk_reg[4]_i_1_n_2\,
      CO(0) => \counter_clk_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_clk_reg[4]_i_1_n_4\,
      O(2) => \counter_clk_reg[4]_i_1_n_5\,
      O(1) => \counter_clk_reg[4]_i_1_n_6\,
      O(0) => \counter_clk_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_clk_reg(7 downto 4)
    );
\counter_clk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[4]_i_1_n_6\,
      Q => counter_clk_reg(5),
      R => clear
    );
\counter_clk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[4]_i_1_n_5\,
      Q => counter_clk_reg(6),
      R => clear
    );
\counter_clk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[4]_i_1_n_4\,
      Q => counter_clk_reg(7),
      R => clear
    );
\counter_clk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[8]_i_1_n_7\,
      Q => counter_clk_reg(8),
      R => clear
    );
\counter_clk_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_clk_reg[4]_i_1_n_0\,
      CO(3) => \counter_clk_reg[8]_i_1_n_0\,
      CO(2) => \counter_clk_reg[8]_i_1_n_1\,
      CO(1) => \counter_clk_reg[8]_i_1_n_2\,
      CO(0) => \counter_clk_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_clk_reg[8]_i_1_n_4\,
      O(2) => \counter_clk_reg[8]_i_1_n_5\,
      O(1) => \counter_clk_reg[8]_i_1_n_6\,
      O(0) => \counter_clk_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_clk_reg(11 downto 8)
    );
\counter_clk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_clk_reg[8]_i_1_n_6\,
      Q => counter_clk_reg(9),
      R => clear
    );
enable_clk_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clear,
      I1 => enable_clk,
      O => enable_clk_i_1_n_0
    );
enable_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => enable_clk_i_1_n_0,
      Q => enable_clk,
      R => '0'
    );
out_clk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => enable_clk,
      O => p_0_in
    );
out_clk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => out_clk,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DEMO_Music_0_0_Music is
  port (
    freq : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DEMO_Music_0_0_Music : entity is "Music";
end DEMO_Music_0_0_Music;

architecture STRUCTURE of DEMO_Music_0_0_Music is
  signal counter : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[17]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[18]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[19]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \freq_out[9]_i_1_n_0\ : STD_LOGIC;
  signal out_clk : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \freq_out[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \freq_out[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \freq_out[11]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \freq_out[12]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \freq_out[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \freq_out[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \freq_out[17]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \freq_out[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \freq_out[19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \freq_out[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \freq_out[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \freq_out[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \freq_out[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \freq_out[9]_i_1\ : label is "soft_lutpair2";
begin
clock_divider_inst: entity work.DEMO_Music_0_0_clock_divider
     port map (
      clk => clk,
      out_clk => out_clk
    );
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      I1 => rst,
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => rst,
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006C"
    )
        port map (
      I0 => counter(1),
      I1 => counter(2),
      I2 => counter(0),
      I3 => rst,
      O => \counter[2]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => counter(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      Q => counter(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => '1',
      D => \counter[2]_i_1_n_0\,
      Q => counter(2),
      R => '0'
    );
\freq_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => \freq_out[0]_i_1_n_0\
    );
\freq_out[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      O => \freq_out[10]_i_1_n_0\
    );
\freq_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => counter(0),
      I1 => counter(2),
      I2 => counter(1),
      O => \freq_out[11]_i_1_n_0\
    );
\freq_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      I2 => counter(2),
      O => \freq_out[12]_i_1_n_0\
    );
\freq_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => counter(0),
      I1 => counter(2),
      I2 => counter(1),
      O => \freq_out[13]_i_1_n_0\
    );
\freq_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => counter(1),
      I1 => counter(2),
      I2 => counter(0),
      O => \freq_out[14]_i_1_n_0\
    );
\freq_out[16]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(1),
      O => \freq_out[16]_i_1_n_0\
    );
\freq_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      I2 => counter(2),
      O => \freq_out[17]_i_1_n_0\
    );
\freq_out[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => \freq_out[18]_i_1_n_0\
    );
\freq_out[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      O => \freq_out[19]_i_1_n_0\
    );
\freq_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      O => \freq_out[1]_i_1_n_0\
    );
\freq_out[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      O => \freq_out[2]_i_1_n_0\
    );
\freq_out[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => \freq_out[4]_i_1_n_0\
    );
\freq_out[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      O => \freq_out[8]_i_1_n_0\
    );
\freq_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C7"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(0),
      O => \freq_out[9]_i_1_n_0\
    );
\freq_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[0]_i_1_n_0\,
      Q => freq(0),
      R => '0'
    );
\freq_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[10]_i_1_n_0\,
      Q => freq(7),
      R => '0'
    );
\freq_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[11]_i_1_n_0\,
      Q => freq(8),
      R => '0'
    );
\freq_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[12]_i_1_n_0\,
      Q => freq(9),
      R => '0'
    );
\freq_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[13]_i_1_n_0\,
      Q => freq(10),
      R => '0'
    );
\freq_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[14]_i_1_n_0\,
      Q => freq(11),
      R => '0'
    );
\freq_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[16]_i_1_n_0\,
      Q => freq(12),
      R => '0'
    );
\freq_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[17]_i_1_n_0\,
      Q => freq(13),
      R => '0'
    );
\freq_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[18]_i_1_n_0\,
      Q => freq(14),
      R => '0'
    );
\freq_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[19]_i_1_n_0\,
      Q => freq(15),
      R => '0'
    );
\freq_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[1]_i_1_n_0\,
      Q => freq(1),
      R => '0'
    );
\freq_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[2]_i_1_n_0\,
      Q => freq(2),
      R => '0'
    );
\freq_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[4]_i_1_n_0\,
      Q => freq(3),
      R => '0'
    );
\freq_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => counter(0),
      Q => freq(4),
      R => '0'
    );
\freq_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[8]_i_1_n_0\,
      Q => freq(5),
      R => '0'
    );
\freq_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_out[9]_i_1_n_0\,
      Q => freq(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DEMO_Music_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    freq : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of DEMO_Music_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DEMO_Music_0_0 : entity is "DEMO_Music_0_0,Music,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DEMO_Music_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of DEMO_Music_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of DEMO_Music_0_0 : entity is "Music,Vivado 2020.1";
end DEMO_Music_0_0;

architecture STRUCTURE of DEMO_Music_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^freq\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN DEMO_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  freq(19) <= \^freq\(19);
  freq(18) <= \^freq\(7);
  freq(17) <= \^freq\(3);
  freq(16) <= \^freq\(16);
  freq(15) <= \<const1>\;
  freq(14 downto 10) <= \^freq\(14 downto 10);
  freq(9) <= \^freq\(5);
  freq(8 downto 0) <= \^freq\(8 downto 0);
U0: entity work.DEMO_Music_0_0_Music
     port map (
      clk => clk,
      freq(15) => \^freq\(19),
      freq(14) => \^freq\(7),
      freq(13) => \^freq\(3),
      freq(12) => \^freq\(16),
      freq(11 downto 7) => \^freq\(14 downto 10),
      freq(6) => \^freq\(5),
      freq(5) => \^freq\(8),
      freq(4) => \^freq\(6),
      freq(3) => \^freq\(4),
      freq(2 downto 0) => \^freq\(2 downto 0),
      rst => rst
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
