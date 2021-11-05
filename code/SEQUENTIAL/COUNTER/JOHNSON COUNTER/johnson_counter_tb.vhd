library ieee;
use ieee.std_logic_1164.all;

entity johnson_counter_tb is
end johnson_counter_tb;

architecture johnson_counter_tb_arc of johnson_counter_tb is

component johnson_counter is
	port (
		clock,clr : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end component;

signal clock1,clr1 : std_logic := '0';
signal o1: std_logic_vector(3 downto 0);

begin

DUT: johnson_counter port map (clock1,clr1,o1);

clock1 <= not clock1 after 5 ns;

process 
begin

clr1 <= '1';
wait for 10 ns;

clr1 <= '0';
wait for 80 ns;
end process;

end johnson_counter_tb_arc;
