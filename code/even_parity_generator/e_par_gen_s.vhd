library ieee;
use ieee.std_logic_1164.all;

entity e_par_gen_s is
  port (
	a: in bit_vector(2 downto 0);
	par: out bit
  ) ;
end entity ; -- e_par_gen_s

architecture gate of e_par_gen_s is

component xor_gate is
port (a,b: in bit; o: out bit);
end component;

signal w1: bit;

begin

xor1: xor_gate port map (a(0),a(1),w1);
xor2: xor_gate port map (w1,a(2),par);

end architecture ; -- gate
