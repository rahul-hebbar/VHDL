library ieee;
use ieee.std_logic_1164.all;

entity decoder_24_tb is
end entity ; -- decoder_24_tb

architecture gate of decoder_24_tb is

component decoder_24_s is
  port (
	i: in bit_vector(1 downto 0);
	o: out bit_vector(3 downto 0)
  ) ;
end component ; -- decoder_24_s

signal in1: bit_vector(1 downto 0);
signal out1: bit_vector(3 downto 0);

begin

dec24: decoder_24_s port map (in1,out1);

process
begin

in1 <= "00";
wait for 10 ns;
in1 <= "01";
wait for 10 ns;
in1 <= "10";
wait for 10 ns;
in1 <= "11";
wait for 10 ns;

end process;
end architecture ; -- gate
