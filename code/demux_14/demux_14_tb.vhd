library ieee;
use ieee.std_logic_1164.all;

entity demux_14_tb is
end entity;

architecture gate of demux_14_tb is

component demux_14_s is
port (
s : in bit_vector(1 downto 0);
d : in bit;
y : out bit_vector(3 downto 0)
);
end component;

signal in1: bit_vector(1 downto 0);
signal in2: bit;
signal out1: bit_vector(3 downto 0);

begin

demux_14: demux_14_s port map (in1,in2,out1);

process
begin

in2 <= '1';

in1 <= "00";
wait for 10 ns;

in1 <= "01";
wait for 10 ns;

in1 <= "10";
wait for 10 ns;

in1 <= "11";
wait for 10 ns;

end process;

end architecture;