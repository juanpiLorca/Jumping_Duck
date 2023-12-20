-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Dec  8 01:12:10 2023
-- Host        : Juanpy running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/juanp/OneDrive/Desktop/SEP/ProjectSEPFinal/Hardware_Booster_Project/Hardware_Proyecto_Booster.srcs/sources_1/bd/DEMO/ip/DEMO_BUZZER_0_0/DEMO_BUZZER_0_0_sim_netlist.vhdl
-- Design      : DEMO_BUZZER_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DEMO_BUZZER_0_0_BUZZER is
  port (
    BUZZER_PWM : out STD_LOGIC;
    FREQUENCY : in STD_LOGIC_VECTOR ( 19 downto 0 );
    BTN_JY : in STD_LOGIC;
    BTN0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    ENABLE_MUSIC : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DEMO_BUZZER_0_0_BUZZER : entity is "BUZZER";
end DEMO_BUZZER_0_0_BUZZER;

architecture STRUCTURE of DEMO_BUZZER_0_0_BUZZER is
  signal \BUZZER_PWM1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__0_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__0_n_1\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__0_n_2\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__0_n_3\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__1_n_2\ : STD_LOGIC;
  signal \BUZZER_PWM1_carry__1_n_3\ : STD_LOGIC;
  signal BUZZER_PWM1_carry_i_1_n_0 : STD_LOGIC;
  signal BUZZER_PWM1_carry_i_2_n_0 : STD_LOGIC;
  signal BUZZER_PWM1_carry_i_3_n_0 : STD_LOGIC;
  signal BUZZER_PWM1_carry_i_4_n_0 : STD_LOGIC;
  signal BUZZER_PWM1_carry_i_5_n_0 : STD_LOGIC;
  signal BUZZER_PWM1_carry_i_6_n_0 : STD_LOGIC;
  signal BUZZER_PWM1_carry_i_7_n_0 : STD_LOGIC;
  signal BUZZER_PWM1_carry_i_8_n_0 : STD_LOGIC;
  signal BUZZER_PWM1_carry_n_0 : STD_LOGIC;
  signal BUZZER_PWM1_carry_n_1 : STD_LOGIC;
  signal BUZZER_PWM1_carry_n_2 : STD_LOGIC;
  signal BUZZER_PWM1_carry_n_3 : STD_LOGIC;
  signal counter_BTN0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \counter_BTN0[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_BTN0[1]_i_1_n_0\ : STD_LOGIC;
  signal counter_PWM1 : STD_LOGIC;
  signal \counter_PWM1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__0_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__0_n_1\ : STD_LOGIC;
  signal \counter_PWM1_carry__0_n_2\ : STD_LOGIC;
  signal \counter_PWM1_carry__0_n_3\ : STD_LOGIC;
  signal \counter_PWM1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter_PWM1_carry__1_n_3\ : STD_LOGIC;
  signal counter_PWM1_carry_i_1_n_0 : STD_LOGIC;
  signal counter_PWM1_carry_i_2_n_0 : STD_LOGIC;
  signal counter_PWM1_carry_i_3_n_0 : STD_LOGIC;
  signal counter_PWM1_carry_i_4_n_0 : STD_LOGIC;
  signal counter_PWM1_carry_i_5_n_0 : STD_LOGIC;
  signal counter_PWM1_carry_i_6_n_0 : STD_LOGIC;
  signal counter_PWM1_carry_i_7_n_0 : STD_LOGIC;
  signal counter_PWM1_carry_i_8_n_0 : STD_LOGIC;
  signal counter_PWM1_carry_n_0 : STD_LOGIC;
  signal counter_PWM1_carry_n_1 : STD_LOGIC;
  signal counter_PWM1_carry_n_2 : STD_LOGIC;
  signal counter_PWM1_carry_n_3 : STD_LOGIC;
  signal \counter_PWM[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_PWM[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_PWM_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \counter_PWM_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_PWM_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_PWM_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_PWM_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_PWM_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_PWM_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_PWM_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_PWM_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_PWM_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_PWM_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_PWM_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_PWM_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_PWM_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_PWM_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_PWM_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_PWM_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_PWM_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_PWM_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_PWM_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_PWM_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_PWM_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_PWM_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_PWM_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_PWM_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_PWM_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_PWM_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_PWM_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_PWM_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_PWM_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_PWM_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_PWM_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_PWM_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_BUZZER_PWM1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BUZZER_PWM1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BUZZER_PWM1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_BUZZER_PWM1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_counter_PWM1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_PWM1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_PWM1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_PWM1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_PWM_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of BUZZER_PWM1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \BUZZER_PWM1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \BUZZER_PWM1_carry__1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BUZZER_PWM1_carry__1_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \BUZZER_PWM1_carry__1_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_BTN0[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter_BTN0[1]_i_1\ : label is "soft_lutpair1";
  attribute COMPARATOR_THRESHOLD of counter_PWM1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter_PWM1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter_PWM1_carry__1\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_PWM_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_PWM_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_PWM_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_PWM_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_PWM_reg[8]_i_1\ : label is 11;
begin
BUZZER_PWM1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => BUZZER_PWM1_carry_n_0,
      CO(2) => BUZZER_PWM1_carry_n_1,
      CO(1) => BUZZER_PWM1_carry_n_2,
      CO(0) => BUZZER_PWM1_carry_n_3,
      CYINIT => '1',
      DI(3) => BUZZER_PWM1_carry_i_1_n_0,
      DI(2) => BUZZER_PWM1_carry_i_2_n_0,
      DI(1) => BUZZER_PWM1_carry_i_3_n_0,
      DI(0) => BUZZER_PWM1_carry_i_4_n_0,
      O(3 downto 0) => NLW_BUZZER_PWM1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => BUZZER_PWM1_carry_i_5_n_0,
      S(2) => BUZZER_PWM1_carry_i_6_n_0,
      S(1) => BUZZER_PWM1_carry_i_7_n_0,
      S(0) => BUZZER_PWM1_carry_i_8_n_0
    );
\BUZZER_PWM1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => BUZZER_PWM1_carry_n_0,
      CO(3) => \BUZZER_PWM1_carry__0_n_0\,
      CO(2) => \BUZZER_PWM1_carry__0_n_1\,
      CO(1) => \BUZZER_PWM1_carry__0_n_2\,
      CO(0) => \BUZZER_PWM1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \BUZZER_PWM1_carry__0_i_1_n_0\,
      DI(2) => \BUZZER_PWM1_carry__0_i_2_n_0\,
      DI(1) => \BUZZER_PWM1_carry__0_i_3_n_0\,
      DI(0) => \BUZZER_PWM1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_BUZZER_PWM1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \BUZZER_PWM1_carry__0_i_5_n_0\,
      S(2) => \BUZZER_PWM1_carry__0_i_6_n_0\,
      S(1) => \BUZZER_PWM1_carry__0_i_7_n_0\,
      S(0) => \BUZZER_PWM1_carry__0_i_8_n_0\
    );
\BUZZER_PWM1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p_3_out(14),
      I1 => counter_PWM_reg(14),
      I2 => counter_PWM_reg(15),
      I3 => p_3_out(15),
      O => \BUZZER_PWM1_carry__0_i_1_n_0\
    );
\BUZZER_PWM1_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(16),
      I1 => FREQUENCY(18),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(17),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(19),
      O => p_3_out(15)
    );
\BUZZER_PWM1_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(13),
      I1 => FREQUENCY(15),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(14),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(16),
      O => p_3_out(12)
    );
