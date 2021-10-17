library ieee;
use ieee.std_logic_1164.all;

entity encoder_42_b is
port(
i: in bit_vector(3 downto 0);
o: out bit_vector(1 downto 0)
);
end entity;

architecture gate of encoder_42_b is

begin

o <= "00" when i = "0001" else
	"01" when i = "0010" else
	"10" when i = "0100" else
	"11" when i = "1000";

end architecture ;
