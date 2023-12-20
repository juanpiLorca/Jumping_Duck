-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Dec  9 11:14:21 2023
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
    clk : in STD_LOGIC;
    ENABLE_MUSIC : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DEMO_BUZZER_0_0_BUZZER : entity is "BUZZER";
end DEMO_BUZZER_0_0_BUZZER;

architecture STRUCTURE of DEMO_BUZZER_0_0_BUZZER is
  signal \BUZZER_VAL1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__0_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__0_n_1\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__0_n_2\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__0_n_3\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__1_n_2\ : STD_LOGIC;
  signal \BUZZER_VAL1_carry__1_n_3\ : STD_LOGIC;
  signal BUZZER_VAL1_carry_i_1_n_0 : STD_LOGIC;
  signal BUZZER_VAL1_carry_i_2_n_0 : STD_LOGIC;
  signal BUZZER_VAL1_carry_i_3_n_0 : STD_LOGIC;
  signal BUZZER_VAL1_carry_i_4_n_0 : STD_LOGIC;
  signal BUZZER_VAL1_carry_i_5_n_0 : STD_LOGIC;
  signal BUZZER_VAL1_carry_i_6_n_0 : STD_LOGIC;
  signal BUZZER_VAL1_carry_i_7_n_0 : STD_LOGIC;
  signal BUZZER_VAL1_carry_i_8_n_0 : STD_LOGIC;
  signal BUZZER_VAL1_carry_n_0 : STD_LOGIC;
  signal BUZZER_VAL1_carry_n_1 : STD_LOGIC;
  signal BUZZER_VAL1_carry_n_2 : STD_LOGIC;
  signal BUZZER_VAL1_carry_n_3 : STD_LOGIC;
  signal clear : STD_LOGIC;
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
  signal \counter_PWM[0]_i_2_n_0\ : STD_LOGIC;
  signal counter_PWM_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \counter_PWM_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_PWM_reg[0]_i_1_n_7\ : STD_LOGIC;
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
  signal NLW_BUZZER_VAL1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BUZZER_VAL1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_BUZZER_VAL1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_BUZZER_VAL1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_counter_PWM1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_PWM1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_PWM1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_PWM1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_PWM_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of BUZZER_VAL1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \BUZZER_VAL1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \BUZZER_VAL1_carry__1\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_PWM_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_PWM_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_PWM_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_PWM_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_PWM_reg[8]_i_1\ : label is 11;
begin
BUZZER_PWM_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \BUZZER_VAL1_carry__1_n_2\,
      I1 => ENABLE_MUSIC,
      O => BUZZER_PWM
    );
BUZZER_VAL1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => BUZZER_VAL1_carry_n_0,
      CO(2) => BUZZER_VAL1_carry_n_1,
      CO(1) => BUZZER_VAL1_carry_n_2,
      CO(0) => BUZZER_VAL1_carry_n_3,
      CYINIT => '1',
      DI(3) => BUZZER_VAL1_carry_i_1_n_0,
      DI(2) => BUZZER_VAL1_carry_i_2_n_0,
      DI(1) => BUZZER_VAL1_carry_i_3_n_0,
      DI(0) => BUZZER_VAL1_carry_i_4_n_0,
      O(3 downto 0) => NLW_BUZZER_VAL1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => BUZZER_VAL1_carry_i_5_n_0,
      S(2) => BUZZER_VAL1_carry_i_6_n_0,
      S(1) => BUZZER_VAL1_carry_i_7_n_0,
      S(0) => BUZZER_VAL1_carry_i_8_n_0
    );
\BUZZER_VAL1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => BUZZER_VAL1_carry_n_0,
      CO(3) => \BUZZER_VAL1_carry__0_n_0\,
      CO(2) => \BUZZER_VAL1_carry__0_n_1\,
      CO(1) => \BUZZER_VAL1_carry__0_n_2\,
      CO(0) => \BUZZER_VAL1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \BUZZER_VAL1_carry__0_i_1_n_0\,
      DI(2) => \BUZZER_VAL1_carry__0_i_2_n_0\,
      DI(1) => \BUZZER_VAL1_carry__0_i_3_n_0\,
      DI(0) => \BUZZER_VAL1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_BUZZER_VAL1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \BUZZER_VAL1_carry__0_i_5_n_0\,
      S(2) => \BUZZER_VAL1_carry__0_i_6_n_0\,
      S(1) => \BUZZER_VAL1_carry__0_i_7_n_0\,
      S(0) => \BUZZER_VAL1_carry__0_i_8_n_0\
    );
