library ieee;
use ieee.std_logic_1164.all;

entity decoder_38_tb is
end entity ; -- decoder_38_tb

architecture gate of decoder_38_tb is

component decoder_38_s is
  port (
	i: in bit_vector(2 downto 0);
	o: out bit_vector(7 downto 0)
  ) ;
end component ; -- decoder_38_s

signal in1: bit_vector(2 downto 0);
signal out1: bit_vector(7 downto 0);

begin

dec24: decoder_38_s port map (in1,out1);

process
begin

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
end architecture ; -- gate

