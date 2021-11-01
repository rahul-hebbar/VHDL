library ieee;
use ieee.std_logic_1164.all;

entity carry_select_adder_tb is
end entity ; -- carry_select_adder_tb

architecture gate of carry_select_adder_tb is

component carry_select_adder is
  port (
	a,b: in bit_vector(3 downto 0);
	cin: in bit;
	s: out bit_vector(3 downto 0);
	cout: out bit
  ) ;
end component ; -- carry_select_adder

signal in1,in2: bit_vector(3 downto 0);
signal in3: bit;
signal out1: bit_vector(3 downto 0);
signal out2: bit;

begin
DUT: carry_select_adder port map (in1,in2,in3,out1,out2);

process
begin

in1 <= "1011";
in2 <= "1111";

in3 <= '0';
wait for 10 ns;

in3 <= '1';
wait for 10 ns;

in1 <= "0001";
in2 <= "1010";

in3 <= '0';
wait for 10 ns;

in3 <= '1';
wait for 10 ns;

in1 <= "0111";
in2 <= "1111";

in3 <= '0';
wait for 10 ns;

in3 <= '1';
wait for 10 ns;

end process;

end architecture ; -- gate