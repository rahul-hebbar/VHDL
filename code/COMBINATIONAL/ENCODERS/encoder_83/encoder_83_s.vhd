library ieee;
use ieee.std_logic_1164.all;

entity encoder_83_s is
  port (
	i: in bit_vector(7 downto 0);
	o: out bit_vector(2 downto 0)
  ) ;
end entity ;

architecture gate of encoder_83_s is

component or_gate is
port(a,b: in bit; o: out bit);
end component;

signal w1,w2,w3,w4,w5: bit;

begin

or1: or_gate port map (i(7),i(6),w1);
or2: or_gate port map (i(5),i(4),w2);
or3: or_gate port map (w1,w2,o(2));
or4: or_gate port map (i(3),i(2),w3);
or5: or_gate port map (w3,w1,o(1));
or6: or_gate port map (i(7),i(5),w4);
or7: or_gate port map (i(3),i(1),w5);
or8: or_gate port map (w4,w5,o(0));

end architecture ;

