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
-- Generated on "12/22/2023 01:27:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          envasadoGeneral
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY envasadoGeneral_vhd_vec_tst IS
END envasadoGeneral_vhd_vec_tst;
ARCHITECTURE envasadoGeneral_arch OF envasadoGeneral_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL anodo7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL anodo8 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL anodo9 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Clk : STD_LOGIC;
SIGNAL comp1 : STD_LOGIC;
SIGNAL distancia_out : STD_LOGIC;
SIGNAL distanciaMaxima : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL distanciaMaximaValida : STD_LOGIC;
SIGNAL distanciaMinima : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL distanciaMinimaValida : STD_LOGIC;
SIGNAL led_bolsa : STD_LOGIC;
SIGNAL led_mal : STD_LOGIC;
SIGNAL led_sistemaOn : STD_LOGIC;
SIGNAL motor_paso : STD_LOGIC;
SIGNAL peso_out : STD_LOGIC;
SIGNAL pesoMaximo : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pesoMinimo : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SBdistancia : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SBpeso : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL start : STD_LOGIC;
COMPONENT envasadoGeneral
	PORT (
	anodo7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	anodo8 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	anodo9 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Clk : IN STD_LOGIC;
	comp1 : OUT STD_LOGIC;
	distancia_out : OUT STD_LOGIC;
	distanciaMaxima : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	distanciaMaximaValida : INOUT STD_LOGIC;
	distanciaMinima : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	distanciaMinimaValida : INOUT STD_LOGIC;
	led_bolsa : OUT STD_LOGIC;
	led_mal : OUT STD_LOGIC;
	led_sistemaOn : OUT STD_LOGIC;
	motor_paso : OUT STD_LOGIC;
	peso_out : OUT STD_LOGIC;
	pesoMaximo : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pesoMinimo : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	SBdistancia : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	SBpeso : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : envasadoGeneral
	PORT MAP (
-- list connections between master ports and signals
	anodo7 => anodo7,
	anodo8 => anodo8,
	anodo9 => anodo9,
	Clk => Clk,
	comp1 => comp1,
	distancia_out => distancia_out,
	distanciaMaxima => distanciaMaxima,
	distanciaMaximaValida => distanciaMaximaValida,
	distanciaMinima => distanciaMinima,
	distanciaMinimaValida => distanciaMinimaValida,
	led_bolsa => led_bolsa,
	led_mal => led_mal,
	led_sistemaOn => led_sistemaOn,
	motor_paso => motor_paso,
	peso_out => peso_out,
	pesoMaximo => pesoMaximo,
	pesoMinimo => pesoMinimo,
	SBdistancia => SBdistancia,
	SBpeso => SBpeso,
	start => start
	);

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '1';
WAIT;
END PROCESS t_prcs_start;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 50000 ps;
	Clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;
-- SBpeso[7]
t_prcs_SBpeso_7: PROCESS
BEGIN
	SBpeso(7) <= '0';
	WAIT FOR 300000 ps;
	SBpeso(7) <= '1';
	WAIT FOR 200000 ps;
	SBpeso(7) <= '0';
	WAIT FOR 200000 ps;
	SBpeso(7) <= '1';
WAIT;
END PROCESS t_prcs_SBpeso_7;
-- SBpeso[6]
t_prcs_SBpeso_6: PROCESS
BEGIN
	SBpeso(6) <= '0';
	WAIT FOR 300000 ps;
	SBpeso(6) <= '1';
	WAIT FOR 200000 ps;
	SBpeso(6) <= '0';
	WAIT FOR 300000 ps;
	SBpeso(6) <= '1';
WAIT;
END PROCESS t_prcs_SBpeso_6;
-- SBpeso[5]
t_prcs_SBpeso_5: PROCESS
BEGIN
	SBpeso(5) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(5) <= '1';
	WAIT FOR 200000 ps;
	SBpeso(5) <= '0';
	WAIT FOR 200000 ps;
	SBpeso(5) <= '1';
	WAIT FOR 200000 ps;
	SBpeso(5) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(5) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(5) <= '0';
WAIT;
END PROCESS t_prcs_SBpeso_5;
-- SBpeso[4]
t_prcs_SBpeso_4: PROCESS
BEGIN
	SBpeso(4) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(4) <= '1';
	WAIT FOR 200000 ps;
	SBpeso(4) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(4) <= '1';
	WAIT FOR 300000 ps;
	SBpeso(4) <= '0';
	WAIT FOR 200000 ps;
	SBpeso(4) <= '1';
WAIT;
END PROCESS t_prcs_SBpeso_4;
-- SBpeso[3]
t_prcs_SBpeso_3: PROCESS
BEGIN
	SBpeso(3) <= '0';
	WAIT FOR 300000 ps;
	SBpeso(3) <= '1';
	WAIT FOR 200000 ps;
	SBpeso(3) <= '0';
WAIT;
END PROCESS t_prcs_SBpeso_3;
-- SBpeso[2]
t_prcs_SBpeso_2: PROCESS
BEGIN
	SBpeso(2) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(2) <= '0';
	WAIT FOR 600000 ps;
	SBpeso(2) <= '1';
	WAIT FOR 200000 ps;
	SBpeso(2) <= '0';
WAIT;
END PROCESS t_prcs_SBpeso_2;
-- SBpeso[1]
t_prcs_SBpeso_1: PROCESS
BEGIN
	SBpeso(1) <= '0';
	WAIT FOR 500000 ps;
	SBpeso(1) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(1) <= '0';
	WAIT FOR 200000 ps;
	SBpeso(1) <= '1';
WAIT;
END PROCESS t_prcs_SBpeso_1;
-- SBpeso[0]
t_prcs_SBpeso_0: PROCESS
BEGIN
	SBpeso(0) <= '0';
	WAIT FOR 100000 ps;
	SBpeso(0) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(0) <= '0';
	WAIT FOR 200000 ps;
	SBpeso(0) <= '1';
	WAIT FOR 200000 ps;
	SBpeso(0) <= '0';
	WAIT FOR 200000 ps;
	SBpeso(0) <= '1';
	WAIT FOR 100000 ps;
	SBpeso(0) <= '0';
WAIT;
END PROCESS t_prcs_SBpeso_0;
-- SBdistancia[7]
t_prcs_SBdistancia_7: PROCESS
BEGIN
	SBdistancia(7) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(7) <= '0';
	WAIT FOR 800000 ps;
	SBdistancia(7) <= '1';
WAIT;
END PROCESS t_prcs_SBdistancia_7;
-- SBdistancia[6]
t_prcs_SBdistancia_6: PROCESS
BEGIN
	SBdistancia(6) <= '0';
	WAIT FOR 800000 ps;
	SBdistancia(6) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(6) <= '0';
WAIT;
END PROCESS t_prcs_SBdistancia_6;
-- SBdistancia[5]
t_prcs_SBdistancia_5: PROCESS
BEGIN
	SBdistancia(5) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(5) <= '0';
	WAIT FOR 200000 ps;
	SBdistancia(5) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(5) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(5) <= '1';
	WAIT FOR 200000 ps;
	SBdistancia(5) <= '0';
WAIT;
END PROCESS t_prcs_SBdistancia_5;
-- SBdistancia[4]
t_prcs_SBdistancia_4: PROCESS
BEGIN
	SBdistancia(4) <= '0';
	WAIT FOR 300000 ps;
	SBdistancia(4) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(4) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(4) <= '1';
	WAIT FOR 200000 ps;
	SBdistancia(4) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(4) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(4) <= '0';
WAIT;
END PROCESS t_prcs_SBdistancia_4;
-- SBdistancia[3]
t_prcs_SBdistancia_3: PROCESS
BEGIN
	SBdistancia(3) <= '0';
	WAIT FOR 800000 ps;
	SBdistancia(3) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(3) <= '0';
WAIT;
END PROCESS t_prcs_SBdistancia_3;
-- SBdistancia[2]
t_prcs_SBdistancia_2: PROCESS
BEGIN
	SBdistancia(2) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(2) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(2) <= '0';
	WAIT FOR 600000 ps;
	SBdistancia(2) <= '1';
WAIT;
END PROCESS t_prcs_SBdistancia_2;
-- SBdistancia[1]
t_prcs_SBdistancia_1: PROCESS
BEGIN
	SBdistancia(1) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(1) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(1) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(1) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(1) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(1) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(1) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(1) <= '0';
	WAIT FOR 200000 ps;
	SBdistancia(1) <= '1';
WAIT;
END PROCESS t_prcs_SBdistancia_1;
-- SBdistancia[0]
t_prcs_SBdistancia_0: PROCESS
BEGIN
	SBdistancia(0) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(0) <= '1';
	WAIT FOR 200000 ps;
	SBdistancia(0) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(0) <= '1';
	WAIT FOR 100000 ps;
	SBdistancia(0) <= '0';
	WAIT FOR 100000 ps;
	SBdistancia(0) <= '1';
	WAIT FOR 300000 ps;
	SBdistancia(0) <= '0';
WAIT;
END PROCESS t_prcs_SBdistancia_0;
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
END envasadoGeneral_arch;
