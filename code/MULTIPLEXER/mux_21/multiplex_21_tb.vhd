library ieee;
use ieee.std_logic_1164.all;

entity multiplex_21_tb is
end entity;

architecture gate of multiplex_21_tb is

component multiplex_21_b is
port(
	s: in bit;
	d: in bit_vector(1 downto 0);
	y: out bit
);
end component;

signal in1,out1: bit;
signal in2: bit_vector(1 downto 0);

begin

multi: multiplex_21_b port map (in1,in2,out1);

process
begin

in2 <= "01";
in1 <= '0';
wait for 10 ns;

in1 <= '1';
wait for 10 ns;

in2 <= "10";
in1 <= '0';
wait for 10 ns;

in1 <= '1';
wait for 10 ns;

in2 <= "00";
in1 <= '0';
wait for 10 ns;

in1 <= '1';
wait for 10 ns;

in2 <= "11";
in1 <= '0';
wait for 10 ns;

in1 <= '1';
wait for 10 ns;

end process;

end architecture;
