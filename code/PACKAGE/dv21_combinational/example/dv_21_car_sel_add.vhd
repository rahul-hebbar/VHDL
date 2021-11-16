library work;
library ieee;
use work.dv21_combinational.all;
use ieee.std_logic_1164.all;

entity dv_21_car_sel_add is
  	port (
		a,b: in std_logic_vector(3 downto 0);
		cin: in std_logic;
		s: out std_logic_vector(3 downto 0);
		cout: out std_logic
  	) ;
end dv_21_car_sel_add;

architecture dv_21_car_sel_add_arc of dv_21_car_sel_add is

signal si: std_logic_vector(7 downto 0);
signal ci: std_logic_vector(7 downto 0);
signal m1,m2,m3,m4,m5: std_logic_vector(1 downto 0);
signal zero: std_logic := '0';
signal one: std_logic := '1';

begin

diat_full_adder(a(0),b(0),zero,si(0),ci(0));
diat_full_adder(a(1),b(1),ci(0),si(1),ci(1));
diat_full_adder(a(2),b(2),ci(1),si(2),ci(2));
diat_full_adder(a(3),b(3),ci(2),si(3),ci(3));

diat_full_adder(a(0),b(0),one,si(4),ci(4));
diat_full_adder(a(1),b(1),ci(4),si(5),ci(5));
diat_full_adder(a(2),b(2),ci(5),si(6),ci(6));
diat_full_adder(a(3),b(3),ci(6),si(7),ci(7));

m1 <= si(4) & si(0);
m2 <= si(5) & si(1);
m3 <= si(6) & si(2);
m4 <= si(7) & si(3);
m5 <= ci(7) & ci(3);

diat_multiplex_21(cin,m1,s(0));
diat_multiplex_21(cin,m2,s(1));
diat_multiplex_21(cin,m3,s(2));
diat_multiplex_21(cin,m4,s(3));
diat_multiplex_21(cin,m5,cout);

end dv_21_car_sel_add_arc;