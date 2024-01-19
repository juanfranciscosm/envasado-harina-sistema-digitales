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
-- Generated on "01/12/2024 16:08:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bloqueComparadorPeso
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bloqueComparadorPeso_vhd_vec_tst IS
END bloqueComparadorPeso_vhd_vec_tst;
ARCHITECTURE bloqueComparadorPeso_arch OF bloqueComparadorPeso_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL comp1_1 : STD_LOGIC;
SIGNAL Peso_H : STD_LOGIC;
SIGNAL pesoMaximo : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pesoMaximoValido : STD_LOGIC;
SIGNAL pesoMinimo : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pesoMinimoValido : STD_LOGIC;
SIGNAL SBpeso : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT bloqueComparadorPeso
	PORT (
	comp1_1 : INOUT STD_LOGIC;
	Peso_H : INOUT STD_LOGIC;
	pesoMaximo : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pesoMaximoValido : INOUT STD_LOGIC;
	pesoMinimo : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pesoMinimoValido : INOUT STD_LOGIC;
	SBpeso : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bloqueComparadorPeso
	PORT MAP (
-- list connections between master ports and signals
	comp1_1 => comp1_1,
	Peso_H => Peso_H,
	pesoMaximo => pesoMaximo,
	pesoMaximoValido => pesoMaximoValido,
	pesoMinimo => pesoMinimo,
	pesoMinimoValido => pesoMinimoValido,
	SBpeso => SBpeso
	);

-- Peso_H
t_prcs_Peso_H: PROCESS
BEGIN
	Peso_H <= '0';
WAIT;
END PROCESS t_prcs_Peso_H;
-- pesoMaximo[7]
t_prcs_pesoMaximo_7: PROCESS
BEGIN
	pesoMaximo(7) <= '0';
WAIT;
END PROCESS t_prcs_pesoMaximo_7;
-- pesoMaximo[6]
t_prcs_pesoMaximo_6: PROCESS
BEGIN
	pesoMaximo(6) <= '0';
WAIT;
END PROCESS t_prcs_pesoMaximo_6;
-- pesoMaximo[5]
t_prcs_pesoMaximo_5: PROCESS
BEGIN
	pesoMaximo(5) <= '1';
WAIT;
END PROCESS t_prcs_pesoMaximo_5;
-- pesoMaximo[4]
t_prcs_pesoMaximo_4: PROCESS
BEGIN
	pesoMaximo(4) <= '1';
WAIT;
END PROCESS t_prcs_pesoMaximo_4;
-- pesoMaximo[3]
t_prcs_pesoMaximo_3: PROCESS
BEGIN
	pesoMaximo(3) <= '0';
WAIT;
END PROCESS t_prcs_pesoMaximo_3;
-- pesoMaximo[2]
t_prcs_pesoMaximo_2: PROCESS
BEGIN
	pesoMaximo(2) <= '1';
WAIT;
END PROCESS t_prcs_pesoMaximo_2;
-- pesoMaximo[1]
t_prcs_pesoMaximo_1: PROCESS
BEGIN
	pesoMaximo(1) <= '0';
WAIT;
END PROCESS t_prcs_pesoMaximo_1;
-- pesoMaximo[0]
t_prcs_pesoMaximo_0: PROCESS
BEGIN
	pesoMaximo(0) <= '0';
WAIT;
END PROCESS t_prcs_pesoMaximo_0;
-- pesoMinimo[7]
t_prcs_pesoMinimo_7: PROCESS
BEGIN
	pesoMinimo(7) <= '0';
WAIT;
END PROCESS t_prcs_pesoMinimo_7;
-- pesoMinimo[6]
t_prcs_pesoMinimo_6: PROCESS
BEGIN
	pesoMinimo(6) <= '0';
WAIT;
END PROCESS t_prcs_pesoMinimo_6;
-- pesoMinimo[5]
t_prcs_pesoMinimo_5: PROCESS
BEGIN
	pesoMinimo(5) <= '1';
WAIT;
END PROCESS t_prcs_pesoMinimo_5;
-- pesoMinimo[4]
t_prcs_pesoMinimo_4: PROCESS
BEGIN
	pesoMinimo(4) <= '1';
WAIT;
END PROCESS t_prcs_pesoMinimo_4;
-- pesoMinimo[3]
t_prcs_pesoMinimo_3: PROCESS
BEGIN
	pesoMinimo(3) <= '0';
WAIT;
END PROCESS t_prcs_pesoMinimo_3;
-- pesoMinimo[2]
t_prcs_pesoMinimo_2: PROCESS
BEGIN
	pesoMinimo(2) <= '0';
WAIT;
END PROCESS t_prcs_pesoMinimo_2;
-- pesoMinimo[1]
t_prcs_pesoMinimo_1: PROCESS
BEGIN
	pesoMinimo(1) <= '0';
WAIT;
END PROCESS t_prcs_pesoMinimo_1;
-- pesoMinimo[0]
t_prcs_pesoMinimo_0: PROCESS
BEGIN
	pesoMinimo(0) <= '0';
WAIT;
END PROCESS t_prcs_pesoMinimo_0;
-- SBpeso[7]
t_prcs_SBpeso_7: PROCESS
BEGIN
	SBpeso(7) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(7) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(7) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(7) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(7) <= '0';
	WAIT FOR 400000 ps;
	SBpeso(7) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(7) <= '0';
WAIT;
END PROCESS t_prcs_SBpeso_7;
-- SBpeso[6]
t_prcs_SBpeso_6: PROCESS
BEGIN
	SBpeso(6) <= '0';
	WAIT FOR 300000 ps;
	SBpeso(6) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(6) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(6) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(6) <= '0';
	WAIT FOR 300000 ps;
	SBpeso(6) <= '1';
WAIT;
END PROCESS t_prcs_SBpeso_6;
-- SBpeso[5]
t_prcs_SBpeso_5: PROCESS
BEGIN
	SBpeso(5) <= '1';
	WAIT FOR 500000 ps;
	SBpeso(5) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(5) <= '1';
	WAIT FOR 300000 ps;
	SBpeso(5) <= '0';
WAIT;
END PROCESS t_prcs_SBpeso_5;
-- SBpeso[4]
t_prcs_SBpeso_4: PROCESS
BEGIN
	SBpeso(4) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(4) <= '1';
	WAIT FOR 700000 ps;
	SBpeso(4) <= '0';
WAIT;
END PROCESS t_prcs_SBpeso_4;
-- SBpeso[3]
t_prcs_SBpeso_3: PROCESS
BEGIN
	SBpeso(3) <= '1';
	WAIT FOR 200000 ps;
	SBpeso(3) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(3) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(3) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(3) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(3) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(3) <= '1';
WAIT;
END PROCESS t_prcs_SBpeso_3;
-- SBpeso[2]
t_prcs_SBpeso_2: PROCESS
BEGIN
	SBpeso(2) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(2) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(2) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(2) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(2) <= '0';
	WAIT FOR 300000 ps;
	SBpeso(2) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(2) <= '0';
WAIT;
END PROCESS t_prcs_SBpeso_2;
-- SBpeso[1]
t_prcs_SBpeso_1: PROCESS
BEGIN
	SBpeso(1) <= '1';
	WAIT FOR 300000 ps;
	SBpeso(1) <= '0';
WAIT;
END PROCESS t_prcs_SBpeso_1;
-- SBpeso[0]
t_prcs_SBpeso_0: PROCESS
BEGIN
	SBpeso(0) <= '0';
	WAIT FOR 300000 ps;
	SBpeso(0) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(0) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(0) <= '1';
	WAIT FOR 200000 ps;
	SBpeso(0) <= '0';
WAIT;
END PROCESS t_prcs_SBpeso_0;
END bloqueComparadorPeso_arch;
