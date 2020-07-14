-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "07/13/2020 21:09:41"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clk_in : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(11 DOWNTO 0)
	);
END LogicalStep_Lab3_top;

ARCHITECTURE structure OF LogicalStep_Lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(11 DOWNTO 0);
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \leds[10]~output_o\ : std_logic;
SIGNAL \leds[11]~output_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \mux1|hex_out[3]~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \mux1|hex_out[2]~1_combout\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \hvac1|counter:cnt[1]~4\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~2\ : std_logic;
SIGNAL \hvac1|counter:cnt[3]~1_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \ctrl1|blower~0_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \cmp1|inst3|sout~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \mux1|hex_out[0]~3_combout\ : std_logic;
SIGNAL \cmp1|results[0]~2_combout\ : std_logic;
SIGNAL \cmp1|results[1]~4_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~5_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[3]~q\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~3_combout\ : std_logic;
SIGNAL \cmp1|results[2]~5_combout\ : std_logic;
SIGNAL \mux1|hex_out[1]~2_combout\ : std_logic;
SIGNAL \cmp1|results[2]~6_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~4_combout\ : std_logic;
SIGNAL \ctrl1|blower~combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[0]~0_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[0]~q\ : std_logic;
SIGNAL \hvac1|counter:cnt[1]~2_cout\ : std_logic;
SIGNAL \hvac1|counter:cnt[1]~3_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[1]~q\ : std_logic;
SIGNAL \hvac1|counter~0_combout\ : std_logic;
SIGNAL \cmp1|results[0]~1_combout\ : std_logic;
SIGNAL \hvac1|counter~1_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~1_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~q\ : std_logic;
SIGNAL \cmp1|results[0]~0_combout\ : std_logic;
SIGNAL \cmp1|results[0]~3_combout\ : std_logic;
SIGNAL \cmp1|results[2]~7_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~0_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~1_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~2_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~3_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~4_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~5_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~6_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~7_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~8_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~9_combout\ : std_logic;
SIGNAL \ctrl1|ALT_INV_blower~combout\ : std_logic;
SIGNAL \cmp1|ALT_INV_results[1]~4_combout\ : std_logic;

BEGIN

ww_clk_in <= clk_in;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ctrl1|ALT_INV_blower~combout\ <= NOT \ctrl1|blower~combout\;
\cmp1|ALT_INV_results[1]~4_combout\ <= NOT \cmp1|results[1]~4_combout\;

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp1|results[0]~3_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp1|ALT_INV_results[1]~4_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmp1|results[2]~7_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl1|ALT_INV_blower~combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb[1]~input_o\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb[0]~input_o\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tst1|TEST_PASS~9_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb[3]~input_o\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hvac1|counter:cnt[0]~q\,
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

\leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hvac1|counter:cnt[1]~q\,
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

\leds[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hvac1|counter:cnt[2]~q\,
	devoe => ww_devoe,
	o => \leds[10]~output_o\);

\leds[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hvac1|counter:cnt[3]~q\,
	devoe => ww_devoe,
	o => \leds[11]~output_o\);

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

