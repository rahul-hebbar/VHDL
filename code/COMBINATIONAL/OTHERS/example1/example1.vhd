library ieee;
use ieee.std_logic_1164.all;

entity example1 is
  port (
	A,B:in std_logic;
	C: out std_logic
  ) ;
end entity ; -- example1

architecture gate of example1 is

begin

process(A)
begin
C <= A or B;
end process;

end architecture ; -- gate