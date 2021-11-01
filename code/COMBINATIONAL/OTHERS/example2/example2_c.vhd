library ieee;
use ieee.std_logic_1164.all;

entity example2_c is
  port (
	a,b,d: in bit;
	o: out bit
  ) ;
end entity ; -- example2_c

architecture gate of example2_c is

signal c: bit;
begin

c <= a and b;
o <= c or d;

end architecture ; -- gate