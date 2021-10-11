library ieee;
use ieee.std_logic_1164.all;

entity comb_ckt_d_tb is
end entity;

architecture comb_gate of comb_ckt_d_tb is

component comb_ckt_d is
port (
a,b,c,d: in bit;
f,g: out bit
);
end component;

signal inp: bit_vector(3 downto 0);
signal out1,out2: bit;

begin

UUT: comb_ckt_d port map (inp(3),inp(2),inp(1),inp(0),out1,out2);

process
begin
inp <= "0000";
wait for 10 ns;
inp <= "0001";
wait for 10 ns;
inp <= "0010";
wait for 10 ns;
inp <= "0011";
wait for 10 ns;
inp <= "0100";
wait for 10 ns;
inp <= "0101";
wait for 10 ns;
inp <= "0110";
wait for 10 ns;
inp <= "0111";
wait for 10 ns;
inp <= "1000";
wait for 10 ns;
inp <= "1001";
wait for 10 ns;
inp <= "1010";
wait for 10 ns;
inp <= "1011";
wait for 10 ns;
inp <= "1100";
wait for 10 ns;
inp <= "1101";
wait for 10 ns;
inp <= "1110";
wait for 10 ns;
inp <= "1111";
wait for 10 ns;
end process;

end architecture;