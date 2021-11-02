library ieee;
use ieee.std_logic_1164.all;

entity t_ff_tb is
end t_ff_tb;

architecture t_ff_tb_arc of t_ff_tb is

component t_ff_async is
	port(
		t,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end component;

signal t1,clk1,set1,clr1: std_logic := '0';
signal q1,q_c1: std_logic;

begin

tff: t_ff_async port map (t1,clk1,set1,clr1,q1,q_c1);

clk1 <= not clk1 after 5 ns;

process
begin

set1 <= '1';
wait for 10 ns;

set1 <= '0';
clr1 <= '1';
wait for 10 ns;

clr1 <= '0';
t1 <= '0';
wait for 10 ns;

t1 <= '1';
wait for 40 ns;

end process;

end t_ff_tb_arc;