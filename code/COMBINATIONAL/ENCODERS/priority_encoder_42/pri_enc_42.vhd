library ieee;
use ieee.std_logic_1164.all;

entity pri_enc_42 is
	port (
		i: in std_logic_vector(3 downto 0);
		o: out std_logic_vector(1 downto 0)
	);
end pri_enc_42;

architecture pri_enc_42_arc of pri_enc_42 is

begin

process(i)
begin
if (i(3) = '1') then
	o <= "11";
elsif (i(2) = '1') then
	o <= "10";
elsif (i(1) = '1') then
	o <= "01";
elsif (i(0) = '1') then
	o <= "00";
end if;	
end process;

end pri_enc_42_arc;