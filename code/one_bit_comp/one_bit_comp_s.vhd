library ieee;
use ieee.std_logic_1164.all;

entity one_bit_comp_s is
  port (
	a,b: in bit;
	gre,eq,les: out bit
  ) ;
end entity ; -- one_bit_comp_s

architecture gate of one_bit_comp_s is

component and_gate is
port (a,b: in bit; o: out bit);
end component;

component xnor_gate is
port (a,b: in bit; o: out bit);
end component;

signal w1,w2: bit;

begin

w1 <= not a;
w2 <= not b;
and1: and_gate port map (a,w2,gre);
and2: and_gate port map (w1,b,les);
xnor1: xnor_gate port map (a,b,eq);

end architecture ; -- gate

