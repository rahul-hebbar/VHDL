library ieee;
use ieee.std_logic_1164.all;

entity decoder_24_d is
  port (
	i: in bit_vector(1 downto 0);
	o: out bit_vector(3 downto 0)
  ) ;
end entity ; -- decoder_24_d

architecture gate of decoder_24_d is

begin

o(3) <= i(1) and i(0);
o(2) <= i(1) and (not i(0));
o(1) <= (not i(1)) and i(0);
o(0) <= (not i(1)) and (not i(0));

end architecture ; -- gate
