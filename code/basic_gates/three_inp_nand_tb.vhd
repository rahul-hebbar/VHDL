library IEEE;
use ieee.std_logic_1164.all;

entity three_inp_nand_tb is
end entity;

architecture gate of three_inp_nand_tb is

component three_inp_nand
port (a,b,c : in bit; o: out bit);
end component;

signal inp: bit_vector(2 downto 0);
signal out1: bit;

begin

UUT: three_inp_nand port map (a=>inp(0),b=>inp(1),c=>inp(2),o=>out1);

process
begin
inp <= "000";
wait for 10 ns;
inp <= "001";
wait for 10 ns;
inp <= "010";
wait for 10 ns;
inp <= "011";
wait for 10 ns;
inp <= "100";
wait for 10 ns;
inp <= "101";
wait for 10 ns;
inp <= "110";
wait for 10 ns;
inp <= "111";
wait for 10 ns;
end process;

end architecture;
