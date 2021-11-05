library ieee;
use ieee.std_logic_1164.all;

entity ring_counter_tb is
end ring_counter_tb;

architecture ring_counter_tb_arc of ring_counter_tb is

component ring_counter is
	port (
		clock,ini : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end component;

signal clock1,ini1: std_logic := '0';
signal o1: std_logic_vector(3 downto 0);

begin

DUT: ring_counter port map (clock1,ini1,o1);

clock1 <= not clock1 after 5 ns;

process
begin

ini1 <= '1';
wait for 10 ns;

ini1 <= '0';
wait for 50 ns;

end process;

end ring_counter_tb_arc;
