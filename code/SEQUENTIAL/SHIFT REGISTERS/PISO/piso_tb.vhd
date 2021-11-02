library ieee;
use ieee.std_logic_1164.all;

entity piso_tb is
end piso_tb;

architecture piso_tb_arc of piso_tb is

component piso is
	port (
		i: in std_logic_vector(3 downto 0);
		shlo,clock,set,clr : in std_logic;
		o: inout std_logic
	);
end component;

signal i1: std_logic_vector(3 downto 0) := "0000";
signal shlo1,clock1,set1,clr1 : std_logic := '0';
signal o1: std_logic;

begin

DUT: piso port map (i1,shlo1,clock1,set1,clr1,o1);

clock1 <= not clock1 after 5 ns;

process
begin

clr1 <= '1';
wait for 10 ns;

clr1 <= '0';
shlo1 <= '0';
i1 <= "1011";
wait for 10 ns;

shlo1 <= '1';
wait for 30 ns;

end process;

end piso_tb_arc;