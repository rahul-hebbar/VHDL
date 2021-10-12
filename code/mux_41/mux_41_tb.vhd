library ieee;
use ieee.std_logic_1164.all;

entity mux_41_tb is
end entity;

architecture gate of mux_41_tb is

component mux_41_s is
port(
	s: in bit_vector(1 downto 0);
	d: in bit_vector(3 downto 0);
	y: out bit
);
end component;

signal in1: bit_vector(1 downto 0);
signal in2: bit_vector(3 downto 0);
signal out1: bit;

begin

multi: mux_41_s port map (in1,in2,out1);

process
begin

in2 <= "1001";
in1 <= "00";
wait for 10 ns;

in2 <= "1001";
in1 <= "01";
wait for 10 ns;

in2 <= "1001";
in1 <= "10";
wait for 10 ns;

in2 <= "1001";
in1 <= "11";
wait for 10 ns;

in2 <= "0110";
in1 <= "00";
wait for 10 ns;

in2 <= "0110";
in1 <= "01";
wait for 10 ns;

in2 <= "0110";
in1 <= "10";
wait for 10 ns;

in2 <= "0110";
in1 <= "11";
wait for 10 ns;

end process;

end architecture;

