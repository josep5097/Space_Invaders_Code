-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "01/17/2020 01:21:15"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cuenta IS
    PORT (
	clock : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	izq : IN std_logic;
	der : IN std_logic;
	F1 : IN std_logic_vector(7 DOWNTO 0);
	posdisparo : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END cuenta;

ARCHITECTURE structure OF cuenta IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_izq : std_logic;
SIGNAL ww_der : std_logic;
SIGNAL ww_F1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_posdisparo : std_logic_vector(7 DOWNTO 0);
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \F1[1]~input_o\ : std_logic;
SIGNAL \F1[2]~input_o\ : std_logic;
SIGNAL \F1[3]~input_o\ : std_logic;
SIGNAL \F1[4]~input_o\ : std_logic;
SIGNAL \F1[5]~input_o\ : std_logic;
SIGNAL \F1[6]~input_o\ : std_logic;
SIGNAL \posdisparo[0]~output_o\ : std_logic;
SIGNAL \posdisparo[1]~output_o\ : std_logic;
SIGNAL \posdisparo[2]~output_o\ : std_logic;
SIGNAL \posdisparo[3]~output_o\ : std_logic;
SIGNAL \posdisparo[4]~output_o\ : std_logic;
SIGNAL \posdisparo[5]~output_o\ : std_logic;
SIGNAL \posdisparo[6]~output_o\ : std_logic;
SIGNAL \posdisparo[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \posdisparo[0]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \izq~input_o\ : std_logic;
SIGNAL \der~input_o\ : std_logic;
SIGNAL \F1[7]~input_o\ : std_logic;
SIGNAL \F1[0]~input_o\ : std_logic;
SIGNAL \posdisparo~10_combout\ : std_logic;
SIGNAL \posdisparo[0]~reg0_q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \posdisparo[0]~9\ : std_logic;
SIGNAL \posdisparo[1]~11_combout\ : std_logic;
SIGNAL \posdisparo[1]~reg0_q\ : std_logic;
SIGNAL \posdisparo[1]~12\ : std_logic;
SIGNAL \posdisparo[2]~13_combout\ : std_logic;
SIGNAL \posdisparo[2]~reg0_q\ : std_logic;
SIGNAL \posdisparo[2]~14\ : std_logic;
SIGNAL \posdisparo[3]~15_combout\ : std_logic;
SIGNAL \posdisparo[3]~reg0_q\ : std_logic;
SIGNAL \posdisparo[3]~16\ : std_logic;
SIGNAL \posdisparo[4]~17_combout\ : std_logic;
SIGNAL \posdisparo[4]~reg0_q\ : std_logic;
SIGNAL \posdisparo[4]~18\ : std_logic;
SIGNAL \posdisparo[5]~19_combout\ : std_logic;
SIGNAL \posdisparo[5]~reg0_q\ : std_logic;
SIGNAL \posdisparo[5]~20\ : std_logic;
SIGNAL \posdisparo[6]~21_combout\ : std_logic;
SIGNAL \posdisparo[6]~reg0_q\ : std_logic;
SIGNAL \posdisparo[6]~22\ : std_logic;
SIGNAL \posdisparo[7]~23_combout\ : std_logic;
SIGNAL \posdisparo[7]~reg0_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_enable <= enable;
ww_reset <= reset;
ww_izq <= izq;
ww_der <= der;
ww_F1 <= F1;
posdisparo <= ww_posdisparo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\posdisparo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \posdisparo[0]~reg0_q\,
	devoe => ww_devoe,
	o => \posdisparo[0]~output_o\);

\posdisparo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \posdisparo[1]~reg0_q\,
	devoe => ww_devoe,
	o => \posdisparo[1]~output_o\);

\posdisparo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \posdisparo[2]~reg0_q\,
	devoe => ww_devoe,
	o => \posdisparo[2]~output_o\);

\posdisparo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \posdisparo[3]~reg0_q\,
	devoe => ww_devoe,
	o => \posdisparo[3]~output_o\);

\posdisparo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \posdisparo[4]~reg0_q\,
	devoe => ww_devoe,
	o => \posdisparo[4]~output_o\);

\posdisparo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \posdisparo[5]~reg0_q\,
	devoe => ww_devoe,
	o => \posdisparo[5]~output_o\);

\posdisparo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \posdisparo[6]~reg0_q\,
	devoe => ww_devoe,
	o => \posdisparo[6]~output_o\);

\posdisparo[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \posdisparo[7]~reg0_q\,
	devoe => ww_devoe,
	o => \posdisparo[7]~output_o\);

