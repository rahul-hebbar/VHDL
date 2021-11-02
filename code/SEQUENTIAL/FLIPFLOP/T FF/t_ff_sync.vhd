library ieee;
use ieee.std_logic_1164.all;

entity t_ff_sync is
	port(
		t,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end entity;

architecture gate of t_ff_sync is

begin

q_c <= not q;

process(clk)
begin

if (clk'event and clk = '1') then
	if clr = '1' then q <= '0';
	elsif (set = '1') then q <= '1';
	else q <= (t and (not q)) or ((not t) and q);
	end if;	
end if;

end process;
	
end architecture;
