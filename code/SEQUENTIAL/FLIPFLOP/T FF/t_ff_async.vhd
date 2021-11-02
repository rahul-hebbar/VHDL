library ieee;
use ieee.std_logic_1164.all;

entity t_ff_async is
	port(
		t,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end entity;

architecture gate of t_ff_async is

begin

q_c <= not q;

process(clr,set,clk)
begin

if clr = '1' then q <= '0';
elsif (set = '1') then q <= '1';
elsif (clk'event and clk = '1') then q <= (t and (not q)) or ((not t) and q);
	
end if;
end process;
	
end architecture;