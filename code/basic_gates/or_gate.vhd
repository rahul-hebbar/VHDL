library IEEE;
use IEEE.std_logic_1164.all;

entity or_gate is
port ( a,b: in bit; o: out bit);
end entity;

architecture gate of or_gate is

begin
o <= a or b;

end architecture;