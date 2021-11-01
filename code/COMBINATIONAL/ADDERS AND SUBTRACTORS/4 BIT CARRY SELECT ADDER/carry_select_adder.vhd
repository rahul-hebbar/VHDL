library ieee;
use ieee.std_logic_1164.all;

entity carry_select_adder is
  port (
	a,b: in bit_vector(3 downto 0);
	cin: in bit;
	s: out bit_vector(3 downto 0);
	cout: out bit
  ) ;
end entity ; -- carry_select_adder

architecture gate of carry_select_adder is

component multiplex_21_d is
port(
	s: in bit;
	d: in bit_vector(1 downto 0);
	y: out bit
);
end component;

component full_adder_d is
	port(
		a,b,cin: in bit;
		s,cout: out bit
	);
end component;

signal si: bit_vector(7 downto 0);
signal ci: bit_vector(7 downto 0);
signal m1,m2,m3,m4,m5: bit_vector(1 downto 0);

begin

fa0: full_adder_d port map (a(0),b(0),'0',si(0),ci(0));
fa1: full_adder_d port map (a(1),b(1),ci(0),si(1),ci(1));
fa2: full_adder_d port map (a(2),b(2),ci(1),si(2),ci(2));
fa3: full_adder_d port map (a(3),b(3),ci(2),si(3),ci(3));

fa4: full_adder_d port map (a(0),b(0),'1',si(4),ci(4));
fa5: full_adder_d port map (a(1),b(1),ci(4),si(5),ci(5));
fa6: full_adder_d port map (a(2),b(2),ci(5),si(6),ci(6));
fa7: full_adder_d port map (a(3),b(3),ci(6),si(7),ci(7));

m1 <= si(4) & si(0);
m2 <= si(5) & si(1);
m3 <= si(6) & si(2);
m4 <= si(7) & si(3);
m5 <= ci(7) & ci(3);

mux1: multiplex_21_d port map (cin,m1,s(0));
mux2: multiplex_21_d port map (cin,m2,s(1));
mux3: multiplex_21_d port map (cin,m3,s(2));
mux4: multiplex_21_d port map (cin,m4,s(3));
mux5: multiplex_21_d port map (cin,m5,cout);

end architecture ; -- gate