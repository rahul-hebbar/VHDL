library ieee;
use ieee.std_logic_1164.all;

entity carry_save_adder is
  port (
	a,b,c: in bit_vector(3 downto 0);
	s: out bit_vector(4 downto 0);
	cout: out bit
  ) ;
end entity ; -- carry_save_adder

architecture gate of carry_save_adder is

component ripple_carry_adder is
  port (
	a,b: in bit_vector(3 downto 0);
	cin: in bit;
	s: out bit_vector(3 downto 0);
	cout: out bit
  ) ;
end component ; -- ripple_carry_adder

component full_adder_d is
	port(
		a,b,cin: in bit;
		s,cout: out bit
	);
end component;

signal x,y: bit_vector(3 downto 0);

begin

fa0: full_adder_d port map (a(0),b(0),c(0),s(0),x(0));
fa1: full_adder_d port map (a(1),b(1),c(1),y(0),x(1));
fa2: full_adder_d port map (a(2),b(2),c(2),y(1),x(2));
fa3: full_adder_d port map (a(3),b(3),c(3),y(2),x(3));
y(3) <= '0';

rip: ripple_carry_adder port map (x,y,'0',s(4 downto 1),cout);

end architecture ; -- gate