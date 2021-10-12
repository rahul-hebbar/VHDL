library ieee;
use ieee.std_logic_1164.all;

entity multiplex_21_s is
port(
	s: in bit;
	d: in bit_vector(1 downto 0);
	y: out bit
);
end entity;

architecture gate of multiplex_21_s is

component and_gate is
port(a,b: in bit; o: out bit);
end component;

component or_gate is
port(a,b: in bit; o: out bit);
end component;

signal w1,w2,w3: bit;

begin

w1 <= not s;
and1 : and_gate port map (d(1),s,w2);
and2 : and_gate port map (d(0),w1,w3);
or1: or_gate port map (w2,w3,y);

end architecture;

