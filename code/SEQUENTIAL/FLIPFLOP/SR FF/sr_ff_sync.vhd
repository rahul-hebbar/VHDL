library ieee;
use ieee.std_logic_1164.all;

entity sr_ff_sync is
  port (
	s,r,clk,set,clr: in std_logic;
	q,q_c: inout std_logic
  ) ;
end entity ; -- sr_ff_sync

architecture gate of sr_ff_sync is

begin
q_c <= not q;

process(clk)
begin

if (clk = '1' and clk'event) then q <= s or ((not r) and q);
	if clr = '1' then q <= '0';
	elsif set = '1' then q <= '1';
	elsif (s /= r) then
		q <= s;
	elsif (s = '1' and r = '1') then
		q <= 'U';
	end if;
end if;

end process;

end architecture ; -- gate
