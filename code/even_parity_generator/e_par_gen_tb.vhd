library ieee;
use ieee.std_logic_1164.all;

entity e_par_gen_tb is
end entity ; -- e_par_gen_tb

architecture gate of e_par_gen_tb is

component e_par_gen_s is
  port (
	a: in bit_vector(2 downto 0);
	par: out bit
  ) ;
end component;

signal in1: bit_vector(2 downto 0);
signal out1: bit;

begin

e_par: e_par_gen_s port map (in1,out1);

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
