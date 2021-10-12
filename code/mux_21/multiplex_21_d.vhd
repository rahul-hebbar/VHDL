library ieee;
use ieee.std_logic_1164.all;

entity multiplex_21_d is
port(
	s: in bit;
	d: in bit_vector(1 downto 0);
	y: out bit
);
end entity;

architecture gate of multiplex_21_d is

begin

y <= (d(0) and (not s)) or (d(1) and s);

end architecture;
