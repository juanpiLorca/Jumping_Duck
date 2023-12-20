library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;

entity SPWM is
    Generic ( AXI_DATA_WIDTH : integer := 32; 
              FREQ_WIDTH : integer := 32; 
              MAX_VALUE : integer := 255; 
              MAX_SAMPLES : integer := 1024; 
              multiplier : integer := 20 ); 
    Port ( clk : in std_logic; 
           buffer_signal : in std_logic_vector(axi_data_width - 1 downto 0); 
           pwm_out : out std_logic );
end SPWM;

architecture Behavioral of SPWM is
-- Define a 880 [Hz] tone: 
signal freq : std_logic_vector(freq_width - 1 downto 0) := std_logic_vector(to_unsigned(880, freq_width)); 
signal tone : std_logic_vector(freq_width - 1 downto 0) := (others => '0'); 
signal pwm_signal : std_logic := '0'; 
-- We define 3 PWM signals.
signal color : std_logic_vector(2 downto 0) := (others => '0'); 

    component Local_Oscillator is 
        Generic ( FREQ_WIDTH : integer; 
                  MAX_SAMPLES : integer ); 
        Port ( clk : in std_logic;
               freq : in std_logic_vector (FREQ_WIDTH - 1 downto 0);  
               sine_wave : out std_logic_vector (7 downto 0) );
    end component; 
signal sine_wave_value : std_logic_vector (7 downto 0) := (others => '0');
    
    component Comp is 
        Generic ( FREQ_WIDTH : integer;
                  Max_value : integer;  
                  MAX_SAMPLES : integer;
                  multiplier : integer ); 
        Port ( clk : in std_logic; 
               freq : in std_logic_vector (FREQ_WIDTH - 1 downto 0);
               sine_wave_value : in std_logic_vector (7 downto 0); 
               pwm_out : out std_logic );
    end component;  

begin           

tone <= freq; 
 
-- local_oscillator inst: 
    local_oscillator_inst : Local_Oscillator
        Generic map ( FREQ_WIDTH => FREQ_WIDTH, 
                      MAX_SAMPLES => MAX_SAMPLES )
        Port map ( clk => clk, 
                   freq => freq, 
                   sine_wave => sine_wave_value ); 

-- comparator inst; 
    comparator_inst : Comp
        Generic map ( FREQ_WIDTH => FREQ_WIDTH, 
                      MAX_VALUE => MAX_VALUE,
                      MAX_SAMPLES => MAX_SAMPLES, 
                      multiplier => multiplier )
        Port map ( clk => clk, 
                   freq => freq, 
                   sine_wave_value => sine_wave_value, 
                   pwm_out => pwm_signal ); 
                   

pwm_out <= pwm_signal when (buffer_signal = X"FFFFFFFF") else '0'; 


end Behavioral;
    