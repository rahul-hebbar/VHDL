library ieee;
use ieee.std_logic_1164.all;

entity multiplex_21_b is
port(
	s: in bit;
	d: in bit_vector(1 downto 0);
	y: out bit
);
end entity;

architecture gate of multiplex_21_b is

begin

y <= d(0) when s = '0' else
     d(1) when s = '1';

end architecture;