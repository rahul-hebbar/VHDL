library ieee;
use ieee.std_logic_1164.all;

entity two_bit_comp_s is
  port (
	a,b: in bit_vector(1 downto 0);
	gre,les,eq: out bit
  ) ;
end entity ; -- two_bit_comp_s

architecture gate of two_bit_comp_s is

component and_gate is
port (a,b: in bit; o: out bit);
end component;

component or_gate is
port (a,b: in bit; o: out bit);
end component;

component xnor_gate is
port (a,b: in bit; o: out bit);
end component;

signal n1,n2,n3,n4: bit;
signal w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13: bit;
begin

n1 <= not a(0);
n2 <= not a(1);
n3 <= not b(0);
n4 <= not b(1);

xnor1: xnor_gate port map (a(0),b(0),w1);
xnor2: xnor_gate port map (a(1),b(1),w2);
and1: and_gate port map (w1,w2,eq);

and2: and_gate port map (a(1),n4,w3);
and3: and_gate port map (a(0),a(1),w4);
and4: and_gate port map (a(0),n4,w5);
or1: or_gate port map (w4,w5,w6);
and5: and_gate port map (w6,n3,w7);
or2: or_gate port map (w7,w3,gre);

and6: and_gate port map (b(1),n2,w8);
and7: and_gate port map (b(0),n1,w9);
and8: and_gate port map (n2,w9,w10);
and9: and_gate port map (b(0),b(1),w11);
and10: and_gate port map (n1,w11,w12);
or3: or_gate port map (w10,w12,w13);
or4: or_gate port map (w13,w8,les);

end architecture ; -- gate
