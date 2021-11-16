library ieee;
use ieee.std_logic_1164.all;

package dv21_combinational is
	
	--HALF ADDER
	procedure diat_half_adder(
		signal in1,in2: in std_logic;
		signal sum,carry: out std_logic
	);

	--FULL ADDER
	procedure diat_full_adder(
		signal in1,in2,carry_in: in std_logic;
		signal sum,carry_out: out std_logic
	);

	--HALF SUBTRACTOR
	procedure diat_half_subtractor(
		signal in1,in2: in std_logic;
		signal diff,borrow: out std_logic
	);

	--FULL SUBTRACTOR
	procedure diat_full_subtractor(
		signal in1,in2,borrow_in: in std_logic;
		signal diff,borrow_out: out std_logic
	);

	-- 2:1 MUX
	procedure diat_multiplex_21(
		signal sel: in std_logic;
		signal inp: in std_logic_vector(1 downto 0);
		signal o: out std_logic
	);

	-- 1:2 DEMUX
	procedure diat_demultiplexer_12(
		signal sel,inp : in std_logic;
		signal o : out std_logic_vector(1 downto 0)
	);

	-- 4:2 ENCODER
	procedure diat_encoder_42(
		signal inp: in std_logic_vector(3 downto 0);
		signal o: out std_logic_vector(1 downto 0)
	);

	-- 2:4 DECODER
	procedure diat_decoder_24(
		signal inp: in std_logic_vector(1 downto 0);
		signal o: out std_logic_vector(3 downto 0)
	);

	-- BINARY TO GRAY
	procedure diat_binary_to_gray(
		signal binary: in std_logic_vector(3 downto 0);
		signal gray: out std_logic_vector(3 downto 0)
	);

	-- GRAY TO BINARY
	procedure diat_gray_to_binary(
		signal gray: in std_logic_vector(3 downto 0);
		signal binary: out std_logic_vector(3 downto 0) 
	);

	-- BINARY TO EXCESS3
	procedure diat_binary_to_excess3(
		signal binary: in std_logic_vector(3 downto 0);
		signal exc: out std_logic_vector(3 downto 0)
	);

	-- EXCESS3 TO BINARY
	procedure diat_excess3_to_binary(
		signal exc: in std_logic_vector(3 downto 0);
		signal binary: out std_logic_vector(3 downto 0)
	);

	-- ONE BIT COMPARATOR
	procedure diat_one_bit_comparator(
		signal a,b: in std_logic;
		signal gre,eq,les: out std_logic
	);

	-- THREE BIT ODD PARITY GENERATOR
	function diat_odd_parity_gen_3_bit(
		inp: in std_logic_vector(2 downto 0)
	) return std_logic;

	-- THREE BIT EVEN PARITY GENERATOR
	function diat_even_parity_gen_3_bit(
		inp: in std_logic_vector(2 downto 0)
	) return std_logic;

	-- 4BIT TWOS COMPLEMENT
	procedure diat_twos_complement(
		signal inp: in std_logic_vector(3 downto 0);
		signal o: out std_logic_vector(3 downto 0)
	);

end dv21_combinational;

