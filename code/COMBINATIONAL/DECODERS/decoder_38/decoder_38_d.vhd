library ieee;
use ieee.std_logic_1164.all;

entity decoder_38_d is
  port (
	i: in bit_vector(2 downto 0);
	o: out bit_vector(7 downto 0)
  ) ;
end entity ; -- decoder_38_d

architecture gate of decoder_38_d is

begin

o(0) <= (not i(2)) and (not i(1)) and (not i(0));
o(1) <= (not i(2)) and (not i(1)) and i(0);
o(2) <= (not i(2)) and i(1) and (not i(0));
o(3) <= (not i(2)) and i(1) and i(0);
o(4) <= i(2) and (not i(1)) and (not i(0));
o(5) <= i(2) and (not i(1)) and i(0);
o(6) <= i(2) and i(1) and (not i(0));
o(7) <= i(2) and i(1) and i(0);
	 
end architecture ; -- gate