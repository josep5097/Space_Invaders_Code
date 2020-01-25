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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/17/2020 01:21:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cuenta
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cuenta_vhd_vec_tst IS
END cuenta_vhd_vec_tst;
ARCHITECTURE cuenta_arch OF cuenta_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL der : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL F1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL izq : STD_LOGIC;
SIGNAL posdisparo : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT cuenta
	PORT (
	clock : IN STD_LOGIC;
	der : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	F1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	izq : IN STD_LOGIC;
	posdisparo : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : cuenta
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	der => der,
	enable => enable,
	F1 => F1,
	izq => izq,
	posdisparo => posdisparo,
	reset => reset
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '0';
	WAIT FOR 210000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 4
	LOOP
		clock <= '0';
		WAIT FOR 20000 ps;
		clock <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 50000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- der
t_prcs_der: PROCESS
BEGIN
	der <= '0';
WAIT;
END PROCESS t_prcs_der;

-- izq
t_prcs_izq: PROCESS
BEGIN
	izq <= '0';
	WAIT FOR 200000 ps;
	izq <= '1';
	WAIT FOR 30000 ps;
	izq <= '0';
	WAIT FOR 10000 ps;
	izq <= '1';
	WAIT FOR 30000 ps;
	izq <= '0';
	WAIT FOR 10000 ps;
	izq <= '1';
	WAIT FOR 30000 ps;
	izq <= '0';
	WAIT FOR 10000 ps;
	izq <= '1';
	WAIT FOR 30000 ps;
	izq <= '0';
	WAIT FOR 10000 ps;
	izq <= '1';
	WAIT FOR 30000 ps;
	izq <= '0';
WAIT;
END PROCESS t_prcs_izq;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
-- F1[7]
t_prcs_F1_7: PROCESS
BEGIN
	F1(7) <= '0';
WAIT;
END PROCESS t_prcs_F1_7;
-- F1[6]
t_prcs_F1_6: PROCESS
BEGIN
	F1(6) <= '0';
WAIT;
END PROCESS t_prcs_F1_6;
-- F1[5]
t_prcs_F1_5: PROCESS
BEGIN
	F1(5) <= '0';
WAIT;
END PROCESS t_prcs_F1_5;
-- F1[4]
t_prcs_F1_4: PROCESS
BEGIN
	F1(4) <= '0';
WAIT;
END PROCESS t_prcs_F1_4;
-- F1[3]
t_prcs_F1_3: PROCESS
BEGIN
	F1(3) <= '0';
WAIT;
END PROCESS t_prcs_F1_3;
-- F1[2]
t_prcs_F1_2: PROCESS
BEGIN
	F1(2) <= '0';
WAIT;
END PROCESS t_prcs_F1_2;
-- F1[1]
t_prcs_F1_1: PROCESS
BEGIN
	F1(1) <= '0';
WAIT;
END PROCESS t_prcs_F1_1;
-- F1[0]
t_prcs_F1_0: PROCESS
BEGIN
	F1(0) <= '0';
WAIT;
END PROCESS t_prcs_F1_0;
END cuenta_arch;
