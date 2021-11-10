library ieee;
use ieee.std_logic_1164.all;

entity pri_enc_42_tb is
end pri_enc_42_tb;

architecture pri_enc_42_tb_arc of pri_enc_42_tb is

component pri_enc_42 is
	port (
		i: in std_logic_vector(3 downto 0);
		o: out std_logic_vector(1 downto 0)
	);

end component;

signal i: std_logic_vector(3 downto 0);
signal o: std_logic_vector(1 downto 0);

begin

DUT: pri_enc_42 port map (i,o);

process
begin
i <= "0010";
wait for 10 ns;
i <= "0110";
wait for 10 ns;
i <= "1010";
wait for 10 ns;
i <= "0011";
wait for 10 ns;
i <= "0001";
wait for 10 ns;

end process;

end pri_enc_42_tb_arc;