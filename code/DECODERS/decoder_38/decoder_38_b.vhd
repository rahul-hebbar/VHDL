library ieee;
use ieee.std_logic_1164.all;

entity decoder_38_b is
  port (
	i: in bit_vector(2 downto 0);
	o: out bit_vector(7 downto 0)
  ) ;
end entity ; -- decoder_38_b

architecture gate of decoder_38_b is

begin

o <= "00000001" when i = "000" else
	 "00000010" when i = "001" else
	 "00000100" when i = "010" else
	 "00001000" when i = "011" else
	 "00010000" when i = "100" else
	 "00100000" when i = "101" else
	 "01000000" when i = "110" else
	 "10000000" when i = "111";
	 
end architecture ; -- gate
