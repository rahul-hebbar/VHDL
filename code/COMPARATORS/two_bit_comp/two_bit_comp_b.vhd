library ieee;
use ieee.std_logic_1164.all;

entity two_bit_comp_b is
  port (
	a,b: in bit_vector(1 downto 0);
	gre,les,eq: out bit
  ) ;
end entity ; -- two_bit_comp_b

architecture gate of two_bit_comp_b is

begin

eq <= '1' when ((a = "00" and b = "00") or 
				(a = "01" and b = "01") or 
				(a = "10" and b = "10") or 
				(a = "11" and b = "11")) else '0';

gre <= '1' when ((a = "01" and b = "00") or 
				 (a = "10" and b = "00") or 
				 (a = "11" and b = "00") or 
				 (a = "10" and b = "01") or
				 (a = "11" and b = "01") or
				 (a = "11" and b = "10")) else '0';

les <= '1' when ((a = "00" and b = "11") or 
				 (a = "01" and b = "11") or 
				 (a = "10" and b = "11") or 
				 (a = "00" and b = "10") or
				 (a = "01" and b = "10") or
				 (a = "00" and b = "01")) else '0';

end architecture ; -- gate