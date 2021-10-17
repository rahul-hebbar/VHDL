library IEEE;
use ieee.std_logic_1164.all;

entity comb_ckt_b is
port (
a,b,c,d: in bit;
f,g: out bit
);
end entity;

architecture d_gate of comb_ckt_b is

signal w1,w2,w3,w4,w5: bit;

begin
process(a,b,c,d)
begin

if a='0' and b = '0' and c = '0' and d = '0'
then f <= '0'; g <= '1';

elsif a='0' and b = '0' and c = '0' and d = '1'
then f <= '1'; g <= '0';

elsif a='0' and b = '0' and c = '1' and d = '0'
then f <= '0'; g <= '1';

elsif a='0' and b = '0' and c = '1' and d = '1'
then f <= '1'; g <= '0';

elsif a='0' and b = '1' and c = '0' and d = '0'
then f <= '0'; g <= '1';

elsif a='0' and b = '1' and c = '0' and d = '1'
then f <= '1'; g <= '0';

elsif a='0' and b = '1' and c = '1' and d = '0'
then f <= '0'; g <= '1';

elsif a='0' and b = '1' and c = '1' and d = '1'
then f <= '1'; g <= '0';

elsif a='1' and b = '0' and c = '0' and d = '0'
then f <= '0'; g <= '0';

elsif a='1' and b = '0' and c = '0' and d = '1'
then f <= '0'; g <= '0';

elsif a='1' and b = '0' and c = '1' and d = '0'
then f <= '0'; g <= '0';

elsif a='1' and b = '0' and c = '1' and d = '1'
then f <= '0'; g <= '0';

elsif a='1' and b = '1' and c = '0' and d = '0'
then f <= '0'; g <= '0';

elsif a='1' and b = '1' and c = '0' and d = '1'
then f <= '0'; g <= '0';

elsif a='1' and b = '1' and c = '1' and d = '0'
then f <= '1'; g <= '1';

elsif a='1' and b = '1' and c = '1' and d = '1'
then f <= '1'; g <= '1';

end if;

end process;

end architecture; 

