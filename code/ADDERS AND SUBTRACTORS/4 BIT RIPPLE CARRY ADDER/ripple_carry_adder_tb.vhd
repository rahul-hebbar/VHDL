library ieee;
use ieee.std_logic_1164.all;

entity ripple_carry_adder_tb is
end entity ; -- ripple_carry_adder_tb

architecture gate of ripple_carry_adder_tb is

component ripple_carry_adder is
  port (
	a,b: in bit_vector(3 downto 0);
	cin: in bit;
	s: out bit_vector(3 downto 0);
	cout: out bit
  ) ;
end component ; -- ripple_carry_adder

signal in1,in2: bit_vector(3 downto 0);
signal in3: bit;
signal out1: bit_vector(3 downto 0);
signal out2: bit;

begin

DUT: ripple_carry_adder port map (in1,in2,in3,out1,out2);

process
begin

in1 <= "0000";
in2 <= "0110";

in3 <= '0';
wait for 10 ns;

in3 <= '1';
wait for 10 ns;

in1 <= "1111";

in3 <= '0';
wait for 10 ns;

in3 <= '1';
wait for 10 ns;

in2 <= "1111";

in3 <= '0';
wait for 10 ns;

in3 <= '1';
wait for 10 ns;

end process;

end architecture ; -- gate
