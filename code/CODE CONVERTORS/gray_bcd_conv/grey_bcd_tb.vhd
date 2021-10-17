library ieee;
use ieee.std_logic_1164.all;

entity grey_bcd_tb is
end entity ; -- grey_bcd_tb

architecture gate of grey_bcd_tb is

component grey_bcd_d is
  port (
	grey: in bit_vector(3 downto 0);
	bcd: out bit_vector(3 downto 0) 
  ) ;
end component ; -- grey_bcd:

signal in1: bit_vector(3 downto 0);
signal out1: bit_vector(3 downto 0);

begin

DUT: grey_bcd_d port map (in1,out1);

process
begin
in1 <= "0000";
wait for 10 ns;
in1 <= "0001";
wait for 10 ns;
in1 <= "0011";
wait for 10 ns;
in1 <= "0010";
wait for 10 ns;
in1 <= "0110";
wait for 10 ns;
in1 <= "0111";
wait for 10 ns;
in1 <= "0101";
wait for 10 ns;
in1 <= "0100";
wait for 10 ns;
in1 <= "1100";
wait for 10 ns;
in1 <= "1101";
wait for 10 ns;

end process;
end architecture;

