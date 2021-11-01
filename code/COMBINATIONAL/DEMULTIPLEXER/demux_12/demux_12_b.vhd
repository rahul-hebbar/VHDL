library ieee;
use ieee.std_logic_1164.all;

entity demux_12_b is
port (
s,d : in bit;
y : out bit_vector(1 downto 0)
);
end entity;

architecture gate of demux_12_b is

begin

y(0) <= d when s = '0' else
		'0' when s = '1';
y(1) <= d when s = '1' else
		'0' when s = '0';      
end architecture;