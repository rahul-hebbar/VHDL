library ieee;
use ieee.std_logic_1164.all;

entity mux_41_s is
port(
	s: in bit_vector(1 downto 0);
	d: in bit_vector(3 downto 0);
	y: out bit
);
end entity;

architecture gate of mux_41_s is

component and_gate is
port(a,b: in bit; o: out bit);
end component;

component or_gate is
port(a,b: in bit; o: out bit);
end component;

signal c1,c2: bit;
signal w1,w2,w3,w4,w5,w6,w7,w8,w9,w10: bit;

begin

c1 <= not s(0);
c2 <= not s(1);
and1: and_gate port map (d(0),c1,w1);
and2: and_gate port map (w1,c2,w2);
and3: and_gate port map (d(1),s(0),w3);
and4: and_gate port map (w3,c2,w4);
and5: and_gate port map (d(2),c1,w5);
and6: and_gate port map (w5,s(1),w6);
and7: and_gate port map (d(3),s(0),w7);
and8: and_gate port map (w7,s(1),w8);

or1: or_gate port map (w2,w4,w9);
or2: or_gate port map (w9,w6,w10);
or3: or_gate port map (w10,w8,y); 

end architecture;