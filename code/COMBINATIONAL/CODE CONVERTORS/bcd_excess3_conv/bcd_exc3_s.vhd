library ieee;
use ieee.std_logic_1164.all;

entity bcd_exc3_s is
  port (
	bcd: in bit_vector(3 downto 0);
	exc: out bit_vector(3 downto 0)
  ) ;
end entity ; -- bcd_exc3_s

architecture gate of bcd_exc3_s is

component xnor_gate is
port (a,b: in bit; o: out bit);
end component;

component and_gate is
port (a,b: in bit; o: out bit);
end component;

component or_gate is
port (a,b: in bit; o: out bit);
end component;

signal n0,n1,n2: bit;
signal w1,w2,w3,w4,w5,w6,w7,w8: bit;

begin

n2 <= not bcd(2);
n1 <= not bcd(1);
n0 <= not bcd(0);

or1: or_gate port map (bcd(0),bcd(1),w1);
and1: and_gate port map (bcd(2),w1,w2);
or2: or_gate port map (w2,bcd(3),exc(3));

and2: and_gate port map (n1,n0,w3);
and3: and_gate port map (w3,bcd(2),w4);
or3: or_gate port map (bcd(1),bcd(0),w5);
and4: and_gate port map (w5,n2,w6);
or4: or_gate port map (w4,w6,exc(2));

xnor1: xnor_gate port map (bcd(1),bcd(0),exc(1));

or5: or_gate port map (n0,'0',exc(0));

end architecture ; -- gate
