library ieee;
use ieee.std_logic_1164.all;

entity d_ff_tb is
end entity ; -- d_ff_tb

architecture gate of d_ff_tb is

component d_ff_sync is
  port (
	d,clk,set,clr: in std_logic;
	q,q_c: inout std_logic
  ) ;
end component ;

signal in1,in2,in3,in4: std_logic := '0';
signal out1,out2 : std_logic;

begin

DUT: d_ff_sync port map (in1,in2,in3,in4,out1,out2);

in2 <= not in2 after 5 ns;

process
begin

in3 <= '0';
in4 <= '1';
wait for 10 ns;

in4 <= '0';
in1 <= '1';
wait for 10 ns;

in1 <= '0';
wait for 10 ns;

in3 <= '1';
wait for 20 ns;

in3 <= '0';
in4 <= '1';
wait for 20 ns;

in4 <= '0';

end process;
end architecture ; -- gate