\BUZZER_PWM1_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(14),
      I1 => FREQUENCY(16),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(15),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(17),
      O => p_3_out(13)
    );
\BUZZER_PWM1_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(11),
      I1 => FREQUENCY(13),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(12),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(14),
      O => p_3_out(10)
    );
\BUZZER_PWM1_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(12),
      I1 => FREQUENCY(14),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(13),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(15),
      O => p_3_out(11)
    );
\BUZZER_PWM1_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(9),
      I1 => FREQUENCY(11),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(10),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(12),
      O => p_3_out(8)
    );
\BUZZER_PWM1_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(10),
      I1 => FREQUENCY(12),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(11),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(13),
      O => p_3_out(9)
    );
\BUZZER_PWM1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p_3_out(12),
      I1 => counter_PWM_reg(12),
      I2 => counter_PWM_reg(13),
      I3 => p_3_out(13),
      O => \BUZZER_PWM1_carry__0_i_2_n_0\
    );
\BUZZER_PWM1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p_3_out(10),
      I1 => counter_PWM_reg(10),
      I2 => counter_PWM_reg(11),
      I3 => p_3_out(11),
      O => \BUZZER_PWM1_carry__0_i_3_n_0\
    );
\BUZZER_PWM1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p_3_out(8),
      I1 => counter_PWM_reg(8),
      I2 => counter_PWM_reg(9),
      I3 => p_3_out(9),
      O => \BUZZER_PWM1_carry__0_i_4_n_0\
    );
