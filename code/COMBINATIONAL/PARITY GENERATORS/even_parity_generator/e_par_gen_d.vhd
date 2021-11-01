library ieee;
use ieee.std_logic_1164.all;

entity e_par_gen_d is
  port (
	a: in bit_vector(2 downto 0);
	par: out bit
  ) ;
end entity ; -- e_par_gen_d

architecture gate of e_par_gen_d is

begin
par <= a(0) xor a(1) xor a(2);
end architecture ; -- gate