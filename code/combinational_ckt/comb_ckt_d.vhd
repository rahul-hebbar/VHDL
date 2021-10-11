library IEEE;
use ieee.std_logic_1164.all;

entity comb_ckt_d is
port (
a,b,c,d: in bit;
f,g: out bit
);
end entity;

architecture d_gate of comb_ckt_d is

signal w1,w2,w3,w4,w5: bit;

begin
w1 <= not a;
w2 <= b and c;
w3 <= not(d and w1);
w4 <= not(w1 and w3);
w5 <= w1 or w2;
f <= w4 and w5;
g <= w5 and w3;

end architecture; 
