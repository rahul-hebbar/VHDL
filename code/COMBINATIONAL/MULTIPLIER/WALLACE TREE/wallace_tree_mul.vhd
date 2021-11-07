library ieee;
use ieee.std_logic_1164.all;

entity wallace_tree_mul is
	port (
		a,b : in std_logic_vector(3 downto 0);
		o : out std_logic_vector(7 downto 0)
	);
end wallace_tree_mul;

architecture wallace_tree_mul_arc of wallace_tree_mul is

procedure fa(signal a,b,cin: in std_logic;signal s,cout: out std_logic) is
begin
	s <= a xor b xor cin;
	cout <= (a and b) or (b and cin) or (a and cin);
end procedure;

signal pa0,pa1,pa2,pa3,pa4,pa5,pa6,pa7,pa8,pa9,pa10,pa11,pa12,pa13,pa14,pa15: std_logic;
signal ini: std_logic := '0';
signal s1,s2,s3,s4,s5,s6: std_logic;
signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11: std_logic;

begin

pa0 <= a(0) and b(0);
pa1 <= a(1) and b(0);
pa2 <= a(0) and b(1);
pa3 <= a(2) and b(0);
pa4 <= a(1) and b(1);
pa5 <= a(0) and b(2);
pa6 <= a(3) and b(0);
pa7 <= a(2) and b(1);
pa8 <= a(1) and b(2);
pa9 <= a(0) and b(3);
pa10 <= a(3) and b(1);
pa11 <= a(2) and b(2);
pa12 <= a(1) and b(3);
pa13 <= a(3) and b(2);
pa14 <= a(2) and b(3);
pa15 <= a(3) and b(3);

-- stage 1
fa(pa8,pa9,ini,s1,c1);
fa(pa11,pa12,ini,s2,c2);

--stage 2
fa(pa4,pa5,ini,s3,c3);
fa(pa6,pa7,s1,s4,c4);
fa(c1,s2,pa10,s5,c5);
fa(pa14,pa13,c2,s6,c6);

--stage 3
o(0) <= pa0;
fa(pa1,pa2,ini,o(1),c7);
fa(pa3,s3,c7,o(2),c8);
fa(c3,s4,c8,o(3),c9);
fa(c4,s5,c9,o(4),c10);
fa(c5,s6,c10,o(5),c11);
fa(c6,pa15,c11,o(6),o(7));

end wallace_tree_mul_arc;
