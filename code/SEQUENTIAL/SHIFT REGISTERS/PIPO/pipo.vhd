library ieee;
use ieee.std_logic_1164.all;

entity pipo is
	port (
		i: in std_logic_vector(3 downto 0);
		clock,set,clr: in std_logic;
		o: inout std_logic_vector(3 downto 0)
	);
end pipo;

architecture pipo_arc of pipo is

component d_ff_async is
    port (
  		d,clk,set,clr: in std_logic;
  		q,q_c: inout std_logic
    ) ;
end component;

signal q_c0,q_c1,q_c2,q_c3: std_logic;

begin

dff1: d_ff_async port map (i(3),clock,set,clr,o(3),q_c3);
dff2: d_ff_async port map (i(2),clock,set,clr,o(2),q_c2); 
dff3: d_ff_async port map (i(1),clock,set,clr,o(1),q_c1); 
dff4: d_ff_async port map (i(0),clock,set,clr,o(0),q_c0); 

end pipo_arc;

