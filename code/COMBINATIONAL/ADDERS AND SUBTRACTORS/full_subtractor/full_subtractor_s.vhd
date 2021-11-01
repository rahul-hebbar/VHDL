library ieee;
use ieee.std_logic_1164.all;

entity full_subtractor_s is
port(
a,b,bin: in bit;
d,bout: out bit
);
end entity;

architecture gate of full_subtractor_s is

component xor_gate is
port(a,b: in bit; o: out bit);
end component;

component and_gate is
port(a,b: in bit; o: out bit);
end component;

component or_gate is
port(a,b: in bit; o: out bit);
end component;

signal w1,w2,w3,w4,w5: bit;

begin

w1 <= not a;
xor1 : xor_gate port map (a,b,w2);
xor2 : xor_gate port map (w2,bin,d);
and1 : and_gate port map (b,bin,w3);
or1 : or_gate port map (b,bin,w4);
and2 : and_gate port map (w4,w1,w5);
or2: or_gate port map (w3,w5,bout);

end architecture;


