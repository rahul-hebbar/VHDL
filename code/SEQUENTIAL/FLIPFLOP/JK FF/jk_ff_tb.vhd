library ieee;
use ieee.std_logic_1164.all;

entity jk_ff_tb is
end jk_ff_tb;

architecture jk_ff_tb_arc of jk_ff_tb is

component jk_ff_sync is
	port (
		j,k,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end component;

signal j1,k1,clk1,set1,clr1: std_logic := '0';
signal q1,q_c1: std_logic;

begin

jkff: jk_ff_sync port map (j1,k1,clk1,set1,clr1,q1,q_c1);

clk1 <= not clk1 after 5 ns;

process
begin

set1 <= '1';
wait for 10 ns;

set1 <= '0';
clr1 <= '1';
wait for 10 ns;

clr1 <= '0';
j1 <= '1';
k1 <= '0';
wait for 10 ns;

j1 <= '0';
k1 <= '1';
wait for 10 ns;

j1 <= '1';
k1 <= '1';
wait for 50 ns;

end process;

end jk_ff_tb_arc;