package body dv21_combinational is

	--HALF ADDER
	procedure diat_half_adder(
		signal in1,in2: in std_logic;
		signal sum,carry: out std_logic
	) is
	begin
		sum <= in1 xor in2;
		carry <= in1 and in2;
	end procedure;

	-- FULL ADDER
	procedure diat_full_adder(
		signal in1,in2,carry_in: in std_logic;
		signal sum,carry_out: out std_logic
	) is
	begin
		sum <= in1 xor in2 xor carry_in;
		carry_out <= (in1 and in2) or (in2 and carry_in) or (in1 and carry_in);
	end procedure;

	-- HALF SUBTRACTOR
	procedure diat_half_subtractor(
		signal in1,in2: in std_logic;
		signal diff,borrow: out std_logic
	) is
	begin
		diff <= in1 xor in2;
		borrow <= (not in1) and in2;
	end procedure;

	-- FULL SUBTRACTOR
	procedure diat_full_subtractor(
		signal in1,in2,borrow_in: in std_logic;
		signal diff,borrow_out: out std_logic
	) is
	begin
	diff <= in1 xor in2 xor borrow_in;
	borrow_out <= (in2 and borrow_in) or ((not in1) and (in2 or borrow_in));
	end procedure;

	-- 2:1 MUX
	procedure diat_multiplex_21(
		signal sel: in std_logic;
		signal inp: in std_logic_vector(1 downto 0);
		signal o: out std_logic
	) is
	begin
		o <= (inp(0) and (not sel)) or (inp(1) and sel);
	end procedure;

	-- 1:2 DEMUX
	procedure diat_demultiplexer_12(
		signal sel,inp : in std_logic;
		signal o : out std_logic_vector(1 downto 0)
	) is
	begin
		o(0) <= (not sel) and inp;
		o(1) <= sel and inp;
	end procedure;

	-- 4:2 ENCODER
	procedure diat_encoder_42(
		signal inp: in std_logic_vector(3 downto 0);
		signal o: out std_logic_vector(1 downto 0)
	) is
	begin
		o(0) <= inp(3) or inp(1);
		o(1) <= inp(3) or inp(2);
	end procedure;

	-- 2:4 DECODER
	procedure diat_decoder_24(
		signal inp: in std_logic_vector(1 downto 0);
		signal o: out std_logic_vector(3 downto 0)
	) is
	begin
		o(3) <= inp(1) and inp(0);
		o(2) <= inp(1) and (not inp(0));
		o(1) <= (not inp(1)) and inp(0);
		o(0) <= (not inp(1)) and (not inp(0));
	end procedure;

	-- BINARY TO GRAY
	procedure diat_binary_to_gray(
		signal binary: in std_logic_vector(3 downto 0);
		signal gray: out std_logic_vector(3 downto 0)
	) is
	begin
		gray(3) <= binary(3);
		gray(2) <= binary(2) xor binary(3);
		gray(1) <= binary(1) xor binary(2);
		gray(0) <= binary(0) xor binary(1);
	end procedure;

	-- GRAY TO BINARY
	procedure diat_gray_to_binary(
		signal gray: in std_logic_vector(3 downto 0);
		signal binary: out std_logic_vector(3 downto 0) 
	) is
	begin
		binary(3) <= gray(3);
		binary(2) <= gray(3) xor gray(2);
		binary(1) <= gray(3) xor gray(2) xor gray(1);
		binary(0) <= gray(3) xor gray(2) xor gray(1) xor gray(0);
	end procedure;

	-- BINARY TO EXCESS3
	procedure diat_binary_to_excess3(
		signal binary: in std_logic_vector(3 downto 0);
		signal exc: out std_logic_vector(3 downto 0)
	) is
	begin
		exc(3) <= binary(3) or (binary(2) and binary(1)) or (binary(2) and binary(0));
		exc(2) <=  ((not binary(2)) and (binary(1) or binary(0))) or (binary(2) and (not binary(1)) and (not binary(0)));
		exc(1) <= binary(1) xnor binary(0);
		exc(0) <= not binary(0);
	end procedure;

	-- EXCESS3 TO BINARY
	procedure diat_excess3_to_binary(

		signal exc: in std_logic_vector(3 downto 0);
		signal binary: out std_logic_vector(3 downto 0)
	) is
	begin
		binary(0) <= not exc(0);
		binary(1) <= exc(1) xor exc(0);
		binary(2) <= ((not exc(2)) and ((not exc(1)) or (not exc(0)))) or (exc(0) and exc(1) and exc(2));
		binary(3) <= exc(3) and (exc(2) or (exc(1) and exc(0)));
	end procedure;

	-- ONE BIT COMPARATOR
	procedure diat_one_bit_comparator(
		signal a,b: in std_logic;
		signal gre,eq,les: out std_logic
	) is
	begin
		gre <= a and (not b);
		les <= (not a) and b;
		eq <=  a xnor b;
	end procedure;

	-- THREE BIT ODD PARITY GENERATOR
	function diat_odd_parity_gen_3_bit(
		inp: in std_logic_vector(2 downto 0)
	) return std_logic is
	variable par: std_logic;
	begin
		par := not (inp(0) xor inp(1) xor inp(2));
		return par;
	end function;

	-- THREE BIT ODD PARITY GENERATOR
	function diat_even_parity_gen_3_bit(
		inp: in std_logic_vector(2 downto 0)
	) return std_logic is
	variable par: std_logic;
	begin
		par := (inp(0) xor inp(1) xor inp(2));
		return par;
	end function;

	-- 4BIT TWOS COMPLEMENT
	procedure diat_twos_complement(
		signal inp: in std_logic_vector(3 downto 0);
		signal o: out std_logic_vector(3 downto 0)
	) is
	begin
		o(3) <= ((not inp(3)) and (inp(2) or inp(1) or inp(0))) or 
				(inp(3) and (not inp(2)) and (not inp(1)) and (not inp(0)));
		o(2) <= ((not inp(2)) and (inp(1) or inp(0))) or
				(inp(2) and (not inp(1)) and (not inp(0)));
		o(1) <= inp(1) xor inp(0);
		o(0) <= inp(0);
	end procedure;

end dv21_combinational;

