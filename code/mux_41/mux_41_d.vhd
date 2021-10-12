library ieee;
use ieee.std_logic_1164.all;

entity mux_41_d is
port(
	s: in bit_vector(1 downto 0);
	d: in bit_vector(3 downto 0);
	y: out bit
);
end entity;

architecture gate of mux_41_d is

signal w1,w2: bit;

begin

w1 <= not s(0);
w2 <= not s(1);
y <= (d(0) and w1 and w2) or (d(1) and s(0) and w2) or 
(d(2) and w1 and s(1)) or (d(3) and s(0) and s(1));

end architecture;

