library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity BUZZER is
    Port (clk: in std_logic;
          --LightInt : std_logic; 
          ENABLE_MUSIC : std_logic; 
          FREQUENCY : in std_logic_vector (19 downto 0);
          BUZZER_PWM: out std_logic
    );
end BUZZER;

architecture Behavioral of BUZZER is
signal counter_PWM : unsigned(19 downto 0);
signal AMPLITUDE : unsigned(19 downto 0);
-- Clock is 125Mhz 
signal FRECUENCIA : unsigned(19 downto 0); 
signal BUZZER_VAL : std_logic := '0'; 

begin

FRECUENCIA <= UNSIGNED(FREQUENCY); 

    process (clk)
    begin
    IF (rising_edge(clk)) then
        if (counter_PWM <= FRECUENCIA) then
            counter_PWM <= counter_PWM + 1; 
        else
            counter_PWM <= (others => '0');
        end if;
    END IF;
    END PROCESS;
    
-- 50% duty dycle for each frequency           
AMPLITUDE <= (shift_right(FRECUENCIA,1));

BUZZER_VAL <= ('1' and ENABLE_MUSIC) when (AMPLITUDE >= counter_PWM) else '0';
BUZZER_PWM <= BUZZER_VAL;-- and LightInt; 

end Behavioral;
