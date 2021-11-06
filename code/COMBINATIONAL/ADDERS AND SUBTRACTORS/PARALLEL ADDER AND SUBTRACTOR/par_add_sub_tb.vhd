library ieee;
use ieee.std_logic_1164.all;

entity par_add_sub_tb is
end par_add_sub_tb;

architecture par_add_sub_tb_arc of par_add_sub_tb is

component par_add_sub is
	port (
		a,b: in std_logic_vector(3 downto 0);
		ctrl: in std_logic;
		cout: out std_logic;
		o: out std_logic_vector(3 downto 0)
	);
end component;

signal a1,b1: std_logic_vector(3 downto 0) := "0000";
signal ctrl1: std_logic := '0';
signal cout1: std_logic;
signal o1: std_logic_vector(3 downto 0);

begin

DUT: par_add_sub port map (a1,b1,ctrl1,cout1,o1);

process
begin

a1 <= "1111";
b1 <= "1001";
ctrl1 <= '0';
wait for 10 ns;

a1 <= "1111";
b1 <= "1100";
wait for 10 ns;

a1 <= "0110";
b1 <= "1111";
ctrl1 <= '1';
wait for 10 ns;

a1 <= "0101";
b1 <= "0101";
wait for 10 ns;

end process;

end par_add_sub_tb_arc;