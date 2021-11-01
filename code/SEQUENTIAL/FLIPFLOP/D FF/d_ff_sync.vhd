library ieee;
use ieee.std_logic_1164.all;

entity d_ff_sync is
    port (
  		d,clk,set,clr: in std_logic;
  		q,q_c: inout std_logic
    ) ;
end entity ; -- d_ff_sync

architecture gate of d_ff_sync is

begin

q_c <= not q;

process(clk)
begin
if (clk'event and clk = '1') then
	if clr = '1' then q <= '0';
	elsif set = '1' then q <= '1';
	elsif clk = '1' then q <= d;
	end if;
end if;
end process;

end architecture ; -- gate