library ieee;
use ieee.std_logic_1164.all;

entity bcd_exc3_d is
  port (
	bcd: in bit_vector(3 downto 0);
	exc: out bit_vector(3 downto 0)
  ) ;
end entity ; -- bcd_exc3_d

architecture gate of bcd_exc3_d is

begin

exc(3) <= bcd(3) or (bcd(2) and bcd(1)) or (bcd(2) and bcd(0));
exc(2) <=  ((not bcd(2)) and (bcd(1) or bcd(0))) or (bcd(2) and (not bcd(1)) and (not bcd(0)));
exc(1) <= bcd(1) xnor bcd(0);
exc(0) <= not bcd(0);

end architecture ; -- gate