library ieee;
use ieee.std_logic_1164.all;

entity encoder_42_tb is
end entity;

architecture gate of encoder_42_tb is

component encoder_42_s is
port(
i: in bit_vector(3 downto 0);
o: out bit_vector(1 downto 0)
);
end component;

signal in1: bit_vector(3 downto 0);
signal out1: bit_vector(1 downto 0);

begin

enc42: encoder_42_s port map(in1,out1);

process
begin

in1 <= "0001";
wait for 10 ns;
in1 <= "0010";
wait for 10 ns;
in1 <= "0100";
wait for 10 ns;
in1 <= "1000";
wait for 10 ns;

end process;
end architecture ;

