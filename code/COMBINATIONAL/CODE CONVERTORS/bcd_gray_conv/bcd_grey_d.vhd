library ieee;
use ieee.std_logic_1164.all;

entity bcd_grey_d is
  port (
	bcd: in bit_vector(3 downto 0);
	grey: out bit_vector(3 downto 0)
  ) ;
end entity ; -- bcd_grey_d

architecture gate of bcd_grey_d is

begin

grey(3) <= bcd(3);
grey(2) <= bcd(2) xor bcd(3);
grey(1) <= bcd(1) xor bcd(2);
grey(0) <= bcd(0) xor bcd(1);

end architecture ; -- gate