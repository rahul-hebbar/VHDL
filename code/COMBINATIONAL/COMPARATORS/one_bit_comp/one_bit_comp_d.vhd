library ieee;
use ieee.std_logic_1164.all;

entity one_bit_comp_d is
  port (
	a,b: in bit;
	gre,eq,les: out bit
  ) ;
end entity ; -- one_bit_comp_d

architecture gate of one_bit_comp_d is

begin

gre <= a and (not b);
les <= (not a) and b;
eq <=  a xnor b;

end architecture ; -- gate
