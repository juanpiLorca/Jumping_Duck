library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;

entity Comp is        
    Generic ( FREQ_WIDTH : integer; 
              MAX_VALUE : integer;
              MAX_SAMPLES : integer; 
              multiplier : integer := 20); 
    Port ( clk : in std_logic; 
           freq : in std_logic_vector (FREQ_WIDTH - 1 downto 0);
           sine_wave_value : in std_logic_vector (7 downto 0); 
           pwm_out : out std_logic );
end Comp;

architecture Behavioral of Comp is

constant master_clk : integer := 125_000_000; 
--------------------------------------------------------------------------------------
-- Relative frequency stands for the clock counter frequency that we need to have 
-- in order to get a shorter period for the saw signal that comes out of the counter. 
-- For example: if we want to have a counter 25 times faster than the sine wave: 
-- GENERIC: multiplier = 25 ==> clock_freq = 2^10 * desired_freq (freq)
signal relative_freq : std_logic_vector (FREQ_WIDTH - 1 downto 0) := (others => '0'); 
--------------------------------------------------------------------------------------
signal max_counter_value : std_logic_vector (7 downto 0) := std_logic_vector(to_unsigned((max_value - 1), 8)); 
signal counter : std_logic_vector (7 downto 0) := (others => '0'); 

------------------ clk_div -----------------------------
component clock_divider is 
    port ( clk : in std_logic;
           div_val : in std_logic_vector (31 downto 0);   
           out_clk : out std_logic );
end component clock_divider;
----- sine wave frequency: freq = (fc/max_samples); where fc: clock frequency ---------------------------------
-- max_samples * to_integer(unsigned(freq))
signal clk_freq : std_logic_vector (FREQ_WIDTH - 1 downto 0) := (others => '0'); 
----- sine wave frequency: freq = (fc/max_samples); where fc: clock frequency ----------------------------------
signal division_value : std_logic_vector (FREQ_WIDTH - 1 downto 0) := (others => '0'); 
signal clk_counter : std_logic := '0'; 
------------------ clk_div -----------------------------

begin
-- Frequency mapping: 
    clk_freq <= std_logic_vector(to_unsigned(max_samples * to_integer(unsigned(freq)), FREQ_WIDTH));
    relative_freq <= std_logic_vector(to_unsigned(multiplier * to_integer(unsigned(clk_freq)), FREQ_WIDTH));
-- Division value for clock divider mapping: 
    division_value <= std_logic_vector(to_unsigned((master_clk) / 
                               (2 * to_integer(unsigned(relative_freq)) - 1), FREQ_WIDTH)); 
                               
------------------ clk_div mapping ---------------------  
    clock_divider_inst : clock_divider
    Port map( clk => clk,
              div_val => division_value,
              out_clk => clk_counter );
------------------ clk_div mapping ---------------------

 process(clk_counter)
        begin 
            if rising_edge(clk_counter) then 
                    if (counter = max_counter_value) then 
                        counter <= "00000000"; 
                    else
                        counter <= counter + "00000001"; 
                    end if;  
            end if; 
    end process; 

pwm_out <= '1' when (sine_wave_value >= counter) else '0'; 
end Behavioral;