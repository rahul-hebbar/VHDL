library ieee;
use ieee.std_logic_1164.all;

entity exc3_bcd_s is
  port (
	exc: in bit_vector(3 downto 0);
	bcd: out bit_vector(3 downto 0)
  ) ;
end entity ; -- exc3_bcd_s

architecture gate of exc3_bcd_s is

component xor_gate is
port (a,b: in bit;o: out bit);
end component;

component and_gate is
port (a,b: in bit;o: out bit);
end component;

component or_gate is
port (a,b: in bit;o: out bit);
end component;

signal n0,n1,n2: bit;
signal w1,w2,w3,w4,w5,w6,w7,w8: bit;

begin

n0 <= not exc(0);
n1 <= not exc(1);
n2 <= not exc(2);

or1: or_gate port map (n0,'0',bcd(0));

xor1: xor_gate port map (exc(1),exc(0),bcd(1));

and1: and_gate port map (exc(0),exc(1),w1);
and2: and_gate port map (w1,exc(2),w2);
or2: or_gate port map (n1,n0,w3);
and3: and_gate port map (n2,w3,w4);
or3: or_gate port map (w2,w4,bcd(2));

and4: and_gate port map (exc(1),exc(0),w5);
or4: or_gate port map (exc(2),w5,w6);
and5: and_gate port map (w6,exc(3),bcd(3));

end architecture ; -- gate