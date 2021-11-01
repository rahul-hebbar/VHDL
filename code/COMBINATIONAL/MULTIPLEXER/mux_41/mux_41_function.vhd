library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_41_function is
  port (
	s: in bit_vector(1 downto 0);
	d: in bit_vector(3 downto 0);
	y: out bit
  ) ;
end entity ; -- mux_41_function

architecture gate of mux_41_function is

function mux_21_d_func(
	s: in bit;
	d: in bit_vector(1 downto 0)
) return bit is

variable y: bit;

begin

y := ((not s) and d(0)) or (s and d(1));

return y;

end function;

signal w: bit_vector(1 downto 0);

begin

w(0) <= mux_21_d_func(s(0),d(1 downto 0));
w(1) <= mux_21_d_func(s(0),d(3 downto 2));
y <= mux_21_d_func(s(1),w(1 downto 0));

end architecture ; -- gate
