library ieee;
use ieee.std_logic_1164.all;

entity jk_negedge_async is
	port (
		j,k,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end jk_negedge_async;

architecture jk_negedge_async_arc of jk_negedge_async is

begin

q_c <= not q;

process(clr,set,clk)
begin

if clr = '1' then q <= '0';
elsif set = '1' then q <= '1';
elsif (clk'event and clk = '0') then
	q <= (j and (not q)) or ((not k) and q);
	
end if;

end process;

end jk_negedge_async_arc;
