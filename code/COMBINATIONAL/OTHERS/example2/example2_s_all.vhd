library ieee;
use ieee.std_logic_1164.all;

entity example2_s_all is
  port (
	a,b,d: in bit;
	o: out bit
  ) ;
end entity ; -- example2_s_all

architecture gate of example2_s_all is

signal c: bit;
begin

process(a,b,d,c)
begin
	c <= a and b;
	o <= c or d;
end process;

end architecture ; -- gate