\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\posdisparo[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \posdisparo[0]~8_combout\ = \posdisparo[0]~reg0_q\ $ (VCC)
-- \posdisparo[0]~9\ = CARRY(\posdisparo[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \posdisparo[0]~reg0_q\,
	datad => VCC,
	combout => \posdisparo[0]~8_combout\,
	cout => \posdisparo[0]~9\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\izq~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_izq,
	o => \izq~input_o\);

\der~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_der,
	o => \der~input_o\);

\F1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(7),
	o => \F1[7]~input_o\);

\F1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(0),
	o => \F1[0]~input_o\);

\posdisparo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \posdisparo~10_combout\ = (\izq~input_o\ & (((\der~input_o\ & !\F1[0]~input_o\)) # (!\F1[7]~input_o\))) # (!\izq~input_o\ & (\der~input_o\ & ((!\F1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \izq~input_o\,
	datab => \der~input_o\,
	datac => \F1[7]~input_o\,
	datad => \F1[0]~input_o\,
	combout => \posdisparo~10_combout\);

\posdisparo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \posdisparo[0]~8_combout\,
	clrn => \reset~input_o\,
	ena => \posdisparo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \posdisparo[0]~reg0_q\);

\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\izq~input_o\ & !\F1[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \izq~input_o\,
	datad => \F1[7]~input_o\,
	combout => \process_0~0_combout\);

\posdisparo[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \posdisparo[1]~11_combout\ = (\posdisparo[1]~reg0_q\ & ((\process_0~0_combout\ & (!\posdisparo[0]~9\)) # (!\process_0~0_combout\ & (\posdisparo[0]~9\ & VCC)))) # (!\posdisparo[1]~reg0_q\ & ((\process_0~0_combout\ & ((\posdisparo[0]~9\) # (GND))) # 
-- (!\process_0~0_combout\ & (!\posdisparo[0]~9\))))
-- \posdisparo[1]~12\ = CARRY((\posdisparo[1]~reg0_q\ & (\process_0~0_combout\ & !\posdisparo[0]~9\)) # (!\posdisparo[1]~reg0_q\ & ((\process_0~0_combout\) # (!\posdisparo[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \posdisparo[1]~reg0_q\,
	datab => \process_0~0_combout\,
	datad => VCC,
	cin => \posdisparo[0]~9\,
	combout => \posdisparo[1]~11_combout\,
	cout => \posdisparo[1]~12\);

\posdisparo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \posdisparo[1]~11_combout\,
	clrn => \reset~input_o\,
	ena => \posdisparo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \posdisparo[1]~reg0_q\);

