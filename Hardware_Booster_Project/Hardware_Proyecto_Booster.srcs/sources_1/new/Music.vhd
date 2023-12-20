library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;

entity Music is
    Generic ( FREQ_WIDTH : integer := 20; 
              MAX_SAMPLES : integer := 8 ); 
    Port ( clk : in std_logic;
           rst : in std_logic; 
           freq : out std_logic_vector (FREQ_WIDTH - 1 downto 0) ); 
           
end Music;

architecture Behavioral of Music is
-- RAM: 
type ram_array is array (0 to 7) of std_logic_vector(FREQ_WIDTH - 1 downto 0);
signal ram_frequencies : ram_array := (
    x"5C7A4", x"7B8D9", x"6E2BF", x"8AB76",
    x"5C7A4", x"7B8D9", x"49895", x"8AB76"
);
-- 5C7A4 := 330 Hz
-- 7B8D9 := 247 Hz
-- 6E2BF := 277 Hz
-- 8AB76 := 220 Hz
-- 49895 := 415 Hz
signal freq_out : std_logic_vector(FREQ_WIDTH - 1 downto 0); 

-- Counter signals: 
constant master_clk : integer := 125_000_000;  
signal max_samples_to_count : std_logic_vector (2 downto 0) := std_logic_vector(to_unsigned((MAX_SAMPLES-1),3)); 
signal counter : std_logic_vector (2 downto 0) := (others => '0'); 

------------------ clk_div -----------------------------
component clock_divider is 
    port ( clk : in std_logic;
           div_val : in std_logic_vector(31 downto 0);   
           out_clk : out std_logic );
end component clock_divider;
-- Clock 5 [Hz]:
constant clk_freq : integer := 5;
----- sine wave frequency: freq = (fc/max_samples); where fc: clock frequency ----------------------------------
signal division_value : std_logic_vector (31 downto 0) := (others => '0'); 
signal clk_counter : std_logic := '0'; 
------------------ clk_div -----------------------------

begin
------------------ clk_div mapping ------------------------------------------------
    division_value <= std_logic_vector(to_unsigned(master_clk/(2*clk_freq-1), 32)); 
    clock_divider_inst : clock_divider
    Port map( clk => clk,
              div_val => division_value,
              out_clk => clk_counter );
------------------ clk_div mapping ------------------------------------------------
    process(clk_counter)
        begin 
            if rising_edge(clk_counter) then 
                if (rst = '1') then 
                    counter <= "000";
                else 
                    if (counter = max_samples_to_count) then 
                        counter <= "000"; 
                    else
                        counter <= counter + "001"; 
                    end if;  
                end if; 
            end if; 
    end process; 
    
    process(clk)
    begin 
        if (rising_edge(clk)) then 
            freq_out <= ram_frequencies(to_integer(unsigned(counter))); 
        end if; 
    end process;

freq <= freq_out; 

end Behavioral;