\BUZZER_VAL1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(15),
      I1 => counter_PWM_reg(14),
      I2 => counter_PWM_reg(15),
      I3 => FREQUENCY(16),
      O => \BUZZER_VAL1_carry__0_i_1_n_0\
    );
\BUZZER_VAL1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(13),
      I1 => counter_PWM_reg(12),
      I2 => counter_PWM_reg(13),
      I3 => FREQUENCY(14),
      O => \BUZZER_VAL1_carry__0_i_2_n_0\
    );
\BUZZER_VAL1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(11),
      I1 => counter_PWM_reg(10),
      I2 => counter_PWM_reg(11),
      I3 => FREQUENCY(12),
      O => \BUZZER_VAL1_carry__0_i_3_n_0\
    );
\BUZZER_VAL1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(9),
      I1 => counter_PWM_reg(8),
      I2 => counter_PWM_reg(9),
      I3 => FREQUENCY(10),
      O => \BUZZER_VAL1_carry__0_i_4_n_0\
    );
\BUZZER_VAL1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(15),
      I1 => counter_PWM_reg(14),
      I2 => FREQUENCY(16),
      I3 => counter_PWM_reg(15),
      O => \BUZZER_VAL1_carry__0_i_5_n_0\
    );
\BUZZER_VAL1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(13),
      I1 => counter_PWM_reg(12),
      I2 => FREQUENCY(14),
      I3 => counter_PWM_reg(13),
      O => \BUZZER_VAL1_carry__0_i_6_n_0\
    );
\BUZZER_VAL1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(11),
      I1 => counter_PWM_reg(10),
      I2 => FREQUENCY(12),
      I3 => counter_PWM_reg(11),
      O => \BUZZER_VAL1_carry__0_i_7_n_0\
    );
\BUZZER_VAL1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(9),
      I1 => counter_PWM_reg(8),
      I2 => FREQUENCY(10),
      I3 => counter_PWM_reg(9),
      O => \BUZZER_VAL1_carry__0_i_8_n_0\
    );
\BUZZER_VAL1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \BUZZER_VAL1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_BUZZER_VAL1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \BUZZER_VAL1_carry__1_n_2\,
      CO(0) => \BUZZER_VAL1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \BUZZER_VAL1_carry__1_i_1_n_0\,
      DI(0) => \BUZZER_VAL1_carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_BUZZER_VAL1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \BUZZER_VAL1_carry__1_i_3_n_0\,
      S(0) => \BUZZER_VAL1_carry__1_i_4_n_0\
    );
\BUZZER_VAL1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => counter_PWM_reg(18),
      I1 => FREQUENCY(19),
      I2 => counter_PWM_reg(19),
      O => \BUZZER_VAL1_carry__1_i_1_n_0\
    );
\BUZZER_VAL1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(17),
      I1 => counter_PWM_reg(16),
      I2 => counter_PWM_reg(17),
      I3 => FREQUENCY(18),
      O => \BUZZER_VAL1_carry__1_i_2_n_0\
    );
\BUZZER_VAL1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => FREQUENCY(19),
      I1 => counter_PWM_reg(18),
      I2 => counter_PWM_reg(19),
      O => \BUZZER_VAL1_carry__1_i_3_n_0\
    );
\BUZZER_VAL1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(17),
      I1 => counter_PWM_reg(16),
      I2 => FREQUENCY(18),
      I3 => counter_PWM_reg(17),
      O => \BUZZER_VAL1_carry__1_i_4_n_0\
    );
BUZZER_VAL1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(7),
      I1 => counter_PWM_reg(6),
      I2 => counter_PWM_reg(7),
      I3 => FREQUENCY(8),
      O => BUZZER_VAL1_carry_i_1_n_0
    );
BUZZER_VAL1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(5),
      I1 => counter_PWM_reg(4),
      I2 => counter_PWM_reg(5),
      I3 => FREQUENCY(6),
      O => BUZZER_VAL1_carry_i_2_n_0
    );
BUZZER_VAL1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(3),
      I1 => counter_PWM_reg(2),
      I2 => counter_PWM_reg(3),
      I3 => FREQUENCY(4),
      O => BUZZER_VAL1_carry_i_3_n_0
    );
BUZZER_VAL1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => FREQUENCY(1),
      I1 => counter_PWM_reg(0),
      I2 => counter_PWM_reg(1),
      I3 => FREQUENCY(2),
      O => BUZZER_VAL1_carry_i_4_n_0
    );
