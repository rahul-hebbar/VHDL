library ieee;
use ieee.std_logic_1164.all;

entity e_par_gen_b is
  port (
	a: in bit_vector(2 downto 0);
	par: out bit
  ) ;
end entity ; -- e_par_gen_b

architecture gate of e_par_gen_b is

begin

par <= '0' when a = "000" else
	   '1' when a = "001" else
	   '1' when a = "010" else
	   '0' when a = "011" else
	   '1' when a = "100" else
	   '0' when a = "101" else
	   '0' when a = "110" else
	   '1' when a = "111";

end architecture ; -- gate
