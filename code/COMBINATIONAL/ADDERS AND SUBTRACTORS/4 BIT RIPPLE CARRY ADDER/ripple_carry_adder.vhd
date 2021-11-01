library ieee;
use ieee.std_logic_1164.all;

entity ripple_carry_adder is
  port (
	a,b: in bit_vector(3 downto 0);
	cin: in bit;
	s: out bit_vector(3 downto 0);
	cout: out bit
  ) ;
end entity ; -- ripple_carry_adder

architecture gate of ripple_carry_adder is

component full_adder_d is
	port(
		a,b,cin: in bit;
		s,cout: out bit
	);
end component;

signal w1,w2,w3,w4: bit;

begin

fa0: full_adder_d port map (a(0),b(0),cin,s(0),w1);
fa1: full_adder_d port map (a(1),b(1),w1,s(1),w2);
fa2: full_adder_d port map (a(2),b(2),w2,s(2),w3);
fa3: full_adder_d port map (a(3),b(3),w3,s(3),cout);

end architecture ; -- gate