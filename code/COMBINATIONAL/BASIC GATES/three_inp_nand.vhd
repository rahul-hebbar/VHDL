library IEEE;
use ieee.std_logic_1164.all;

entity three_inp_nand is
port ( 
a,b,c: in bit;
o: out bit
);
end entity;

architecture gate of three_inp_nand is

begin
o <= not(a and b and c);
end architecture;
