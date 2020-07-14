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

-- DATE "07/14/2020 16:23:06"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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

-- Design Ports Information
-- leds[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[10]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[11]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
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
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \mux1|hex_out[1]~2_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \mux1|hex_out[0]~3_combout\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \mux1|hex_out[3]~0_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \mux1|hex_out[2]~1_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[1]~2_cout\ : std_logic;
SIGNAL \hvac1|counter:cnt[1]~3_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \ctrl1|run_n~0_combout\ : std_logic;
SIGNAL \cmp1|inst3|sout~0_combout\ : std_logic;
SIGNAL \cmp1|results[1]~4_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~3_combout\ : std_logic;
SIGNAL \cmp1|results[2]~5_combout\ : std_logic;
SIGNAL \cmp1|results[2]~6_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~4_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~5_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[1]~q\ : std_logic;
SIGNAL \hvac1|counter:cnt[1]~4\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~1_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~q\ : std_logic;
SIGNAL \hvac1|counter:cnt[2]~2\ : std_logic;
SIGNAL \hvac1|counter:cnt[3]~1_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[3]~q\ : std_logic;
SIGNAL \cmp1|results[0]~2_combout\ : std_logic;
SIGNAL \cmp1|results[0]~0_combout\ : std_logic;
SIGNAL \hvac1|counter~0_combout\ : std_logic;
SIGNAL \hvac1|counter~1_combout\ : std_logic;
SIGNAL \ctrl1|run_n~combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[0]~0_combout\ : std_logic;
SIGNAL \hvac1|counter:cnt[0]~q\ : std_logic;
SIGNAL \cmp1|results[0]~1_combout\ : std_logic;
SIGNAL \cmp1|results[0]~3_combout\ : std_logic;
SIGNAL \cmp1|results[2]~7_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~3_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~4_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~5_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~0_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~1_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~2_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~7_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~6_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~8_combout\ : std_logic;
SIGNAL \tst1|TEST_PASS~9_combout\ : std_logic;
SIGNAL \ctrl1|ALT_INV_run_n~combout\ : std_logic;
SIGNAL \cmp1|ALT_INV_results[1]~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_in <= clk_in;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);
\ctrl1|ALT_INV_run_n~combout\ <= NOT \ctrl1|run_n~combout\;
\cmp1|ALT_INV_results[1]~4_combout\ <= NOT \cmp1|results[1]~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y21_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X13_Y25_N2
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

-- Location: IOOBUF_X19_Y25_N9
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

-- Location: IOOBUF_X13_Y25_N9
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

-- Location: IOOBUF_X17_Y25_N30
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrl1|ALT_INV_run_n~combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
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

-- Location: IOOBUF_X17_Y25_N23
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

-- Location: IOOBUF_X13_Y25_N16
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

-- Location: IOOBUF_X19_Y25_N23
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

-- Location: IOOBUF_X13_Y25_N30
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

-- Location: IOOBUF_X15_Y25_N16
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

-- Location: IOOBUF_X10_Y22_N9
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

-- Location: IOOBUF_X19_Y25_N30
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

-- Location: IOIBUF_X15_Y25_N29
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

-- Location: IOIBUF_X19_Y25_N1
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

-- Location: IOIBUF_X13_Y25_N22
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

-- Location: LCCOMB_X15_Y23_N14
\mux1|hex_out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|hex_out[1]~2_combout\ = (\pb[3]~input_o\ & ((\sw[5]~input_o\))) # (!\pb[3]~input_o\ & (\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \pb[3]~input_o\,
	datac => \sw[5]~input_o\,
	combout => \mux1|hex_out[1]~2_combout\);

-- Location: IOIBUF_X15_Y25_N1
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

-- Location: IOIBUF_X15_Y25_N8
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