\BUZZER_PWM1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_3_out(14),
      I1 => counter_PWM_reg(14),
      I2 => p_3_out(15),
      I3 => counter_PWM_reg(15),
      O => \BUZZER_PWM1_carry__0_i_5_n_0\
    );
\BUZZER_PWM1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_3_out(12),
      I1 => counter_PWM_reg(12),
      I2 => p_3_out(13),
      I3 => counter_PWM_reg(13),
      O => \BUZZER_PWM1_carry__0_i_6_n_0\
    );
\BUZZER_PWM1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_3_out(10),
      I1 => counter_PWM_reg(10),
      I2 => p_3_out(11),
      I3 => counter_PWM_reg(11),
      O => \BUZZER_PWM1_carry__0_i_7_n_0\
    );
\BUZZER_PWM1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_3_out(8),
      I1 => counter_PWM_reg(8),
      I2 => p_3_out(9),
      I3 => counter_PWM_reg(9),
      O => \BUZZER_PWM1_carry__0_i_8_n_0\
    );
\BUZZER_PWM1_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(15),
      I1 => FREQUENCY(17),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(16),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(18),
      O => p_3_out(14)
    );
\BUZZER_PWM1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BUZZER_PWM1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_BUZZER_PWM1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \BUZZER_PWM1_carry__1_n_2\,
      CO(0) => \BUZZER_PWM1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \BUZZER_PWM1_carry__1_i_1_n_0\,
      DI(0) => \BUZZER_PWM1_carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_BUZZER_PWM1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \BUZZER_PWM1_carry__1_i_3_n_0\,
      S(0) => \BUZZER_PWM1_carry__1_i_4_n_0\
    );
\BUZZER_PWM1_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => counter_PWM_reg(18),
      I1 => counter_BTN0(1),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(19),
      I4 => counter_PWM_reg(19),
      O => \BUZZER_PWM1_carry__1_i_1_n_0\
    );
\BUZZER_PWM1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p_3_out(16),
      I1 => counter_PWM_reg(16),
      I2 => counter_PWM_reg(17),
      I3 => p_3_out(17),
      O => \BUZZER_PWM1_carry__1_i_2_n_0\
    );
\BUZZER_PWM1_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000807F"
    )
        port map (
      I0 => counter_BTN0(1),
      I1 => counter_BTN0(0),
      I2 => FREQUENCY(19),
      I3 => counter_PWM_reg(18),
      I4 => counter_PWM_reg(19),
      O => \BUZZER_PWM1_carry__1_i_3_n_0\
    );
\BUZZER_PWM1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_3_out(16),
      I1 => counter_PWM_reg(16),
      I2 => \BUZZER_PWM1_carry__1_i_7_n_0\,
      O => \BUZZER_PWM1_carry__1_i_4_n_0\
    );
\BUZZER_PWM1_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => FREQUENCY(17),
      I1 => FREQUENCY(19),
      I2 => counter_BTN0(0),
      I3 => counter_BTN0(1),
      I4 => FREQUENCY(18),
      O => p_3_out(16)
    );
\BUZZER_PWM1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => counter_BTN0(1),
      I1 => FREQUENCY(19),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(18),
      O => p_3_out(17)
    );
\BUZZER_PWM1_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"656AAAAA"
    )
        port map (
      I0 => counter_PWM_reg(17),
      I1 => FREQUENCY(18),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(19),
      I4 => counter_BTN0(1),
      O => \BUZZER_PWM1_carry__1_i_7_n_0\
    );
BUZZER_PWM1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p_3_out(6),
      I1 => counter_PWM_reg(6),
      I2 => counter_PWM_reg(7),
      I3 => p_3_out(7),
      O => BUZZER_PWM1_carry_i_1_n_0
    );
