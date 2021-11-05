library ieee;
use ieee.std_logic_1164.all;

entity ring_counter is
	port (
		clock,ini : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end ring_counter;

architecture ring_counter_arc of ring_counter is

component d_ff_async is
    port (
  		d,clk,set,clr: in std_logic;
  		q,q_c: inout std_logic
    ) ;
end component;

signal q_c1,q_c2,q_c3,q_c0: std_logic;
signal ini_c: std_logic;

begin

dff0: d_ff_async port map (o(3),clock,ini,ini_c,o(0),q_c0);
dff1: d_ff_async port map (o(0),clock,ini_c,ini,o(1),q_c1);
dff2: d_ff_async port map (o(1),clock,ini_c,ini,o(2),q_c2);
dff3: d_ff_async port map (o(2),clock,ini_c,ini,o(3),q_c3);

end ring_counter_arc;