library ieee;
use ieee.std_logic_1164.all;

entity wallace_tree_mul_tb is
end wallace_tree_mul_tb;

architecture wallace_tree_mul_tb_arc of wallace_tree_mul_tb is

component wallace_tree_mul is
	port (
		a,b : in std_logic_vector(3 downto 0);
		o : out std_logic_vector(7 downto 0)
	);
end component;

signal a1,b1: std_logic_vector(3 downto 0);
signal o1: std_logic_vector(7 downto 0);

begin

DUT: wallace_tree_mul port map (a1,b1,o1);

process
begin

a1 <= "1001";
b1 <= "0110";
wait for 10 ns;

a1 <= "1101";
b1 <= "1011";
wait for 10 ns;

a1 <= "0100";
b1 <= "0010";
wait for 10 ns;

a1 <= "0001";
b1 <= "0101";
wait for 10 ns;

a1 <= "1010";
b1 <= "0101";
wait for 10 ns;

a1 <= "1101";
b1 <= "0000";
wait for 10 ns;

a1 <= "1111";
b1 <= "1111";
wait for 10 ns;

end process;

end wallace_tree_mul_tb_arc;