BUZZER_PWM1_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(8),
      I1 => FREQUENCY(10),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(9),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(11),
      O => p_3_out(7)
    );
BUZZER_PWM1_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(5),
      I1 => FREQUENCY(7),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(6),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(8),
      O => p_3_out(4)
    );
BUZZER_PWM1_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(6),
      I1 => FREQUENCY(8),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(7),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(9),
      O => p_3_out(5)
    );
BUZZER_PWM1_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(3),
      I1 => FREQUENCY(5),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(4),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(6),
      O => p_3_out(2)
    );
BUZZER_PWM1_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(4),
      I1 => FREQUENCY(6),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(5),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(7),
      O => p_3_out(3)
    );
BUZZER_PWM1_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(1),
      I1 => FREQUENCY(3),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(2),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(4),
      O => p_3_out(0)
    );
BUZZER_PWM1_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(2),
      I1 => FREQUENCY(4),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(3),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(5),
      O => p_3_out(1)
    );
BUZZER_PWM1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p_3_out(4),
      I1 => counter_PWM_reg(4),
      I2 => counter_PWM_reg(5),
      I3 => p_3_out(5),
      O => BUZZER_PWM1_carry_i_2_n_0
    );
BUZZER_PWM1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p_3_out(2),
      I1 => counter_PWM_reg(2),
      I2 => counter_PWM_reg(3),
      I3 => p_3_out(3),
      O => BUZZER_PWM1_carry_i_3_n_0
    );
BUZZER_PWM1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => p_3_out(0),
      I1 => counter_PWM_reg(0),
      I2 => counter_PWM_reg(1),
      I3 => p_3_out(1),
      O => BUZZER_PWM1_carry_i_4_n_0
    );
BUZZER_PWM1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_3_out(6),
      I1 => counter_PWM_reg(6),
      I2 => p_3_out(7),
      I3 => counter_PWM_reg(7),
      O => BUZZER_PWM1_carry_i_5_n_0
    );
BUZZER_PWM1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_3_out(4),
      I1 => counter_PWM_reg(4),
      I2 => p_3_out(5),
      I3 => counter_PWM_reg(5),
      O => BUZZER_PWM1_carry_i_6_n_0
    );
BUZZER_PWM1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_3_out(2),
      I1 => counter_PWM_reg(2),
      I2 => p_3_out(3),
      I3 => counter_PWM_reg(3),
      O => BUZZER_PWM1_carry_i_7_n_0
    );
BUZZER_PWM1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_3_out(0),
      I1 => counter_PWM_reg(0),
      I2 => p_3_out(1),
      I3 => counter_PWM_reg(1),
      O => BUZZER_PWM1_carry_i_8_n_0
    );
BUZZER_PWM1_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => FREQUENCY(7),
      I1 => FREQUENCY(9),
      I2 => counter_BTN0(0),
      I3 => FREQUENCY(8),
      I4 => counter_BTN0(1),
      I5 => FREQUENCY(10),
      O => p_3_out(6)
    );
BUZZER_PWM_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \BUZZER_PWM1_carry__1_n_2\,
      I1 => ENABLE_MUSIC,
      O => BUZZER_PWM
    );
\counter_BTN0[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => BTN0,
      I1 => counter_BTN0(0),
      O => \counter_BTN0[0]_i_1_n_0\
    );
\counter_BTN0[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => counter_BTN0(0),
      I1 => BTN0,
      I2 => counter_BTN0(1),
      O => \counter_BTN0[1]_i_1_n_0\
    );
\counter_BTN0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_BTN0[0]_i_1_n_0\,
      Q => counter_BTN0(0),
      R => '0'
    );
\counter_BTN0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_BTN0[1]_i_1_n_0\,
      Q => counter_BTN0(1),
      R => '0'
    );
