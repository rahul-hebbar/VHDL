library IEEE;
use IEEE.std_logic_1164.all;

entity nor_gate is
port ( a,b: in bit; o: out bit);
end entity;

architecture gate of nor_gate is

begin
o <= a nor b;
end architecture;
