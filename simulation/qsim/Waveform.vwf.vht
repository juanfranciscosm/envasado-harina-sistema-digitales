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
-- Generated on "01/12/2024 15:24:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bloqueComparadorDistancia
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bloqueComparadorDistancia_vhd_vec_tst IS
END bloqueComparadorDistancia_vhd_vec_tst;
ARCHITECTURE bloqueComparadorDistancia_arch OF bloqueComparadorDistancia_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Distancia_bolsa_H : STD_LOGIC;
SIGNAL distanciaMaxima : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL distanciaMaximaValida : STD_LOGIC;
SIGNAL distanciaMinima : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL distanciaMinimaValida : STD_LOGIC;
SIGNAL SBdistancia : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT bloqueComparadorDistancia
	PORT (
	Distancia_bolsa_H : INOUT STD_LOGIC;
	distanciaMaxima : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	distanciaMaximaValida : INOUT STD_LOGIC;
	distanciaMinima : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	distanciaMinimaValida : INOUT STD_LOGIC;
	SBdistancia : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bloqueComparadorDistancia
	PORT MAP (
-- list connections between master ports and signals
	Distancia_bolsa_H => Distancia_bolsa_H,
	distanciaMaxima => distanciaMaxima,
	distanciaMaximaValida => distanciaMaximaValida,
	distanciaMinima => distanciaMinima,
	distanciaMinimaValida => distanciaMinimaValida,
	SBdistancia => SBdistancia
	);

-- Distancia_bolsa_H
t_prcs_Distancia_bolsa_H: PROCESS
BEGIN
	Distancia_bolsa_H <= 'Z';
WAIT;
END PROCESS t_prcs_Distancia_bolsa_H;
-- distanciaMaxima[7]
t_prcs_distanciaMaxima_7: PROCESS
BEGIN
	distanciaMaxima(7) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMaxima_7;
-- distanciaMaxima[6]
t_prcs_distanciaMaxima_6: PROCESS
BEGIN
	distanciaMaxima(6) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMaxima_6;
-- distanciaMaxima[5]
t_prcs_distanciaMaxima_5: PROCESS
BEGIN
	distanciaMaxima(5) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMaxima_5;
-- distanciaMaxima[4]
t_prcs_distanciaMaxima_4: PROCESS
BEGIN
	distanciaMaxima(4) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMaxima_4;
-- distanciaMaxima[3]
t_prcs_distanciaMaxima_3: PROCESS
BEGIN
	distanciaMaxima(3) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMaxima_3;
-- distanciaMaxima[2]
t_prcs_distanciaMaxima_2: PROCESS
BEGIN
	distanciaMaxima(2) <= '1';
WAIT;
END PROCESS t_prcs_distanciaMaxima_2;
-- distanciaMaxima[1]
t_prcs_distanciaMaxima_1: PROCESS
BEGIN
	distanciaMaxima(1) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMaxima_1;
-- distanciaMaxima[0]
t_prcs_distanciaMaxima_0: PROCESS
BEGIN
	distanciaMaxima(0) <= '1';
WAIT;
END PROCESS t_prcs_distanciaMaxima_0;
-- distanciaMinima[7]
t_prcs_distanciaMinima_7: PROCESS
BEGIN
	distanciaMinima(7) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMinima_7;
-- distanciaMinima[6]
t_prcs_distanciaMinima_6: PROCESS
BEGIN
	distanciaMinima(6) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMinima_6;
-- distanciaMinima[5]
t_prcs_distanciaMinima_5: PROCESS
BEGIN
	distanciaMinima(5) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMinima_5;
-- distanciaMinima[4]
t_prcs_distanciaMinima_4: PROCESS
BEGIN
	distanciaMinima(4) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMinima_4;
-- distanciaMinima[3]
t_prcs_distanciaMinima_3: PROCESS
BEGIN
	distanciaMinima(3) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMinima_3;
-- distanciaMinima[2]
t_prcs_distanciaMinima_2: PROCESS
BEGIN
	distanciaMinima(2) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMinima_2;
-- distanciaMinima[1]
t_prcs_distanciaMinima_1: PROCESS
BEGIN
	distanciaMinima(1) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMinima_1;
-- distanciaMinima[0]
t_prcs_distanciaMinima_0: PROCESS
BEGIN
	distanciaMinima(0) <= '0';
WAIT;
END PROCESS t_prcs_distanciaMinima_0;
-- SBdistancia[7]
t_prcs_SBdistancia_7: PROCESS
BEGIN
	SBdistancia(7) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(7) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(7) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(7) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(7) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(7) <= '0';
	WAIT FOR 200000 ps;
	SBdistancia(7) <= '1';
	WAIT FOR 200000 ps;
	SBdistancia(7) <= '0';
WAIT;
END PROCESS t_prcs_SBdistancia_7;
-- SBdistancia[6]
t_prcs_SBdistancia_6: PROCESS
BEGIN
	SBdistancia(6) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(6) <= '0';
	WAIT FOR 300000 ps;
	SBdistancia(6) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(6) <= '0';
	WAIT FOR 400000 ps;
	SBdistancia(6) <= '1';
WAIT;
END PROCESS t_prcs_SBdistancia_6;
-- SBdistancia[5]
t_prcs_SBdistancia_5: PROCESS
BEGIN
	SBdistancia(5) <= '0';
	WAIT FOR 700000 ps;
	SBdistancia(5) <= '1';
WAIT;
END PROCESS t_prcs_SBdistancia_5;
-- SBdistancia[4]
t_prcs_SBdistancia_4: PROCESS
BEGIN
	SBdistancia(4) <= '0';
	WAIT FOR 200000 ps;
	SBdistancia(4) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(4) <= '0';
	WAIT FOR 300000 ps;
	SBdistancia(4) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(4) <= '0';
WAIT;
END PROCESS t_prcs_SBdistancia_4;
-- SBdistancia[3]
t_prcs_SBdistancia_3: PROCESS
BEGIN
	SBdistancia(3) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(3) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(3) <= '1';
	WAIT FOR 200000 ps;
	SBdistancia(3) <= '0';
	WAIT FOR 500000 ps;
	SBdistancia(3) <= '1';
WAIT;
END PROCESS t_prcs_SBdistancia_3;
-- SBdistancia[2]
t_prcs_SBdistancia_2: PROCESS
BEGIN
	SBdistancia(2) <= '0';
	WAIT FOR 400000 ps;
	SBdistancia(2) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(2) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(2) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(2) <= '0';
WAIT;
END PROCESS t_prcs_SBdistancia_2;
-- SBdistancia[1]
t_prcs_SBdistancia_1: PROCESS
BEGIN
	SBdistancia(1) <= '1';
	WAIT FOR 300000 ps;
	SBdistancia(1) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(1) <= '1';
	WAIT FOR 200000 ps;
	SBdistancia(1) <= '0';
	WAIT FOR 200000 ps;
	SBdistancia(1) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(1) <= '0';
WAIT;
END PROCESS t_prcs_SBdistancia_1;
-- SBdistancia[0]
t_prcs_SBdistancia_0: PROCESS
BEGIN
	SBdistancia(0) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(0) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(0) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(0) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(0) <= '1';
	WAIT FOR 200000 ps;
	SBdistancia(0) <= '0';
WAIT;
END PROCESS t_prcs_SBdistancia_0;
END bloqueComparadorDistancia_arch;
