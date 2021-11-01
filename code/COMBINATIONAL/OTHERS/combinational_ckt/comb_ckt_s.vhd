library IEEE;
use ieee.std_logic_1164.all;

entity comb_ckt_s is
port (
a,b,c,d: in bit;
f,g: out bit
);
end entity;

architecture s_gate of comb_ckt_s is

component nand_gate is
port (
a,b: in bit;
o: out bit
);
end component;

component and_gate is
port(
a,b: in bit;
o: out bit
);
end component;

component or_gate is
port (
a,b: in bit;
o: out bit
);
end component;

signal w1,w2,w3,w4,w5: bit;

begin
w1 <= not a;
and1 : and_gate port map (b,c,w2);
or1 : or_gate port map (w2,w1,w3);
nand1 : nand_gate port map (d,w1,w4);
nand2 : nand_gate port map (w1,w4,w5);
and2 : and_gate port map (w5,w3,f);
and3 : and_gate port map (w3,w4,g);

end architecture; 
