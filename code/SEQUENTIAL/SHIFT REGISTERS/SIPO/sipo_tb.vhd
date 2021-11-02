library ieee;
use ieee.std_logic_1164.all;

entity sipo_tb is
end sipo_tb;

architecture sipo_tb_arc of sipo_tb is

component sipo is
	port (
		i,clock,set,clr : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end component;

signal i1,clock1,set1,clr1: std_logic := '0';
signal o1: std_logic_vector(3 downto 0);

begin

sipo1: sipo port map (i1,clock1,set1,clr1,o1);

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
wait for 20 ns;

end process;

end sipo_tb_arc;