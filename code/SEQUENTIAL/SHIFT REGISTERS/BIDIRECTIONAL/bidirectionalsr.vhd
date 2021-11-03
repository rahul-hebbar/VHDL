library ieee;
use ieee.std_logic_1164.all;

entity bidirectionalsr is
	port (
		dr,dl,dir,clk,clr,set: in std_logic;
		o_r,o_l: inout std_logic
	);
end bidirectionalsr;

architecture bidirectionalsr_arc of bidirectionalsr is

component d_ff_async is
    port (
  		d,clk,set,clr: in std_logic;
  		q,q_c: inout std_logic
    ) ;
end component;

function selector(s,qin,in1: in std_logic) return std_logic is
variable out1: std_logic := '0';
begin
	out1 := (s and qin) or ((not s) and in1);

	return out1;
end function;

signal q2,q1: std_logic;
signal q_c0,q_c1,q_c2,q_c3: std_logic;
signal int0,int1,int2,int3: std_logic;

begin

int3 <= selector(dir,dr,q2);
int2 <= selector(dir,o_l,q1);
int1 <= selector(dir,q2,o_r);
int0 <= selector(dir,q1,dl);

dff3: d_ff_async port map (int3,clk,set,clr,o_l,q_c3);
dff2: d_ff_async port map (int2,clk,set,clr,q2,q_c2);
dff1: d_ff_async port map (int1,clk,set,clr,q1,q_c1);
dff0: d_ff_async port map (int0,clk,set,clr,o_r,q_c0);

end bidirectionalsr_arc;