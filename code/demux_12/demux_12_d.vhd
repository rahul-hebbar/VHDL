library ieee;
use ieee.std_logic_1164.all;

entity demux_21_d is
port (
s,d : in bit;
y : out bit_vector(1 downto 0)
);
end entity;

architecture gate of demux_21_d is

begin

y(0) <= (not s) and d;
y(1) <= s and d;

end architecture;