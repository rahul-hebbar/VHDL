library ieee;
use ieee.std_logic_1164.all;

entity two_bit_comp_tb is
end entity ; -- two_bit_comp_tb

architecture gate of two_bit_comp_tb is

component two_bit_comp_s is
  port (
	a,b: in bit_vector(1 downto 0);
	gre,les,eq: out bit
  ) ;
end component ;

signal in1,in2: bit_vector(1 downto 0);
signal g,l,e: bit;

begin

twobitcomp: two_bit_comp_s port map (in1,in2,g,l,e);

process
begin

in1 <= "00"; in2 <= "00";
wait for 10 ns;
in1 <= "01"; in2 <= "00";
wait for 10 ns;
in1 <= "10"; in2 <= "00";
wait for 10 ns;
in1 <= "11"; in2 <= "00";
wait for 10 ns;

in1 <= "00"; in2 <= "01";
wait for 10 ns;
in1 <= "01"; in2 <= "01";
wait for 10 ns;
in1 <= "10"; in2 <= "01";
wait for 10 ns;
in1 <= "11"; in2 <= "01";
wait for 10 ns;

in1 <= "00"; in2 <= "10";
wait for 10 ns;
in1 <= "01"; in2 <= "10";
wait for 10 ns;
in1 <= "10"; in2 <= "10";
wait for 10 ns;
in1 <= "11"; in2 <= "10";
wait for 10 ns;

in1 <= "00"; in2 <= "11";
wait for 10 ns;
in1 <= "01"; in2 <= "11";
wait for 10 ns;
in1 <= "10"; in2 <= "11";
wait for 10 ns;
in1 <= "11"; in2 <= "11";
wait for 10 ns;

end process;

end architecture ; -- gate