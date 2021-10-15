library ieee;
use ieee.std_logic_1164.all;

entity o_par_gen_s is
  port (
	a: in bit_vector(2 downto 0);
	par: out bit
  ) ;
end entity ; -- o_par_gen_s

architecture gate of o_par_gen_s is

component xor_gate is
port (a,b: in bit; o: out bit);
end component;

signal w1,w2: bit;

begin

xor1: xor_gate port map (a(0),a(1),w1);
xor2: xor_gate port map (w1,a(2),w2);
par <= not w2;

end architecture ; -- gate

