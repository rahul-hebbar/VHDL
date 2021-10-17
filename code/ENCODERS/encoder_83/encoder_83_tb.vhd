library ieee;
use ieee.std_logic_1164.all;

entity encoder_83_tb is
end entity ;

architecture gate of encoder_83_tb is

component encoder_83_b is
  port (
	i: in bit_vector(7 downto 0);
	o: out bit_vector(2 downto 0)
  ) ;
end component ;

signal in1: bit_vector(7 downto 0);
signal out1: bit_vector(2 downto 0);

begin

enc83: encoder_83_b port map (in1,out1);

process
begin
in1 <= "00000001";
wait for 10 ns;
in1 <= "00000010";
wait for 10 ns;
in1 <= "00000100";
wait for 10 ns;
in1 <= "00001000";
wait for 10 ns;
in1 <= "00010000";
wait for 10 ns;
in1 <= "00100000";
wait for 10 ns;
in1 <= "01000000";
wait for 10 ns;
in1 <= "10000000";
wait for 10 ns;

end process;

end architecture ;
