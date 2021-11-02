library ieee;
use ieee.std_logic_1164.all;

entity pipo_tb is
end pipo_tb;

architecture pipo_tb_arc of pipo_tb is

component pipo is
	port (
		i: in std_logic_vector(3 downto 0);
		clock,set,clr: in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end component;

signal i1: std_logic_vector(3 downto 0) := "0000";
signal clock1,set1,clr1: std_logic := '0';
signal o1: std_logic_vector(3 downto 0);

begin

DUT: pipo port map (i1,clock1,set1,clr1,o1);

clock1 <= not clock1 after 5 ns;

process
begin

clr1 <= '1';
wait for 10 ns;

clr1 <= '0';
i1 <= "1011";
wait for 10 ns;

end process;

end pipo_tb_arc;
