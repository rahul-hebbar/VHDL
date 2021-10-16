library ieee;
use ieee.std_logic_1164.all;

entity grey_bcd_d is
  port (
	grey: in bit_vector(3 downto 0);
	bcd: out bit_vector(3 downto 0) 
  ) ;
end entity ; -- grey_bcd: 

architecture gate of grey_bcd_d is

begin

bcd(3) <= grey(3);
bcd(2) <= grey(3) xor grey(2);
bcd(1) <= grey(3) xor grey(2) xor grey(1);
bcd(0) <= grey(3) xor grey(2) xor grey(1) xor grey(0);

end architecture;