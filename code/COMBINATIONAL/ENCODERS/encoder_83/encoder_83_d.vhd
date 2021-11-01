library ieee;
use ieee.std_logic_1164.all;

entity encoder_83_d is
  port (
	i: in bit_vector(7 downto 0);
	o: out bit_vector(2 downto 0)
  ) ;
end entity ;

architecture gate of encoder_83_d is

begin

o(2) <= i(7) or i(6) or i(5) or i(4);
o(1) <= i(7) or i(6) or i(3) or i(2);
o(0) <= i(7) or i(5) or i(3) or i(1);

end architecture ;
