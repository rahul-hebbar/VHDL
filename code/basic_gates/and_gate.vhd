library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
port(a,b: in bit; o: out bit);
end and_gate;

architecture gate of and_gate is
begin
o <= a and b;
end gate;
