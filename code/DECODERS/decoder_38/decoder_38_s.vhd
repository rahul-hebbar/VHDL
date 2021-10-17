library ieee;
use ieee.std_logic_1164.all;

entity decoder_38_s is
  port (
	i: in bit_vector(2 downto 0);
	o: out bit_vector(7 downto 0)
  ) ;
end entity ; -- decoder_38_s

architecture gate of decoder_38_s is

component and_gate is
port(a,b: in bit; o: out bit);
end component;

signal w1,w2,w3,w4,w5,w6,w7,w8: bit;

begin

w1 <= not i(0);
w2 <= not i(1);
w3 <= not i(2);
and1: and_gate port map (w3,w2,w4);
and2: and_gate port map (w1,w4,o(0));
and3: and_gate port map (i(0),w4,o(1));

and4: and_gate port map (w3,i(1),w5);
and5: and_gate port map (w1,w5,o(2));
and6: and_gate port map (i(0),w5,o(3));

and7: and_gate port map (w2,i(2),w6);
and8: and_gate port map (w1,w6,o(4));
and9: and_gate port map (i(0),w6,o(5));

and10: and_gate port map (i(2),i(1),w7);
and11: and_gate port map (w1,w7,o(6));
and12: and_gate port map (i(0),w7,o(7));
	 
end architecture ; -- gate