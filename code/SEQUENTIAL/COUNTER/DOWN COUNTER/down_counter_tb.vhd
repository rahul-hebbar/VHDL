library ieee;
use ieee.std_logic_1164.all;

entity down_counter_tb is
end down_counter_tb;

architecture down_counter_tb_arc of down_counter_tb is

component sync_down_counter is
	port (
		clock,set,clr : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end component;

signal clock1,set1,clr1 : std_logic := '0';
signal o1: std_logic_vector(3 downto 0);

begin

DUT: sync_down_counter port map (clock1,set1,clr1,o1);

clock1 <= not clock1 after 5 ns;

process
begin

set1 <= '1';
wait for 10 ns;

set1 <= '0';
wait for 160 ns;

end process;

end down_counter_tb_arc;