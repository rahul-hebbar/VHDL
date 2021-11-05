library ieee;
use ieee.std_logic_1164.all;

entity decade_counter is
	port (
		clock,set,clr : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end decade_counter;

architecture decade_counter_arc of decade_counter is

component jk_negedge_async is
	port (
		j,k,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end component;

signal q_c0,q_c1,q_c2,q_c3: std_logic;
signal reset: std_logic;

begin

reset <= (o(2) and o(3)) or clr;

jkff0: jk_negedge_async port map ('1','1',clock,set,reset,o(0),q_c0);
jkff1: jk_negedge_async port map ('1','1',o(0),set,reset,o(1),q_c1);
jkff2: jk_negedge_async port map ('1','1',o(1),set,reset,o(2),q_c2);
jkff3: jk_negedge_async port map ('1','1',o(2),set,reset,o(3),q_c3);

end decade_counter_arc;
