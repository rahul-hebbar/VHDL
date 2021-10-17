library ieee;
use ieee.std_logic_1164.all;

entity decoder_24_b is
  port (
	i: in bit_vector(1 downto 0);
	o: out bit_vector(3 downto 0)
  ) ;
end entity ; -- decoder_24_b

architecture gate of decoder_24_b is

begin

o <= "0001" when i = "00" else
	 "0010" when i = "01" else
	 "0100" when i = "10" else
	 "1000" when i = "11";
	 
end architecture ; -- gate