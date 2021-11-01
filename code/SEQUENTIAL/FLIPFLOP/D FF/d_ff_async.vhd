library ieee;
use ieee.std_logic_1164.all;

entity d_ff_async is
  port (
	d,clk,set,clr: in std_logic;
	q,q_c: inout std_logic
  ) ;
end entity ; -- d_ff_async

architecture gate of d_ff_async is

begin

q_c <= not q;

process(clr,set,clk)
begin
if clr = '1' then q <= '0';
elsif set = '1' then q <= '1';
elsif (clk'event and clk = '1') then q <= d;
end if;
end process;

end architecture ; -- gate