library ieee;
use ieee.std_logic_1164.all;

entity bcd_grey_s is
  port (
	bcd: in bit_vector(3 downto 0);
	grey: out bit_vector(3 downto 0)
  ) ;
end entity ; -- bcd_grey_s

architecture gate of bcd_grey_s is

component xor_gate is
port (a,b: in bit; o: out bit);
end component;
begin

xor1: xor_gate port map (bcd(3),'0',grey(3));
xor2: xor_gate port map (bcd(2),bcd(3),grey(2));
xor3: xor_gate port map (bcd(1),bcd(2),grey(1));
xor4: xor_gate port map (bcd(0),bcd(1),grey(0));

end architecture ; -- gate
