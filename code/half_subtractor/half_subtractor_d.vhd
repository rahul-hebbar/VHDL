library ieee;
use ieee.std_logic_1164.all;

entity half_subtractor_d is
port (
a,b: in bit;
d,bor: out bit
);
end entity;

architecture gate of half_subtractor_d is

begin
d <= a xor b;
bor <= (not a) and b;
end architecture;

