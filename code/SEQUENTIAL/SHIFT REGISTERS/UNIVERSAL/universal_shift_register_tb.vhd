library ieee;
use ieee.std_logic_1164.all;

entity universal_shift_register_tb is
end universal_shift_register_tb;

architecture universal_shift_register_tb_arc of universal_shift_register_tb is

component universal_shift_register is
	port (
		dr,dl,clock,s0,s1,clr,set : in std_logic;
		dp: in std_logic_vector(3 downto 0);
		o: inout std_logic_vector(3 downto 0)
	);
end component;

signal dr1,dl1,clock1,s0,s1,clr1,set1 : std_logic := '0';
signal dp1: std_logic_vector(3 downto 0) := "0000";
signal o1: std_logic_vector(3 downto 0);

begin

DUT: universal_shift_register port map (dr1,dl1,clock1,s0,s1,clr1,set1,dp1,o1);

clock1 <= not clock1 after 5 ns;

process
begin

clr1 <= '1';
wait for 10 ns;

clr1 <= '0';
s0 <= '1';
s1 <= '0';
dr1 <= '1';
wait for 10 ns;

dr1 <= '1';
wait for 10 ns;

dr1 <= '0';
wait for 10 ns;

dr1 <= '1';
wait for 10 ns;

dr1 <= '0';
wait for 30 ns;

clr1 <= '1';
wait for 10 ns;

clr1 <= '0';
s0 <= '1';
s1 <= '1';
dp1 <= "1101";
wait for 20 ns;

clr1 <= '1';
wait for 10 ns;

clr1 <= '0';
dl1 <= '1';
s0 <= '0';
s1 <= '1';
wait for 10 ns;

dl1 <= '0';
wait for 10 ns;

dl1 <= '1';
wait for 10 ns;

dl1 <= '1';
wait for 10 ns;

dl1 <= '0';
wait for 30 ns;

s0 <= '0';
s1 <= '0';
wait for 20 ns;

end process;

end universal_shift_register_tb_arc;
