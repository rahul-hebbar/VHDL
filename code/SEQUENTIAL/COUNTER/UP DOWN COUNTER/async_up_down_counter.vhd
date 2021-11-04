library ieee;
use ieee.std_logic_1164.all;

entity async_up_down_counter is
	port (
		clock,set,clr,dir : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end async_up_down_counter;

architecture async_up_down_counter_arc of async_up_down_counter is

component jk_negedge_async is
	port (
		j,k,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end component;

function selector(d,up,down: in std_logic) return std_logic is
variable out1: std_logic := '0';
begin
	out1 := (d and up) or ((not d) and down);
	return out1;
end function;

signal inter1,inter2,inter3: std_logic;
signal q_c0,q_c1,q_c2,q_c3: std_logic;

begin

inter1 <= selector(dir,o(0),q_c0);
inter2 <= selector(dir,o(1),q_c1);
inter3 <= selector(dir,o(2),q_c2);

jkff0: jk_negedge_async port map ('1','1',clock,set,clr,o(0),q_c0);
jkff1: jk_negedge_async port map ('1','1',inter1,set,clr,o(1),q_c1);
jkff2: jk_negedge_async port map ('1','1',inter2,set,clr,o(2),q_c2);
jkff3: jk_negedge_async port map ('1','1',inter3,set,clr,o(3),q_c3);

end async_up_down_counter_arc;