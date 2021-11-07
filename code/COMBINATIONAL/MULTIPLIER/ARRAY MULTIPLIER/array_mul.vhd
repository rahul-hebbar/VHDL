library ieee;
use ieee.std_logic_1164.all;

entity array_mul is
	port (
		a,b: in std_logic_vector(3 downto 0);
		o: out std_logic_vector(7 downto 0)
	);
end array_mul;

architecture array_mul_arc of array_mul is

procedure fa(signal a,b,cin: in std_logic;signal s,cout: out std_logic) is
begin
	s <= a xor b xor cin;
	cout <= (a and b) or (b and cin) or (a and cin);
end procedure;

signal i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15: std_logic;
signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11: std_logic;
signal j1,j2,j3,j4,j5,j6: std_logic;
signal ini: std_logic := '0';

begin
--bit 0
o(0) <= a(0) and b(0);

--bit 1
i1 <= a(1) and b(0);
i2 <= a(0) and b(1);
fa(i1,i2,ini,o(1),c1);

--bit 2
i3 <= a(2) and b(0);
i4 <= a(1) and b(1);
i5 <= a(0) and b(2);
fa(i3,i4,ini,j1,c2);
fa(i5,j1,c1,o(2),c3);

--bit 3
i6 <= a(3) and b(0);
i7 <= a(2) and b(1);
i8 <= a(1) and b(2);
i9 <= a(0) and b(3);
fa(i6,i7,ini,j2,c4);
fa(i8,j2,c2,j3,c5);
fa(i9,j3,c3,o(3),c6);

--bit 4
i10 <= a(3) and b(1);
i11 <= a(2) and b(2);
i12 <= a(1) and b(3);
fa(i10,i11,c4,j4,c7);
fa(i12,j4,c5,j5,c8);
fa(j5,c6,ini,o(4),c9);

--bit 5
i13 <= a(3) and b(2);
i14 <= a(2) and b(3);
fa(i13,i14,c7,j6,c10);
fa(j6,c8,c9,o(5),c11);

-- bit 6 and 7
i15 <= a(3) and b(3);
fa(i15,c10,c11,o(6),o(7));

end array_mul_arc;