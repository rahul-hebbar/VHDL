library ieee;
use ieee.std_logic_1164.all;

entity sync_up_counter is
	port (
		clock,set,clr : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end sync_up_counter;

architecture sync_up_counter_arc of sync_up_counter is

component jk_negedge_async is
	port (
		j,k,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end component;

signal q_c0,q_c1,q_c2,q_c3: std_logic;
signal in1,in2: std_logic;

begin

in1 <= o(0) and o(1);
in2 <= in1 and o(2);

jkff0: jk_negedge_async port map ('1','1',clock,set,clr,o(0),q_c0);
jkff1: jk_negedge_async port map (o(0),o(0),clock,set,clr,o(1),q_c1);
jkff2: jk_negedge_async port map (in1,in1,clock,set,clr,o(2),q_c2);
jkff3: jk_negedge_async port map (in2,in2,clock,set,clr,o(3),q_c3);

end sync_up_counter_arc;