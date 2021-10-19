library ieee;
use ieee.std_logic_1164.all;

entity example2_tb is
end entity ; -- example2_tb

architecture gate of example2_tb is

component example2_s_var is
  port (
	a,b,d: in bit;
	o: out bit
  ) ;
end component ; -- example2_s_var

signal in1: bit_vector (2 downto 0);
signal out1: bit;

begin

DUT: example2_s_var port map (in1(2),in1(1),in1(0),out1);

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
end architecture;
