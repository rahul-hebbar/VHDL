library ieee;
use ieee.std_logic_1164.all;

entity demux_18 is
port (
s: in bit_vector(2 downto 0);
d: in bit;
y: out bit_vector(7 downto 0)
);
end entity;

architecture gate of demux_18 is

component demux_14_s is
port (
s : in bit_vector(1 downto 0);
d : in bit;
y : out bit_vector(3 downto 0)
);
end component;

component demux_12_d is
port (
s,d : in bit;
y : out bit_vector(1 downto 0)
);
end component;

signal w: bit_vector(1 downto 0);

begin

demux12: demux_12_d port map (s(2),d,w(1 downto 0));
demux14_1: demux_14_s port map (s(1 downto 0),w(0),y(3 downto 0));
demux14_2: demux_14_s port map (s(1 downto 0),w(1),y(7 downto 4));

end architecture;