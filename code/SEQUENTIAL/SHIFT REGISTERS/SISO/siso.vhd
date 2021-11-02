library ieee;
use ieee.std_logic_1164.all;

entity siso is
	port (
		i,clock,set,clr : in std_logic;
		o: inout std_logic
	);
end siso;

architecture siso_arc of siso is

component d_ff_async is
    port (
  		d,clk,set,clr: in std_logic;
  		q,q_c: inout std_logic
    ) ;
end component;

signal q1,q2,q3: std_logic;
signal q_c1,q_c2,q_c3,o_c: std_logic;

begin

dff1: d_ff_async port map (i,clock,set,clr,q1,q_c1);
dff2: d_ff_async port map (q1,clock,set,clr,q2,q_c2);
dff3: d_ff_async port map (q2,clock,set,clr,q3,q_c3);
dff4: d_ff_async port map (q3,clock,set,clr,o,o_c);

end siso_arc;