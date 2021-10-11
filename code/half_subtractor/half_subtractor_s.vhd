library ieee;
use ieee.std_logic_1164.all;

entity half_subtractor_s is
port (
a,b: in bit;
d,bor: out bit
);
end entity;

architecture gate of half_subtractor_s is

component xor_gate is
port (
a,b: in bit;
o: out bit
);
end component;

component and_gate is
port (
a,b: in bit;
o: out bit
);
end component;

signal w1: bit;
begin

w1 <= not a; 
xor1 : xor_gate port map (a,b,d);
and1 : and_gate port map (w1,b,bor);

end architecture;
