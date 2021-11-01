library ieee;
use ieee.std_logic_1164.all;

entity decoder_24_s is
  port (
	i: in bit_vector(1 downto 0);
	o: out bit_vector(3 downto 0)
  ) ;
end entity ; -- decoder_24_s

architecture gate of decoder_24_s is

component and_gate is
port(a,b: in bit; o: out bit);
end component;

signal w1,w2: bit;

begin

w1 <= not i(0);
w2 <= not i(1);
and1: and_gate port map (i(1),i(0),o(3));
and2: and_gate port map (i(1),w1,o(2));
and3: and_gate port map (w2,i(0),o(1));
and4: and_gate port map (w1,w2,o(0));

end architecture ; -- gate

