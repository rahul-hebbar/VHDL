library ieee;
use ieee.std_logic_1164.all;

entity full_subtractor_b is
port(
a,b,bin: in bit;
d,bout: out bit
);
end entity;

architecture gate of full_subtractor_b is

begin

process(a,b,bin)
begin

if a = '0' and b = '0' and bin = '0'
then d <= '0'; bout <= '0';

elsif a = '0' and b = '0' and bin = '1'
then d <= '1'; bout <= '1';

elsif a = '0' and b = '1' and bin = '0'
then d <= '1'; bout <= '1';

elsif a = '0' and b = '1' and bin = '1'
then d <= '0'; bout <= '1';

elsif a = '1' and b = '0' and bin = '0'
then d <= '1'; bout <= '0';

elsif a = '1' and b = '0' and bin = '1'
then d <= '0'; bout <= '0';

elsif a = '1' and b = '1' and bin = '0'
then d <= '0'; bout <= '0';

elsif a = '1' and b = '1' and bin = '1'
then d <= '1'; bout <= '1';

end if;

end process;

end architecture;


