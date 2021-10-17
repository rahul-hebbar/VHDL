library ieee;
use ieee.std_logic_1164.all;

entity demux_12_tb is
end entity;

architecture gate of demux_12_tb is

component demux_12_s is
port (
s,d : in bit;
y : out bit_vector(1 downto 0)
);
end component;

signal in1,in2: bit;
signal out1: bit_vector(1 downto 0);

begin

demux_21: demux_12_s port map (in1,in2,out1);

process
begin

in2 <= '1';

in1 <= '0';
wait for 10 ns;

in1 <= '1';
wait for 10 ns;

end process;
end architecture;