library ieee;
use ieee.std_logic_1164.all;

entity jk_ff_sync is
	port (
		j,k,clk,set,clr: in std_logic;
		q,q_c: inout std_logic
	);
end jk_ff_sync;

architecture gate of jk_ff_sync is

begin

q_c <= not q;

process(clk)
begin

if (clk'event and clk = '1') then
	if clr = '1' then q <= '0';
	elsif set = '1' then q <= '1';
	else q <= (j and (not q)) or ((not k) and q);
	end if;
end if;

end process;

end gate;
