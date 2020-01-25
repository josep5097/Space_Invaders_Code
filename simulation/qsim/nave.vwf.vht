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
-- Generated on "01/17/2020 00:16:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          nave
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY nave_vhd_vec_tst IS
END nave_vhd_vec_tst;
ARCHITECTURE nave_arch OF nave_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock1 : STD_LOGIC;
SIGNAL clock2pp : STD_LOGIC;
SIGNAL der : STD_LOGIC;
SIGNAL disparar : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL F1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL F2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL F3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL F4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL F5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL F6 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL F7 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL F8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL gano : STD_LOGIC;
SIGNAL izq : STD_LOGIC;
SIGNAL pararbala : STD_LOGIC;
SIGNAL pase : STD_LOGIC;
SIGNAL perdio : STD_LOGIC;
SIGNAL posdisparo : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT nave
	PORT (
	clock1 : IN STD_LOGIC;
	clock2pp : IN STD_LOGIC;
	der : IN STD_LOGIC;
	disparar : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	F1 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	F2 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	F3 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	F4 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	F5 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	F6 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	F7 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	F8 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	gano : OUT STD_LOGIC;
	izq : IN STD_LOGIC;
	pararbala : OUT STD_LOGIC;
	pase : BUFFER STD_LOGIC;
	perdio : OUT STD_LOGIC;
	posdisparo : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : nave
	PORT MAP (
-- list connections between master ports and signals
	clock1 => clock1,
	clock2pp => clock2pp,
	der => der,
	disparar => disparar,
	enable => enable,
	F1 => F1,
	F2 => F2,
	F3 => F3,
	F4 => F4,
	F5 => F5,
	F6 => F6,
	F7 => F7,
	F8 => F8,
	gano => gano,
	izq => izq,
	pararbala => pararbala,
	pase => pase,
	perdio => perdio,
	posdisparo => posdisparo,
	reset => reset
	);

-- clock1
t_prcs_clock1: PROCESS
BEGIN
	clock1 <= '0';
WAIT;
END PROCESS t_prcs_clock1;

-- clock2pp
t_prcs_clock2pp: PROCESS
BEGIN
	clock2pp <= '0';
	WAIT FOR 130000 ps;
	clock2pp <= '1';
	WAIT FOR 20000 ps;
	clock2pp <= '0';
	WAIT FOR 20000 ps;
	clock2pp <= '1';
	WAIT FOR 20000 ps;
	clock2pp <= '0';
	WAIT FOR 20000 ps;
	clock2pp <= '1';
	WAIT FOR 20000 ps;
	clock2pp <= '0';
WAIT;
END PROCESS t_prcs_clock2pp;

-- der
t_prcs_der: PROCESS
BEGIN
	der <= '0';
WAIT;
END PROCESS t_prcs_der;

-- disparar
t_prcs_disparar: PROCESS
BEGIN
	disparar <= '0';
WAIT;
END PROCESS t_prcs_disparar;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- izq
t_prcs_izq: PROCESS
BEGIN
	izq <= '0';
	WAIT FOR 140000 ps;
	izq <= '1';
	WAIT FOR 10000 ps;
	izq <= '0';
	WAIT FOR 30000 ps;
	izq <= '1';
	WAIT FOR 10000 ps;
	izq <= '0';
	WAIT FOR 30000 ps;
	izq <= '1';
	WAIT FOR 10000 ps;
	izq <= '0';
WAIT;
END PROCESS t_prcs_izq;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 40000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END nave_arch;
