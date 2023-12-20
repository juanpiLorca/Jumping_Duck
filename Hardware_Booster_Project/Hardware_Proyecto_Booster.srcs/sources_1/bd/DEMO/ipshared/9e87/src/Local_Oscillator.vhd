library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;

entity Local_Oscillator is
    Generic ( FREQ_WIDTH : integer; 
              MAX_SAMPLES : integer := 1023 ); 
    Port ( clk : in std_logic;
           freq : in std_logic_vector (FREQ_WIDTH - 1 downto 0);  
           sine_wave : out std_logic_vector (7 downto 0) );
           
end Local_Oscillator;

architecture Behavioral of Local_Oscillator is

    component Counter is
        Generic ( FREQ_WIDTH : integer; 
                  MAX_SAMPLES : integer ); 
        Port ( clk : in std_logic;
               freq : in std_logic_vector (FREQ_WIDTH - 1 downto 0); 
               counter_addr : out std_logic_vector (9 downto 0) ); 
    end component; 
    
    component Sine_Memory is 
        Port ( clk : std_logic; 
               enable : in std_logic; 
               write_enable : in std_logic; 
               addr : in std_logic_vector (9 downto 0); 
               data_in : in std_logic_vector (7 downto 0); 
               data_out : out std_logic_vector (7 downto 0) ); 
    end component; 

signal counter_addr : std_logic_vector (9 downto 0) := (others => '0');
signal enable : std_logic := '1';
signal write_enable : std_logic := '0'; 
signal data_in : std_logic_vector (7 downto 0) := (others => '0'); 

begin
-- Counter inst: 
    counter_inst : Counter 
        Generic map ( FREQ_WIDTH => FREQ_WIDTH,
                      MAX_SAMPLES => MAX_SAMPLES )
        Port map ( clk => clk,
                   freq => freq, 
                   counter_addr => counter_addr ); 
                   
-- Memory_inst: 
    sine_wave_memory_inst : Sine_Memory
        Port map ( clk => clk,
                   enable => enable, 
                   write_enable => write_enable, 
                   addr => counter_addr, 
                   data_in => data_in, 
                   data_out => sine_wave );
                   
end Behavioral;