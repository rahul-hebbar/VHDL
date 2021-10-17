library ieee;
use ieee.std_logic_1164.all;

entity exc3_bcd_tb is
end entity ; -- exc3_bcd_tb

architecture gate of exc3_bcd_tb is

component exc3_bcd_s is
  port (
	exc: in bit_vector(3 downto 0);
	bcd: out bit_vector(3 downto 0)
  ) ;
end component;

signal in1: bit_vector(3 downto 0);
signal out1: bit_vector(3 downto 0);

begin

bcdexc3: exc3_bcd_s port map (in1,out1);

process
begin
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
in1 <= "1010";
wait for 10 ns;
in1 <= "1011";
wait for 10 ns;
in1 <= "1100";
wait for 10 ns;

end process;

end architecture ; -- gate