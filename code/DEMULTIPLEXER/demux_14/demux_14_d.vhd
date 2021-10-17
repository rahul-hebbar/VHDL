library ieee;
use ieee.std_logic_1164.all;

entity demux_14_d is
port (
s : in bit_vector(1 downto 0);
d : in bit;
y : out bit_vector(3 downto 0)
);
end entity;

architecture gate of demux_14_d is

begin

y(0) <= (not s(0)) and (not s(1)) and d;
y(1) <= s(0) and (not s(1)) and d;
y(2) <= (not s(0)) and s(1) and d;
y(3) <= s(0) and s(1) and d;

end architecture;