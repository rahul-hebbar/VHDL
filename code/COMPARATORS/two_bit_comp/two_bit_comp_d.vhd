library ieee;
use ieee.std_logic_1164.all;

entity two_bit_comp_d is
  port (
	a,b: in bit_vector(1 downto 0);
	gre,les,eq: out bit
  ) ;
end entity ; -- two_bit_comp_d

architecture gate of two_bit_comp_d is

begin

gre <= (a(1) and (not b(1))) or ((not b(0)) and ((a(0) and (not b(1))) or ( a(0) and a(1))));
les <= (b(1) and (not a(1))) or (b(0) and b(1) and (not a(0))) or ((not a(1)) and (not a(0)) and b(0));
eq <= (a(0) xnor b(0)) and (a(1) xnor b(1));
end architecture ; -- gate