counter_PWM1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_PWM1_carry_n_0,
      CO(2) => counter_PWM1_carry_n_1,
      CO(1) => counter_PWM1_carry_n_2,
      CO(0) => counter_PWM1_carry_n_3,
      CYINIT => '1',
      DI(3) => counter_PWM1_carry_i_1_n_0,
      DI(2) => counter_PWM1_carry_i_2_n_0,
      DI(1) => counter_PWM1_carry_i_3_n_0,
      DI(0) => counter_PWM1_carry_i_4_n_0,
      O(3 downto 0) => NLW_counter_PWM1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter_PWM1_carry_i_5_n_0,
      S(2) => counter_PWM1_carry_i_6_n_0,
      S(1) => counter_PWM1_carry_i_7_n_0,
      S(0) => counter_PWM1_carry_i_8_n_0
    );
\counter_PWM1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_PWM1_carry_n_0,
      CO(3) => \counter_PWM1_carry__0_n_0\,
      CO(2) => \counter_PWM1_carry__0_n_1\,
      CO(1) => \counter_PWM1_carry__0_n_2\,
      CO(0) => \counter_PWM1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \counter_PWM1_carry__0_i_1_n_0\,
      DI(2) => \counter_PWM1_carry__0_i_2_n_0\,
      DI(1) => \counter_PWM1_carry__0_i_3_n_0\,
      DI(0) => \counter_PWM1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_counter_PWM1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter_PWM1_carry__0_i_5_n_0\,
      S(2) => \counter_PWM1_carry__0_i_6_n_0\,
      S(1) => \counter_PWM1_carry__0_i_7_n_0\,
      S(0) => \counter_PWM1_carry__0_i_8_n_0\
    );
\counter_PWM1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(14),
      I1 => counter_PWM_reg(14),
      I2 => counter_PWM_reg(15),
      I3 => FREQUENCY(15),
      O => \counter_PWM1_carry__0_i_1_n_0\
    );
\counter_PWM1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(12),
      I1 => counter_PWM_reg(12),
      I2 => counter_PWM_reg(13),
      I3 => FREQUENCY(13),
      O => \counter_PWM1_carry__0_i_2_n_0\
    );
\counter_PWM1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(10),
      I1 => counter_PWM_reg(10),
      I2 => counter_PWM_reg(11),
      I3 => FREQUENCY(11),
      O => \counter_PWM1_carry__0_i_3_n_0\
    );
\counter_PWM1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(8),
      I1 => counter_PWM_reg(8),
      I2 => counter_PWM_reg(9),
      I3 => FREQUENCY(9),
      O => \counter_PWM1_carry__0_i_4_n_0\
    );
\counter_PWM1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(14),
      I1 => counter_PWM_reg(14),
      I2 => FREQUENCY(15),
      I3 => counter_PWM_reg(15),
      O => \counter_PWM1_carry__0_i_5_n_0\
    );
\counter_PWM1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(12),
      I1 => counter_PWM_reg(12),
      I2 => FREQUENCY(13),
      I3 => counter_PWM_reg(13),
      O => \counter_PWM1_carry__0_i_6_n_0\
    );
\counter_PWM1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(10),
      I1 => counter_PWM_reg(10),
      I2 => FREQUENCY(11),
      I3 => counter_PWM_reg(11),
      O => \counter_PWM1_carry__0_i_7_n_0\
    );
\counter_PWM1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(8),
      I1 => counter_PWM_reg(8),
      I2 => FREQUENCY(9),
      I3 => counter_PWM_reg(9),
      O => \counter_PWM1_carry__0_i_8_n_0\
    );
\counter_PWM1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_PWM1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_counter_PWM1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => counter_PWM1,
      CO(0) => \counter_PWM1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \counter_PWM1_carry__1_i_1_n_0\,
      DI(0) => \counter_PWM1_carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_counter_PWM1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \counter_PWM1_carry__1_i_3_n_0\,
      S(0) => \counter_PWM1_carry__1_i_4_n_0\
    );
\counter_PWM1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(18),
      I1 => counter_PWM_reg(18),
      I2 => counter_PWM_reg(19),
      I3 => FREQUENCY(19),
      O => \counter_PWM1_carry__1_i_1_n_0\
    );
\counter_PWM1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(16),
      I1 => counter_PWM_reg(16),
      I2 => counter_PWM_reg(17),
      I3 => FREQUENCY(17),
      O => \counter_PWM1_carry__1_i_2_n_0\
    );
