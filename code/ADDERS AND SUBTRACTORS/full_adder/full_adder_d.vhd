library ieee;
use ieee.std_logic_1164.all;

entity full_adder_d is
port(
a,b,cin: in bit;
s,cout: out bit
);
end entity;

architecture gate of full_adder_d is

begin

s <= a xor b xor cin;
cout <= (a and b) or (b and cin) or (a and cin);

end architecture;
