library ieee;
use ieee.std_logic_1164.all;

entity half_adder_s is
port (
a,b: in bit;
s,c: out bit
);
end entity;

architecture gate of half_adder_s is

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

begin

xor1 : xor_gate port map (a,b,s);
and1 : and_gate port map (a,b,c);

end architecture;