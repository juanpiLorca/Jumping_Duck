library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;

entity Counter is
    Generic ( FREQ_WIDTH : integer; 
              MAX_SAMPLES : integer ); 
    Port ( clk : in std_logic;
           freq : in std_logic_vector (FREQ_WIDTH - 1 downto 0); 
           counter_addr : out std_logic_vector (9 downto 0) );
end Counter;

architecture Behavioral of Counter is

constant master_clk : integer := 125_000_000;  
signal max_samples_to_count : std_logic_vector (9 downto 0) := std_logic_vector(to_unsigned((MAX_SAMPLES-1),10)); 
signal counter : std_logic_vector (9 downto 0) := (others => '0'); 


------------------ clk_div -----------------------------
component clock_divider is 
    port ( clk : in std_logic;
           div_val : in std_logic_vector(31 downto 0);   
           out_clk : out std_logic );
end component clock_divider;

----- sine wave frequency: freq = (fc/max_samples); where fc: clock frequency ---------------------------------
-- (max_samples-1) * to_integer(unsigned(freq))
signal clk_freq : std_logic_vector (FREQ_WIDTH - 1 downto 0) := (others => '0'); 
----- sine wave frequency: freq = (fc/max_samples); where fc: clock frequency ----------------------------------
signal division_value : std_logic_vector (FREQ_WIDTH - 1 downto 0) := (others => '0'); 
signal clk_counter : std_logic := '0'; 
------------------ clk_div -----------------------------


begin
------------------ clk_div mapping ---------------------
    clk_freq <= std_logic_vector(to_unsigned(max_samples * to_integer(unsigned(freq)), 32));
    division_value <= std_logic_vector(to_unsigned((master_clk) / 
                               (2 * to_integer(unsigned(clk_freq)) - 1), 32)); 
    clock_divider_inst : clock_divider
    Port map( clk => clk,
              div_val => division_value,
              out_clk => clk_counter );
------------------ clk_div mapping ---------------------

    process(clk_counter)
        begin 
            if rising_edge(clk_counter) then 
                    if (counter = max_samples_to_count) then 
                        counter <= "0000000000"; 
                    else
                        counter <= counter + "0000000001"; 
                    end if;  
            end if; 
    end process; 
    
counter_addr <= counter; 

end Behavioral;