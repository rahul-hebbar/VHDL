library ieee;
use ieee.std_logic_1164.all;

entity full_subtractor_d is
port(
a,b,bin: in bit;
d,bout: out bit
);
end entity;

architecture gate of full_subtractor_d is

begin

d <= a xor b xor bin;
bout <= (b and bin) or ((not a) and (b or bin));

end architecture;

