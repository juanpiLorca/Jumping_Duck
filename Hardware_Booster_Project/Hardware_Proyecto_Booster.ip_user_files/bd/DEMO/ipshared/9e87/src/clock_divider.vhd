library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all; 


entity clock_divider is

    Port ( clk : in std_logic; 
           div_val : in std_logic_vector (31 downto 0); 
           out_clk : out std_logic );
           
end clock_divider; 
    

architecture Behavioral of clock_divider is
    -- output: 
    signal div_clk : std_logic := '0'; 
    -- counter: 
    signal counter_clk : std_logic_vector(31 downto 0) := (others => '0');    
    -- enable: 
    signal enable_clk : std_logic := '0';


begin
    process(clk) 
    begin 
        if (rising_edge(clk)) then
            if (counter_clk = div_val) then 
                counter_clk <= (others => '0');
                if (enable_clk = '0') then 
                    enable_clk <= '1'; 
                else 
                    enable_clk <= '0'; 
                end if; 
            else 
                counter_clk <= counter_clk + '1'; 
            end if; 
        end if; 
    end process;  

    process(clk)
    begin 
        if (rising_edge(clk)) then 
            if (enable_clk = '0') then 
                out_clk <= NOT div_clk; 
            else 
                out_clk <= div_clk; 
            end if; 
        end if; 
    end process; 

end Behavioral;