\counter_PWM1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(18),
      I1 => counter_PWM_reg(18),
      I2 => FREQUENCY(19),
      I3 => counter_PWM_reg(19),
      O => \counter_PWM1_carry__1_i_3_n_0\
    );
\counter_PWM1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(16),
      I1 => counter_PWM_reg(16),
      I2 => FREQUENCY(17),
      I3 => counter_PWM_reg(17),
      O => \counter_PWM1_carry__1_i_4_n_0\
    );
counter_PWM1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(6),
      I1 => counter_PWM_reg(6),
      I2 => counter_PWM_reg(7),
      I3 => FREQUENCY(7),
      O => counter_PWM1_carry_i_1_n_0
    );
counter_PWM1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(4),
      I1 => counter_PWM_reg(4),
      I2 => counter_PWM_reg(5),
      I3 => FREQUENCY(5),
      O => counter_PWM1_carry_i_2_n_0
    );
counter_PWM1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(2),
      I1 => counter_PWM_reg(2),
      I2 => counter_PWM_reg(3),
      I3 => FREQUENCY(3),
      O => counter_PWM1_carry_i_3_n_0
    );
counter_PWM1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(0),
      I1 => counter_PWM_reg(0),
      I2 => counter_PWM_reg(1),
      I3 => FREQUENCY(1),
      O => counter_PWM1_carry_i_4_n_0
    );
counter_PWM1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(6),
      I1 => counter_PWM_reg(6),
      I2 => FREQUENCY(7),
      I3 => counter_PWM_reg(7),
      O => counter_PWM1_carry_i_5_n_0
    );
counter_PWM1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(4),
      I1 => counter_PWM_reg(4),
      I2 => FREQUENCY(5),
      I3 => counter_PWM_reg(5),
      O => counter_PWM1_carry_i_6_n_0
    );
counter_PWM1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(2),
      I1 => counter_PWM_reg(2),
      I2 => FREQUENCY(3),
      I3 => counter_PWM_reg(3),
      O => counter_PWM1_carry_i_7_n_0
    );
counter_PWM1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(0),
      I1 => counter_PWM_reg(0),
      I2 => FREQUENCY(1),
      I3 => counter_PWM_reg(1),
      O => counter_PWM1_carry_i_8_n_0
    );
\counter_PWM[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => BTN_JY,
      I1 => counter_PWM1,
      O => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_PWM_reg(0),
      O => \counter_PWM[0]_i_3_n_0\
    );
\counter_PWM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[0]_i_2_n_7\,
      Q => counter_PWM_reg(0),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_PWM_reg[0]_i_2_n_0\,
      CO(2) => \counter_PWM_reg[0]_i_2_n_1\,
      CO(1) => \counter_PWM_reg[0]_i_2_n_2\,
      CO(0) => \counter_PWM_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_PWM_reg[0]_i_2_n_4\,
      O(2) => \counter_PWM_reg[0]_i_2_n_5\,
      O(1) => \counter_PWM_reg[0]_i_2_n_6\,
      O(0) => \counter_PWM_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_PWM_reg(3 downto 1),
      S(0) => \counter_PWM[0]_i_3_n_0\
    );
\counter_PWM_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[8]_i_1_n_5\,
      Q => counter_PWM_reg(10),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[8]_i_1_n_4\,
      Q => counter_PWM_reg(11),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[12]_i_1_n_7\,
      Q => counter_PWM_reg(12),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_PWM_reg[8]_i_1_n_0\,
      CO(3) => \counter_PWM_reg[12]_i_1_n_0\,
      CO(2) => \counter_PWM_reg[12]_i_1_n_1\,
      CO(1) => \counter_PWM_reg[12]_i_1_n_2\,
      CO(0) => \counter_PWM_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_PWM_reg[12]_i_1_n_4\,
      O(2) => \counter_PWM_reg[12]_i_1_n_5\,
      O(1) => \counter_PWM_reg[12]_i_1_n_6\,
      O(0) => \counter_PWM_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_PWM_reg(15 downto 12)
    );
