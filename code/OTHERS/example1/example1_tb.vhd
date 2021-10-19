library ieee;
use ieee.std_logic_1164.all;

entity example1_tb is
end entity ; -- example1_tb

architecture gate of example1_tb is

component example1 is
  port (
	A,B:in std_logic;
	C: out std_logic
  ) ;
end component ; -- example1

signal in1,in2,out1: std_logic;

begin

DUT: example1 port map (in1,in2,out1);

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

in1 <= '0';
in2 <= '0';
wait for 10 ns;

in1 <= '1';
in2 <= '0';
wait for 10 ns;

in1 <= '0';
in2 <= '1';
wait for 10 ns;
 
end process;

end architecture ; -- gate