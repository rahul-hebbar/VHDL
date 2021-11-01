library IEEE;
use IEEE.std_logic_1164.all;

entity xnor_gate is
port ( a,b: in bit; o: out bit);
end entity;

architecture gate of xnor_gate is

begin
o <= ((not a) and (not b)) or (a and b);
end architecture;