BUZZER_VAL1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(7),
      I1 => counter_PWM_reg(6),
      I2 => FREQUENCY(8),
      I3 => counter_PWM_reg(7),
      O => BUZZER_VAL1_carry_i_5_n_0
    );
BUZZER_VAL1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(5),
      I1 => counter_PWM_reg(4),
      I2 => FREQUENCY(6),
      I3 => counter_PWM_reg(5),
      O => BUZZER_VAL1_carry_i_6_n_0
    );
BUZZER_VAL1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(3),
      I1 => counter_PWM_reg(2),
      I2 => FREQUENCY(4),
      I3 => counter_PWM_reg(3),
      O => BUZZER_VAL1_carry_i_7_n_0
    );
BUZZER_VAL1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => FREQUENCY(1),
      I1 => counter_PWM_reg(0),
      I2 => FREQUENCY(2),
      I3 => counter_PWM_reg(1),
      O => BUZZER_VAL1_carry_i_8_n_0
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
      O(3) => \NLW_counter_PWM1_carry__1_O_UNCONNECTED\(3),
      O(2) => clear,
      O(1 downto 0) => \NLW_counter_PWM1_carry__1_O_UNCONNECTED\(1 downto 0),
      S(3 downto 2) => B"01",
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
\counter_PWM[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_PWM_reg(0),
      O => \counter_PWM[0]_i_2_n_0\
    );
\counter_PWM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[0]_i_1_n_7\,
      Q => counter_PWM_reg(0),
      R => clear
    );
\counter_PWM_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_PWM_reg[0]_i_1_n_0\,
      CO(2) => \counter_PWM_reg[0]_i_1_n_1\,
      CO(1) => \counter_PWM_reg[0]_i_1_n_2\,
      CO(0) => \counter_PWM_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_PWM_reg[0]_i_1_n_4\,
      O(2) => \counter_PWM_reg[0]_i_1_n_5\,
      O(1) => \counter_PWM_reg[0]_i_1_n_6\,
      O(0) => \counter_PWM_reg[0]_i_1_n_7\,
      S(3 downto 1) => counter_PWM_reg(3 downto 1),
      S(0) => \counter_PWM[0]_i_2_n_0\
    );
\counter_PWM_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[8]_i_1_n_5\,
      Q => counter_PWM_reg(10),
      R => clear
    );
\counter_PWM_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[8]_i_1_n_4\,
      Q => counter_PWM_reg(11),
      R => clear
    );
\counter_PWM_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[12]_i_1_n_7\,
      Q => counter_PWM_reg(12),
      R => clear
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
      R => clear
    );
\counter_PWM_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[12]_i_1_n_5\,
      Q => counter_PWM_reg(14),
      R => clear
    );
\counter_PWM_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[12]_i_1_n_4\,
      Q => counter_PWM_reg(15),
      R => clear
    );
\counter_PWM_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[16]_i_1_n_7\,
      Q => counter_PWM_reg(16),
      R => clear
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
      R => clear
    );
\counter_PWM_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[16]_i_1_n_5\,
      Q => counter_PWM_reg(18),
      R => clear
    );
\counter_PWM_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[16]_i_1_n_4\,
      Q => counter_PWM_reg(19),
      R => clear
    );
\counter_PWM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[0]_i_1_n_6\,
      Q => counter_PWM_reg(1),
      R => clear
    );
\counter_PWM_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[0]_i_1_n_5\,
      Q => counter_PWM_reg(2),
      R => clear
    );
\counter_PWM_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[0]_i_1_n_4\,
      Q => counter_PWM_reg(3),
      R => clear
    );
\counter_PWM_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[4]_i_1_n_7\,
      Q => counter_PWM_reg(4),
      R => clear
    );
\counter_PWM_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_PWM_reg[0]_i_1_n_0\,
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
      R => clear
    );
\counter_PWM_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[4]_i_1_n_5\,
      Q => counter_PWM_reg(6),
      R => clear
    );
\counter_PWM_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[4]_i_1_n_4\,
      Q => counter_PWM_reg(7),
      R => clear
    );
\counter_PWM_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_PWM_reg[8]_i_1_n_7\,
      Q => counter_PWM_reg(8),
      R => clear
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
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DEMO_BUZZER_0_0 is
  port (
    clk : in STD_LOGIC;
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
      BUZZER_PWM => BUZZER_PWM,
      ENABLE_MUSIC => ENABLE_MUSIC,
      FREQUENCY(19 downto 0) => FREQUENCY(19 downto 0),
      clk => clk
    );
end STRUCTURE;
