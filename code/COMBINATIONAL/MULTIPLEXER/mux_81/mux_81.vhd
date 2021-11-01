library ieee;
use ieee.std_logic_1164.all;

entity mux_81 is
port (
	d: in bit_vector(7 downto 0);
	s: in bit_vector(2 downto 0);
	y: out bit
);
end entity;

architecture gate of mux_81 is

component mux_41_d is
port(
	s: in bit_vector(1 downto 0);
	d: in bit_vector(3 downto 0);
	y: out bit
);
end component;

component multiplex_21_d is
port(
	s: in bit;
	d: in bit_vector(1 downto 0);
	y: out bit
);
end component;

signal w: bit_vector(1 downto 0);
begin

mux41_1: mux_41_d port map (s(1 downto 0),d(3 downto 0),w(0));
mux41_2: mux_41_d port map (s(1 downto 0),d(7 downto 4),w(1));
mux21_1: multiplex_21_d port map (s(2),w(1 downto 0),y);

end architecture;