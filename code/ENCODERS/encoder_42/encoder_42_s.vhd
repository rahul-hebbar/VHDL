library ieee;
use ieee.std_logic_1164.all;

entity encoder_42_s is
  port (
	i: in bit_vector(3 downto 0);
	o: out bit_vector(1 downto 0)
  ) ;
end entity ;

architecture gate of encoder_42_s is

component or_gate is
port(a,b: in bit; o: out bit);
end component;

begin

or1: or_gate port map (i(3),i(1),o(0));
or2: or_gate port map (i(3),i(2),o(1));

end architecture ;
