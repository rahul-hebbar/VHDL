library ieee;
use ieee.std_logic_1164.all;

entity half_adder_b is
port (
a,b: in bit;
s,c: out bit
);
end entity;

architecture gate of half_adder_b is

begin

process(a,b)
begin

if a = '0' and b = '0'
then s <= '0'; c <= '0';

elsif a = '0' and b = '1'
then s <= '1'; c <= '0';

elsif a = '1' and b = '0'
then s <= '1'; c <= '0';

elsif a = '1' and b = '1'
then s <= '0'; c <= '1';

end if;

end process;

end architecture;