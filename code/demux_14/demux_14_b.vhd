library ieee;
use ieee.std_logic_1164.all;

entity demux_14_b is
port (
s : in bit_vector(1 downto 0);
d : in bit;
y : out bit_vector(3 downto 0)
);
end entity;

architecture gate of demux_14_b is

begin

y <= ('0','0','0',d) when s = "00" else
	 ('0','0',d,'0') when s = "01" else
	 ('0',d,'0','0') when s = "10" else
	 (d,'0','0','0') when s = "11";

end architecture;