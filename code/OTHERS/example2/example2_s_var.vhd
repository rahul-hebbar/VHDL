library ieee;
use ieee.std_logic_1164.all;

entity example2_s_var is
  port (
	a,b,d: in bit;
	o: out bit
  ) ;
end entity ; -- example2_s_var

architecture gate of example2_s_var is

begin

process(a,b,d)

variable c: bit;

begin
	c := a and b;
	o <= c or d;
end process;

end architecture ; -- gate

