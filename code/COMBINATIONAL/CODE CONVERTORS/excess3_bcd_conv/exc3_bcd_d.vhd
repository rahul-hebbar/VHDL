library ieee;
use ieee.std_logic_1164.all;

entity exc3_bcd_d is
  port (
	exc: in bit_vector(3 downto 0);
	bcd: out bit_vector(3 downto 0)
  ) ;
end entity ; -- exc3_bcd_d

architecture gate of exc3_bcd_d is

begin

bcd(0) <= not exc(0);
bcd(1) <= exc(1) xor exc(0);
bcd(2) <= ((not exc(2)) and ((not exc(1)) or (not exc(0)))) or (exc(0) and exc(1) and exc(2));
bcd(3) <= exc(3) and (exc(2) or (exc(1) and exc(0)));

end architecture ; -- gate