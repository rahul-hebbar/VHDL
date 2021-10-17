library ieee;
use ieee.std_logic_1164.all;

entity grey_bcd_s is
  port (
	grey: in bit_vector(3 downto 0);
	bcd: out bit_vector(3 downto 0) 
  ) ;
end entity ; -- grey_bcd: 

architecture gate of grey_bcd_s is

component xor_gate is
port (a,b:in bit; o: out bit);
end component;

signal w1,w2: bit;

begin

xor1: xor_gate port map (grey(3),'0',bcd(3));
xor2: xor_gate port map (grey(3),grey(2),w1);
xor3: xor_gate port map (w1,'0',bcd(2));
xor4: xor_gate port map (w1,grey(1),w2);
xor5: xor_gate port map (w2,'0',bcd(1));
xor6: xor_gate port map (w2,grey(0),bcd(0));

end architecture;
