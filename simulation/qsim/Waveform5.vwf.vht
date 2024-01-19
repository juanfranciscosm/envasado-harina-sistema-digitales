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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/12/2024 19:07:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          multiplexor_motor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplexor_motor_vhd_vec_tst IS
END multiplexor_motor_vhd_vec_tst;
ARCHITECTURE multiplexor_motor_arch OF multiplexor_motor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL abrirCompuerta : STD_LOGIC;
SIGNAL cerrarCompuerta : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL motor_paso : STD_LOGIC;
SIGNAL Sel : STD_LOGIC;
COMPONENT multiplexor_motor
	PORT (
	abrirCompuerta : IN STD_LOGIC;
	cerrarCompuerta : IN STD_LOGIC;
	en : IN STD_LOGIC;
	motor_paso : BUFFER STD_LOGIC;
	Sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : multiplexor_motor
	PORT MAP (
-- list connections between master ports and signals
	abrirCompuerta => abrirCompuerta,
	cerrarCompuerta => cerrarCompuerta,
	en => en,
	motor_paso => motor_paso,
	Sel => Sel
	);

-- abrirCompuerta
t_prcs_abrirCompuerta: PROCESS
BEGIN
	abrirCompuerta <= '1';
WAIT;
END PROCESS t_prcs_abrirCompuerta;

-- cerrarCompuerta
t_prcs_cerrarCompuerta: PROCESS
BEGIN
	cerrarCompuerta <= '0';
WAIT;
END PROCESS t_prcs_cerrarCompuerta;

-- Sel
t_prcs_Sel: PROCESS
BEGIN
	Sel <= '0';
	WAIT FOR 200000 ps;
	Sel <= '1';
	WAIT FOR 100000 ps;
	Sel <= '0';
	WAIT FOR 200000 ps;
	Sel <= '1';
	WAIT FOR 200000 ps;
	Sel <= '0';
WAIT;
END PROCESS t_prcs_Sel;
END multiplexor_motor_arch;
