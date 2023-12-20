library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sine_Memory is
    Port ( clk : in std_logic; 
           enable : in std_logic := '1'; 
           write_enable : in std_logic := '0'; 
           addr : in std_logic_vector (9 downto 0);
           data_in : in std_logic_vector (7 downto 0) := (others => '0'); 
           data_out : out std_logic_vector (7 downto 0) ); 
end Sine_Memory;

architecture Behavioral of Sine_Memory is 
    component Sine_Wave_RAM is
        Port ( clka : in std_logic;
                ena : in std_logic;
                wea : in std_logic;
                addra : in std_logic_vector(9 downto 0);
                dina : in std_logic_vector(7 downto 0);
                douta : out std_logic_vector(7 downto 0) );
    end component; 

begin
    -- Memory inst: 
    sine_wave_ram_inst : Sine_Wave_RAM
    Port map ( clka => clk,
               ena => enable,
               wea => write_enable,
               addra => addr,
               dina => data_in, 
               douta => data_out );

end Behavioral;