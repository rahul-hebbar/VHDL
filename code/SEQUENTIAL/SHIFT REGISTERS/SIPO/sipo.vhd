library ieee;
use ieee.std_logic_1164.all;

entity sipo is
	port (
		i,clock,set,clr : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end sipo;

architecture sipo_arc of sipo is

component d_ff_async is
    port (
  		d,clk,set,clr: in std_logic;
  		q,q_c: inout std_logic
    ) ;
end component;

signal o_c0,o_c1,o_c2,o_c3: std_logic;

begin

dff1: d_ff_async port map (i,clock,set,clr,o(3),o_c3);
dff2: d_ff_async port map (o(3),clock,set,clr,o(2),o_c2);
dff3: d_ff_async port map (o(2),clock,set,clr,o(1),o_c1);
dff4: d_ff_async port map (o(1),clock,set,clr,o(0),o_c0);

end sipo_arc;