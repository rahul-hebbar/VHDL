library ieee;
use ieee.std_logic_1164.all;

entity dv_21_car_sel_add_tb is
end dv_21_car_sel_add_tb;

architecture dv_21_car_sel_add_tb_arc of dv_21_car_sel_add_tb is

component dv_21_car_sel_add is
  	port (
		a,b: in std_logic_vector(3 downto 0);
		cin: in std_logic;
		s: out std_logic_vector(3 downto 0);
		cout: out std_logic
  	) ;
end component;

signal in1,in2: std_logic_vector(3 downto 0);
signal in3: std_logic;
signal out1: std_logic_vector(3 downto 0);
signal out2: std_logic;

begin
DUT: dv_21_car_sel_add port map (in1,in2,in3,out1,out2);

process
begin

in1 <= "1011";
in2 <= "1111";

in3 <= '0';
wait for 10 ns;

in3 <= '1';
wait for 10 ns;

in1 <= "0001";
in2 <= "1010";

in3 <= '0';
wait for 10 ns;

in3 <= '1';
wait for 10 ns;

in1 <= "0111";
in2 <= "1111";

in3 <= '0';
wait for 10 ns;

in3 <= '1';
wait for 10 ns;

end process;

end dv_21_car_sel_add_tb_arc;