-- Location: LCCOMB_X15_Y23_N4
\mux1|hex_out[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|hex_out[0]~3_combout\ = (\pb[3]~input_o\ & ((\sw[4]~input_o\))) # (!\pb[3]~input_o\ & (\sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \mux1|hex_out[0]~3_combout\);

-- Location: IOIBUF_X0_Y6_N15
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

-- Location: CLKCTRL_G3
\clk_in~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: IOIBUF_X15_Y25_N22
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

-- Location: IOIBUF_X11_Y25_N29
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

-- Location: LCCOMB_X15_Y23_N16
\mux1|hex_out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|hex_out[3]~0_combout\ = (\pb[3]~input_o\ & ((\sw[7]~input_o\))) # (!\pb[3]~input_o\ & (\sw[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[3]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \mux1|hex_out[3]~0_combout\);

-- Location: IOIBUF_X17_Y25_N8
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

-- Location: IOIBUF_X19_Y25_N15
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

-- Location: LCCOMB_X17_Y23_N24
\mux1|hex_out[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|hex_out[2]~1_combout\ = (\pb[3]~input_o\ & (\sw[6]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \mux1|hex_out[2]~1_combout\);

-- Location: LCCOMB_X16_Y23_N16
\hvac1|counter:cnt[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[1]~2_cout\ = CARRY(\hvac1|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hvac1|counter:cnt[0]~q\,
	datad => VCC,
	cout => \hvac1|counter:cnt[1]~2_cout\);

-- Location: LCCOMB_X16_Y23_N18
\hvac1|counter:cnt[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[1]~3_combout\ = (\hvac1|counter~1_combout\ & ((\hvac1|counter:cnt[1]~q\ & (!\hvac1|counter:cnt[1]~2_cout\)) # (!\hvac1|counter:cnt[1]~q\ & ((\hvac1|counter:cnt[1]~2_cout\) # (GND))))) # (!\hvac1|counter~1_combout\ & 
-- ((\hvac1|counter:cnt[1]~q\ & (\hvac1|counter:cnt[1]~2_cout\ & VCC)) # (!\hvac1|counter:cnt[1]~q\ & (!\hvac1|counter:cnt[1]~2_cout\))))
-- \hvac1|counter:cnt[1]~4\ = CARRY((\hvac1|counter~1_combout\ & ((!\hvac1|counter:cnt[1]~2_cout\) # (!\hvac1|counter:cnt[1]~q\))) # (!\hvac1|counter~1_combout\ & (!\hvac1|counter:cnt[1]~q\ & !\hvac1|counter:cnt[1]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter~1_combout\,
	datab => \hvac1|counter:cnt[1]~q\,
	datad => VCC,
	cin => \hvac1|counter:cnt[1]~2_cout\,
	combout => \hvac1|counter:cnt[1]~3_combout\,
	cout => \hvac1|counter:cnt[1]~4\);

-- Location: IOIBUF_X17_Y25_N1
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

-- Location: IOIBUF_X10_Y22_N1
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

-- Location: IOIBUF_X17_Y25_N15
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

-- Location: LCCOMB_X17_Y23_N28
\ctrl1|run_n~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ctrl1|run_n~0_combout\ = (\pb[0]~input_o\) # ((\pb[1]~input_o\) # (\pb[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \ctrl1|run_n~0_combout\);

-- Location: LCCOMB_X16_Y23_N28
\cmp1|inst3|sout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|inst3|sout~0_combout\ = \hvac1|counter:cnt[1]~q\ $ (((\pb[3]~input_o\ & ((\sw[5]~input_o\))) # (!\pb[3]~input_o\ & (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \hvac1|counter:cnt[1]~q\,
	combout => \cmp1|inst3|sout~0_combout\);

-- Location: LCCOMB_X16_Y23_N14
\cmp1|results[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[1]~4_combout\ = (\cmp1|inst3|sout~0_combout\) # ((\hvac1|counter:cnt[0]~q\ $ (\mux1|hex_out[0]~3_combout\)) # (!\cmp1|results[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[0]~q\,
	datab => \mux1|hex_out[0]~3_combout\,
	datac => \cmp1|inst3|sout~0_combout\,
	datad => \cmp1|results[0]~2_combout\,
	combout => \cmp1|results[1]~4_combout\);

-- Location: LCCOMB_X16_Y23_N10
\hvac1|counter:cnt[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[2]~3_combout\ = (\hvac1|counter:cnt[0]~q\) # ((\hvac1|counter:cnt[1]~q\) # ((\hvac1|counter:cnt[2]~q\) # (\hvac1|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[0]~q\,
	datab => \hvac1|counter:cnt[1]~q\,
	datac => \hvac1|counter:cnt[2]~q\,
	datad => \hvac1|counter:cnt[3]~q\,
	combout => \hvac1|counter:cnt[2]~3_combout\);

-- Location: LCCOMB_X16_Y23_N24
\cmp1|results[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[2]~5_combout\ = (\mux1|hex_out[3]~0_combout\ & (!\mux1|hex_out[2]~1_combout\ & (\hvac1|counter:cnt[2]~q\ & \hvac1|counter:cnt[3]~q\))) # (!\mux1|hex_out[3]~0_combout\ & ((\hvac1|counter:cnt[3]~q\) # ((!\mux1|hex_out[2]~1_combout\ & 
-- \hvac1|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|hex_out[3]~0_combout\,
	datab => \mux1|hex_out[2]~1_combout\,
	datac => \hvac1|counter:cnt[2]~q\,
	datad => \hvac1|counter:cnt[3]~q\,
	combout => \cmp1|results[2]~5_combout\);

-- Location: LCCOMB_X15_Y23_N24
\cmp1|results[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[2]~6_combout\ = (\mux1|hex_out[1]~2_combout\ & (!\mux1|hex_out[0]~3_combout\ & (\hvac1|counter:cnt[0]~q\ & \hvac1|counter:cnt[1]~q\))) # (!\mux1|hex_out[1]~2_combout\ & ((\hvac1|counter:cnt[1]~q\) # ((!\mux1|hex_out[0]~3_combout\ & 
-- \hvac1|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|hex_out[0]~3_combout\,
	datab => \mux1|hex_out[1]~2_combout\,
	datac => \hvac1|counter:cnt[0]~q\,
	datad => \hvac1|counter:cnt[1]~q\,
	combout => \cmp1|results[2]~6_combout\);

-- Location: LCCOMB_X16_Y23_N0
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

-- Location: LCCOMB_X16_Y23_N26
\hvac1|counter:cnt[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[2]~5_combout\ = (!\ctrl1|run_n~0_combout\ & (\cmp1|results[1]~4_combout\ & ((\hvac1|counter~1_combout\) # (\hvac1|counter:cnt[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter~1_combout\,
	datab => \ctrl1|run_n~0_combout\,
	datac => \cmp1|results[1]~4_combout\,
	datad => \hvac1|counter:cnt[2]~4_combout\,
	combout => \hvac1|counter:cnt[2]~5_combout\);

-- Location: FF_X16_Y23_N19
\hvac1|counter:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \hvac1|counter:cnt[1]~3_combout\,
	ena => \hvac1|counter:cnt[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvac1|counter:cnt[1]~q\);

-- Location: LCCOMB_X16_Y23_N20
\hvac1|counter:cnt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[2]~1_combout\ = ((\hvac1|counter~1_combout\ $ (\hvac1|counter:cnt[2]~q\ $ (\hvac1|counter:cnt[1]~4\)))) # (GND)
-- \hvac1|counter:cnt[2]~2\ = CARRY((\hvac1|counter~1_combout\ & (\hvac1|counter:cnt[2]~q\ & !\hvac1|counter:cnt[1]~4\)) # (!\hvac1|counter~1_combout\ & ((\hvac1|counter:cnt[2]~q\) # (!\hvac1|counter:cnt[1]~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter~1_combout\,
	datab => \hvac1|counter:cnt[2]~q\,
	datad => VCC,
	cin => \hvac1|counter:cnt[1]~4\,
	combout => \hvac1|counter:cnt[2]~1_combout\,
	cout => \hvac1|counter:cnt[2]~2\);

-- Location: FF_X16_Y23_N21
\hvac1|counter:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \hvac1|counter:cnt[2]~1_combout\,
	ena => \hvac1|counter:cnt[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvac1|counter:cnt[2]~q\);

-- Location: LCCOMB_X16_Y23_N22
\hvac1|counter:cnt[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[3]~1_combout\ = \hvac1|counter~1_combout\ $ (\hvac1|counter:cnt[2]~2\ $ (!\hvac1|counter:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hvac1|counter~1_combout\,
	datad => \hvac1|counter:cnt[3]~q\,
	cin => \hvac1|counter:cnt[2]~2\,
	combout => \hvac1|counter:cnt[3]~1_combout\);

-- Location: FF_X16_Y23_N23
\hvac1|counter:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \hvac1|counter:cnt[3]~1_combout\,
	ena => \hvac1|counter:cnt[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvac1|counter:cnt[3]~q\);

-- Location: LCCOMB_X16_Y23_N6
\cmp1|results[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[0]~2_combout\ = (\mux1|hex_out[3]~0_combout\ & (\hvac1|counter:cnt[3]~q\ & (\mux1|hex_out[2]~1_combout\ $ (!\hvac1|counter:cnt[2]~q\)))) # (!\mux1|hex_out[3]~0_combout\ & (!\hvac1|counter:cnt[3]~q\ & (\mux1|hex_out[2]~1_combout\ $ 
-- (!\hvac1|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|hex_out[3]~0_combout\,
	datab => \mux1|hex_out[2]~1_combout\,
	datac => \hvac1|counter:cnt[3]~q\,
	datad => \hvac1|counter:cnt[2]~q\,
	combout => \cmp1|results[0]~2_combout\);

-- Location: LCCOMB_X16_Y23_N4
\cmp1|results[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[0]~0_combout\ = (\mux1|hex_out[3]~0_combout\ & (((\mux1|hex_out[2]~1_combout\ & !\hvac1|counter:cnt[2]~q\)) # (!\hvac1|counter:cnt[3]~q\))) # (!\mux1|hex_out[3]~0_combout\ & (\mux1|hex_out[2]~1_combout\ & (!\hvac1|counter:cnt[3]~q\ & 
-- !\hvac1|counter:cnt[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|hex_out[3]~0_combout\,
	datab => \mux1|hex_out[2]~1_combout\,
	datac => \hvac1|counter:cnt[3]~q\,
	datad => \hvac1|counter:cnt[2]~q\,
	combout => \cmp1|results[0]~0_combout\);

-- Location: LCCOMB_X16_Y23_N2
\hvac1|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter~0_combout\ = (((!\hvac1|counter:cnt[2]~q\) # (!\hvac1|counter:cnt[3]~q\)) # (!\hvac1|counter:cnt[1]~q\)) # (!\hvac1|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[0]~q\,
	datab => \hvac1|counter:cnt[1]~q\,
	datac => \hvac1|counter:cnt[3]~q\,
	datad => \hvac1|counter:cnt[2]~q\,
	combout => \hvac1|counter~0_combout\);

-- Location: LCCOMB_X16_Y23_N12
\hvac1|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter~1_combout\ = (\hvac1|counter~0_combout\ & ((\cmp1|results[0]~0_combout\) # ((\cmp1|results[0]~2_combout\ & \cmp1|results[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|results[0]~2_combout\,
	datab => \cmp1|results[0]~0_combout\,
	datac => \cmp1|results[0]~1_combout\,
	datad => \hvac1|counter~0_combout\,
	combout => \hvac1|counter~1_combout\);

-- Location: LCCOMB_X17_Y23_N2
\ctrl1|run_n\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ctrl1|run_n~combout\ = (\pb[0]~input_o\) # ((\pb[2]~input_o\) # ((\pb[1]~input_o\) # (!\cmp1|results[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \pb[2]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \cmp1|results[1]~4_combout\,
	combout => \ctrl1|run_n~combout\);

-- Location: LCCOMB_X16_Y23_N30
\hvac1|counter:cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hvac1|counter:cnt[0]~0_combout\ = \hvac1|counter:cnt[0]~q\ $ (((!\ctrl1|run_n~combout\ & ((\hvac1|counter~1_combout\) # (\hvac1|counter:cnt[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter~1_combout\,
	datab => \hvac1|counter:cnt[2]~4_combout\,
	datac => \hvac1|counter:cnt[0]~q\,
	datad => \ctrl1|run_n~combout\,
	combout => \hvac1|counter:cnt[0]~0_combout\);

-- Location: FF_X16_Y23_N31
\hvac1|counter:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \hvac1|counter:cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hvac1|counter:cnt[0]~q\);

-- Location: LCCOMB_X16_Y23_N8
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

-- Location: LCCOMB_X15_Y23_N18
\cmp1|results[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[0]~3_combout\ = (\cmp1|results[0]~0_combout\) # ((\cmp1|results[0]~1_combout\ & \cmp1|results[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|results[0]~1_combout\,
	datac => \cmp1|results[0]~0_combout\,
	datad => \cmp1|results[0]~2_combout\,
	combout => \cmp1|results[0]~3_combout\);

-- Location: LCCOMB_X15_Y23_N6
\cmp1|results[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cmp1|results[2]~7_combout\ = (\cmp1|results[2]~5_combout\) # ((\cmp1|results[0]~2_combout\ & \cmp1|results[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp1|results[0]~2_combout\,
	datab => \cmp1|results[2]~6_combout\,
	datad => \cmp1|results[2]~5_combout\,
	combout => \cmp1|results[2]~7_combout\);

-- Location: LCCOMB_X15_Y23_N22
\tst1|TEST_PASS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~3_combout\ = (\sw[1]~input_o\ & (((!\hvac1|counter:cnt[0]~q\ & \sw[0]~input_o\)) # (!\hvac1|counter:cnt[1]~q\))) # (!\sw[1]~input_o\ & (!\hvac1|counter:cnt[0]~q\ & (\sw[0]~input_o\ & !\hvac1|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[0]~q\,
	datab => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \hvac1|counter:cnt[1]~q\,
	combout => \tst1|TEST_PASS~3_combout\);

-- Location: LCCOMB_X15_Y23_N12
\tst1|TEST_PASS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~4_combout\ = (\tst1|TEST_PASS~3_combout\ & ((\sw[2]~input_o\) # (!\hvac1|counter:cnt[2]~q\))) # (!\tst1|TEST_PASS~3_combout\ & (!\hvac1|counter:cnt[2]~q\ & \sw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tst1|TEST_PASS~3_combout\,
	datac => \hvac1|counter:cnt[2]~q\,
	datad => \sw[2]~input_o\,
	combout => \tst1|TEST_PASS~4_combout\);

-- Location: LCCOMB_X15_Y23_N10
\tst1|TEST_PASS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~5_combout\ = (\cmp1|results[0]~3_combout\ & ((\tst1|TEST_PASS~4_combout\ & ((\sw[3]~input_o\) # (!\hvac1|counter:cnt[3]~q\))) # (!\tst1|TEST_PASS~4_combout\ & (!\hvac1|counter:cnt[3]~q\ & \sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tst1|TEST_PASS~4_combout\,
	datab => \cmp1|results[0]~3_combout\,
	datac => \hvac1|counter:cnt[3]~q\,
	datad => \sw[3]~input_o\,
	combout => \tst1|TEST_PASS~5_combout\);

-- Location: LCCOMB_X15_Y23_N0
\tst1|TEST_PASS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~0_combout\ = (\sw[1]~input_o\ & (\hvac1|counter:cnt[0]~q\ & (!\sw[0]~input_o\ & \hvac1|counter:cnt[1]~q\))) # (!\sw[1]~input_o\ & ((\hvac1|counter:cnt[1]~q\) # ((\hvac1|counter:cnt[0]~q\ & !\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[0]~q\,
	datab => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \hvac1|counter:cnt[1]~q\,
	combout => \tst1|TEST_PASS~0_combout\);

-- Location: LCCOMB_X15_Y23_N26
\tst1|TEST_PASS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~1_combout\ = (\tst1|TEST_PASS~0_combout\ & ((\hvac1|counter:cnt[2]~q\) # (!\sw[2]~input_o\))) # (!\tst1|TEST_PASS~0_combout\ & (\hvac1|counter:cnt[2]~q\ & !\sw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tst1|TEST_PASS~0_combout\,
	datac => \hvac1|counter:cnt[2]~q\,
	datad => \sw[2]~input_o\,
	combout => \tst1|TEST_PASS~1_combout\);

-- Location: LCCOMB_X15_Y23_N20
\tst1|TEST_PASS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~2_combout\ = (\cmp1|results[2]~7_combout\ & ((\tst1|TEST_PASS~1_combout\ & ((\hvac1|counter:cnt[3]~q\) # (!\sw[3]~input_o\))) # (!\tst1|TEST_PASS~1_combout\ & (\hvac1|counter:cnt[3]~q\ & !\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tst1|TEST_PASS~1_combout\,
	datab => \cmp1|results[2]~7_combout\,
	datac => \hvac1|counter:cnt[3]~q\,
	datad => \sw[3]~input_o\,
	combout => \tst1|TEST_PASS~2_combout\);

-- Location: LCCOMB_X15_Y23_N30
\tst1|TEST_PASS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~7_combout\ = (\hvac1|counter:cnt[0]~q\ & (\sw[0]~input_o\ & (\sw[1]~input_o\ $ (!\hvac1|counter:cnt[1]~q\)))) # (!\hvac1|counter:cnt[0]~q\ & (!\sw[0]~input_o\ & (\sw[1]~input_o\ $ (!\hvac1|counter:cnt[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[0]~q\,
	datab => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \hvac1|counter:cnt[1]~q\,
	combout => \tst1|TEST_PASS~7_combout\);

-- Location: LCCOMB_X15_Y23_N28
\tst1|TEST_PASS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~6_combout\ = (\hvac1|counter:cnt[3]~q\ & (\sw[3]~input_o\ & (\hvac1|counter:cnt[2]~q\ $ (!\sw[2]~input_o\)))) # (!\hvac1|counter:cnt[3]~q\ & (!\sw[3]~input_o\ & (\hvac1|counter:cnt[2]~q\ $ (!\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hvac1|counter:cnt[3]~q\,
	datab => \sw[3]~input_o\,
	datac => \hvac1|counter:cnt[2]~q\,
	datad => \sw[2]~input_o\,
	combout => \tst1|TEST_PASS~6_combout\);

-- Location: LCCOMB_X15_Y23_N8
\tst1|TEST_PASS~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~8_combout\ = (\tst1|TEST_PASS~7_combout\ & (\tst1|TEST_PASS~6_combout\ & !\cmp1|results[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tst1|TEST_PASS~7_combout\,
	datab => \tst1|TEST_PASS~6_combout\,
	datad => \cmp1|results[1]~4_combout\,
	combout => \tst1|TEST_PASS~8_combout\);

-- Location: LCCOMB_X15_Y23_N2
\tst1|TEST_PASS~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tst1|TEST_PASS~9_combout\ = (\pb[2]~input_o\ & ((\tst1|TEST_PASS~5_combout\) # ((\tst1|TEST_PASS~2_combout\) # (\tst1|TEST_PASS~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tst1|TEST_PASS~5_combout\,
	datab => \tst1|TEST_PASS~2_combout\,
	datac => \tst1|TEST_PASS~8_combout\,
	datad => \pb[2]~input_o\,
	combout => \tst1|TEST_PASS~9_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

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


