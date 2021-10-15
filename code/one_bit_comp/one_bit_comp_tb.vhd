library ieee;
use ieee.std_logic_1164.all;

entity one_bit_comp_tb is
end entity ; -- one_bit_comp_tb

architecture gate of one_bit_comp_tb is

component one_bit_comp_s is
  port (
	a,b: in bit;
	gre,eq,les: out bit
  ) ;
end component;

signal in1,in2,g,e,l: bit;

begin

onebitcomp: one_bit_comp_s port map (in1,in2,g,e,l);

process
begin

in1 <= '0';
in2 <= '0';
wait for 10 ns;

in1 <= '0';
in2 <= '1';
wait for 10 ns;

in1 <= '1';
in2 <= '0';
wait for 10 ns;

in1 <= '1';
in2 <= '1';
wait for 10 ns;

end process;

end architecture ; -- gate