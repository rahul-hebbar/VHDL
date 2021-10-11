library ieee;
use ieee.std_logic_1164.all;

entity half_subtractor_b is
port (
a,b: in bit;
d,bor: out bit
);
end entity;

architecture gate of half_subtractor_b is

begin

process(a,b)
begin

if a = '0' and b = '0'
then d <= '0'; bor <= '0';

elsif a = '0' and b = '1'
then d <= '1'; bor <= '1';

elsif a = '1' and b = '0'
then d <= '1'; bor <= '0';

elsif a = '1' and b = '1'
then d <= '0'; bor <= '0';

end if;

end process;

end architecture;