\counter_PWM_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[12]_i_1_n_6\,
      Q => counter_PWM_reg(13),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[12]_i_1_n_5\,
      Q => counter_PWM_reg(14),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[12]_i_1_n_4\,
      Q => counter_PWM_reg(15),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[16]_i_1_n_7\,
      Q => counter_PWM_reg(16),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_PWM_reg[12]_i_1_n_0\,
      CO(3) => \NLW_counter_PWM_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_PWM_reg[16]_i_1_n_1\,
      CO(1) => \counter_PWM_reg[16]_i_1_n_2\,
      CO(0) => \counter_PWM_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_PWM_reg[16]_i_1_n_4\,
      O(2) => \counter_PWM_reg[16]_i_1_n_5\,
      O(1) => \counter_PWM_reg[16]_i_1_n_6\,
      O(0) => \counter_PWM_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_PWM_reg(19 downto 16)
    );
\counter_PWM_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[16]_i_1_n_6\,
      Q => counter_PWM_reg(17),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[16]_i_1_n_5\,
      Q => counter_PWM_reg(18),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[16]_i_1_n_4\,
      Q => counter_PWM_reg(19),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[0]_i_2_n_6\,
      Q => counter_PWM_reg(1),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[0]_i_2_n_5\,
      Q => counter_PWM_reg(2),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[0]_i_2_n_4\,
      Q => counter_PWM_reg(3),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[4]_i_1_n_7\,
      Q => counter_PWM_reg(4),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_PWM_reg[0]_i_2_n_0\,
      CO(3) => \counter_PWM_reg[4]_i_1_n_0\,
      CO(2) => \counter_PWM_reg[4]_i_1_n_1\,
      CO(1) => \counter_PWM_reg[4]_i_1_n_2\,
      CO(0) => \counter_PWM_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_PWM_reg[4]_i_1_n_4\,
      O(2) => \counter_PWM_reg[4]_i_1_n_5\,
      O(1) => \counter_PWM_reg[4]_i_1_n_6\,
      O(0) => \counter_PWM_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_PWM_reg(7 downto 4)
    );
\counter_PWM_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[4]_i_1_n_6\,
      Q => counter_PWM_reg(5),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[4]_i_1_n_5\,
      Q => counter_PWM_reg(6),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[4]_i_1_n_4\,
      Q => counter_PWM_reg(7),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[8]_i_1_n_7\,
      Q => counter_PWM_reg(8),
      R => \counter_PWM[0]_i_1_n_0\
    );
\counter_PWM_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_PWM_reg[4]_i_1_n_0\,
      CO(3) => \counter_PWM_reg[8]_i_1_n_0\,
      CO(2) => \counter_PWM_reg[8]_i_1_n_1\,
      CO(1) => \counter_PWM_reg[8]_i_1_n_2\,
      CO(0) => \counter_PWM_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_PWM_reg[8]_i_1_n_4\,
      O(2) => \counter_PWM_reg[8]_i_1_n_5\,
      O(1) => \counter_PWM_reg[8]_i_1_n_6\,
      O(0) => \counter_PWM_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_PWM_reg(11 downto 8)
    );
\counter_PWM_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[8]_i_1_n_6\,
      Q => counter_PWM_reg(9),
      R => \counter_PWM[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DEMO_BUZZER_0_0 is
  port (
    clk : in STD_LOGIC;
    BTN_JY : in STD_LOGIC;
    BTN0 : in STD_LOGIC;
    BTN1 : in STD_LOGIC;
    ENABLE_MUSIC : in STD_LOGIC;
    FREQUENCY : in STD_LOGIC_VECTOR ( 19 downto 0 );
    BUZZER_PWM : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of DEMO_BUZZER_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DEMO_BUZZER_0_0 : entity is "DEMO_BUZZER_0_0,BUZZER,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DEMO_BUZZER_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of DEMO_BUZZER_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of DEMO_BUZZER_0_0 : entity is "BUZZER,Vivado 2020.1";
end DEMO_BUZZER_0_0;

architecture STRUCTURE of DEMO_BUZZER_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN DEMO_clk, INSERT_VIP 0";
begin
U0: entity work.DEMO_BUZZER_0_0_BUZZER
     port map (
      BTN0 => BTN0,
      BTN_JY => BTN_JY,
      BUZZER_PWM => BUZZER_PWM,
      ENABLE_MUSIC => ENABLE_MUSIC,
      FREQUENCY(19 downto 0) => FREQUENCY(19 downto 0),
      clk => clk
    );
end STRUCTURE;
