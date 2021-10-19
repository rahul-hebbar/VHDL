library ieee;
use ieee.std_logic_1164.all;

entity look_ahead_carry_adder is
  port (
	a,b: in bit_vector(3 downto 0);
	cin: in bit;
	s: out bit_vector(3 downto 0);
	cout: out bit
  ) ;
end entity ; -- look_ahead_carry_adder

architecture gate of look_ahead_carry_adder is

component partial_adder is
  port (
	a,b,cin: in bit;
	s,p,g: out bit
  ) ;
end component; -- partial_adder

signal p,g: bit_vector(3 downto 0);
signal c: bit_vector(2 downto 0);

begin

pa0: partial_adder port map (a(0),b(0),cin,s(0),p(0),g(0));
pa1: partial_adder port map (a(1),b(1),c(0),s(1),p(1),g(1));
pa2: partial_adder port map (a(2),b(2),c(1),s(2),p(2),g(2));
pa3: partial_adder port map (a(3),b(3),c(2),s(3),p(3),g(3));

c(0) <= g(0) or (p(0) and cin);
c(1) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
c(2) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0)) or (p(2) and p(1) and p(0) and cin);
cout <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0))
		or (p(3) and p(2) and p(1) and p(0) and cin);

end architecture ; -- gate