-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/17/2018 23:33:47"

-- 
-- Device: Altera EPM240T100C4 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	\complete-nixie\ IS
    PORT (
	request_setpulses : OUT std_logic;
	inselect : IN std_logic;
	indata1 : IN std_logic;
	in_Data2 : IN std_logic;
	anode1 : OUT std_logic;
	res : IN std_logic;
	minsetbutton : IN std_logic;
	hoursetbutton : IN std_logic;
	anodes_off : IN std_logic;
	anode2 : OUT std_logic;
	anode3 : OUT std_logic;
	anode4 : OUT std_logic;
	dot1 : OUT std_logic;
	dot2 : OUT std_logic;
	dhourleds : OUT std_logic_vector(2 DOWNTO 0);
	dminleds : OUT std_logic_vector(5 DOWNTO 0);
	hourleds : OUT std_logic_vector(9 DOWNTO 0);
	minleds : OUT std_logic_vector(9 DOWNTO 0)
	);
END \complete-nixie\;

-- Design Ports Information
-- request_setpulses	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- anode1	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- anode2	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- anode3	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- anode4	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dot1	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dot2	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dhourleds[2]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dhourleds[1]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dhourleds[0]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dminleds[5]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dminleds[4]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dminleds[3]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dminleds[2]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dminleds[1]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- dminleds[0]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hourleds[9]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hourleds[8]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hourleds[7]	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hourleds[6]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hourleds[5]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hourleds[4]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hourleds[3]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hourleds[2]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hourleds[1]	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hourleds[0]	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- minleds[9]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- minleds[8]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- minleds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- minleds[6]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- minleds[5]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- minleds[4]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- minleds[3]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- minleds[2]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- minleds[1]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- minleds[0]	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- anodes_off	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- indata1	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_Data2	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inselect	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- res	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- minsetbutton	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- hoursetbutton	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF \complete-nixie\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_request_setpulses : std_logic;
SIGNAL ww_inselect : std_logic;
SIGNAL ww_indata1 : std_logic;
SIGNAL ww_in_Data2 : std_logic;
SIGNAL ww_anode1 : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL ww_minsetbutton : std_logic;
SIGNAL ww_hoursetbutton : std_logic;
SIGNAL ww_anodes_off : std_logic;
SIGNAL ww_anode2 : std_logic;
SIGNAL ww_anode3 : std_logic;
SIGNAL ww_anode4 : std_logic;
SIGNAL ww_dot1 : std_logic;
SIGNAL ww_dot2 : std_logic;
SIGNAL ww_dhourleds : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dminleds : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_hourleds : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_minleds : std_logic_vector(9 DOWNTO 0);
SIGNAL \inselect~combout\ : std_logic;
SIGNAL \indata1~combout\ : std_logic;
SIGNAL \in_Data2~combout\ : std_logic;
SIGNAL \inst2|out_Data~combout\ : std_logic;
SIGNAL \anodes_off~combout\ : std_logic;
SIGNAL \inst|anode1~regout\ : std_logic;
SIGNAL \inst|anode2~regout\ : std_logic;
SIGNAL \res~combout\ : std_logic;
SIGNAL \hoursetbutton~combout\ : std_logic;
SIGNAL \minsetbutton~combout\ : std_logic;
SIGNAL \inst|dhour[0]~0_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|ssec[3]~3_combout\ : std_logic;
SIGNAL \inst|ssec~4_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|dsec[2]~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|dhour[0]~1_combout\ : std_logic;
SIGNAL \inst|min[3]~3_combout\ : std_logic;
SIGNAL \inst|min~4_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|dmin[2]~1_combout\ : std_logic;
SIGNAL \inst|dhour[0]~2_combout\ : std_logic;
SIGNAL \inst|hour[3]~2_combout\ : std_logic;
SIGNAL \inst|hour[3]~8_combout\ : std_logic;
SIGNAL \inst|Add4~1_combout\ : std_logic;
SIGNAL \inst|process_0~0\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|hour[3]~3_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|LessThan4~0_combout\ : std_logic;
SIGNAL \inst|dhour[0]~3_combout\ : std_logic;
SIGNAL \inst|dhour[0]~4_combout\ : std_logic;
SIGNAL \inst|dhour[0]~5_combout\ : std_logic;
SIGNAL \inst|anode4~regout\ : std_logic;
SIGNAL \inst|x~regout\ : std_logic;
SIGNAL \inst|dot1~regout\ : std_logic;
SIGNAL \inst|dot2~regout\ : std_logic;
SIGNAL \inst|Equal2~0\ : std_logic;
SIGNAL \inst|hour\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|hourleds\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|dhour\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|min\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|minleds\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|dminleds\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|dhourleds\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|ssec\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|dmin\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|dsec\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|ALT_INV_out_Data~combout\ : std_logic;

BEGIN

request_setpulses <= ww_request_setpulses;
ww_inselect <= inselect;
ww_indata1 <= indata1;
ww_in_Data2 <= in_Data2;
anode1 <= ww_anode1;
ww_res <= res;
ww_minsetbutton <= minsetbutton;
ww_hoursetbutton <= hoursetbutton;
ww_anodes_off <= anodes_off;
anode2 <= ww_anode2;
anode3 <= ww_anode3;
anode4 <= ww_anode4;
dot1 <= ww_dot1;
dot2 <= ww_dot2;
dhourleds <= ww_dhourleds;
dminleds <= ww_dminleds;
hourleds <= ww_hourleds;
minleds <= ww_minleds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst2|ALT_INV_out_Data~combout\ <= NOT \inst2|out_Data~combout\;

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inselect~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inselect,
	combout => \inselect~combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indata1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indata1,
	combout => \indata1~combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_Data2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_in_Data2,
	combout => \in_Data2~combout\);

