library ieee;
use ieee.std_logic_1164.all;

entity siso_tb is
end siso_tb;

architecture siso_tb_arc of siso_tb is

component siso is
	port (
		i,clock,set,clr : in std_logic;
		o: inout std_logic
	);
end component;

signal i1,clock1,set1,clr1: std_logic := '0';
signal o1: std_logic;

begin

siso1: siso port map (i1,clock1,set1,clr1,o1);

clock1 <= not clock1 after 5 ns;

process
begin

clr1 <= '1';
wait for 10 ns;

clr1 <= '0';
i1 <= '1';
wait for 10 ns;

i1 <= '0';
wait for 10 ns;

i1 <= '1';
wait for 10 ns;

i1 <= '1';
wait for 10 ns;

i1 <= '0';
wait for 40 ns;

end process;

end siso_tb_arc;