library ieee;
use ieee.std_logic_1164.all;

entity full_subtractor_tb is
end entity;

architecture gate of full_subtractor_tb is

component full_subtractor_s is
port(
a,b,bin: in bit;
d,bout: out bit
);
end component;

signal in1,in2,in3,out1,out2: bit;

begin

FA: full_subtractor_s port map (in1,in2,in3,out1,out2);

process
begin

in1 <= '0';
in2 <= '0';
in3 <= '0';
wait for 10 ns;
in1 <= '0';
in2 <= '0';
in3 <= '1';
wait for 10 ns;
in1 <= '0';
in2 <= '1';
in3 <= '0';
wait for 10 ns;
in1 <= '0';
in2 <= '1';
in3 <= '1';
wait for 10 ns;
in1 <= '1';
in2 <= '0';
in3 <= '0';
wait for 10 ns;
in1 <= '1';
in2 <= '0';
in3 <= '1';
wait for 10 ns;
in1 <= '1';
in2 <= '1';
in3 <= '0';
wait for 10 ns;
in1 <= '1';
in2 <= '1';
in3 <= '1';
wait for 10 ns;

end process;

end architecture;
