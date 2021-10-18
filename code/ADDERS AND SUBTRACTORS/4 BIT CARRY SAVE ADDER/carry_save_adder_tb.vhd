library ieee;
use ieee.std_logic_1164.all;

entity carry_save_adder_tb is
end entity ; -- carry_save_adder_tb

architecture gate of carry_save_adder_tb is

component carry_save_adder is
  port (
	a,b,c: in bit_vector(3 downto 0);
	s: out bit_vector(4 downto 0);
	cout: out bit
  ) ;
end component ; -- carry_save_adder

signal in1,in2,in3: bit_vector(3 downto 0);
signal out1: bit_vector(4 downto 0);
signal out2: bit;

begin

DUT: carry_save_adder port map (in1,in2,in3,out1,out2);

process
begin

in1 <= "1100";
in2 <= "1101";
in3 <= "1110";
wait for 10 ns;

in1 <= "1111";
in2 <= "1000";
in3 <= "1001";
wait for 10 ns;

in1 <= "1110";
in2 <= "0101";
in3 <= "0111";
wait for 10 ns;

end process;

end architecture ; -- gate