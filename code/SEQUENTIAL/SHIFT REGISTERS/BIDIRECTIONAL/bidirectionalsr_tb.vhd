library ieee;
use ieee.std_logic_1164.all;

entity bidirectionalsr_tb is
end bidirectionalsr_tb;

architecture bidirectionalsr_tb_arc of bidirectionalsr_tb is

component bidirectionalsr is
	port (
		dr,dl,dir,clk,clr,set: in std_logic;
		o_r,o_l: inout std_logic
	);
end component;

signal data_r,data_l,direction,clock,clear,set1 : std_logic := '0';
signal out_r,out_l : std_logic;

begin

DUT: bidirectionalsr port map (data_r,data_l,direction,clock,clear,set1,out_r,out_l);

clock <= not clock after 5 ns;

process
begin

clear <= '1';
wait for 10 ns;

clear <= '0';
direction <= '1';
data_r <= '1';
wait for 10 ns;

data_r <= '1';
wait for 10 ns;

data_r <= '0';
wait for 10 ns;

data_r <= '1';
wait for 10 ns;

data_r <= '0';
wait for 40 ns;

clear <= '1';
wait for 10 ns;

clear <= '0';
direction <= '0';
data_l <= '1';
wait for 10 ns;

data_l <= '1';
wait for 10 ns;

data_l <= '0';
wait for 10 ns;

data_l <= '1';
wait for 10 ns;

data_l <= '0';
wait for 40 ns;

end process;

end bidirectionalsr_tb_arc;