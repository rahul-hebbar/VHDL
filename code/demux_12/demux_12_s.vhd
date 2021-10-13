library ieee;
use ieee.std_logic_1164.all;

entity demux_21_s is
port (
s,d : in bit;
y : out bit_vector(1 downto 0)
);
end entity;

architecture gate of demux_21_s is

component and_gate is
port(a,b: in bit; o: out bit);
end component;

signal w1: bit;

begin

w1 <= not s;
and1: and_gate port map (w1,d,y(0));
and2: and_gate port map (s,d,y(1));

end architecture;