-- Location: LC_X2_Y3_N2
\inst2|out_Data\ : maxii_lcell
-- Equation(s):
-- \inst2|out_Data~combout\ = LCELL(((\inselect~combout\ & (\indata1~combout\)) # (!\inselect~combout\ & ((\in_Data2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inselect~combout\,
	datac => \indata1~combout\,
	datad => \in_Data2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|out_Data~combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\anodes_off~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_anodes_off,
	combout => \anodes_off~combout\);

-- Location: LC_X5_Y1_N2
\inst|anode1\ : maxii_lcell
-- Equation(s):
-- \inst|anode1~regout\ = DFFEAS(GND, !GLOBAL(\inst2|out_Data~combout\), VCC, , , \anodes_off~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	datac => \anodes_off~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|anode1~regout\);

-- Location: LC_X5_Y1_N4
\inst|anode2\ : maxii_lcell
-- Equation(s):
-- \inst|anode2~regout\ = DFFEAS(GND, !GLOBAL(\inst2|out_Data~combout\), VCC, , , \anodes_off~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	datac => \anodes_off~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|anode2~regout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\res~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_res,
	combout => \res~combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\hoursetbutton~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_hoursetbutton,
	combout => \hoursetbutton~combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\minsetbutton~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_minsetbutton,
	combout => \minsetbutton~combout\);

-- Location: LC_X4_Y3_N5
\inst|dhour[0]~0\ : maxii_lcell
-- Equation(s):
-- \inst|dhour[0]~0_combout\ = (((\res~combout\ & !\inst|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \res~combout\,
	datad => \inst|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|dhour[0]~0_combout\);

-- Location: LC_X4_Y2_N9
\inst|process_0~3\ : maxii_lcell
-- Equation(s):
-- \inst|process_0~3_combout\ = (((\hoursetbutton~combout\ & !\minsetbutton~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \hoursetbutton~combout\,
	datad => \minsetbutton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|process_0~3_combout\);

-- Location: LC_X6_Y3_N9
\inst|ssec[3]~3\ : maxii_lcell
-- Equation(s):
-- \inst|ssec[3]~3_combout\ = ((\inst|process_0~2_combout\) # ((\minsetbutton~combout\ & \hoursetbutton~combout\))) # (!\res~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \minsetbutton~combout\,
	datab => \res~combout\,
	datac => \hoursetbutton~combout\,
	datad => \inst|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|ssec[3]~3_combout\);

-- Location: LC_X6_Y3_N4
\inst|ssec[0]\ : maxii_lcell
-- Equation(s):
-- \inst|ssec\(0) = DFFEAS((\inst|LessThan0~0_combout\ & (!\inst|process_0~2_combout\ & (\res~combout\ & !\inst|ssec\(0)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|ssec[3]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|process_0~2_combout\,
	datac => \res~combout\,
	datad => \inst|ssec\(0),
	aclr => GND,
	ena => \inst|ssec[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ssec\(0));

-- Location: LC_X6_Y3_N7
\inst|ssec~4\ : maxii_lcell
-- Equation(s):
-- \inst|ssec~4_combout\ = ((\res~combout\ & (\inst|LessThan0~0_combout\ & !\inst|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \res~combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|ssec~4_combout\);

-- Location: LC_X6_Y3_N3
\inst|ssec[1]\ : maxii_lcell
-- Equation(s):
-- \inst|ssec\(1) = DFFEAS(((\inst|ssec~4_combout\ & (\inst|ssec\(0) $ (\inst|ssec\(1))))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|ssec[3]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|ssec\(0),
	datac => \inst|ssec~4_combout\,
	datad => \inst|ssec\(1),
	aclr => GND,
	ena => \inst|ssec[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ssec\(1));

-- Location: LC_X6_Y3_N8
\inst|Add0~0\ : maxii_lcell
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst|ssec\(0) & (((\inst|ssec\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ssec\(0),
	datad => \inst|ssec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Add0~0_combout\);

-- Location: LC_X6_Y3_N0
\inst|ssec[2]\ : maxii_lcell
-- Equation(s):
-- \inst|ssec\(2) = DFFEAS((\inst|ssec~4_combout\ & (\inst|ssec\(2) $ (((\inst|ssec\(0) & \inst|ssec\(1)))))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|ssec[3]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "60c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|ssec\(0),
	datab => \inst|ssec\(2),
	datac => \inst|ssec~4_combout\,
	datad => \inst|ssec\(1),
	aclr => GND,
	ena => \inst|ssec[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ssec\(2));

-- Location: LC_X6_Y3_N1
\inst|ssec[3]\ : maxii_lcell
-- Equation(s):
-- \inst|ssec\(3) = DFFEAS((\inst|ssec~4_combout\ & (\inst|ssec\(3) $ (((\inst|Add0~0_combout\ & \inst|ssec\(2)))))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|ssec[3]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|Add0~0_combout\,
	datab => \inst|ssec\(2),
	datac => \inst|ssec~4_combout\,
	datad => \inst|ssec\(3),
	aclr => GND,
	ena => \inst|ssec[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ssec\(3));

-- Location: LC_X6_Y3_N6
\inst|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ((!\inst|ssec\(0) & (!\inst|ssec\(2) & !\inst|ssec\(1)))) # (!\inst|ssec\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3337",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ssec\(0),
	datab => \inst|ssec\(3),
	datac => \inst|ssec\(2),
	datad => \inst|ssec\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan0~0_combout\);

-- Location: LC_X5_Y3_N5
\inst|dsec[2]~1\ : maxii_lcell
-- Equation(s):
-- \inst|dsec[2]~1_combout\ = ((!\inst|LessThan0~0_combout\ & (\hoursetbutton~combout\ & \minsetbutton~combout\))) # (!\inst|dhour[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \hoursetbutton~combout\,
	datac => \minsetbutton~combout\,
	datad => \inst|dhour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|dsec[2]~1_combout\);

-- Location: LC_X6_Y3_N5
\inst|dsec[0]\ : maxii_lcell
-- Equation(s):
-- \inst|dsec\(0) = DFFEAS((\inst|LessThan1~0_combout\ & (\res~combout\ & (!\inst|dsec\(0) & !\inst|process_0~2_combout\))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|dsec[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|LessThan1~0_combout\,
	datab => \res~combout\,
	datac => \inst|dsec\(0),
	datad => \inst|process_0~2_combout\,
	aclr => GND,
	ena => \inst|dsec[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dsec\(0));

-- Location: LC_X6_Y3_N2
\inst|dsec[1]\ : maxii_lcell
-- Equation(s):
-- \inst|dsec\(1) = DFFEAS((\inst|dhour[0]~0_combout\ & (!\inst|dsec\(2) & (\inst|dsec\(0) $ (\inst|dsec\(1))))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|dsec[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0028",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dhour[0]~0_combout\,
	datab => \inst|dsec\(0),
	datac => \inst|dsec\(1),
	datad => \inst|dsec\(2),
	aclr => GND,
	ena => \inst|dsec[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dsec\(1));

-- Location: LC_X5_Y3_N9
\inst|dsec[2]\ : maxii_lcell
-- Equation(s):
-- \inst|dsec\(2) = DFFEAS((\inst|dhour[0]~0_combout\ & ((\inst|dsec\(0) & (!\inst|dsec\(2) & \inst|dsec\(1))) # (!\inst|dsec\(0) & (\inst|dsec\(2) & !\inst|dsec\(1))))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|dsec[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dsec\(0),
	datab => \inst|dsec\(2),
	datac => \inst|dsec\(1),
	datad => \inst|dhour[0]~0_combout\,
	aclr => GND,
	ena => \inst|dsec[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dsec\(2));

-- Location: LC_X5_Y3_N7
\inst|LessThan1~0\ : maxii_lcell
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (((!\inst|dsec\(1) & !\inst|dsec\(0))) # (!\inst|dsec\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "333f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|dsec\(2),
	datac => \inst|dsec\(1),
	datad => \inst|dsec\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan1~0_combout\);

-- Location: LC_X5_Y3_N8
\inst|dhour[0]~1\ : maxii_lcell
-- Equation(s):
-- \inst|dhour[0]~1_combout\ = (\minsetbutton~combout\ & (\hoursetbutton~combout\ & (!\inst|LessThan0~0_combout\ & !\inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \minsetbutton~combout\,
	datab => \hoursetbutton~combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|dhour[0]~1_combout\);

-- Location: LC_X3_Y3_N9
\inst|min[3]~3\ : maxii_lcell
-- Equation(s):
-- \inst|min[3]~3_combout\ = ((\inst|process_0~2_combout\) # (\inst|process_0~3_combout\ $ (\inst|dhour[0]~1_combout\))) # (!\res~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7fb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~3_combout\,
	datab => \res~combout\,
	datac => \inst|process_0~2_combout\,
	datad => \inst|dhour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|min[3]~3_combout\);

-- Location: LC_X3_Y3_N5
\inst|min[0]\ : maxii_lcell
-- Equation(s):
-- \inst|min\(0) = DFFEAS((!\inst|process_0~2_combout\ & (\res~combout\ & (\inst|LessThan2~0_combout\ & !\inst|min\(0)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|min[3]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|process_0~2_combout\,
	datab => \res~combout\,
	datac => \inst|LessThan2~0_combout\,
	datad => \inst|min\(0),
	aclr => GND,
	ena => \inst|min[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|min\(0));

-- Location: LC_X3_Y3_N2
\inst|min~4\ : maxii_lcell
-- Equation(s):
-- \inst|min~4_combout\ = (\inst|LessThan2~0_combout\ & (((!\inst|process_0~2_combout\ & \res~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~0_combout\,
	datac => \inst|process_0~2_combout\,
	datad => \res~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|min~4_combout\);

-- Location: LC_X3_Y3_N0
\inst|min[1]\ : maxii_lcell
-- Equation(s):
-- \inst|min\(1) = DFFEAS((\inst|min~4_combout\ & (\inst|min\(0) $ (((\inst|min\(1)))))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|min[3]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4488",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(0),
	datab => \inst|min~4_combout\,
	datad => \inst|min\(1),
	aclr => GND,
	ena => \inst|min[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|min\(1));

-- Location: LC_X3_Y3_N1
\inst|Add2~0\ : maxii_lcell
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|min\(0) & (((\inst|min\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|min\(0),
	datac => \inst|min\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Add2~0_combout\);

-- Location: LC_X3_Y3_N8
\inst|min[2]\ : maxii_lcell
-- Equation(s):
-- \inst|min\(2) = DFFEAS((\inst|min~4_combout\ & (\inst|min\(2) $ (((\inst|min\(1) & \inst|min\(0)))))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|min[3]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(1),
	datab => \inst|min\(0),
	datac => \inst|min\(2),
	datad => \inst|min~4_combout\,
	aclr => GND,
	ena => \inst|min[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|min\(2));

-- Location: LC_X3_Y3_N4
\inst|min[3]\ : maxii_lcell
-- Equation(s):
-- \inst|min\(3) = DFFEAS((\inst|min~4_combout\ & (\inst|min\(3) $ (((\inst|Add2~0_combout\ & \inst|min\(2)))))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|min[3]~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(3),
	datab => \inst|Add2~0_combout\,
	datac => \inst|min\(2),
	datad => \inst|min~4_combout\,
	aclr => GND,
	ena => \inst|min[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|min\(3));

-- Location: LC_X3_Y3_N3
\inst|LessThan2~0\ : maxii_lcell
-- Equation(s):
-- \inst|LessThan2~0_combout\ = ((!\inst|min\(0) & (!\inst|min\(1) & !\inst|min\(2)))) # (!\inst|min\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f1f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|min\(0),
	datab => \inst|min\(1),
	datac => \inst|min\(3),
	datad => \inst|min\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan2~0_combout\);

-- Location: LC_X4_Y2_N0
\inst|dmin[2]~1\ : maxii_lcell
-- Equation(s):
-- \inst|dmin[2]~1_combout\ = ((!\inst|LessThan2~0_combout\ & ((\inst|process_0~3_combout\) # (\inst|dhour[0]~1_combout\)))) # (!\inst|dhour[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f2f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~3_combout\,
	datab => \inst|LessThan2~0_combout\,
	datac => \inst|dhour[0]~0_combout\,
	datad => \inst|dhour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|dmin[2]~1_combout\);

-- Location: LC_X4_Y2_N6
\inst|dmin[1]\ : maxii_lcell
-- Equation(s):
-- \inst|dmin\(1) = DFFEAS((!\inst|dmin\(2) & (\inst|dhour[0]~0_combout\ & (\inst|dmin\(0) $ (\inst|dmin\(1))))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|dmin[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dmin\(0),
	datab => \inst|dmin\(2),
	datac => \inst|dmin\(1),
	datad => \inst|dhour[0]~0_combout\,
	aclr => GND,
	ena => \inst|dmin[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dmin\(1));

-- Location: LC_X4_Y2_N1
\inst|dmin[2]\ : maxii_lcell
-- Equation(s):
-- \inst|dmin\(2) = DFFEAS((\inst|dhour[0]~0_combout\ & ((\inst|dmin\(0) & (!\inst|dmin\(2) & \inst|dmin\(1))) # (!\inst|dmin\(0) & (\inst|dmin\(2) & !\inst|dmin\(1))))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|dmin[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dmin\(0),
	datab => \inst|dmin\(2),
	datac => \inst|dmin\(1),
	datad => \inst|dhour[0]~0_combout\,
	aclr => GND,
	ena => \inst|dmin[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dmin\(2));

-- Location: LC_X4_Y2_N4
\inst|dmin[0]\ : maxii_lcell
-- Equation(s):
-- \inst|dmin\(0) = DFFEAS((!\inst|dmin\(0) & (\inst|dhour[0]~0_combout\ & ((!\inst|dmin\(1)) # (!\inst|dmin\(2))))), !GLOBAL(\inst2|out_Data~combout\), VCC, , \inst|dmin[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dmin\(0),
	datab => \inst|dmin\(2),
	datac => \inst|dmin\(1),
	datad => \inst|dhour[0]~0_combout\,
	aclr => GND,
	ena => \inst|dmin[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dmin\(0));

-- Location: LC_X3_Y3_N6
\inst|dhour[0]~2\ : maxii_lcell
-- Equation(s):
-- \inst|dhour[0]~2_combout\ = (\inst|dmin\(2) & (!\inst|LessThan2~0_combout\ & ((\inst|dmin\(0)) # (\inst|dmin\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dmin\(0),
	datab => \inst|dmin\(1),
	datac => \inst|dmin\(2),
	datad => \inst|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|dhour[0]~2_combout\);

-- Location: LC_X5_Y3_N2
\inst|hour[3]~2\ : maxii_lcell
-- Equation(s):
-- \inst|hour[3]~2_combout\ = (\hoursetbutton~combout\ & (((\minsetbutton~combout\ & !\inst|dhour[0]~1_combout\)) # (!\inst|dhour[0]~2_combout\))) # (!\hoursetbutton~combout\ & (\minsetbutton~combout\ $ (((!\inst|dhour[0]~1_combout\) # 
-- (!\inst|dhour[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4b9b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \hoursetbutton~combout\,
	datab => \minsetbutton~combout\,
	datac => \inst|dhour[0]~2_combout\,
	datad => \inst|dhour[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|hour[3]~2_combout\);

-- Location: LC_X5_Y3_N1
\inst|hour[3]~8\ : maxii_lcell
-- Equation(s):
-- \inst|hour[3]~8_combout\ = (\res~combout\ & (((!\inst|process_0~2_combout\ & \inst|hour[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \res~combout\,
	datac => \inst|process_0~2_combout\,
	datad => \inst|hour[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|hour[3]~8_combout\);

-- Location: LC_X6_Y4_N0
\inst|Add4~1\ : maxii_lcell
-- Equation(s):
-- \inst|Add4~1_combout\ = (\inst|hour\(2) & (((\inst|hour\(1) & \inst|hour\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|hour\(2),
	datac => \inst|hour\(1),
	datad => \inst|hour\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Add4~1_combout\);

-- Location: LC_X5_Y3_N4
\inst|hour[3]\ : maxii_lcell
-- Equation(s):
-- \inst|hour\(3) = DFFEAS((\inst|hour\(3) & ((\inst|hour[3]~8_combout\) # ((!\inst|Add4~1_combout\ & \inst|hour[3]~3_combout\)))) # (!\inst|hour\(3) & (((\inst|Add4~1_combout\ & \inst|hour[3]~3_combout\)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(3),
	datab => \inst|hour[3]~8_combout\,
	datac => \inst|Add4~1_combout\,
	datad => \inst|hour[3]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hour\(3));

-- Location: LC_X4_Y3_N6
\inst|dhourleds[2]\ : maxii_lcell
-- Equation(s):
-- \inst|process_0~0\ = (((\inst|dhour\(1) & !\inst|dhour\(0))))
-- \inst|dhourleds\(2) = DFFEAS(\inst|process_0~0\, !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	datac => \inst|dhour\(1),
	datad => \inst|dhour\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|process_0~0\,
	regout => \inst|dhourleds\(2));

-- Location: LC_X4_Y3_N0
\inst|process_0~1\ : maxii_lcell
-- Equation(s):
-- \inst|process_0~1_combout\ = (((!\inst|hour\(0) & !\inst|hour\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|hour\(0),
	datad => \inst|hour\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|process_0~1_combout\);

-- Location: LC_X4_Y3_N1
\inst|process_0~2\ : maxii_lcell
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst|hour\(2) & (!\inst|hour\(3) & (\inst|process_0~0\ & \inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|hour\(2),
	datab => \inst|hour\(3),
	datac => \inst|process_0~0\,
	datad => \inst|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|process_0~2_combout\);

-- Location: LC_X5_Y3_N3
\inst|hour[3]~3\ : maxii_lcell
-- Equation(s):
-- \inst|hour[3]~3_combout\ = (\res~combout\ & ((\inst|process_0~2_combout\ & (!\inst|LessThan4~0_combout\)) # (!\inst|process_0~2_combout\ & (\inst|LessThan4~0_combout\ & !\inst|hour[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0848",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~2_combout\,
	datab => \res~combout\,
	datac => \inst|LessThan4~0_combout\,
	datad => \inst|hour[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|hour[3]~3_combout\);

-- Location: LC_X5_Y3_N6
\inst|hour[0]\ : maxii_lcell
-- Equation(s):
-- \inst|hour\(0) = DFFEAS(((\inst|hour\(0) & ((\inst|hour[3]~8_combout\))) # (!\inst|hour\(0) & (\inst|hour[3]~3_combout\))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour[3]~3_combout\,
	datac => \inst|hour\(0),
	datad => \inst|hour[3]~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hour\(0));

-- Location: LC_X4_Y3_N3
\inst|hour[1]\ : maxii_lcell
-- Equation(s):
-- \inst|hour\(1) = DFFEAS((\inst|hour\(1) & ((\inst|hour[3]~8_combout\) # ((!\inst|hour\(0) & \inst|hour[3]~3_combout\)))) # (!\inst|hour\(1) & (\inst|hour\(0) & (\inst|hour[3]~3_combout\))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec60",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(0),
	datab => \inst|hour\(1),
	datac => \inst|hour[3]~3_combout\,
	datad => \inst|hour[3]~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hour\(1));

-- Location: LC_X6_Y4_N2
\inst|Add4~0\ : maxii_lcell
-- Equation(s):
-- \inst|Add4~0_combout\ = (((\inst|hour\(1) & \inst|hour\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|hour\(1),
	datad => \inst|hour\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Add4~0_combout\);

-- Location: LC_X5_Y3_N0
\inst|hour[2]\ : maxii_lcell
-- Equation(s):
-- \inst|hour\(2) = DFFEAS((\inst|hour\(2) & ((\inst|hour[3]~8_combout\) # ((!\inst|Add4~0_combout\ & \inst|hour[3]~3_combout\)))) # (!\inst|hour\(2) & (\inst|Add4~0_combout\ & ((\inst|hour[3]~3_combout\)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|Add4~0_combout\,
	datab => \inst|hour[3]~8_combout\,
	datac => \inst|hour\(2),
	datad => \inst|hour[3]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hour\(2));

-- Location: LC_X4_Y1_N2
\inst|LessThan4~0\ : maxii_lcell
-- Equation(s):
-- \inst|LessThan4~0_combout\ = ((!\inst|hour\(2) & (!\inst|hour\(0) & !\inst|hour\(1)))) # (!\inst|hour\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|hour\(2),
	datab => \inst|hour\(0),
	datac => \inst|hour\(1),
	datad => \inst|hour\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LessThan4~0_combout\);

-- Location: LC_X4_Y3_N7
\inst|dhour[0]~3\ : maxii_lcell
-- Equation(s):
-- \inst|dhour[0]~3_combout\ = (\inst|hour\(3) & (\inst|dhour[0]~2_combout\ & ((\inst|hour\(2)) # (!\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|hour\(2),
	datab => \inst|hour\(3),
	datac => \inst|dhour[0]~2_combout\,
	datad => \inst|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|dhour[0]~3_combout\);

-- Location: LC_X4_Y3_N8
\inst|dhour[0]~4\ : maxii_lcell
-- Equation(s):
-- \inst|dhour[0]~4_combout\ = (\inst|dhour[0]~0_combout\ & (((!\inst|process_0~3_combout\ & !\inst|dhour[0]~1_combout\)) # (!\inst|dhour[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~3_combout\,
	datab => \inst|dhour[0]~1_combout\,
	datac => \inst|dhour[0]~0_combout\,
	datad => \inst|dhour[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|dhour[0]~4_combout\);

-- Location: LC_X4_Y3_N2
\inst|dhour[0]~5\ : maxii_lcell
-- Equation(s):
-- \inst|dhour[0]~5_combout\ = (\inst|dhour[0]~4_combout\ & ((\hoursetbutton~combout\) # ((\inst|LessThan4~0_combout\) # (!\minsetbutton~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \hoursetbutton~combout\,
	datab => \minsetbutton~combout\,
	datac => \inst|LessThan4~0_combout\,
	datad => \inst|dhour[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|dhour[0]~5_combout\);

-- Location: LC_X4_Y3_N9
\inst|dhour[0]\ : maxii_lcell
-- Equation(s):
-- \inst|dhour\(0) = DFFEAS((\inst|dhour\(0) & (((\inst|dhour[0]~5_combout\)))) # (!\inst|dhour\(0) & (!\inst|dhour\(1) & (\res~combout\ & !\inst|dhour[0]~5_combout\))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dhour\(1),
	datab => \inst|dhour\(0),
	datac => \res~combout\,
	datad => \inst|dhour[0]~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dhour\(0));

-- Location: LC_X4_Y3_N4
\inst|dhour[1]\ : maxii_lcell
-- Equation(s):
-- \inst|dhour\(1) = DFFEAS((\inst|dhour\(1) & (((\inst|dhour[0]~5_combout\)))) # (!\inst|dhour\(1) & (\inst|dhour\(0) & (\res~combout\ & !\inst|dhour[0]~5_combout\))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dhour\(1),
	datab => \inst|dhour\(0),
	datac => \res~combout\,
	datad => \inst|dhour[0]~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dhour\(1));

-- Location: LC_X3_Y4_N2
\inst|anode4\ : maxii_lcell
-- Equation(s):
-- \inst|Equal2~0\ = (((\inst|dhour\(1)) # (\inst|dhour\(0))))
-- \inst|anode4~regout\ = DFFEAS(\inst|Equal2~0\, !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	datac => \inst|dhour\(1),
	datad => \inst|dhour\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|Equal2~0\,
	regout => \inst|anode4~regout\);

-- Location: LC_X2_Y4_N8
\inst|x\ : maxii_lcell
-- Equation(s):
-- \inst|x~regout\ = DFFEAS((((!\inst|x~regout\))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	datad => \inst|x~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|x~regout\);

-- Location: LC_X2_Y4_N6
\inst|dot1\ : maxii_lcell
-- Equation(s):
-- \inst|dot1~regout\ = DFFEAS((((!\inst|x~regout\))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	datad => \inst|x~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dot1~regout\);

-- Location: LC_X2_Y4_N9
\inst|dot2\ : maxii_lcell
-- Equation(s):
-- \inst|dot2~regout\ = DFFEAS((((\inst|x~regout\))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	datad => \inst|x~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dot2~regout\);

-- Location: LC_X3_Y4_N3
\inst|dhourleds[1]\ : maxii_lcell
-- Equation(s):
-- \inst|dhourleds\(1) = DFFEAS((((!\inst|dhour\(1) & \inst|dhour\(0)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	datac => \inst|dhour\(1),
	datad => \inst|dhour\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dhourleds\(1));

-- Location: LC_X3_Y4_N1
\inst|dhourleds[0]\ : maxii_lcell
-- Equation(s):
-- \inst|dhourleds\(0) = DFFEAS((((!\inst|Equal2~0\))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	datad => \inst|Equal2~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dhourleds\(0));

-- Location: LC_X3_Y3_N7
\inst|dminleds[5]\ : maxii_lcell
-- Equation(s):
-- \inst|dminleds\(5) = DFFEAS(((\inst|dmin\(0) & (\inst|dmin\(2) & !\inst|dmin\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	datab => \inst|dmin\(0),
	datac => \inst|dmin\(2),
	datad => \inst|dmin\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dminleds\(5));

-- Location: LC_X4_Y2_N8
\inst|dminleds[4]\ : maxii_lcell
-- Equation(s):
-- \inst|dminleds\(4) = DFFEAS((!\inst|dmin\(0) & (\inst|dmin\(2) & (!\inst|dmin\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dmin\(0),
	datab => \inst|dmin\(2),
	datac => \inst|dmin\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dminleds\(4));

-- Location: LC_X4_Y2_N5
\inst|dminleds[3]\ : maxii_lcell
-- Equation(s):
-- \inst|dminleds\(3) = DFFEAS((\inst|dmin\(0) & (!\inst|dmin\(2) & (\inst|dmin\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dmin\(0),
	datab => \inst|dmin\(2),
	datac => \inst|dmin\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dminleds\(3));

-- Location: LC_X4_Y2_N2
\inst|dminleds[2]\ : maxii_lcell
-- Equation(s):
-- \inst|dminleds\(2) = DFFEAS((!\inst|dmin\(0) & (!\inst|dmin\(2) & (\inst|dmin\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dmin\(0),
	datab => \inst|dmin\(2),
	datac => \inst|dmin\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dminleds\(2));

-- Location: LC_X4_Y2_N7
\inst|dminleds[1]\ : maxii_lcell
-- Equation(s):
-- \inst|dminleds\(1) = DFFEAS((\inst|dmin\(0) & (!\inst|dmin\(2) & (!\inst|dmin\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dmin\(0),
	datab => \inst|dmin\(2),
	datac => \inst|dmin\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dminleds\(1));

-- Location: LC_X4_Y2_N3
\inst|dminleds[0]\ : maxii_lcell
-- Equation(s):
-- \inst|dminleds\(0) = DFFEAS((!\inst|dmin\(0) & (!\inst|dmin\(2) & (!\inst|dmin\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|dmin\(0),
	datab => \inst|dmin\(2),
	datac => \inst|dmin\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dminleds\(0));

-- Location: LC_X6_Y4_N6
\inst|hourleds[9]\ : maxii_lcell
-- Equation(s):
-- \inst|hourleds\(9) = DFFEAS((!\inst|hour\(2) & (!\inst|hour\(1) & (\inst|hour\(0) & \inst|hour\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(2),
	datab => \inst|hour\(1),
	datac => \inst|hour\(0),
	datad => \inst|hour\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hourleds\(9));

-- Location: LC_X4_Y1_N5
\inst|hourleds[8]\ : maxii_lcell
-- Equation(s):
-- \inst|hourleds\(8) = DFFEAS((!\inst|hour\(0) & (\inst|hour\(3) & (!\inst|hour\(2) & !\inst|hour\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(0),
	datab => \inst|hour\(3),
	datac => \inst|hour\(2),
	datad => \inst|hour\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hourleds\(8));

-- Location: LC_X4_Y1_N4
\inst|hourleds[7]\ : maxii_lcell
-- Equation(s):
-- \inst|hourleds\(7) = DFFEAS((\inst|hour\(0) & (!\inst|hour\(3) & (\inst|hour\(2) & \inst|hour\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(0),
	datab => \inst|hour\(3),
	datac => \inst|hour\(2),
	datad => \inst|hour\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hourleds\(7));

-- Location: LC_X4_Y1_N9
\inst|hourleds[6]\ : maxii_lcell
-- Equation(s):
-- \inst|hourleds\(6) = DFFEAS((!\inst|hour\(0) & (!\inst|hour\(3) & (\inst|hour\(2) & \inst|hour\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(0),
	datab => \inst|hour\(3),
	datac => \inst|hour\(2),
	datad => \inst|hour\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hourleds\(6));

-- Location: LC_X4_Y1_N6
\inst|hourleds[5]\ : maxii_lcell
-- Equation(s):
-- \inst|hourleds\(5) = DFFEAS((\inst|hour\(0) & (!\inst|hour\(3) & (\inst|hour\(2) & !\inst|hour\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(0),
	datab => \inst|hour\(3),
	datac => \inst|hour\(2),
	datad => \inst|hour\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hourleds\(5));

-- Location: LC_X4_Y1_N8
\inst|hourleds[4]\ : maxii_lcell
-- Equation(s):
-- \inst|hourleds\(4) = DFFEAS((!\inst|hour\(0) & (!\inst|hour\(3) & (\inst|hour\(2) & !\inst|hour\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(0),
	datab => \inst|hour\(3),
	datac => \inst|hour\(2),
	datad => \inst|hour\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hourleds\(4));

-- Location: LC_X4_Y1_N7
\inst|hourleds[3]\ : maxii_lcell
-- Equation(s):
-- \inst|hourleds\(3) = DFFEAS((\inst|hour\(0) & (!\inst|hour\(3) & (!\inst|hour\(2) & \inst|hour\(1)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(0),
	datab => \inst|hour\(3),
	datac => \inst|hour\(2),
	datad => \inst|hour\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hourleds\(3));

-- Location: LC_X6_Y4_N5
\inst|hourleds[2]\ : maxii_lcell
-- Equation(s):
-- \inst|hourleds\(2) = DFFEAS((!\inst|hour\(2) & (\inst|hour\(1) & (!\inst|hour\(0) & !\inst|hour\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(2),
	datab => \inst|hour\(1),
	datac => \inst|hour\(0),
	datad => \inst|hour\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hourleds\(2));

-- Location: LC_X6_Y4_N3
\inst|hourleds[1]\ : maxii_lcell
-- Equation(s):
-- \inst|hourleds\(1) = DFFEAS((!\inst|hour\(2) & (!\inst|hour\(1) & (\inst|hour\(0) & !\inst|hour\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(2),
	datab => \inst|hour\(1),
	datac => \inst|hour\(0),
	datad => \inst|hour\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hourleds\(1));

-- Location: LC_X6_Y4_N9
\inst|hourleds[0]\ : maxii_lcell
-- Equation(s):
-- \inst|hourleds\(0) = DFFEAS((!\inst|hour\(2) & (!\inst|hour\(1) & (!\inst|hour\(0) & !\inst|hour\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|hour\(2),
	datab => \inst|hour\(1),
	datac => \inst|hour\(0),
	datad => \inst|hour\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|hourleds\(0));

-- Location: LC_X7_Y1_N5
\inst|minleds[9]\ : maxii_lcell
-- Equation(s):
-- \inst|minleds\(9) = DFFEAS((!\inst|min\(2) & (\inst|min\(0) & (!\inst|min\(1) & \inst|min\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(2),
	datab => \inst|min\(0),
	datac => \inst|min\(1),
	datad => \inst|min\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minleds\(9));

-- Location: LC_X7_Y1_N0
\inst|minleds[8]\ : maxii_lcell
-- Equation(s):
-- \inst|minleds\(8) = DFFEAS((!\inst|min\(2) & (!\inst|min\(0) & (!\inst|min\(1) & \inst|min\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(2),
	datab => \inst|min\(0),
	datac => \inst|min\(1),
	datad => \inst|min\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minleds\(8));

-- Location: LC_X7_Y1_N4
\inst|minleds[7]\ : maxii_lcell
-- Equation(s):
-- \inst|minleds\(7) = DFFEAS((\inst|min\(2) & (\inst|min\(0) & (\inst|min\(1) & !\inst|min\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(2),
	datab => \inst|min\(0),
	datac => \inst|min\(1),
	datad => \inst|min\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minleds\(7));

-- Location: LC_X7_Y1_N1
\inst|minleds[6]\ : maxii_lcell
-- Equation(s):
-- \inst|minleds\(6) = DFFEAS((\inst|min\(2) & (!\inst|min\(0) & (\inst|min\(1) & !\inst|min\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(2),
	datab => \inst|min\(0),
	datac => \inst|min\(1),
	datad => \inst|min\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minleds\(6));

-- Location: LC_X7_Y1_N3
\inst|minleds[5]\ : maxii_lcell
-- Equation(s):
-- \inst|minleds\(5) = DFFEAS((\inst|min\(2) & (\inst|min\(0) & (!\inst|min\(1) & !\inst|min\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(2),
	datab => \inst|min\(0),
	datac => \inst|min\(1),
	datad => \inst|min\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minleds\(5));

-- Location: LC_X7_Y1_N7
\inst|minleds[4]\ : maxii_lcell
-- Equation(s):
-- \inst|minleds\(4) = DFFEAS((\inst|min\(2) & (!\inst|min\(0) & (!\inst|min\(1) & !\inst|min\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(2),
	datab => \inst|min\(0),
	datac => \inst|min\(1),
	datad => \inst|min\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minleds\(4));

-- Location: LC_X7_Y1_N9
\inst|minleds[3]\ : maxii_lcell
-- Equation(s):
-- \inst|minleds\(3) = DFFEAS((!\inst|min\(2) & (\inst|min\(0) & (\inst|min\(1) & !\inst|min\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(2),
	datab => \inst|min\(0),
	datac => \inst|min\(1),
	datad => \inst|min\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minleds\(3));

-- Location: LC_X7_Y1_N8
\inst|minleds[2]\ : maxii_lcell
-- Equation(s):
-- \inst|minleds\(2) = DFFEAS((!\inst|min\(2) & (!\inst|min\(0) & (\inst|min\(1) & !\inst|min\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(2),
	datab => \inst|min\(0),
	datac => \inst|min\(1),
	datad => \inst|min\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minleds\(2));

-- Location: LC_X7_Y1_N6
\inst|minleds[1]\ : maxii_lcell
-- Equation(s):
-- \inst|minleds\(1) = DFFEAS((!\inst|min\(2) & (\inst|min\(0) & (!\inst|min\(1) & !\inst|min\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(2),
	datab => \inst|min\(0),
	datac => \inst|min\(1),
	datad => \inst|min\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minleds\(1));

-- Location: LC_X7_Y1_N2
\inst|minleds[0]\ : maxii_lcell
-- Equation(s):
-- \inst|minleds\(0) = DFFEAS((!\inst|min\(2) & (!\inst|min\(0) & (!\inst|min\(1) & !\inst|min\(3)))), !GLOBAL(\inst2|out_Data~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_out_Data~combout\,
	dataa => \inst|min\(2),
	datab => \inst|min\(0),
	datac => \inst|min\(1),
	datad => \inst|min\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minleds\(0));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\request_setpulses~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_request_setpulses);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\anode1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|anode1~regout\,
	oe => VCC,
	padio => ww_anode1);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\anode2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|anode2~regout\,
	oe => VCC,
	padio => ww_anode2);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\anode3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_anode3);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\anode4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|anode4~regout\,
	oe => VCC,
	padio => ww_anode4);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dot1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|dot1~regout\,
	oe => VCC,
	padio => ww_dot1);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dot2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|dot2~regout\,
	oe => VCC,
	padio => ww_dot2);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dhourleds[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|dhourleds\(2),
	oe => VCC,
	padio => ww_dhourleds(2));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dhourleds[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|dhourleds\(1),
	oe => VCC,
	padio => ww_dhourleds(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dhourleds[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|dhourleds\(0),
	oe => VCC,
	padio => ww_dhourleds(0));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dminleds[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|dminleds\(5),
	oe => VCC,
	padio => ww_dminleds(5));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dminleds[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|dminleds\(4),
	oe => VCC,
	padio => ww_dminleds(4));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dminleds[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|dminleds\(3),
	oe => VCC,
	padio => ww_dminleds(3));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dminleds[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|dminleds\(2),
	oe => VCC,
	padio => ww_dminleds(2));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dminleds[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|dminleds\(1),
	oe => VCC,
	padio => ww_dminleds(1));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dminleds[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|dminleds\(0),
	oe => VCC,
	padio => ww_dminleds(0));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hourleds[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|hourleds\(9),
	oe => VCC,
	padio => ww_hourleds(9));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hourleds[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|hourleds\(8),
	oe => VCC,
	padio => ww_hourleds(8));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hourleds[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|hourleds\(7),
	oe => VCC,
	padio => ww_hourleds(7));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hourleds[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|hourleds\(6),
	oe => VCC,
	padio => ww_hourleds(6));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hourleds[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|hourleds\(5),
	oe => VCC,
	padio => ww_hourleds(5));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hourleds[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|hourleds\(4),
	oe => VCC,
	padio => ww_hourleds(4));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hourleds[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|hourleds\(3),
	oe => VCC,
	padio => ww_hourleds(3));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hourleds[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|hourleds\(2),
	oe => VCC,
	padio => ww_hourleds(2));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hourleds[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|hourleds\(1),
	oe => VCC,
	padio => ww_hourleds(1));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\hourleds[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|hourleds\(0),
	oe => VCC,
	padio => ww_hourleds(0));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\minleds[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|minleds\(9),
	oe => VCC,
	padio => ww_minleds(9));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\minleds[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|minleds\(8),
	oe => VCC,
	padio => ww_minleds(8));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\minleds[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|minleds\(7),
	oe => VCC,
	padio => ww_minleds(7));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\minleds[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|minleds\(6),
	oe => VCC,
	padio => ww_minleds(6));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\minleds[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|minleds\(5),
	oe => VCC,
	padio => ww_minleds(5));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\minleds[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|minleds\(4),
	oe => VCC,
	padio => ww_minleds(4));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\minleds[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|minleds\(3),
	oe => VCC,
	padio => ww_minleds(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\minleds[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|minleds\(2),
	oe => VCC,
	padio => ww_minleds(2));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\minleds[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|minleds\(1),
	oe => VCC,
	padio => ww_minleds(1));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\minleds[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|minleds\(0),
	oe => VCC,
	padio => ww_minleds(0));
END structure;


