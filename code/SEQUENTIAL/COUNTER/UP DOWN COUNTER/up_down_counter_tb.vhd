library ieee;
use ieee.std_logic_1164.all;

entity up_down_counter_tb is
end up_down_counter_tb;

architecture up_down_counter_tb_arc of up_down_counter_tb is

component sync_up_down_counter is
	port (
		clock,set,clr,dir : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end component;

signal clock1,set1,clr1,dir1: std_logic := '0';
signal o1: std_logic_vector(3 downto 0);

begin

DUT: sync_up_down_counter port map (clock1,set1,clr1,dir1,o1);

clock1 <= not clock1 after 5 ns;

process
begin

clr1 <= '1';
dir1 <= '1';
wait for 10 ns;

clr1 <= '0';
wait for 80 ns;

dir1 <= '0';
wait for 80 ns;

end process;

end up_down_counter_tb_arc;
