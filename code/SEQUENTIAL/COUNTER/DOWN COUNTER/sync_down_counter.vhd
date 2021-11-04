library ieee;
use ieee.std_logic_1164.all;

entity sync_down_counter is
	port (
		clock,set,clr : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end sync_down_counter;

architecture sync_down_counter_arc of sync_down_counter is

component jk_negedge_async is
	port (
		j,k,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end component;

signal q0,q1,q2,q3: std_logic;
signal in1,in2: std_logic;

begin

in1 <= q0 and q1;
in2 <= in1 and q2;

jkff0: jk_negedge_async port map ('1','1',clock,set,clr,o(0),q0);
jkff1: jk_negedge_async port map (q0,q0,clock,set,clr,o(1),q1);
jkff2: jk_negedge_async port map (in1,in1,clock,set,clr,o(2),q2);
jkff3: jk_negedge_async port map (in2,in2,clock,set,clr,o(3),q3);

end sync_down_counter_arc;
