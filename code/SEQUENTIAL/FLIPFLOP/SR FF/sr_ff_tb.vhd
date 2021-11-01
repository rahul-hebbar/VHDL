library ieee;
use ieee.std_logic_1164.all;

entity sr_ff_tb is
end sr_ff_tb;

architecture sr_ff_tb_arc of sr_ff_tb is

component sr_ff_async is
  port (
	s,r,clk,set,clr: in std_logic;
	q,q_c: inout std_logic
  ) ;
end component;

signal s1,r1,clock: std_logic := '0';
signal set1,clr1 : std_logic := '0';
signal q1,q1_comp: std_logic;

begin

srff : sr_ff_async port map (s1,r1,clock,set1,clr1,q1,q1_comp);

clock <= (not clock) after 5 ns;

process
begin

clr1 <= '1';
wait for 10 ns;

clr1 <= '0';
s1 <= '1';
r1 <= '0';
wait for 10 ns;

s1 <= '0';
r1 <= '1';
wait for 10 ns;

s1 <= '0';
r1 <= '0';
wait for 10 ns;

s1 <= '1';
r1 <= '1';
wait for 30 ns;

set1 <= '1';
s1 <= '0';
r1 <= '0';
wait for 10 ns;

end process;

end sr_ff_tb_arc;