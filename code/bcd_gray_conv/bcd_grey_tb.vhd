library ieee;
use ieee.std_logic_1164.all;

entity bcd_grey_tb is
end entity ; -- bcd_grey_tb

architecture gate of bcd_grey_tb is

component bcd_grey_s is
  port (
	bcd: in bit_vector(3 downto 0);
	grey: out bit_vector(3 downto 0)
  ) ;
end component;

signal in1: bit_vector(3 downto 0);
signal out1: bit_vector(3 downto 0);

begin

DUT: bcd_grey_s port map (in1,out1);

process
begin
in1 <= "0000";
wait for 10 ns;
in1 <= "0001";
wait for 10 ns;
in1 <= "0010";
wait for 10 ns;
in1 <= "0011";
wait for 10 ns;
in1 <= "0100";
wait for 10 ns;
in1 <= "0101";
wait for 10 ns;
in1 <= "0110";
wait for 10 ns;
in1 <= "0111";
wait for 10 ns;
in1 <= "1000";
wait for 10 ns;
in1 <= "1001";
wait for 10 ns;

end process;

end architecture ; -- gate