\posdisparo[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \posdisparo[2]~13_combout\ = ((\posdisparo[2]~reg0_q\ $ (\process_0~0_combout\ $ (\posdisparo[1]~12\)))) # (GND)
-- \posdisparo[2]~14\ = CARRY((\posdisparo[2]~reg0_q\ & ((!\posdisparo[1]~12\) # (!\process_0~0_combout\))) # (!\posdisparo[2]~reg0_q\ & (!\process_0~0_combout\ & !\posdisparo[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \posdisparo[2]~reg0_q\,
	datab => \process_0~0_combout\,
	datad => VCC,
	cin => \posdisparo[1]~12\,
	combout => \posdisparo[2]~13_combout\,
	cout => \posdisparo[2]~14\);

\posdisparo[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \posdisparo[2]~13_combout\,
	clrn => \reset~input_o\,
	ena => \posdisparo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \posdisparo[2]~reg0_q\);

\posdisparo[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \posdisparo[3]~15_combout\ = (\posdisparo[3]~reg0_q\ & ((\process_0~0_combout\ & (!\posdisparo[2]~14\)) # (!\process_0~0_combout\ & (\posdisparo[2]~14\ & VCC)))) # (!\posdisparo[3]~reg0_q\ & ((\process_0~0_combout\ & ((\posdisparo[2]~14\) # (GND))) # 
-- (!\process_0~0_combout\ & (!\posdisparo[2]~14\))))
-- \posdisparo[3]~16\ = CARRY((\posdisparo[3]~reg0_q\ & (\process_0~0_combout\ & !\posdisparo[2]~14\)) # (!\posdisparo[3]~reg0_q\ & ((\process_0~0_combout\) # (!\posdisparo[2]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \posdisparo[3]~reg0_q\,
	datab => \process_0~0_combout\,
	datad => VCC,
	cin => \posdisparo[2]~14\,
	combout => \posdisparo[3]~15_combout\,
	cout => \posdisparo[3]~16\);

\posdisparo[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \posdisparo[3]~15_combout\,
	clrn => \reset~input_o\,
	ena => \posdisparo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \posdisparo[3]~reg0_q\);

\posdisparo[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \posdisparo[4]~17_combout\ = ((\posdisparo[4]~reg0_q\ $ (\process_0~0_combout\ $ (\posdisparo[3]~16\)))) # (GND)
-- \posdisparo[4]~18\ = CARRY((\posdisparo[4]~reg0_q\ & ((!\posdisparo[3]~16\) # (!\process_0~0_combout\))) # (!\posdisparo[4]~reg0_q\ & (!\process_0~0_combout\ & !\posdisparo[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \posdisparo[4]~reg0_q\,
	datab => \process_0~0_combout\,
	datad => VCC,
	cin => \posdisparo[3]~16\,
	combout => \posdisparo[4]~17_combout\,
	cout => \posdisparo[4]~18\);

\posdisparo[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \posdisparo[4]~17_combout\,
	clrn => \reset~input_o\,
	ena => \posdisparo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \posdisparo[4]~reg0_q\);

\posdisparo[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \posdisparo[5]~19_combout\ = (\posdisparo[5]~reg0_q\ & ((\process_0~0_combout\ & (!\posdisparo[4]~18\)) # (!\process_0~0_combout\ & (\posdisparo[4]~18\ & VCC)))) # (!\posdisparo[5]~reg0_q\ & ((\process_0~0_combout\ & ((\posdisparo[4]~18\) # (GND))) # 
-- (!\process_0~0_combout\ & (!\posdisparo[4]~18\))))
-- \posdisparo[5]~20\ = CARRY((\posdisparo[5]~reg0_q\ & (\process_0~0_combout\ & !\posdisparo[4]~18\)) # (!\posdisparo[5]~reg0_q\ & ((\process_0~0_combout\) # (!\posdisparo[4]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \posdisparo[5]~reg0_q\,
	datab => \process_0~0_combout\,
	datad => VCC,
	cin => \posdisparo[4]~18\,
	combout => \posdisparo[5]~19_combout\,
	cout => \posdisparo[5]~20\);

\posdisparo[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \posdisparo[5]~19_combout\,
	clrn => \reset~input_o\,
	ena => \posdisparo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \posdisparo[5]~reg0_q\);

\posdisparo[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \posdisparo[6]~21_combout\ = ((\posdisparo[6]~reg0_q\ $ (\process_0~0_combout\ $ (\posdisparo[5]~20\)))) # (GND)
-- \posdisparo[6]~22\ = CARRY((\posdisparo[6]~reg0_q\ & ((!\posdisparo[5]~20\) # (!\process_0~0_combout\))) # (!\posdisparo[6]~reg0_q\ & (!\process_0~0_combout\ & !\posdisparo[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \posdisparo[6]~reg0_q\,
	datab => \process_0~0_combout\,
	datad => VCC,
	cin => \posdisparo[5]~20\,
	combout => \posdisparo[6]~21_combout\,
	cout => \posdisparo[6]~22\);

\posdisparo[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \posdisparo[6]~21_combout\,
	clrn => \reset~input_o\,
	ena => \posdisparo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \posdisparo[6]~reg0_q\);

\posdisparo[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \posdisparo[7]~23_combout\ = \posdisparo[7]~reg0_q\ $ (\process_0~0_combout\ $ (!\posdisparo[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \posdisparo[7]~reg0_q\,
	datab => \process_0~0_combout\,
	cin => \posdisparo[6]~22\,
	combout => \posdisparo[7]~23_combout\);

\posdisparo[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \posdisparo[7]~23_combout\,
	clrn => \reset~input_o\,
	ena => \posdisparo~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \posdisparo[7]~reg0_q\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\F1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(1),
	o => \F1[1]~input_o\);

\F1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(2),
	o => \F1[2]~input_o\);

\F1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(3),
	o => \F1[3]~input_o\);

\F1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(4),
	o => \F1[4]~input_o\);

\F1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(5),
	o => \F1[5]~input_o\);

\F1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1(6),
	o => \F1[6]~input_o\);

ww_posdisparo(0) <= \posdisparo[0]~output_o\;

ww_posdisparo(1) <= \posdisparo[1]~output_o\;

ww_posdisparo(2) <= \posdisparo[2]~output_o\;

ww_posdisparo(3) <= \posdisparo[3]~output_o\;

ww_posdisparo(4) <= \posdisparo[4]~output_o\;

ww_posdisparo(5) <= \posdisparo[5]~output_o\;

ww_posdisparo(6) <= \posdisparo[6]~output_o\;

ww_posdisparo(7) <= \posdisparo[7]~output_o\;
END structure;


