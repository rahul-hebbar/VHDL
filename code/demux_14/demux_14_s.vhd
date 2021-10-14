library ieee;
use ieee.std_logic_1164.all;

entity demux_14_s is
port (
s : in bit_vector(1 downto 0);
d : in bit;
y : out bit_vector(3 downto 0)
);
end entity;

architecture gate of demux_14_s is

component and_gate is
port(a,b: in bit; o: out bit);
end component;

signal w1,w2,w3,w4,w5,w6: bit;

begin

w1 <= not s(0);
w2 <= not s(1);

and1: and_gate port map (w1,w2,w3);
and2: and_gate port map (w3,d,y(0));

and3: and_gate port map (s(0),w2,w4);
and4: and_gate port map (d,w4,y(1));

and5: and_gate port map (w1,s(1),w5);
and6: and_gate port map (d,w5,y(2));

and7: and_gate port map (s(0),s(1),w6);
and8: and_gate port map (d,w6,y(3));

end architecture;
