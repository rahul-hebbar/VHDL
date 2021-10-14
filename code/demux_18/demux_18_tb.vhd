library ieee;
use ieee.std_logic_1164.all;

entity demux_18_tb is
end entity;

architecture gate of demux_18_tb is

component demux_18 is
port (
s: in bit_vector(2 downto 0);
d: in bit;
y: out bit_vector(7 downto 0)
);
end component;

signal in1: bit_vector(2 downto 0);
signal in2: bit;
signal out1: bit_vector(7 downto 0);

begin

demux18 : demux_18 port map (in1(2 downto 0),in2,out1(7 downto 0));

process
begin

in2 <= '1';

in1 <= "000";
wait for 10 ns;

in1 <= "001";
wait for 10 ns;

in1 <= "010";
wait for 10 ns;

in1 <= "011";
wait for 10 ns;

in1 <= "100";
wait for 10 ns;

in1 <= "101";
wait for 10 ns;

in1 <= "110";
wait for 10 ns;

in1 <= "111";
wait for 10 ns;

end process;

end architecture;