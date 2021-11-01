library ieee;
use ieee.std_logic_1164.all;

entity example2_s is
  port (
	a,b,d: in bit;
	o: out bit
  ) ;
end entity ; -- example2_s

architecture gate of example2_s is

signal c: bit;
begin

process(a,b,d)
begin
	c <= a and b;
	o <= c or d;
end process;

end architecture ; -- gate
