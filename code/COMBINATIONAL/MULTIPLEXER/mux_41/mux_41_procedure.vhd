library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_41_procedure is
  port (
	s: in bit_vector(1 downto 0);
	d: in bit_vector(3 downto 0);
	y: out bit
  ) ;
end entity ; -- mux_41_procedure

architecture gate of mux_41_procedure is

procedure mux_21_bhe_prod(
	signal s: in bit;
	signal d: in bit_vector(1 downto 0);
	signal y: out bit
) is
begin
if s='0' then y <= d(0);
elsif s='1' then y <= d(1);
end if;

end procedure;

signal w: bit_vector(1 downto 0);

begin

mux_21_bhe_prod(s(0),d(1 downto 0),w(0));
mux_21_bhe_prod(s(0),d(3 downto 2),w(1));
mux_21_bhe_prod(s(1),w(1 downto 0),y);

end architecture ; -- gate