library ieee;
use ieee.std_logic_1164.all;

entity universal_shift_register is
	port (
		dr,dl,clock,s0,s1,clr,set : in std_logic;
		dp: in std_logic_vector(3 downto 0);
		o: inout std_logic_vector(3 downto 0)
	);
end universal_shift_register;

architecture universal_shift_register_arc of universal_shift_register is

function mux(in0,in1,in2,in3,sel0,sel1: std_logic) return std_logic is
variable out1 : std_logic := '0';
begin
	out1 := (in0 and (not sel0) and (not sel1)) or (in1 and sel0 and (not sel1)) 
			or (in2 and (not sel0) and sel1) or (in3 and sel1 and sel0);
	return out1;
end function;

component d_ff_async is
  port (
	d,clk,set,clr: in std_logic;
	q,q_c: inout std_logic
  ) ;
end component;

signal int0,int1,int2,int3: std_logic;
signal q_c0,q_c1,q_c2,q_c3: std_logic;

begin

int0 <= mux(o(0),dr,o(1),dp(0),s0,s1);
int1 <= mux(o(1),o(0),o(2),dp(1),s0,s1);
int2 <= mux(o(2),o(1),o(3),dp(2),s0,s1);
int3 <= mux(o(3),o(2),dl,dp(3),s0,s1);

dff0: d_ff_async port map (int0,clock,set,clr,o(0),q_c0);
dff1: d_ff_async port map (int1,clock,set,clr,o(1),q_c1);
dff2: d_ff_async port map (int2,clock,set,clr,o(2),q_c2);
dff3: d_ff_async port map (int3,clock,set,clr,o(3),q_c3);

end universal_shift_register_arc;