library work;
library ieee;
use work.dv21_combinational.all;
use ieee.std_logic_1164.all;

entity dv21_comb_tb is
end dv21_comb_tb;

architecture dv21_comb_tb_arc of dv21_comb_tb is

signal i: std_logic_vector(3 downto 0) := "0000";
signal o_ha_s,o_ha_c,o_fa_c,o_fa_s,o_hs_d,o_hs_b,o_fs_d,o_fs_b: std_logic;
signal o_mx,o_od,o_ev,o_gr,o_eq,o_le: std_logic;
signal o_dx,o_ec: std_logic_vector(1 downto 0);
signal o_de,o_tw,o_bg,o_gb,o_be,o_eb: std_logic_vector(3 downto 0);

begin

diat_half_adder(i(3),i(2),o_ha_s,o_ha_c);
diat_full_adder(i(3),i(2),i(1),o_fa_s,o_fa_c);
diat_half_subtractor(i(3),i(2),o_hs_d,o_hs_b);
diat_full_subtractor(i(3),i(2),i(1),o_fs_d,o_fs_b);
diat_multiplex_21(i(3),i(2 downto 1),o_mx);
diat_demultiplexer_12(i(3),i(2),o_dx);
diat_encoder_42(i,o_ec);
diat_decoder_24(i(3 downto 2),o_de);
diat_binary_to_gray(i,o_bg);
diat_gray_to_binary(i,o_gb);
diat_binary_to_excess3(i,o_be);
diat_excess3_to_binary(i,o_eb);
diat_one_bit_comparator(i(3),i(2),o_gr,o_eq,o_le);
o_od <= diat_odd_parity_gen_3_bit(i(3 downto 1));
o_ev <= diat_even_parity_gen_3_bit(i(3 downto 1));
diat_twos_complement(i,o_tw);

i(3) <= not i(3) after 80 ns;
i(2) <= not i(2) after 40 ns;
i(1) <= not i(1) after 20 ns;
i(0) <= not i(0) after 10 ns;

end dv21_comb_tb_arc;