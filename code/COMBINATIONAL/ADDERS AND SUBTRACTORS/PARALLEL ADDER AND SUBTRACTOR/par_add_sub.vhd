library ieee;
use ieee.std_logic_1164.all;

entity par_add_sub is
	port (
		a,b: in std_logic_vector(3 downto 0);
		ctrl: in std_logic;
		cout: out std_logic;
		o: out std_logic_vector(3 downto 0)
	);
end par_add_sub;

architecture par_add_sub_arc of par_add_sub is

procedure fa(signal a,b,cin: in std_logic;signal s,cout: out std_logic) is
begin
	s <= a xor b xor cin;
	cout <= (a and b) or (b and cin) or (a and cin);
end procedure;

signal int0,int1,int2,int3: std_logic;
signal co0,co1,co2,co3 :std_logic;

begin

int0 <= b(0) xor ctrl;
int1 <= b(1) xor ctrl;
int2 <= b(2) xor ctrl;
int3 <= b(3) xor ctrl;

fa(a(0),int0,ctrl,o(0),co0);
fa(a(1),int1,co0,o(1),co1);
fa(a(2),int2,co1,o(2),co2);
fa(a(3),int3,co2,o(3),co3);

cout <= co3 xor ctrl;

end par_add_sub_arc;