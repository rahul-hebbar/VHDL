library ieee;
use ieee.std_logic_1164.all;

entity piso is
	port (
		i: in std_logic_vector(3 downto 0);
		shlo,clock,set,clr : in std_logic;
		o: inout std_logic
	);
end piso;

architecture piso_arc of piso is

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

signal q3,q2,q1: std_logic;
signal q_c0,q_c1,q_c2,q_c3: std_logic;
signal int0,int1,int2: std_logic;

begin

int2 <= selector(shlo,q3,i(2));
int1 <= selector(shlo,q2,i(1));
int0 <= selector(shlo,q1,i(0));

dff1: d_ff_async port map (i(3),clock,set,clr,q3,q_c3);
dff2: d_ff_async port map (int2,clock,set,clr,q2,q_c2);
dff3: d_ff_async port map (int1,clock,set,clr,q1,q_c1);
dff4: d_ff_async port map (int0,clock,set,clr,o,q_c0);

end piso_arc;