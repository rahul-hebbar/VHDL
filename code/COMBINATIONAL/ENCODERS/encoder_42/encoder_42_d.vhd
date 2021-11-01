library ieee;
use ieee.std_logic_1164.all;

entity encoder_42_d is
  port (
	i: in bit_vector(3 downto 0);
	o: out bit_vector(1 downto 0)
  ) ;
end entity ;

architecture gate of encoder_42_d is

begin
o(0) <= i(3) or i(1);
o(1) <= i(3) or i(2);
end architecture ;