\mux1|hex_out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|hex_out[3]~0_combout\ = (\pb[3]~input_o\ & (\sw[3]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[7]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \mux1|hex_out[3]~0_combout\);

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\mux1|hex_out[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|hex_out[2]~1_combout\ = (\pb[3]~input_o\ & (\sw[2]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[6]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \mux1|hex_out[2]~1_combout\);

\clk_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

\hvac1|counter:cnt[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[1]~3_combout\ = (\hvac1|counter:cnt[1]~q\ & ((\hvac1|counter~1_combout\ & (!\hvac1|counter:cnt[1]~2_cout\)) # (!\hvac1|counter~1_combout\ & (\hvac1|counter:cnt[1]~2_cout\ & VCC)))) # (!\hvac1|counter:cnt[1]~q\ & 
-- ((\hvac1|counter~1_combout\ & ((\hvac1|counter:cnt[1]~2_cout\) # (GND))) # (!\hvac1|counter~1_combout\ & (!\hvac1|counter:cnt[1]~2_cout\))))
-- \hvac1|counter:cnt[1]~4\ = CARRY((\hvac1|counter:cnt[1]~q\ & (\hvac1|counter~1_combout\ & !\hvac1|counter:cnt[1]~2_cout\)) # (!\hvac1|counter:cnt[1]~q\ & ((\hvac1|counter~1_combout\) # (!\hvac1|counter:cnt[1]~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[1]~q\,
	datab => \hvac1|counter~1_combout\,
	datad => VCC,
	cin => \hvac1|counter:cnt[1]~2_cout\,
	combout => \hvac1|counter:cnt[1]~3_combout\,
	cout => \hvac1|counter:cnt[1]~4\);

\hvac1|counter:cnt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[2]~1_combout\ = ((\hvac1|counter:cnt[2]~q\ $ (\hvac1|counter~1_combout\ $ (\hvac1|counter:cnt[1]~4\)))) # (GND)
-- \hvac1|counter:cnt[2]~2\ = CARRY((\hvac1|counter:cnt[2]~q\ & ((!\hvac1|counter:cnt[1]~4\) # (!\hvac1|counter~1_combout\))) # (!\hvac1|counter:cnt[2]~q\ & (!\hvac1|counter~1_combout\ & !\hvac1|counter:cnt[1]~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[2]~q\,
	datab => \hvac1|counter~1_combout\,
	datad => VCC,
	cin => \hvac1|counter:cnt[1]~4\,
	combout => \hvac1|counter:cnt[2]~1_combout\,
	cout => \hvac1|counter:cnt[2]~2\);

\hvac1|counter:cnt[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[3]~1_combout\ = \hvac1|counter:cnt[3]~q\ $ (\hvac1|counter~1_combout\ $ (!\hvac1|counter:cnt[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[3]~q\,
	datab => \hvac1|counter~1_combout\,
	cin => \hvac1|counter:cnt[2]~2\,
	combout => \hvac1|counter:cnt[3]~1_combout\);

\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

\ctrl1|blower~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ctrl1|blower~0_combout\ = (\pb[0]~input_o\) # ((\pb[1]~input_o\) # (\pb[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \pb[2]~input_o\,
	combout => \ctrl1|blower~0_combout\);

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\cmp1|inst3|sout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|inst3|sout~0_combout\ = \hvac1|counter:cnt[1]~q\ $ (((\pb[3]~input_o\ & ((\sw[1]~input_o\))) # (!\pb[3]~input_o\ & (\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \hvac1|counter:cnt[1]~q\,
	combout => \cmp1|inst3|sout~0_combout\);

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\mux1|hex_out[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|hex_out[0]~3_combout\ = (\pb[3]~input_o\ & (\sw[0]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[4]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \mux1|hex_out[0]~3_combout\);

\cmp1|results[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[0]~2_combout\ = (\hvac1|counter:cnt[3]~q\ & (\mux1|hex_out[3]~0_combout\ & (\hvac1|counter:cnt[2]~q\ $ (!\mux1|hex_out[2]~1_combout\)))) # (!\hvac1|counter:cnt[3]~q\ & (!\mux1|hex_out[3]~0_combout\ & (\hvac1|counter:cnt[2]~q\ $ 
-- (!\mux1|hex_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[3]~q\,
	datab => \hvac1|counter:cnt[2]~q\,
	datac => \mux1|hex_out[2]~1_combout\,
	datad => \mux1|hex_out[3]~0_combout\,
	combout => \cmp1|results[0]~2_combout\);

\cmp1|results[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[1]~4_combout\ = (\cmp1|inst3|sout~0_combout\) # ((\hvac1|counter:cnt[0]~q\ $ (\mux1|hex_out[0]~3_combout\)) # (!\cmp1|results[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|inst3|sout~0_combout\,
	datab => \hvac1|counter:cnt[0]~q\,
	datac => \mux1|hex_out[0]~3_combout\,
	datad => \cmp1|results[0]~2_combout\,
	combout => \cmp1|results[1]~4_combout\);

\hvac1|counter:cnt[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[2]~5_combout\ = (\ctrl1|blower~0_combout\ & ((\hvac1|counter~1_combout\) # ((\hvac1|counter:cnt[2]~4_combout\)))) # (!\ctrl1|blower~0_combout\ & (!\cmp1|results[1]~4_combout\ & ((\hvac1|counter~1_combout\) # 
-- (\hvac1|counter:cnt[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl1|blower~0_combout\,
	datab => \hvac1|counter~1_combout\,
	datac => \hvac1|counter:cnt[2]~4_combout\,
	datad => \cmp1|results[1]~4_combout\,
	combout => \hvac1|counter:cnt[2]~5_combout\);

\hvac1|counter:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \hvac1|counter:cnt[3]~1_combout\,
	ena => \hvac1|counter:cnt[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvac1|counter:cnt[3]~q\);

\hvac1|counter:cnt[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[2]~3_combout\ = (\hvac1|counter:cnt[1]~q\) # ((\hvac1|counter:cnt[0]~q\) # ((\hvac1|counter:cnt[3]~q\) # (\hvac1|counter:cnt[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[1]~q\,
	datab => \hvac1|counter:cnt[0]~q\,
	datac => \hvac1|counter:cnt[3]~q\,
	datad => \hvac1|counter:cnt[2]~q\,
	combout => \hvac1|counter:cnt[2]~3_combout\);

\cmp1|results[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[2]~5_combout\ = (\hvac1|counter:cnt[3]~q\ & (((\hvac1|counter:cnt[2]~q\ & !\mux1|hex_out[2]~1_combout\)) # (!\mux1|hex_out[3]~0_combout\))) # (!\hvac1|counter:cnt[3]~q\ & (\hvac1|counter:cnt[2]~q\ & (!\mux1|hex_out[2]~1_combout\ & 
-- !\mux1|hex_out[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[3]~q\,
	datab => \hvac1|counter:cnt[2]~q\,
	datac => \mux1|hex_out[2]~1_combout\,
	datad => \mux1|hex_out[3]~0_combout\,
	combout => \cmp1|results[2]~5_combout\);

\mux1|hex_out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|hex_out[1]~2_combout\ = (\pb[3]~input_o\ & (\sw[1]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[5]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \mux1|hex_out[1]~2_combout\);

\cmp1|results[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[2]~6_combout\ = (\hvac1|counter:cnt[1]~q\ & (((\hvac1|counter:cnt[0]~q\ & !\mux1|hex_out[0]~3_combout\)) # (!\mux1|hex_out[1]~2_combout\))) # (!\hvac1|counter:cnt[1]~q\ & (\hvac1|counter:cnt[0]~q\ & (!\mux1|hex_out[0]~3_combout\ & 
-- !\mux1|hex_out[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[1]~q\,
	datab => \hvac1|counter:cnt[0]~q\,
	datac => \mux1|hex_out[0]~3_combout\,
	datad => \mux1|hex_out[1]~2_combout\,
	combout => \cmp1|results[2]~6_combout\);

\hvac1|counter:cnt[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[2]~4_combout\ = (\hvac1|counter:cnt[2]~3_combout\ & ((\cmp1|results[2]~5_combout\) # ((\cmp1|results[0]~2_combout\ & \cmp1|results[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[2]~3_combout\,
	datab => \cmp1|results[2]~5_combout\,
	datac => \cmp1|results[0]~2_combout\,
	datad => \cmp1|results[2]~6_combout\,
	combout => \hvac1|counter:cnt[2]~4_combout\);

\ctrl1|blower\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ctrl1|blower~combout\ = (\pb[0]~input_o\) # ((\pb[1]~input_o\) # ((\pb[2]~input_o\) # (!\cmp1|results[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \pb[2]~input_o\,
	datad => \cmp1|results[1]~4_combout\,
	combout => \ctrl1|blower~combout\);

\hvac1|counter:cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[0]~0_combout\ = \hvac1|counter:cnt[0]~q\ $ (((\ctrl1|blower~combout\ & ((\hvac1|counter~1_combout\) # (\hvac1|counter:cnt[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter~1_combout\,
	datab => \hvac1|counter:cnt[2]~4_combout\,
	datac => \hvac1|counter:cnt[0]~q\,
	datad => \ctrl1|blower~combout\,
	combout => \hvac1|counter:cnt[0]~0_combout\);

\hvac1|counter:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \hvac1|counter:cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvac1|counter:cnt[0]~q\);

\hvac1|counter:cnt[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[1]~2_cout\ = CARRY(\hvac1|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[0]~q\,
	datad => VCC,
	cout => \hvac1|counter:cnt[1]~2_cout\);

\hvac1|counter:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \hvac1|counter:cnt[1]~3_combout\,
	ena => \hvac1|counter:cnt[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvac1|counter:cnt[1]~q\);

\hvac1|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter~0_combout\ = (((!\hvac1|counter:cnt[2]~q\) # (!\hvac1|counter:cnt[3]~q\)) # (!\hvac1|counter:cnt[0]~q\)) # (!\hvac1|counter:cnt[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[1]~q\,
	datab => \hvac1|counter:cnt[0]~q\,
	datac => \hvac1|counter:cnt[3]~q\,
	datad => \hvac1|counter:cnt[2]~q\,
	combout => \hvac1|counter~0_combout\);

\cmp1|results[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[0]~1_combout\ = (\mux1|hex_out[1]~2_combout\ & (((\mux1|hex_out[0]~3_combout\ & !\hvac1|counter:cnt[0]~q\)) # (!\hvac1|counter:cnt[1]~q\))) # (!\mux1|hex_out[1]~2_combout\ & (\mux1|hex_out[0]~3_combout\ & (!\hvac1|counter:cnt[0]~q\ & 
-- !\hvac1|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|hex_out[1]~2_combout\,
	datab => \mux1|hex_out[0]~3_combout\,
	datac => \hvac1|counter:cnt[0]~q\,
	datad => \hvac1|counter:cnt[1]~q\,
	combout => \cmp1|results[0]~1_combout\);

\hvac1|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter~1_combout\ = (\hvac1|counter~0_combout\ & ((\cmp1|results[0]~0_combout\) # ((\cmp1|results[0]~1_combout\ & \cmp1|results[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter~0_combout\,
	datab => \cmp1|results[0]~0_combout\,
	datac => \cmp1|results[0]~1_combout\,
	datad => \cmp1|results[0]~2_combout\,
	combout => \hvac1|counter~1_combout\);

\hvac1|counter:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \hvac1|counter:cnt[2]~1_combout\,
	ena => \hvac1|counter:cnt[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvac1|counter:cnt[2]~q\);

\cmp1|results[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[0]~0_combout\ = (\mux1|hex_out[3]~0_combout\ & (((\mux1|hex_out[2]~1_combout\ & !\hvac1|counter:cnt[2]~q\)) # (!\hvac1|counter:cnt[3]~q\))) # (!\mux1|hex_out[3]~0_combout\ & (\mux1|hex_out[2]~1_combout\ & (!\hvac1|counter:cnt[2]~q\ & 
-- !\hvac1|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|hex_out[3]~0_combout\,
	datab => \mux1|hex_out[2]~1_combout\,
	datac => \hvac1|counter:cnt[2]~q\,
	datad => \hvac1|counter:cnt[3]~q\,
	combout => \cmp1|results[0]~0_combout\);

\cmp1|results[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[0]~3_combout\ = (\cmp1|results[0]~0_combout\) # ((\cmp1|results[0]~1_combout\ & \cmp1|results[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|results[0]~0_combout\,
	datab => \cmp1|results[0]~1_combout\,
	datac => \cmp1|results[0]~2_combout\,
	combout => \cmp1|results[0]~3_combout\);

\cmp1|results[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[2]~7_combout\ = (\cmp1|results[2]~5_combout\) # ((\cmp1|results[0]~2_combout\ & \cmp1|results[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|results[2]~5_combout\,
	datab => \cmp1|results[0]~2_combout\,
	datac => \cmp1|results[2]~6_combout\,
	combout => \cmp1|results[2]~7_combout\);

\tst1|TEST_PASS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~0_combout\ = (\hvac1|counter:cnt[1]~q\ & (((\hvac1|counter:cnt[0]~q\ & !\sw[0]~input_o\)) # (!\sw[1]~input_o\))) # (!\hvac1|counter:cnt[1]~q\ & (\hvac1|counter:cnt[0]~q\ & (!\sw[0]~input_o\ & !\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[1]~q\,
	datab => \hvac1|counter:cnt[0]~q\,
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \tst1|TEST_PASS~0_combout\);

\tst1|TEST_PASS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~1_combout\ = (\hvac1|counter:cnt[2]~q\ & ((\tst1|TEST_PASS~0_combout\) # (!\sw[2]~input_o\))) # (!\hvac1|counter:cnt[2]~q\ & (!\sw[2]~input_o\ & \tst1|TEST_PASS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[2]~q\,
	datab => \sw[2]~input_o\,
	datac => \tst1|TEST_PASS~0_combout\,
	combout => \tst1|TEST_PASS~1_combout\);

\tst1|TEST_PASS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~2_combout\ = (\cmp1|results[2]~7_combout\ & ((\hvac1|counter:cnt[3]~q\ & ((\tst1|TEST_PASS~1_combout\) # (!\sw[3]~input_o\))) # (!\hvac1|counter:cnt[3]~q\ & (!\sw[3]~input_o\ & \tst1|TEST_PASS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[3]~q\,
	datab => \sw[3]~input_o\,
	datac => \cmp1|results[2]~7_combout\,
	datad => \tst1|TEST_PASS~1_combout\,
	combout => \tst1|TEST_PASS~2_combout\);

\tst1|TEST_PASS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~3_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\hvac1|counter:cnt[0]~q\)) # (!\hvac1|counter:cnt[1]~q\))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (!\hvac1|counter:cnt[0]~q\ & !\hvac1|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \hvac1|counter:cnt[0]~q\,
	datad => \hvac1|counter:cnt[1]~q\,
	combout => \tst1|TEST_PASS~3_combout\);

\tst1|TEST_PASS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~4_combout\ = (\sw[2]~input_o\ & ((\tst1|TEST_PASS~3_combout\) # (!\hvac1|counter:cnt[2]~q\))) # (!\sw[2]~input_o\ & (!\hvac1|counter:cnt[2]~q\ & \tst1|TEST_PASS~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \hvac1|counter:cnt[2]~q\,
	datac => \tst1|TEST_PASS~3_combout\,
	combout => \tst1|TEST_PASS~4_combout\);

\tst1|TEST_PASS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~5_combout\ = (\cmp1|results[0]~3_combout\ & ((\sw[3]~input_o\ & ((\tst1|TEST_PASS~4_combout\) # (!\hvac1|counter:cnt[3]~q\))) # (!\sw[3]~input_o\ & (!\hvac1|counter:cnt[3]~q\ & \tst1|TEST_PASS~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \hvac1|counter:cnt[3]~q\,
	datac => \cmp1|results[0]~3_combout\,
	datad => \tst1|TEST_PASS~4_combout\,
	combout => \tst1|TEST_PASS~5_combout\);

\tst1|TEST_PASS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~6_combout\ = (\hvac1|counter:cnt[3]~q\ & (\sw[3]~input_o\ & (\hvac1|counter:cnt[2]~q\ $ (!\sw[2]~input_o\)))) # (!\hvac1|counter:cnt[3]~q\ & (!\sw[3]~input_o\ & (\hvac1|counter:cnt[2]~q\ $ (!\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[3]~q\,
	datab => \hvac1|counter:cnt[2]~q\,
	datac => \sw[2]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \tst1|TEST_PASS~6_combout\);

\tst1|TEST_PASS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~7_combout\ = (\hvac1|counter:cnt[1]~q\ & (\sw[1]~input_o\ & (\hvac1|counter:cnt[0]~q\ $ (!\sw[0]~input_o\)))) # (!\hvac1|counter:cnt[1]~q\ & (!\sw[1]~input_o\ & (\hvac1|counter:cnt[0]~q\ $ (!\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[1]~q\,
	datab => \hvac1|counter:cnt[0]~q\,
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \tst1|TEST_PASS~7_combout\);

\tst1|TEST_PASS~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~8_combout\ = (\tst1|TEST_PASS~6_combout\ & (\tst1|TEST_PASS~7_combout\ & !\cmp1|results[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tst1|TEST_PASS~6_combout\,
	datab => \tst1|TEST_PASS~7_combout\,
	datad => \cmp1|results[1]~4_combout\,
	combout => \tst1|TEST_PASS~8_combout\);

\tst1|TEST_PASS~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~9_combout\ = (\pb[2]~input_o\ & ((\tst1|TEST_PASS~2_combout\) # ((\tst1|TEST_PASS~5_combout\) # (\tst1|TEST_PASS~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => \tst1|TEST_PASS~2_combout\,
	datac => \tst1|TEST_PASS~5_combout\,
	datad => \tst1|TEST_PASS~8_combout\,
	combout => \tst1|TEST_PASS~9_combout\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;

ww_leds(10) <= \leds[10]~output_o\;

ww_leds(11) <= \leds[11]~output_o\;
END structure;


