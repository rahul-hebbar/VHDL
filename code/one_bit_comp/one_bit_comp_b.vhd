library ieee;
use ieee.std_logic_1164.all;

entity one_bit_comp_b is
  port (
	a,b: in bit;
	gre,eq,les: out bit
  ) ;
end entity ; -- one_bit_comp_b

architecture gate of one_bit_comp_b is

begin

gre <= '1' when (a = '1' and b = '0') else '0';
les <= '1' when (a = '0' and b = '1') else '0';
eq <= '1' when ((a = '0' and b = '0') or (a = '1' and b = '1')) else '0';

end architecture ; -- gate