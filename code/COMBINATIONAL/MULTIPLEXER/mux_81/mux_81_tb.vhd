library ieee;
use ieee.std_logic_1164.all;

entity mux_81_tb is
end entity;

architecture gate of mux_81_tb is

component mux_81 is
port (
	d: in bit_vector(7 downto 0);
	s: in bit_vector(2 downto 0);
	y: out bit
);
end component;

signal in1: bit_vector(7 downto 0);
signal in2: bit_vector(2 downto 0);
signal out1: bit;

begin

mux_81_1: mux_81 port map (in1,in2,out1);

process
begin
in1 <= "00011011";

in2 <= "000";
wait for 10 ns;

in2 <= "001";
wait for 10 ns;

in2 <= "010";
wait for 10 ns;

in2 <= "011";
wait for 10 ns;

in2 <= "100";
wait for 10 ns;

in2 <= "101";
wait for 10 ns;

in2 <= "110";
wait for 10 ns;

in2 <= "111";
wait for 10 ns;

end process;
end architecture;