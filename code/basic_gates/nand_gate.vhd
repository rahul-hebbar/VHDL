library IEEE;
use IEEE.std_logic_1164.all;

entity nand_gate is
port ( a,b: in bit; o: out bit);
end entity;

architecture gate of nand_gate is

begin
o <= a nand b;
end architecture;
