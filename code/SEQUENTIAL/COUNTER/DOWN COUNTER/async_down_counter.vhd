library ieee;
use ieee.std_logic_1164.all;

entity async_down_counter is
	port (
		clock,set,clr : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end async_down_counter;

architecture async_down_counter_arc of async_down_counter is

component jk_negedge_async is
	port (
		j,k,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end component;

signal q0,q1,q2,q3: std_logic;

begin

jkff0: jk_negedge_async port map ('1','1',clock,set,clr,o(0),q0);
jkff1: jk_negedge_async port map ('1','1',q0,set,clr,o(1),q1);
jkff2: jk_negedge_async port map ('1','1',q1,set,clr,o(2),q2);
jkff3: jk_negedge_async port map ('1','1',q2,set,clr,o(3),q3);

end async_down_counter_arc;