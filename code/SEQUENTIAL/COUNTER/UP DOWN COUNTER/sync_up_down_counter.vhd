library ieee;
use ieee.std_logic_1164.all;

entity sync_up_down_counter is
	port (
		clock,set,clr,dir : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end sync_up_down_counter;

architecture sync_up_down_counter_arc of sync_up_down_counter is

component jk_negedge_async is
	port (
		j,k,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end component;

procedure decision(signal d,d_c,q,q_c: in std_logic; signal ainter1,ainter2,inter: inout std_logic) is
begin
	ainter1 <= d and q;
	ainter2 <= d_c and q_c;
	inter <= ainter1 or ainter2;
end procedure;

signal aq0,aq1,aq2: std_logic;
signal aq_c0,aq_c1,aq_c2: std_logic;
signal inter0,inter1,inter2: std_logic;
signal o_c0,o_c1,o_c2,o_c3: std_logic;
signal dir_c: std_logic;

begin

dir_c <= not dir;
jkff0: jk_negedge_async port map ('1','1',clock,set,clr,o(0),o_c0);
decision(dir,dir_c,o(0),o_c0,aq0,aq_c0,inter0);
jkff1: jk_negedge_async port map (inter0,inter0,clock,set,clr,o(1),o_c1);
decision(aq0,aq_c0,o(1),o_c1,aq1,aq_c1,inter1);
jkff2: jk_negedge_async port map (inter1,inter1,clock,set,clr,o(2),o_c2);
decision(aq1,aq_c1,o(2),o_c2,aq2,aq_c2,inter2);
jkff3: jk_negedge_async port map (inter2,inter2,clock,set,clr,o(3),o_c3);

end sync_up_down_counter_arc;
