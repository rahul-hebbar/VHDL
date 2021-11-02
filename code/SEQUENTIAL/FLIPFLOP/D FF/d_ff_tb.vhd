library ieee;
use ieee.std_logic_1164.all;

entity d_ff_tb is
end entity ; -- d_ff_tb

architecture gate of d_ff_tb is

component d_ff_async is
  port (
	d,clk,set,clr: in std_logic;
	q,q_c: inout std_logic
  ) ;
end component ;

signal d1,clk1,set1,clr1: std_logic := '0';
signal q1,q_c1: std_logic;

begin

DUT: d_ff_async port map (d1,clk1,set1,clr1,q1,q_c1);

clk1 <= not clk1 after 5 ns;

process
begin

set1 <= '1';
wait for 10 ns;

set1 <= '0';
clr1 <= '1';
wait for 10 ns;

clr1 <= '0';
d1 <= '1';
wait for 10 ns;

d1 <= '0';
wait for 10 ns;

end process;
end architecture ; -- gate