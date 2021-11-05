library ieee;
use ieee.std_logic_1164.all;

entity johnson_counter is
	port (
		clock,clr : in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end johnson_counter;

architecture johnson_counter_arc of johnson_counter is

component d_ff_async is
    port (
  		d,clk,set,clr: in std_logic;
  		q,q_c: inout std_logic
    ) ;
end component;

signal q_c1,q_c2,q_c3,q_c0: std_logic;
signal set1: std_logic;

begin

dff0: d_ff_async port map (q_c3,clock,set1,clr,o(0),q_c0);
dff1: d_ff_async port map (o(0),clock,set1,clr,o(1),q_c1);
dff2: d_ff_async port map (o(1),clock,set1,clr,o(2),q_c2);
dff3: d_ff_async port map (o(2),clock,set1,clr,o(3),q_c3);

end johnson_counter_arc;
