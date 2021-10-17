library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate is
port ( a,b: in bit; o: out bit);
end entity;

architecture gate of xor_gate is

begin
o <= a xor b;
end architecture;
