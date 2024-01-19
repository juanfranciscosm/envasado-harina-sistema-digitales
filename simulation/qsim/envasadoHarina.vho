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

-- DATE "12/22/2023 01:27:49"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	envasadoGeneral IS
    PORT (
	motor_paso : OUT std_logic;
	start : IN std_logic;
	pesoMaximo : IN std_logic_vector(7 DOWNTO 0);
	pesoMinimo : IN std_logic_vector(7 DOWNTO 0);
	SBpeso : IN std_logic_vector(7 DOWNTO 0);
	distanciaMinimaValida : INOUT std_logic;
	distanciaMaximaValida : INOUT std_logic;
	distanciaMaxima : IN std_logic_vector(7 DOWNTO 0);
	distanciaMinima : IN std_logic_vector(7 DOWNTO 0);
	SBdistancia : IN std_logic_vector(7 DOWNTO 0);
	led_sistemaOn : OUT std_logic;
	led_bolsa : OUT std_logic;
	led_mal : OUT std_logic;
	comp1 : OUT std_logic;
	peso_out : OUT std_logic;
	distancia_out : OUT std_logic;
	anodo7 : OUT std_logic_vector(6 DOWNTO 0);
	Clk : IN std_logic;
	anodo8 : OUT std_logic_vector(6 DOWNTO 0);
	anodo9 : OUT std_logic_vector(6 DOWNTO 0)
	);
END envasadoGeneral;

ARCHITECTURE structure OF envasadoGeneral IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_motor_paso : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_pesoMaximo : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pesoMinimo : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SBpeso : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_distanciaMaxima : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_distanciaMinima : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SBdistancia : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led_sistemaOn : std_logic;
SIGNAL ww_led_bolsa : std_logic;
SIGNAL ww_led_mal : std_logic;
SIGNAL ww_comp1 : std_logic;
SIGNAL ww_peso_out : std_logic;
SIGNAL ww_distancia_out : std_logic;
SIGNAL ww_anodo7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Clk : std_logic;
SIGNAL ww_anodo8 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_anodo9 : std_logic_vector(6 DOWNTO 0);
SIGNAL \pesoMaximo[7]~input_o\ : std_logic;
SIGNAL \pesoMaximo[6]~input_o\ : std_logic;
SIGNAL \pesoMaximo[5]~input_o\ : std_logic;
SIGNAL \pesoMaximo[4]~input_o\ : std_logic;
SIGNAL \pesoMaximo[3]~input_o\ : std_logic;
SIGNAL \pesoMaximo[2]~input_o\ : std_logic;
SIGNAL \pesoMaximo[1]~input_o\ : std_logic;
SIGNAL \pesoMaximo[0]~input_o\ : std_logic;
SIGNAL \distanciaMinimaValida~input_o\ : std_logic;
SIGNAL \distanciaMaximaValida~input_o\ : std_logic;
SIGNAL \distanciaMinimaValida~output_o\ : std_logic;
SIGNAL \distanciaMaximaValida~output_o\ : std_logic;
SIGNAL \motor_paso~output_o\ : std_logic;
SIGNAL \led_sistemaOn~output_o\ : std_logic;
SIGNAL \led_bolsa~output_o\ : std_logic;
SIGNAL \led_mal~output_o\ : std_logic;
SIGNAL \comp1~output_o\ : std_logic;
SIGNAL \peso_out~output_o\ : std_logic;
SIGNAL \distancia_out~output_o\ : std_logic;
SIGNAL \anodo7[6]~output_o\ : std_logic;
SIGNAL \anodo7[5]~output_o\ : std_logic;
SIGNAL \anodo7[4]~output_o\ : std_logic;
SIGNAL \anodo7[3]~output_o\ : std_logic;
SIGNAL \anodo7[2]~output_o\ : std_logic;
SIGNAL \anodo7[1]~output_o\ : std_logic;
SIGNAL \anodo7[0]~output_o\ : std_logic;
SIGNAL \anodo8[6]~output_o\ : std_logic;
SIGNAL \anodo8[5]~output_o\ : std_logic;
SIGNAL \anodo8[4]~output_o\ : std_logic;
SIGNAL \anodo8[3]~output_o\ : std_logic;
SIGNAL \anodo8[2]~output_o\ : std_logic;
SIGNAL \anodo8[1]~output_o\ : std_logic;
SIGNAL \anodo8[0]~output_o\ : std_logic;
SIGNAL \anodo9[6]~output_o\ : std_logic;
SIGNAL \anodo9[5]~output_o\ : std_logic;
SIGNAL \anodo9[4]~output_o\ : std_logic;
SIGNAL \anodo9[3]~output_o\ : std_logic;
SIGNAL \anodo9[2]~output_o\ : std_logic;
SIGNAL \anodo9[1]~output_o\ : std_logic;
SIGNAL \anodo9[0]~output_o\ : std_logic;
SIGNAL \distanciaMinima[7]~input_o\ : std_logic;
SIGNAL \SBdistancia[7]~input_o\ : std_logic;
SIGNAL \distanciaMinima[6]~input_o\ : std_logic;
SIGNAL \SBdistancia[6]~input_o\ : std_logic;
SIGNAL \distanciaMinima[5]~input_o\ : std_logic;
SIGNAL \SBdistancia[5]~input_o\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \distanciaMinima[4]~input_o\ : std_logic;
SIGNAL \SBdistancia[4]~input_o\ : std_logic;
SIGNAL \distanciaMinima[3]~input_o\ : std_logic;
SIGNAL \SBdistancia[3]~input_o\ : std_logic;
SIGNAL \distanciaMinima[2]~input_o\ : std_logic;
SIGNAL \SBdistancia[2]~input_o\ : std_logic;
SIGNAL \distanciaMinima[1]~input_o\ : std_logic;
SIGNAL \SBdistancia[1]~input_o\ : std_logic;
SIGNAL \distanciaMinima[0]~input_o\ : std_logic;
SIGNAL \SBdistancia[0]~input_o\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|LessThan0~4_combout\ : std_logic;
SIGNAL \distanciaMaxima[7]~input_o\ : std_logic;
SIGNAL \distanciaMaxima[6]~input_o\ : std_logic;
SIGNAL \distanciaMaxima[5]~input_o\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \distanciaMaxima[4]~input_o\ : std_logic;
SIGNAL \distanciaMaxima[3]~input_o\ : std_logic;
SIGNAL \distanciaMaxima[2]~input_o\ : std_logic;
SIGNAL \distanciaMaxima[1]~input_o\ : std_logic;
SIGNAL \distanciaMaxima[0]~input_o\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|LessThan1~4_combout\ : std_logic;
SIGNAL \pesoMinimo[7]~input_o\ : std_logic;
SIGNAL \SBpeso[7]~input_o\ : std_logic;
SIGNAL \pesoMinimo[6]~input_o\ : std_logic;
SIGNAL \SBpeso[6]~input_o\ : std_logic;
SIGNAL \pesoMinimo[5]~input_o\ : std_logic;
SIGNAL \SBpeso[5]~input_o\ : std_logic;
SIGNAL \inst56|LessThan0~0_combout\ : std_logic;
SIGNAL \inst56|LessThan0~1_combout\ : std_logic;
SIGNAL \pesoMinimo[4]~input_o\ : std_logic;
SIGNAL \SBpeso[4]~input_o\ : std_logic;
SIGNAL \pesoMinimo[3]~input_o\ : std_logic;
SIGNAL \SBpeso[3]~input_o\ : std_logic;
SIGNAL \pesoMinimo[2]~input_o\ : std_logic;
SIGNAL \SBpeso[2]~input_o\ : std_logic;
SIGNAL \pesoMinimo[1]~input_o\ : std_logic;
SIGNAL \SBpeso[1]~input_o\ : std_logic;
SIGNAL \pesoMinimo[0]~input_o\ : std_logic;
SIGNAL \SBpeso[0]~input_o\ : std_logic;
SIGNAL \inst56|LessThan0~2_combout\ : std_logic;
SIGNAL \inst56|LessThan0~3_combout\ : std_logic;
SIGNAL \inst56|LessThan0~4_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \inst|Motor_Compuerta~combout\ : std_logic;
SIGNAL \inst1|Distancia_bolsa_H~0_combout\ : std_logic;
SIGNAL \inst|led_mal~0_combout\ : std_logic;
SIGNAL \inst56|Equal0~0_combout\ : std_logic;
SIGNAL \inst56|Equal0~1_combout\ : std_logic;
SIGNAL \inst56|Equal0~2_combout\ : std_logic;
SIGNAL \inst56|Equal0~3_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \inst8|q[0]~0_combout\ : std_logic;
SIGNAL \inst8|q[1]~1_combout\ : std_logic;
SIGNAL \inst8|q[2]~2_combout\ : std_logic;
SIGNAL \inst8|q[3]~3_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|Mux6~0_combout\ : std_logic;
SIGNAL \inst16|z~0_combout\ : std_logic;
SIGNAL \inst16|z~1_combout\ : std_logic;
SIGNAL \inst16|LessThan3~0_combout\ : std_logic;
SIGNAL \inst16|num_bcd_u[1]~0_combout\ : std_logic;
SIGNAL \inst16|num_bcd_u[2]~1_combout\ : std_logic;
SIGNAL \inst16|num_bcd_u[3]~2_combout\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst11|Mux3~0_combout\ : std_logic;
SIGNAL \inst11|Mux4~0_combout\ : std_logic;
SIGNAL \inst11|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|Mux6~0_combout\ : std_logic;
SIGNAL \inst16|num_bcd_d[0]~0_combout\ : std_logic;
SIGNAL \inst16|num_bcd_d[1]~1_combout\ : std_logic;
SIGNAL \inst16|num_bcd_d[2]~2_combout\ : std_logic;
SIGNAL \inst16|num_bcd_d[3]~3_combout\ : std_logic;
SIGNAL \inst13|Mux0~0_combout\ : std_logic;
SIGNAL \inst13|Mux1~0_combout\ : std_logic;
SIGNAL \inst13|Mux2~0_combout\ : std_logic;
SIGNAL \inst13|Mux3~0_combout\ : std_logic;
SIGNAL \inst13|Mux4~0_combout\ : std_logic;
SIGNAL \inst13|Mux5~0_combout\ : std_logic;
SIGNAL \inst13|Mux6~0_combout\ : std_logic;
SIGNAL \inst8|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_distanciaMaxima[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMaxima[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMaxima[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMaxima[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMaxima[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMaxima[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMaxima[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMaxima[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBdistancia[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMinima[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBdistancia[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMinima[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBdistancia[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMinima[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBdistancia[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMinima[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBdistancia[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMinima[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBdistancia[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMinima[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBdistancia[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMinima[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBdistancia[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_distanciaMinima[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_SBpeso[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pesoMinimo[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBpeso[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pesoMinimo[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBpeso[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_pesoMinimo[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBpeso[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_pesoMinimo[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBpeso[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_pesoMinimo[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBpeso[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_pesoMinimo[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBpeso[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_pesoMinimo[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SBpeso[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_pesoMinimo[7]~input_o\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst13|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_num_bcd_d[3]~3_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_num_bcd_d[2]~2_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_num_bcd_d[1]~1_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_num_bcd_d[0]~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_num_bcd_u[3]~2_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_num_bcd_u[2]~1_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_num_bcd_u[1]~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_z~1_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_z~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst56|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_led_mal~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst56|ALT_INV_LessThan0~0_combout\ : std_logic;

BEGIN

motor_paso <= ww_motor_paso;
ww_start <= start;
ww_pesoMaximo <= pesoMaximo;
ww_pesoMinimo <= pesoMinimo;
ww_SBpeso <= SBpeso;
ww_distanciaMaxima <= distanciaMaxima;
ww_distanciaMinima <= distanciaMinima;
ww_SBdistancia <= SBdistancia;
led_sistemaOn <= ww_led_sistemaOn;
led_bolsa <= ww_led_bolsa;
led_mal <= ww_led_mal;
comp1 <= ww_comp1;
peso_out <= ww_peso_out;
distancia_out <= ww_distancia_out;
anodo7 <= ww_anodo7;
ww_Clk <= Clk;
anodo8 <= ww_anodo8;
anodo9 <= ww_anodo9;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_distanciaMaxima[0]~input_o\ <= NOT \distanciaMaxima[0]~input_o\;
\ALT_INV_distanciaMaxima[1]~input_o\ <= NOT \distanciaMaxima[1]~input_o\;
\ALT_INV_distanciaMaxima[2]~input_o\ <= NOT \distanciaMaxima[2]~input_o\;
\ALT_INV_distanciaMaxima[3]~input_o\ <= NOT \distanciaMaxima[3]~input_o\;
\ALT_INV_distanciaMaxima[4]~input_o\ <= NOT \distanciaMaxima[4]~input_o\;
\ALT_INV_distanciaMaxima[5]~input_o\ <= NOT \distanciaMaxima[5]~input_o\;
\ALT_INV_distanciaMaxima[6]~input_o\ <= NOT \distanciaMaxima[6]~input_o\;
\ALT_INV_distanciaMaxima[7]~input_o\ <= NOT \distanciaMaxima[7]~input_o\;
\ALT_INV_SBdistancia[0]~input_o\ <= NOT \SBdistancia[0]~input_o\;
\ALT_INV_distanciaMinima[0]~input_o\ <= NOT \distanciaMinima[0]~input_o\;
\ALT_INV_SBdistancia[1]~input_o\ <= NOT \SBdistancia[1]~input_o\;
\ALT_INV_distanciaMinima[1]~input_o\ <= NOT \distanciaMinima[1]~input_o\;
\ALT_INV_SBdistancia[2]~input_o\ <= NOT \SBdistancia[2]~input_o\;
\ALT_INV_distanciaMinima[2]~input_o\ <= NOT \distanciaMinima[2]~input_o\;
\ALT_INV_SBdistancia[3]~input_o\ <= NOT \SBdistancia[3]~input_o\;
\ALT_INV_distanciaMinima[3]~input_o\ <= NOT \distanciaMinima[3]~input_o\;
\ALT_INV_SBdistancia[4]~input_o\ <= NOT \SBdistancia[4]~input_o\;
\ALT_INV_distanciaMinima[4]~input_o\ <= NOT \distanciaMinima[4]~input_o\;
\ALT_INV_SBdistancia[5]~input_o\ <= NOT \SBdistancia[5]~input_o\;
\ALT_INV_distanciaMinima[5]~input_o\ <= NOT \distanciaMinima[5]~input_o\;
\ALT_INV_SBdistancia[6]~input_o\ <= NOT \SBdistancia[6]~input_o\;
\ALT_INV_distanciaMinima[6]~input_o\ <= NOT \distanciaMinima[6]~input_o\;
\ALT_INV_SBdistancia[7]~input_o\ <= NOT \SBdistancia[7]~input_o\;
\ALT_INV_distanciaMinima[7]~input_o\ <= NOT \distanciaMinima[7]~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_SBpeso[0]~input_o\ <= NOT \SBpeso[0]~input_o\;
\ALT_INV_pesoMinimo[0]~input_o\ <= NOT \pesoMinimo[0]~input_o\;
\ALT_INV_SBpeso[1]~input_o\ <= NOT \SBpeso[1]~input_o\;
\ALT_INV_pesoMinimo[1]~input_o\ <= NOT \pesoMinimo[1]~input_o\;
\ALT_INV_SBpeso[2]~input_o\ <= NOT \SBpeso[2]~input_o\;
\ALT_INV_pesoMinimo[2]~input_o\ <= NOT \pesoMinimo[2]~input_o\;
\ALT_INV_SBpeso[3]~input_o\ <= NOT \SBpeso[3]~input_o\;
\ALT_INV_pesoMinimo[3]~input_o\ <= NOT \pesoMinimo[3]~input_o\;
\ALT_INV_SBpeso[4]~input_o\ <= NOT \SBpeso[4]~input_o\;
\ALT_INV_pesoMinimo[4]~input_o\ <= NOT \pesoMinimo[4]~input_o\;
\ALT_INV_SBpeso[5]~input_o\ <= NOT \SBpeso[5]~input_o\;
\ALT_INV_pesoMinimo[5]~input_o\ <= NOT \pesoMinimo[5]~input_o\;
\ALT_INV_SBpeso[6]~input_o\ <= NOT \SBpeso[6]~input_o\;
\ALT_INV_pesoMinimo[6]~input_o\ <= NOT \pesoMinimo[6]~input_o\;
\ALT_INV_SBpeso[7]~input_o\ <= NOT \SBpeso[7]~input_o\;
\ALT_INV_pesoMinimo[7]~input_o\ <= NOT \pesoMinimo[7]~input_o\;
\inst13|ALT_INV_Mux5~0_combout\ <= NOT \inst13|Mux5~0_combout\;
\inst13|ALT_INV_Mux4~0_combout\ <= NOT \inst13|Mux4~0_combout\;
\inst13|ALT_INV_Mux3~0_combout\ <= NOT \inst13|Mux3~0_combout\;
\inst13|ALT_INV_Mux2~0_combout\ <= NOT \inst13|Mux2~0_combout\;
\inst13|ALT_INV_Mux1~0_combout\ <= NOT \inst13|Mux1~0_combout\;
\inst13|ALT_INV_Mux0~0_combout\ <= NOT \inst13|Mux0~0_combout\;
\inst16|ALT_INV_num_bcd_d[3]~3_combout\ <= NOT \inst16|num_bcd_d[3]~3_combout\;
\inst16|ALT_INV_num_bcd_d[2]~2_combout\ <= NOT \inst16|num_bcd_d[2]~2_combout\;
\inst16|ALT_INV_num_bcd_d[1]~1_combout\ <= NOT \inst16|num_bcd_d[1]~1_combout\;
\inst16|ALT_INV_num_bcd_d[0]~0_combout\ <= NOT \inst16|num_bcd_d[0]~0_combout\;
\inst11|ALT_INV_Mux5~0_combout\ <= NOT \inst11|Mux5~0_combout\;
\inst11|ALT_INV_Mux4~0_combout\ <= NOT \inst11|Mux4~0_combout\;
\inst11|ALT_INV_Mux3~0_combout\ <= NOT \inst11|Mux3~0_combout\;
\inst11|ALT_INV_Mux2~0_combout\ <= NOT \inst11|Mux2~0_combout\;
\inst11|ALT_INV_Mux1~0_combout\ <= NOT \inst11|Mux1~0_combout\;
\inst11|ALT_INV_Mux0~0_combout\ <= NOT \inst11|Mux0~0_combout\;
\inst16|ALT_INV_num_bcd_u[3]~2_combout\ <= NOT \inst16|num_bcd_u[3]~2_combout\;
\inst16|ALT_INV_num_bcd_u[2]~1_combout\ <= NOT \inst16|num_bcd_u[2]~1_combout\;
\inst16|ALT_INV_num_bcd_u[1]~0_combout\ <= NOT \inst16|num_bcd_u[1]~0_combout\;
\inst16|ALT_INV_LessThan3~0_combout\ <= NOT \inst16|LessThan3~0_combout\;
\inst16|ALT_INV_z~1_combout\ <= NOT \inst16|z~1_combout\;
\inst16|ALT_INV_z~0_combout\ <= NOT \inst16|z~0_combout\;
\inst9|ALT_INV_Mux5~0_combout\ <= NOT \inst9|Mux5~0_combout\;
\inst9|ALT_INV_Mux4~0_combout\ <= NOT \inst9|Mux4~0_combout\;
\inst9|ALT_INV_Mux3~0_combout\ <= NOT \inst9|Mux3~0_combout\;
\inst9|ALT_INV_Mux2~0_combout\ <= NOT \inst9|Mux2~0_combout\;
\inst9|ALT_INV_Mux1~0_combout\ <= NOT \inst9|Mux1~0_combout\;
\inst9|ALT_INV_Mux0~0_combout\ <= NOT \inst9|Mux0~0_combout\;
\inst8|ALT_INV_q\(3) <= NOT \inst8|q\(3);
\inst8|ALT_INV_q\(2) <= NOT \inst8|q\(2);
\inst8|ALT_INV_q\(1) <= NOT \inst8|q\(1);
\inst8|ALT_INV_q\(0) <= NOT \inst8|q\(0);
\inst56|ALT_INV_Equal0~3_combout\ <= NOT \inst56|Equal0~3_combout\;
\inst56|ALT_INV_Equal0~2_combout\ <= NOT \inst56|Equal0~2_combout\;
\inst56|ALT_INV_Equal0~1_combout\ <= NOT \inst56|Equal0~1_combout\;
\inst56|ALT_INV_Equal0~0_combout\ <= NOT \inst56|Equal0~0_combout\;
\inst|ALT_INV_led_mal~0_combout\ <= NOT \inst|led_mal~0_combout\;
\inst1|ALT_INV_LessThan1~4_combout\ <= NOT \inst1|LessThan1~4_combout\;
\inst1|ALT_INV_LessThan1~3_combout\ <= NOT \inst1|LessThan1~3_combout\;
\inst1|ALT_INV_LessThan1~2_combout\ <= NOT \inst1|LessThan1~2_combout\;
\inst1|ALT_INV_LessThan1~1_combout\ <= NOT \inst1|LessThan1~1_combout\;
\inst1|ALT_INV_LessThan1~0_combout\ <= NOT \inst1|LessThan1~0_combout\;
\inst1|ALT_INV_LessThan0~4_combout\ <= NOT \inst1|LessThan0~4_combout\;
\inst1|ALT_INV_LessThan0~3_combout\ <= NOT \inst1|LessThan0~3_combout\;
\inst1|ALT_INV_LessThan0~2_combout\ <= NOT \inst1|LessThan0~2_combout\;
\inst1|ALT_INV_LessThan0~1_combout\ <= NOT \inst1|LessThan0~1_combout\;
\inst1|ALT_INV_LessThan0~0_combout\ <= NOT \inst1|LessThan0~0_combout\;
\inst56|ALT_INV_LessThan0~4_combout\ <= NOT \inst56|LessThan0~4_combout\;
\inst56|ALT_INV_LessThan0~3_combout\ <= NOT \inst56|LessThan0~3_combout\;
\inst56|ALT_INV_LessThan0~2_combout\ <= NOT \inst56|LessThan0~2_combout\;
\inst56|ALT_INV_LessThan0~1_combout\ <= NOT \inst56|LessThan0~1_combout\;
\inst56|ALT_INV_LessThan0~0_combout\ <= NOT \inst56|LessThan0~0_combout\;

\distanciaMinimaValida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LessThan0~4_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \distanciaMinimaValida~output_o\);

\distanciaMaximaValida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|LessThan1~4_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \distanciaMaximaValida~output_o\);

\motor_paso~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Motor_Compuerta~combout\,
	devoe => ww_devoe,
	o => \motor_paso~output_o\);

\led_sistemaOn~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \start~input_o\,
	devoe => ww_devoe,
	o => \led_sistemaOn~output_o\);

\led_bolsa~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Distancia_bolsa_H~0_combout\,
	devoe => ww_devoe,
	o => \led_bolsa~output_o\);

\led_mal~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_led_mal~0_combout\,
	devoe => ww_devoe,
	o => \led_mal~output_o\);

\comp1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst56|Equal0~3_combout\,
	devoe => ww_devoe,
	o => \comp1~output_o\);

\peso_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst56|LessThan0~4_combout\,
	devoe => ww_devoe,
	o => \peso_out~output_o\);

\distancia_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Distancia_bolsa_H~0_combout\,
	devoe => ww_devoe,
	o => \distancia_out~output_o\);

\anodo7[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \anodo7[6]~output_o\);

\anodo7[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \anodo7[5]~output_o\);

\anodo7[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \anodo7[4]~output_o\);

\anodo7[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \anodo7[3]~output_o\);

\anodo7[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \anodo7[2]~output_o\);

\anodo7[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \anodo7[1]~output_o\);

\anodo7[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \anodo7[0]~output_o\);

\anodo8[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \anodo8[6]~output_o\);

\anodo8[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \anodo8[5]~output_o\);

\anodo8[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \anodo8[4]~output_o\);

\anodo8[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \anodo8[3]~output_o\);

\anodo8[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \anodo8[2]~output_o\);

\anodo8[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \anodo8[1]~output_o\);

\anodo8[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \anodo8[0]~output_o\);

\anodo9[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \anodo9[6]~output_o\);

\anodo9[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \anodo9[5]~output_o\);

\anodo9[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \anodo9[4]~output_o\);

\anodo9[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \anodo9[3]~output_o\);

\anodo9[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \anodo9[2]~output_o\);

\anodo9[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \anodo9[1]~output_o\);

\anodo9[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \anodo9[0]~output_o\);

\distanciaMinima[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMinima(7),
	o => \distanciaMinima[7]~input_o\);

\SBdistancia[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBdistancia(7),
	o => \SBdistancia[7]~input_o\);

\distanciaMinima[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMinima(6),
	o => \distanciaMinima[6]~input_o\);

\SBdistancia[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBdistancia(6),
	o => \SBdistancia[6]~input_o\);

\distanciaMinima[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMinima(5),
	o => \distanciaMinima[5]~input_o\);

\SBdistancia[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBdistancia(5),
	o => \SBdistancia[5]~input_o\);

\inst1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\distanciaMinima[5]~input_o\ & !\SBdistancia[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_distanciaMinima[5]~input_o\,
	datab => \ALT_INV_SBdistancia[5]~input_o\,
	combout => \inst1|LessThan0~0_combout\);

\inst1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = !\distanciaMinima[5]~input_o\ $ (!\SBdistancia[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_distanciaMinima[5]~input_o\,
	datab => \ALT_INV_SBdistancia[5]~input_o\,
	combout => \inst1|LessThan0~1_combout\);

\distanciaMinima[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMinima(4),
	o => \distanciaMinima[4]~input_o\);

\SBdistancia[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBdistancia(4),
	o => \SBdistancia[4]~input_o\);

\distanciaMinima[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMinima(3),
	o => \distanciaMinima[3]~input_o\);

\SBdistancia[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBdistancia(3),
	o => \SBdistancia[3]~input_o\);

\distanciaMinima[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMinima(2),
	o => \distanciaMinima[2]~input_o\);

\SBdistancia[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBdistancia(2),
	o => \SBdistancia[2]~input_o\);

\distanciaMinima[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMinima(1),
	o => \distanciaMinima[1]~input_o\);

\SBdistancia[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBdistancia(1),
	o => \SBdistancia[1]~input_o\);

\distanciaMinima[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMinima(0),
	o => \distanciaMinima[0]~input_o\);

\SBdistancia[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBdistancia(0),
	o => \SBdistancia[0]~input_o\);

\inst1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = ( \distanciaMinima[0]~input_o\ & ( \SBdistancia[0]~input_o\ & ( (!\distanciaMinima[2]~input_o\ & (!\SBdistancia[2]~input_o\ & (\distanciaMinima[1]~input_o\ & !\SBdistancia[1]~input_o\))) # (\distanciaMinima[2]~input_o\ & 
-- ((!\SBdistancia[2]~input_o\) # ((\distanciaMinima[1]~input_o\ & !\SBdistancia[1]~input_o\)))) ) ) ) # ( !\distanciaMinima[0]~input_o\ & ( \SBdistancia[0]~input_o\ & ( (!\distanciaMinima[2]~input_o\ & (!\SBdistancia[2]~input_o\ & 
-- (\distanciaMinima[1]~input_o\ & !\SBdistancia[1]~input_o\))) # (\distanciaMinima[2]~input_o\ & ((!\SBdistancia[2]~input_o\) # ((\distanciaMinima[1]~input_o\ & !\SBdistancia[1]~input_o\)))) ) ) ) # ( \distanciaMinima[0]~input_o\ & ( 
-- !\SBdistancia[0]~input_o\ & ( (!\distanciaMinima[2]~input_o\ & (!\SBdistancia[2]~input_o\ & ((!\SBdistancia[1]~input_o\) # (\distanciaMinima[1]~input_o\)))) # (\distanciaMinima[2]~input_o\ & ((!\SBdistancia[2]~input_o\) # ((!\SBdistancia[1]~input_o\) # 
-- (\distanciaMinima[1]~input_o\)))) ) ) ) # ( !\distanciaMinima[0]~input_o\ & ( !\SBdistancia[0]~input_o\ & ( (!\distanciaMinima[2]~input_o\ & (!\SBdistancia[2]~input_o\ & (\distanciaMinima[1]~input_o\ & !\SBdistancia[1]~input_o\))) # 
-- (\distanciaMinima[2]~input_o\ & ((!\SBdistancia[2]~input_o\) # ((\distanciaMinima[1]~input_o\ & !\SBdistancia[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101000100110111010100110101001101010001000100110101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_distanciaMinima[2]~input_o\,
	datab => \ALT_INV_SBdistancia[2]~input_o\,
	datac => \ALT_INV_distanciaMinima[1]~input_o\,
	datad => \ALT_INV_SBdistancia[1]~input_o\,
	datae => \ALT_INV_distanciaMinima[0]~input_o\,
	dataf => \ALT_INV_SBdistancia[0]~input_o\,
	combout => \inst1|LessThan0~2_combout\);

\inst1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = ( \SBdistancia[3]~input_o\ & ( \inst1|LessThan0~2_combout\ & ( (!\inst1|LessThan0~1_combout\ & ((!\distanciaMinima[4]~input_o\ & (!\SBdistancia[4]~input_o\ & \distanciaMinima[3]~input_o\)) # (\distanciaMinima[4]~input_o\ & 
-- ((!\SBdistancia[4]~input_o\) # (\distanciaMinima[3]~input_o\))))) ) ) ) # ( !\SBdistancia[3]~input_o\ & ( \inst1|LessThan0~2_combout\ & ( (!\inst1|LessThan0~1_combout\ & ((!\SBdistancia[4]~input_o\) # (\distanciaMinima[4]~input_o\))) ) ) ) # ( 
-- \SBdistancia[3]~input_o\ & ( !\inst1|LessThan0~2_combout\ & ( (!\inst1|LessThan0~1_combout\ & (\distanciaMinima[4]~input_o\ & !\SBdistancia[4]~input_o\)) ) ) ) # ( !\SBdistancia[3]~input_o\ & ( !\inst1|LessThan0~2_combout\ & ( 
-- (!\inst1|LessThan0~1_combout\ & ((!\distanciaMinima[4]~input_o\ & (!\SBdistancia[4]~input_o\ & \distanciaMinima[3]~input_o\)) # (\distanciaMinima[4]~input_o\ & ((!\SBdistancia[4]~input_o\) # (\distanciaMinima[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100010001000000010000010100010101000100010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_distanciaMinima[4]~input_o\,
	datac => \ALT_INV_SBdistancia[4]~input_o\,
	datad => \ALT_INV_distanciaMinima[3]~input_o\,
	datae => \ALT_INV_SBdistancia[3]~input_o\,
	dataf => \inst1|ALT_INV_LessThan0~2_combout\,
	combout => \inst1|LessThan0~3_combout\);

\inst1|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~4_combout\ = ( \inst1|LessThan0~0_combout\ & ( \inst1|LessThan0~3_combout\ & ( (!\distanciaMinima[7]~input_o\ & (((!\distanciaMinima[6]~input_o\ & \SBdistancia[6]~input_o\)) # (\SBdistancia[7]~input_o\))) # (\distanciaMinima[7]~input_o\ & 
-- (\SBdistancia[7]~input_o\ & (!\distanciaMinima[6]~input_o\ & \SBdistancia[6]~input_o\))) ) ) ) # ( !\inst1|LessThan0~0_combout\ & ( \inst1|LessThan0~3_combout\ & ( (!\distanciaMinima[7]~input_o\ & (((!\distanciaMinima[6]~input_o\ & 
-- \SBdistancia[6]~input_o\)) # (\SBdistancia[7]~input_o\))) # (\distanciaMinima[7]~input_o\ & (\SBdistancia[7]~input_o\ & (!\distanciaMinima[6]~input_o\ & \SBdistancia[6]~input_o\))) ) ) ) # ( \inst1|LessThan0~0_combout\ & ( !\inst1|LessThan0~3_combout\ & ( 
-- (!\distanciaMinima[7]~input_o\ & (((!\distanciaMinima[6]~input_o\ & \SBdistancia[6]~input_o\)) # (\SBdistancia[7]~input_o\))) # (\distanciaMinima[7]~input_o\ & (\SBdistancia[7]~input_o\ & (!\distanciaMinima[6]~input_o\ & \SBdistancia[6]~input_o\))) ) ) ) 
-- # ( !\inst1|LessThan0~0_combout\ & ( !\inst1|LessThan0~3_combout\ & ( (!\distanciaMinima[7]~input_o\ & (((!\distanciaMinima[6]~input_o\) # (\SBdistancia[6]~input_o\)) # (\SBdistancia[7]~input_o\))) # (\distanciaMinima[7]~input_o\ & 
-- (\SBdistancia[7]~input_o\ & ((!\distanciaMinima[6]~input_o\) # (\SBdistancia[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001010111011001000101011001000100010101100100010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_distanciaMinima[7]~input_o\,
	datab => \ALT_INV_SBdistancia[7]~input_o\,
	datac => \ALT_INV_distanciaMinima[6]~input_o\,
	datad => \ALT_INV_SBdistancia[6]~input_o\,
	datae => \inst1|ALT_INV_LessThan0~0_combout\,
	dataf => \inst1|ALT_INV_LessThan0~3_combout\,
	combout => \inst1|LessThan0~4_combout\);

\distanciaMaxima[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMaxima(7),
	o => \distanciaMaxima[7]~input_o\);

\distanciaMaxima[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMaxima(6),
	o => \distanciaMaxima[6]~input_o\);

\distanciaMaxima[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMaxima(5),
	o => \distanciaMaxima[5]~input_o\);

\inst1|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (\SBdistancia[5]~input_o\ & !\distanciaMaxima[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBdistancia[5]~input_o\,
	datab => \ALT_INV_distanciaMaxima[5]~input_o\,
	combout => \inst1|LessThan1~0_combout\);

\inst1|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = !\SBdistancia[5]~input_o\ $ (!\distanciaMaxima[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBdistancia[5]~input_o\,
	datab => \ALT_INV_distanciaMaxima[5]~input_o\,
	combout => \inst1|LessThan1~1_combout\);

\distanciaMaxima[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMaxima(4),
	o => \distanciaMaxima[4]~input_o\);

\distanciaMaxima[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMaxima(3),
	o => \distanciaMaxima[3]~input_o\);

\distanciaMaxima[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMaxima(2),
	o => \distanciaMaxima[2]~input_o\);

\distanciaMaxima[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMaxima(1),
	o => \distanciaMaxima[1]~input_o\);

\distanciaMaxima[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_distanciaMaxima(0),
	o => \distanciaMaxima[0]~input_o\);

\inst1|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = ( \distanciaMaxima[1]~input_o\ & ( \distanciaMaxima[0]~input_o\ & ( (\SBdistancia[2]~input_o\ & !\distanciaMaxima[2]~input_o\) ) ) ) # ( !\distanciaMaxima[1]~input_o\ & ( \distanciaMaxima[0]~input_o\ & ( 
-- (!\SBdistancia[2]~input_o\ & (\SBdistancia[1]~input_o\ & !\distanciaMaxima[2]~input_o\)) # (\SBdistancia[2]~input_o\ & ((!\distanciaMaxima[2]~input_o\) # (\SBdistancia[1]~input_o\))) ) ) ) # ( \distanciaMaxima[1]~input_o\ & ( !\distanciaMaxima[0]~input_o\ 
-- & ( (!\SBdistancia[2]~input_o\ & (\SBdistancia[1]~input_o\ & (\SBdistancia[0]~input_o\ & !\distanciaMaxima[2]~input_o\))) # (\SBdistancia[2]~input_o\ & ((!\distanciaMaxima[2]~input_o\) # ((\SBdistancia[1]~input_o\ & \SBdistancia[0]~input_o\)))) ) ) ) # ( 
-- !\distanciaMaxima[1]~input_o\ & ( !\distanciaMaxima[0]~input_o\ & ( (!\SBdistancia[2]~input_o\ & (!\distanciaMaxima[2]~input_o\ & ((\SBdistancia[0]~input_o\) # (\SBdistancia[1]~input_o\)))) # (\SBdistancia[2]~input_o\ & (((!\distanciaMaxima[2]~input_o\) # 
-- (\SBdistancia[0]~input_o\)) # (\SBdistancia[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100010101010101110000000101110111000100010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBdistancia[2]~input_o\,
	datab => \ALT_INV_SBdistancia[1]~input_o\,
	datac => \ALT_INV_SBdistancia[0]~input_o\,
	datad => \ALT_INV_distanciaMaxima[2]~input_o\,
	datae => \ALT_INV_distanciaMaxima[1]~input_o\,
	dataf => \ALT_INV_distanciaMaxima[0]~input_o\,
	combout => \inst1|LessThan1~2_combout\);

\inst1|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = ( \distanciaMaxima[3]~input_o\ & ( \inst1|LessThan1~2_combout\ & ( (!\inst1|LessThan1~1_combout\ & ((!\SBdistancia[4]~input_o\ & (\SBdistancia[3]~input_o\ & !\distanciaMaxima[4]~input_o\)) # (\SBdistancia[4]~input_o\ & 
-- ((!\distanciaMaxima[4]~input_o\) # (\SBdistancia[3]~input_o\))))) ) ) ) # ( !\distanciaMaxima[3]~input_o\ & ( \inst1|LessThan1~2_combout\ & ( (!\inst1|LessThan1~1_combout\ & ((!\distanciaMaxima[4]~input_o\) # (\SBdistancia[4]~input_o\))) ) ) ) # ( 
-- \distanciaMaxima[3]~input_o\ & ( !\inst1|LessThan1~2_combout\ & ( (\SBdistancia[4]~input_o\ & (!\inst1|LessThan1~1_combout\ & !\distanciaMaxima[4]~input_o\)) ) ) ) # ( !\distanciaMaxima[3]~input_o\ & ( !\inst1|LessThan1~2_combout\ & ( 
-- (!\inst1|LessThan1~1_combout\ & ((!\SBdistancia[4]~input_o\ & (\SBdistancia[3]~input_o\ & !\distanciaMaxima[4]~input_o\)) # (\SBdistancia[4]~input_o\ & ((!\distanciaMaxima[4]~input_o\) # (\SBdistancia[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010000010100000000000011110000010100000111000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBdistancia[4]~input_o\,
	datab => \ALT_INV_SBdistancia[3]~input_o\,
	datac => \inst1|ALT_INV_LessThan1~1_combout\,
	datad => \ALT_INV_distanciaMaxima[4]~input_o\,
	datae => \ALT_INV_distanciaMaxima[3]~input_o\,
	dataf => \inst1|ALT_INV_LessThan1~2_combout\,
	combout => \inst1|LessThan1~3_combout\);

\inst1|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~4_combout\ = ( \inst1|LessThan1~0_combout\ & ( \inst1|LessThan1~3_combout\ & ( (!\SBdistancia[7]~input_o\ & (((!\SBdistancia[6]~input_o\ & \distanciaMaxima[6]~input_o\)) # (\distanciaMaxima[7]~input_o\))) # (\SBdistancia[7]~input_o\ & 
-- (!\SBdistancia[6]~input_o\ & (\distanciaMaxima[7]~input_o\ & \distanciaMaxima[6]~input_o\))) ) ) ) # ( !\inst1|LessThan1~0_combout\ & ( \inst1|LessThan1~3_combout\ & ( (!\SBdistancia[7]~input_o\ & (((!\SBdistancia[6]~input_o\ & 
-- \distanciaMaxima[6]~input_o\)) # (\distanciaMaxima[7]~input_o\))) # (\SBdistancia[7]~input_o\ & (!\SBdistancia[6]~input_o\ & (\distanciaMaxima[7]~input_o\ & \distanciaMaxima[6]~input_o\))) ) ) ) # ( \inst1|LessThan1~0_combout\ & ( 
-- !\inst1|LessThan1~3_combout\ & ( (!\SBdistancia[7]~input_o\ & (((!\SBdistancia[6]~input_o\ & \distanciaMaxima[6]~input_o\)) # (\distanciaMaxima[7]~input_o\))) # (\SBdistancia[7]~input_o\ & (!\SBdistancia[6]~input_o\ & (\distanciaMaxima[7]~input_o\ & 
-- \distanciaMaxima[6]~input_o\))) ) ) ) # ( !\inst1|LessThan1~0_combout\ & ( !\inst1|LessThan1~3_combout\ & ( (!\SBdistancia[7]~input_o\ & ((!\SBdistancia[6]~input_o\) # ((\distanciaMaxima[6]~input_o\) # (\distanciaMaxima[7]~input_o\)))) # 
-- (\SBdistancia[7]~input_o\ & (\distanciaMaxima[7]~input_o\ & ((!\SBdistancia[6]~input_o\) # (\distanciaMaxima[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111010101111000010101000111000001010100011100000101010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBdistancia[7]~input_o\,
	datab => \ALT_INV_SBdistancia[6]~input_o\,
	datac => \ALT_INV_distanciaMaxima[7]~input_o\,
	datad => \ALT_INV_distanciaMaxima[6]~input_o\,
	datae => \inst1|ALT_INV_LessThan1~0_combout\,
	dataf => \inst1|ALT_INV_LessThan1~3_combout\,
	combout => \inst1|LessThan1~4_combout\);

\pesoMinimo[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMinimo(7),
	o => \pesoMinimo[7]~input_o\);

\SBpeso[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBpeso(7),
	o => \SBpeso[7]~input_o\);

\pesoMinimo[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMinimo(6),
	o => \pesoMinimo[6]~input_o\);

\SBpeso[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBpeso(6),
	o => \SBpeso[6]~input_o\);

\pesoMinimo[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMinimo(5),
	o => \pesoMinimo[5]~input_o\);

\SBpeso[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBpeso(5),
	o => \SBpeso[5]~input_o\);

\inst56|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst56|LessThan0~0_combout\ = (!\pesoMinimo[5]~input_o\ & \SBpeso[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pesoMinimo[5]~input_o\,
	datab => \ALT_INV_SBpeso[5]~input_o\,
	combout => \inst56|LessThan0~0_combout\);

\inst56|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst56|LessThan0~1_combout\ = !\pesoMinimo[5]~input_o\ $ (!\SBpeso[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pesoMinimo[5]~input_o\,
	datab => \ALT_INV_SBpeso[5]~input_o\,
	combout => \inst56|LessThan0~1_combout\);

\pesoMinimo[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMinimo(4),
	o => \pesoMinimo[4]~input_o\);

\SBpeso[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBpeso(4),
	o => \SBpeso[4]~input_o\);

\pesoMinimo[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMinimo(3),
	o => \pesoMinimo[3]~input_o\);

\SBpeso[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBpeso(3),
	o => \SBpeso[3]~input_o\);

\pesoMinimo[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMinimo(2),
	o => \pesoMinimo[2]~input_o\);

\SBpeso[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBpeso(2),
	o => \SBpeso[2]~input_o\);

\pesoMinimo[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMinimo(1),
	o => \pesoMinimo[1]~input_o\);

\SBpeso[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBpeso(1),
	o => \SBpeso[1]~input_o\);

\pesoMinimo[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMinimo(0),
	o => \pesoMinimo[0]~input_o\);

\SBpeso[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SBpeso(0),
	o => \SBpeso[0]~input_o\);

\inst56|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst56|LessThan0~2_combout\ = ( \pesoMinimo[0]~input_o\ & ( \SBpeso[0]~input_o\ & ( (!\pesoMinimo[2]~input_o\ & (((!\pesoMinimo[1]~input_o\ & \SBpeso[1]~input_o\)) # (\SBpeso[2]~input_o\))) # (\pesoMinimo[2]~input_o\ & (\SBpeso[2]~input_o\ & 
-- (!\pesoMinimo[1]~input_o\ & \SBpeso[1]~input_o\))) ) ) ) # ( !\pesoMinimo[0]~input_o\ & ( \SBpeso[0]~input_o\ & ( (!\pesoMinimo[2]~input_o\ & (((!\pesoMinimo[1]~input_o\) # (\SBpeso[1]~input_o\)) # (\SBpeso[2]~input_o\))) # (\pesoMinimo[2]~input_o\ & 
-- (\SBpeso[2]~input_o\ & ((!\pesoMinimo[1]~input_o\) # (\SBpeso[1]~input_o\)))) ) ) ) # ( \pesoMinimo[0]~input_o\ & ( !\SBpeso[0]~input_o\ & ( (!\pesoMinimo[2]~input_o\ & (((!\pesoMinimo[1]~input_o\ & \SBpeso[1]~input_o\)) # (\SBpeso[2]~input_o\))) # 
-- (\pesoMinimo[2]~input_o\ & (\SBpeso[2]~input_o\ & (!\pesoMinimo[1]~input_o\ & \SBpeso[1]~input_o\))) ) ) ) # ( !\pesoMinimo[0]~input_o\ & ( !\SBpeso[0]~input_o\ & ( (!\pesoMinimo[2]~input_o\ & (((!\pesoMinimo[1]~input_o\ & \SBpeso[1]~input_o\)) # 
-- (\SBpeso[2]~input_o\))) # (\pesoMinimo[2]~input_o\ & (\SBpeso[2]~input_o\ & (!\pesoMinimo[1]~input_o\ & \SBpeso[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010001000101011001010110010101110110010001010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pesoMinimo[2]~input_o\,
	datab => \ALT_INV_SBpeso[2]~input_o\,
	datac => \ALT_INV_pesoMinimo[1]~input_o\,
	datad => \ALT_INV_SBpeso[1]~input_o\,
	datae => \ALT_INV_pesoMinimo[0]~input_o\,
	dataf => \ALT_INV_SBpeso[0]~input_o\,
	combout => \inst56|LessThan0~2_combout\);

\inst56|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst56|LessThan0~3_combout\ = ( \SBpeso[3]~input_o\ & ( \inst56|LessThan0~2_combout\ & ( (!\inst56|LessThan0~1_combout\ & ((!\pesoMinimo[4]~input_o\) # (\SBpeso[4]~input_o\))) ) ) ) # ( !\SBpeso[3]~input_o\ & ( \inst56|LessThan0~2_combout\ & ( 
-- (!\inst56|LessThan0~1_combout\ & ((!\pesoMinimo[4]~input_o\ & ((!\pesoMinimo[3]~input_o\) # (\SBpeso[4]~input_o\))) # (\pesoMinimo[4]~input_o\ & (\SBpeso[4]~input_o\ & !\pesoMinimo[3]~input_o\)))) ) ) ) # ( \SBpeso[3]~input_o\ & ( 
-- !\inst56|LessThan0~2_combout\ & ( (!\inst56|LessThan0~1_combout\ & ((!\pesoMinimo[4]~input_o\ & ((!\pesoMinimo[3]~input_o\) # (\SBpeso[4]~input_o\))) # (\pesoMinimo[4]~input_o\ & (\SBpeso[4]~input_o\ & !\pesoMinimo[3]~input_o\)))) ) ) ) # ( 
-- !\SBpeso[3]~input_o\ & ( !\inst56|LessThan0~2_combout\ & ( (!\inst56|LessThan0~1_combout\ & (!\pesoMinimo[4]~input_o\ & \SBpeso[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100010100000100010001010000010001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst56|ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_pesoMinimo[4]~input_o\,
	datac => \ALT_INV_SBpeso[4]~input_o\,
	datad => \ALT_INV_pesoMinimo[3]~input_o\,
	datae => \ALT_INV_SBpeso[3]~input_o\,
	dataf => \inst56|ALT_INV_LessThan0~2_combout\,
	combout => \inst56|LessThan0~3_combout\);

\inst56|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst56|LessThan0~4_combout\ = ( \inst56|LessThan0~0_combout\ & ( \inst56|LessThan0~3_combout\ & ( (!\pesoMinimo[7]~input_o\ & (((!\pesoMinimo[6]~input_o\) # (\SBpeso[6]~input_o\)) # (\SBpeso[7]~input_o\))) # (\pesoMinimo[7]~input_o\ & 
-- (\SBpeso[7]~input_o\ & ((!\pesoMinimo[6]~input_o\) # (\SBpeso[6]~input_o\)))) ) ) ) # ( !\inst56|LessThan0~0_combout\ & ( \inst56|LessThan0~3_combout\ & ( (!\pesoMinimo[7]~input_o\ & (((!\pesoMinimo[6]~input_o\) # (\SBpeso[6]~input_o\)) # 
-- (\SBpeso[7]~input_o\))) # (\pesoMinimo[7]~input_o\ & (\SBpeso[7]~input_o\ & ((!\pesoMinimo[6]~input_o\) # (\SBpeso[6]~input_o\)))) ) ) ) # ( \inst56|LessThan0~0_combout\ & ( !\inst56|LessThan0~3_combout\ & ( (!\pesoMinimo[7]~input_o\ & 
-- (((!\pesoMinimo[6]~input_o\) # (\SBpeso[6]~input_o\)) # (\SBpeso[7]~input_o\))) # (\pesoMinimo[7]~input_o\ & (\SBpeso[7]~input_o\ & ((!\pesoMinimo[6]~input_o\) # (\SBpeso[6]~input_o\)))) ) ) ) # ( !\inst56|LessThan0~0_combout\ & ( 
-- !\inst56|LessThan0~3_combout\ & ( (!\pesoMinimo[7]~input_o\ & (((!\pesoMinimo[6]~input_o\ & \SBpeso[6]~input_o\)) # (\SBpeso[7]~input_o\))) # (\pesoMinimo[7]~input_o\ & (\SBpeso[7]~input_o\ & (!\pesoMinimo[6]~input_o\ & \SBpeso[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010101100101011101110110010101110111011001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pesoMinimo[7]~input_o\,
	datab => \ALT_INV_SBpeso[7]~input_o\,
	datac => \ALT_INV_pesoMinimo[6]~input_o\,
	datad => \ALT_INV_SBpeso[6]~input_o\,
	datae => \inst56|ALT_INV_LessThan0~0_combout\,
	dataf => \inst56|ALT_INV_LessThan0~3_combout\,
	combout => \inst56|LessThan0~4_combout\);

\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

\inst|Motor_Compuerta\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Motor_Compuerta~combout\ = (!\inst56|LessThan0~4_combout\ & (\start~input_o\ & (\inst1|LessThan0~4_combout\ & \inst1|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst56|ALT_INV_LessThan0~4_combout\,
	datab => \ALT_INV_start~input_o\,
	datac => \inst1|ALT_INV_LessThan0~4_combout\,
	datad => \inst1|ALT_INV_LessThan1~4_combout\,
	combout => \inst|Motor_Compuerta~combout\);

\inst1|Distancia_bolsa_H~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Distancia_bolsa_H~0_combout\ = (\inst1|LessThan0~4_combout\ & \inst1|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_LessThan0~4_combout\,
	datab => \inst1|ALT_INV_LessThan1~4_combout\,
	combout => \inst1|Distancia_bolsa_H~0_combout\);

\inst|led_mal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|led_mal~0_combout\ = (\inst56|LessThan0~4_combout\ & (\start~input_o\ & (\inst1|LessThan0~4_combout\ & \inst1|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst56|ALT_INV_LessThan0~4_combout\,
	datab => \ALT_INV_start~input_o\,
	datac => \inst1|ALT_INV_LessThan0~4_combout\,
	datad => \inst1|ALT_INV_LessThan1~4_combout\,
	combout => \inst|led_mal~0_combout\);

\inst56|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst56|Equal0~0_combout\ = (!\pesoMinimo[7]~input_o\ & (!\SBpeso[7]~input_o\ & (!\pesoMinimo[0]~input_o\ $ (\SBpeso[0]~input_o\)))) # (\pesoMinimo[7]~input_o\ & (\SBpeso[7]~input_o\ & (!\pesoMinimo[0]~input_o\ $ (\SBpeso[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001100100000000100110010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pesoMinimo[7]~input_o\,
	datab => \ALT_INV_SBpeso[7]~input_o\,
	datac => \ALT_INV_pesoMinimo[0]~input_o\,
	datad => \ALT_INV_SBpeso[0]~input_o\,
	combout => \inst56|Equal0~0_combout\);

\inst56|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst56|Equal0~1_combout\ = ( \pesoMinimo[1]~input_o\ & ( \SBpeso[1]~input_o\ & ( (!\pesoMinimo[3]~input_o\ & (!\SBpeso[3]~input_o\ & (!\pesoMinimo[2]~input_o\ $ (\SBpeso[2]~input_o\)))) # (\pesoMinimo[3]~input_o\ & (\SBpeso[3]~input_o\ & 
-- (!\pesoMinimo[2]~input_o\ $ (\SBpeso[2]~input_o\)))) ) ) ) # ( !\pesoMinimo[1]~input_o\ & ( !\SBpeso[1]~input_o\ & ( (!\pesoMinimo[3]~input_o\ & (!\SBpeso[3]~input_o\ & (!\pesoMinimo[2]~input_o\ $ (\SBpeso[2]~input_o\)))) # (\pesoMinimo[3]~input_o\ & 
-- (\SBpeso[3]~input_o\ & (!\pesoMinimo[2]~input_o\ $ (\SBpeso[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pesoMinimo[3]~input_o\,
	datab => \ALT_INV_SBpeso[3]~input_o\,
	datac => \ALT_INV_pesoMinimo[2]~input_o\,
	datad => \ALT_INV_SBpeso[2]~input_o\,
	datae => \ALT_INV_pesoMinimo[1]~input_o\,
	dataf => \ALT_INV_SBpeso[1]~input_o\,
	combout => \inst56|Equal0~1_combout\);

\inst56|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst56|Equal0~2_combout\ = ( \pesoMinimo[4]~input_o\ & ( \SBpeso[4]~input_o\ & ( (!\pesoMinimo[6]~input_o\ & (!\SBpeso[6]~input_o\ & (!\pesoMinimo[5]~input_o\ $ (\SBpeso[5]~input_o\)))) # (\pesoMinimo[6]~input_o\ & (\SBpeso[6]~input_o\ & 
-- (!\pesoMinimo[5]~input_o\ $ (\SBpeso[5]~input_o\)))) ) ) ) # ( !\pesoMinimo[4]~input_o\ & ( !\SBpeso[4]~input_o\ & ( (!\pesoMinimo[6]~input_o\ & (!\SBpeso[6]~input_o\ & (!\pesoMinimo[5]~input_o\ $ (\SBpeso[5]~input_o\)))) # (\pesoMinimo[6]~input_o\ & 
-- (\SBpeso[6]~input_o\ & (!\pesoMinimo[5]~input_o\ $ (\SBpeso[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pesoMinimo[6]~input_o\,
	datab => \ALT_INV_SBpeso[6]~input_o\,
	datac => \ALT_INV_pesoMinimo[5]~input_o\,
	datad => \ALT_INV_SBpeso[5]~input_o\,
	datae => \ALT_INV_pesoMinimo[4]~input_o\,
	dataf => \ALT_INV_SBpeso[4]~input_o\,
	combout => \inst56|Equal0~2_combout\);

\inst56|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst56|Equal0~3_combout\ = (\inst56|Equal0~0_combout\ & (\inst56|Equal0~1_combout\ & \inst56|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst56|ALT_INV_Equal0~0_combout\,
	datab => \inst56|ALT_INV_Equal0~1_combout\,
	datac => \inst56|ALT_INV_Equal0~2_combout\,
	combout => \inst56|Equal0~3_combout\);

\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

\inst8|q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|q[0]~0_combout\ = !\inst8|q\(0) $ (((!\inst56|Equal0~0_combout\) # ((!\inst56|Equal0~1_combout\) # (!\inst56|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101010101011001010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst56|ALT_INV_Equal0~0_combout\,
	datac => \inst56|ALT_INV_Equal0~1_combout\,
	datad => \inst56|ALT_INV_Equal0~2_combout\,
	combout => \inst8|q[0]~0_combout\);

\inst8|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst8|q[0]~0_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(0));

\inst8|q[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|q[1]~1_combout\ = ( \inst56|Equal0~2_combout\ & ( !\inst8|q\(1) $ (((!\inst8|q\(0)) # ((!\inst56|Equal0~0_combout\) # (!\inst56|Equal0~1_combout\)))) ) ) # ( !\inst56|Equal0~2_combout\ & ( \inst8|q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011011000110011001100110011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst8|ALT_INV_q\(1),
	datac => \inst56|ALT_INV_Equal0~0_combout\,
	datad => \inst56|ALT_INV_Equal0~1_combout\,
	datae => \inst56|ALT_INV_Equal0~2_combout\,
	combout => \inst8|q[1]~1_combout\);

\inst8|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst8|q[1]~1_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(1));

\inst8|q[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|q[2]~2_combout\ = ( \inst56|Equal0~1_combout\ & ( \inst56|Equal0~2_combout\ & ( !\inst8|q\(2) $ (((!\inst8|q\(0)) # ((!\inst8|q\(1)) # (!\inst56|Equal0~0_combout\)))) ) ) ) # ( !\inst56|Equal0~1_combout\ & ( \inst56|Equal0~2_combout\ & ( 
-- \inst8|q\(2) ) ) ) # ( \inst56|Equal0~1_combout\ & ( !\inst56|Equal0~2_combout\ & ( \inst8|q\(2) ) ) ) # ( !\inst56|Equal0~1_combout\ & ( !\inst56|Equal0~2_combout\ & ( \inst8|q\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst8|ALT_INV_q\(1),
	datac => \inst8|ALT_INV_q\(2),
	datad => \inst56|ALT_INV_Equal0~0_combout\,
	datae => \inst56|ALT_INV_Equal0~1_combout\,
	dataf => \inst56|ALT_INV_Equal0~2_combout\,
	combout => \inst8|q[2]~2_combout\);

\inst8|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst8|q[2]~2_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(2));

\inst8|q[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8|q[3]~3_combout\ = ( \inst56|Equal0~3_combout\ & ( !\inst8|q\(3) $ (((!\inst8|q\(0)) # ((!\inst8|q\(1)) # (!\inst8|q\(2))))) ) ) # ( !\inst56|Equal0~3_combout\ & ( \inst8|q\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000011111111000000000111111110000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst8|ALT_INV_q\(1),
	datac => \inst8|ALT_INV_q\(2),
	datad => \inst8|ALT_INV_q\(3),
	datae => \inst56|ALT_INV_Equal0~3_combout\,
	combout => \inst8|q[3]~3_combout\);

\inst8|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst8|q[3]~3_combout\,
	clrn => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|q\(3));

\inst9|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = (!\inst8|q\(0) & (((\inst8|q\(1) & \inst8|q\(3))) # (\inst8|q\(2)))) # (\inst8|q\(0) & (!\inst8|q\(3) $ (((\inst8|q\(2)) # (\inst8|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101000111111010010100011111101001010001111110100101000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst8|ALT_INV_q\(1),
	datac => \inst8|ALT_INV_q\(2),
	datad => \inst8|ALT_INV_q\(3),
	combout => \inst9|Mux0~0_combout\);

\inst9|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = (!\inst8|q\(2) & (((\inst8|q\(1) & \inst8|q\(3))))) # (\inst8|q\(2) & ((!\inst8|q\(0) $ (!\inst8|q\(1))) # (\inst8|q\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000111111000001100011111100000110001111110000011000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst8|ALT_INV_q\(1),
	datac => \inst8|ALT_INV_q\(2),
	datad => \inst8|ALT_INV_q\(3),
	combout => \inst9|Mux1~0_combout\);

\inst9|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux2~0_combout\ = (!\inst8|q\(2) & (\inst8|q\(1) & ((!\inst8|q\(0)) # (\inst8|q\(3))))) # (\inst8|q\(2) & (((\inst8|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000111111001000000011111100100000001111110010000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst8|ALT_INV_q\(1),
	datac => \inst8|ALT_INV_q\(2),
	datad => \inst8|ALT_INV_q\(3),
	combout => \inst9|Mux2~0_combout\);

\inst9|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux3~0_combout\ = (!\inst8|q\(0) & ((!\inst8|q\(1) & (\inst8|q\(2))) # (\inst8|q\(1) & ((\inst8|q\(3)))))) # (\inst8|q\(0) & ((!\inst8|q\(1) $ (\inst8|q\(2))) # (\inst8|q\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101111111010010010111111101001001011111110100100101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst8|ALT_INV_q\(1),
	datac => \inst8|ALT_INV_q\(2),
	datad => \inst8|ALT_INV_q\(3),
	combout => \inst9|Mux3~0_combout\);

\inst9|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux4~0_combout\ = ((!\inst8|q\(1) & (\inst8|q\(2))) # (\inst8|q\(1) & ((\inst8|q\(3))))) # (\inst8|q\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101111111010111010111111101011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst8|ALT_INV_q\(1),
	datac => \inst8|ALT_INV_q\(2),
	datad => \inst8|ALT_INV_q\(3),
	combout => \inst9|Mux4~0_combout\);

\inst9|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux5~0_combout\ = (!\inst8|q\(0) & ((!\inst8|q\(2) & (\inst8|q\(1))) # (\inst8|q\(2) & ((\inst8|q\(3)))))) # (\inst8|q\(0) & ((!\inst8|q\(2) $ (\inst8|q\(3))) # (\inst8|q\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100111111011100010011111101110001001111110111000100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst8|ALT_INV_q\(1),
	datac => \inst8|ALT_INV_q\(2),
	datad => \inst8|ALT_INV_q\(3),
	combout => \inst9|Mux5~0_combout\);

\inst9|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|Mux6~0_combout\ = (!\inst8|q\(1) & ((!\inst8|q\(2) $ (!\inst8|q\(3))))) # (\inst8|q\(1) & (!\inst8|q\(3) & ((!\inst8|q\(0)) # (!\inst8|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111011000000001111101100000000111110110000000011111011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|ALT_INV_q\(0),
	datab => \inst8|ALT_INV_q\(1),
	datac => \inst8|ALT_INV_q\(2),
	datad => \inst8|ALT_INV_q\(3),
	combout => \inst9|Mux6~0_combout\);

\inst16|z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|z~0_combout\ = ( \SBpeso[3]~input_o\ & ( (!\SBpeso[7]~input_o\ & (!\SBpeso[5]~input_o\ $ (((\SBpeso[6]~input_o\ & !\SBpeso[4]~input_o\))))) # (\SBpeso[7]~input_o\ & (\SBpeso[5]~input_o\ & ((!\SBpeso[6]~input_o\) # (\SBpeso[4]~input_o\)))) ) ) # ( 
-- !\SBpeso[3]~input_o\ & ( (!\SBpeso[7]~input_o\ & ((!\SBpeso[6]~input_o\ & (\SBpeso[5]~input_o\ & \SBpeso[4]~input_o\)) # (\SBpeso[6]~input_o\ & (!\SBpeso[5]~input_o\ & !\SBpeso[4]~input_o\)))) # (\SBpeso[7]~input_o\ & (!\SBpeso[5]~input_o\ $ 
-- (((\SBpeso[6]~input_o\ & !\SBpeso[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101011000100001101010010101100001010110001000011010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[7]~input_o\,
	datab => \ALT_INV_SBpeso[6]~input_o\,
	datac => \ALT_INV_SBpeso[5]~input_o\,
	datad => \ALT_INV_SBpeso[4]~input_o\,
	datae => \ALT_INV_SBpeso[3]~input_o\,
	combout => \inst16|z~0_combout\);

\inst16|z~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|z~1_combout\ = ( \SBpeso[3]~input_o\ & ( (!\SBpeso[6]~input_o\ & (!\SBpeso[4]~input_o\ $ (((!\SBpeso[7]~input_o\) # (\SBpeso[5]~input_o\))))) # (\SBpeso[6]~input_o\ & ((!\SBpeso[7]~input_o\ & (\SBpeso[5]~input_o\ & !\SBpeso[4]~input_o\)) # 
-- (\SBpeso[7]~input_o\ & (!\SBpeso[5]~input_o\ & \SBpeso[4]~input_o\)))) ) ) # ( !\SBpeso[3]~input_o\ & ( (!\SBpeso[6]~input_o\ & (\SBpeso[4]~input_o\ & ((!\SBpeso[5]~input_o\) # (\SBpeso[7]~input_o\)))) # (\SBpeso[6]~input_o\ & (!\SBpeso[4]~input_o\ & 
-- ((!\SBpeso[7]~input_o\) # (\SBpeso[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001111000100010000101001110000100011110001000100001010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[7]~input_o\,
	datab => \ALT_INV_SBpeso[6]~input_o\,
	datac => \ALT_INV_SBpeso[5]~input_o\,
	datad => \ALT_INV_SBpeso[4]~input_o\,
	datae => \ALT_INV_SBpeso[3]~input_o\,
	combout => \inst16|z~1_combout\);

\inst16|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|LessThan3~0_combout\ = ( \SBpeso[3]~input_o\ & ( \SBpeso[2]~input_o\ & ( (!\SBpeso[6]~input_o\ & (((\SBpeso[7]~input_o\ & !\SBpeso[5]~input_o\)) # (\SBpeso[4]~input_o\))) # (\SBpeso[6]~input_o\ & (!\SBpeso[4]~input_o\ $ (((\SBpeso[7]~input_o\ & 
-- !\SBpeso[5]~input_o\))))) ) ) ) # ( !\SBpeso[3]~input_o\ & ( \SBpeso[2]~input_o\ & ( (!\SBpeso[6]~input_o\ & (!\SBpeso[4]~input_o\ $ (((!\SBpeso[5]~input_o\) # (\SBpeso[7]~input_o\))))) # (\SBpeso[6]~input_o\ & ((!\SBpeso[4]~input_o\) # 
-- ((!\SBpeso[7]~input_o\ & \SBpeso[5]~input_o\)))) ) ) ) # ( \SBpeso[3]~input_o\ & ( !\SBpeso[2]~input_o\ & ( (!\SBpeso[6]~input_o\ & (\SBpeso[4]~input_o\ & ((!\SBpeso[5]~input_o\) # (\SBpeso[7]~input_o\)))) # (\SBpeso[6]~input_o\ & (!\SBpeso[4]~input_o\ & 
-- ((!\SBpeso[7]~input_o\) # (\SBpeso[5]~input_o\)))) ) ) ) # ( !\SBpeso[3]~input_o\ & ( !\SBpeso[2]~input_o\ & ( (!\SBpeso[6]~input_o\ & ((!\SBpeso[7]~input_o\ & (\SBpeso[5]~input_o\ & !\SBpeso[4]~input_o\)) # (\SBpeso[7]~input_o\ & (!\SBpeso[5]~input_o\ & 
-- \SBpeso[4]~input_o\)))) # (\SBpeso[6]~input_o\ & (!\SBpeso[4]~input_o\ $ (((!\SBpeso[7]~input_o\ & \SBpeso[5]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100101000010001000111100010000111011110001100110001111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[7]~input_o\,
	datab => \ALT_INV_SBpeso[6]~input_o\,
	datac => \ALT_INV_SBpeso[5]~input_o\,
	datad => \ALT_INV_SBpeso[4]~input_o\,
	datae => \ALT_INV_SBpeso[3]~input_o\,
	dataf => \ALT_INV_SBpeso[2]~input_o\,
	combout => \inst16|LessThan3~0_combout\);

\inst16|num_bcd_u[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|num_bcd_u[1]~0_combout\ = ( \inst16|LessThan3~0_combout\ & ( (!\SBpeso[1]~input_o\ & ((!\inst16|z~1_combout\) # ((!\SBpeso[2]~input_o\ & !\inst16|z~0_combout\)))) # (\SBpeso[1]~input_o\ & (\inst16|z~1_combout\ & (!\SBpeso[2]~input_o\ $ 
-- (!\inst16|z~0_combout\)))) ) ) # ( !\inst16|LessThan3~0_combout\ & ( (!\SBpeso[1]~input_o\ & (((\SBpeso[2]~input_o\ & \inst16|z~0_combout\)) # (\inst16|z~1_combout\))) # (\SBpeso[1]~input_o\ & (((!\inst16|z~0_combout\ & !\inst16|z~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010011001100110011001001001000110100110011001100110010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[2]~input_o\,
	datab => \ALT_INV_SBpeso[1]~input_o\,
	datac => \inst16|ALT_INV_z~0_combout\,
	datad => \inst16|ALT_INV_z~1_combout\,
	datae => \inst16|ALT_INV_LessThan3~0_combout\,
	combout => \inst16|num_bcd_u[1]~0_combout\);

\inst16|num_bcd_u[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|num_bcd_u[2]~1_combout\ = ( \inst16|LessThan3~0_combout\ & ( (!\SBpeso[2]~input_o\ & (((\inst16|z~0_combout\ & \inst16|z~1_combout\)) # (\SBpeso[1]~input_o\))) # (\SBpeso[2]~input_o\ & (!\SBpeso[1]~input_o\ & ((!\inst16|z~1_combout\)))) ) ) # ( 
-- !\inst16|LessThan3~0_combout\ & ( (!\SBpeso[2]~input_o\ & (!\SBpeso[1]~input_o\ & ((\inst16|z~1_combout\)))) # (\SBpeso[2]~input_o\ & (((!\inst16|z~0_combout\ & !\inst16|z~1_combout\)) # (\SBpeso[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000110011001011001100010101001010001100110010110011000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[2]~input_o\,
	datab => \ALT_INV_SBpeso[1]~input_o\,
	datac => \inst16|ALT_INV_z~0_combout\,
	datad => \inst16|ALT_INV_z~1_combout\,
	datae => \inst16|ALT_INV_LessThan3~0_combout\,
	combout => \inst16|num_bcd_u[2]~1_combout\);

\inst16|num_bcd_u[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|num_bcd_u[3]~2_combout\ = ( \inst16|LessThan3~0_combout\ & ( (!\SBpeso[2]~input_o\ & (((\inst16|z~0_combout\ & !\inst16|z~1_combout\)))) # (\SBpeso[2]~input_o\ & ((!\SBpeso[1]~input_o\ & (\inst16|z~0_combout\)) # (\SBpeso[1]~input_o\ & 
-- (!\inst16|z~0_combout\ & !\inst16|z~1_combout\)))) ) ) # ( !\inst16|LessThan3~0_combout\ & ( (!\inst16|z~0_combout\ & (\inst16|z~1_combout\ & ((\SBpeso[1]~input_o\) # (\SBpeso[2]~input_o\)))) # (\inst16|z~0_combout\ & (!\SBpeso[2]~input_o\ & 
-- (!\SBpeso[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111000000111100000010000001000011110000001111000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[2]~input_o\,
	datab => \ALT_INV_SBpeso[1]~input_o\,
	datac => \inst16|ALT_INV_z~0_combout\,
	datad => \inst16|ALT_INV_z~1_combout\,
	datae => \inst16|ALT_INV_LessThan3~0_combout\,
	combout => \inst16|num_bcd_u[3]~2_combout\);

\inst11|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = (!\SBpeso[0]~input_o\ & (((\inst16|num_bcd_u[1]~0_combout\ & \inst16|num_bcd_u[3]~2_combout\)) # (\inst16|num_bcd_u[2]~1_combout\))) # (\SBpeso[0]~input_o\ & (!\inst16|num_bcd_u[3]~2_combout\ $ (((\inst16|num_bcd_u[2]~1_combout\) 
-- # (\inst16|num_bcd_u[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101000111111010010100011111101001010001111110100101000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[0]~input_o\,
	datab => \inst16|ALT_INV_num_bcd_u[1]~0_combout\,
	datac => \inst16|ALT_INV_num_bcd_u[2]~1_combout\,
	datad => \inst16|ALT_INV_num_bcd_u[3]~2_combout\,
	combout => \inst11|Mux0~0_combout\);

\inst11|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux1~0_combout\ = (!\inst16|num_bcd_u[2]~1_combout\ & (((\inst16|num_bcd_u[1]~0_combout\ & \inst16|num_bcd_u[3]~2_combout\)))) # (\inst16|num_bcd_u[2]~1_combout\ & ((!\SBpeso[0]~input_o\ $ (!\inst16|num_bcd_u[1]~0_combout\)) # 
-- (\inst16|num_bcd_u[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000111111000001100011111100000110001111110000011000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[0]~input_o\,
	datab => \inst16|ALT_INV_num_bcd_u[1]~0_combout\,
	datac => \inst16|ALT_INV_num_bcd_u[2]~1_combout\,
	datad => \inst16|ALT_INV_num_bcd_u[3]~2_combout\,
	combout => \inst11|Mux1~0_combout\);

\inst11|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux2~0_combout\ = (!\inst16|num_bcd_u[2]~1_combout\ & (\inst16|num_bcd_u[1]~0_combout\ & ((!\SBpeso[0]~input_o\) # (\inst16|num_bcd_u[3]~2_combout\)))) # (\inst16|num_bcd_u[2]~1_combout\ & (((\inst16|num_bcd_u[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000111111001000000011111100100000001111110010000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[0]~input_o\,
	datab => \inst16|ALT_INV_num_bcd_u[1]~0_combout\,
	datac => \inst16|ALT_INV_num_bcd_u[2]~1_combout\,
	datad => \inst16|ALT_INV_num_bcd_u[3]~2_combout\,
	combout => \inst11|Mux2~0_combout\);

\inst11|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux3~0_combout\ = (!\SBpeso[0]~input_o\ & ((!\inst16|num_bcd_u[1]~0_combout\ & (\inst16|num_bcd_u[2]~1_combout\)) # (\inst16|num_bcd_u[1]~0_combout\ & ((\inst16|num_bcd_u[3]~2_combout\))))) # (\SBpeso[0]~input_o\ & 
-- ((!\inst16|num_bcd_u[1]~0_combout\ $ (\inst16|num_bcd_u[2]~1_combout\)) # (\inst16|num_bcd_u[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101111111010010010111111101001001011111110100100101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[0]~input_o\,
	datab => \inst16|ALT_INV_num_bcd_u[1]~0_combout\,
	datac => \inst16|ALT_INV_num_bcd_u[2]~1_combout\,
	datad => \inst16|ALT_INV_num_bcd_u[3]~2_combout\,
	combout => \inst11|Mux3~0_combout\);

\inst11|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux4~0_combout\ = ((!\inst16|num_bcd_u[1]~0_combout\ & (\inst16|num_bcd_u[2]~1_combout\)) # (\inst16|num_bcd_u[1]~0_combout\ & ((\inst16|num_bcd_u[3]~2_combout\)))) # (\SBpeso[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101111111010111010111111101011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[0]~input_o\,
	datab => \inst16|ALT_INV_num_bcd_u[1]~0_combout\,
	datac => \inst16|ALT_INV_num_bcd_u[2]~1_combout\,
	datad => \inst16|ALT_INV_num_bcd_u[3]~2_combout\,
	combout => \inst11|Mux4~0_combout\);

\inst11|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux5~0_combout\ = (!\SBpeso[0]~input_o\ & ((!\inst16|num_bcd_u[2]~1_combout\ & (\inst16|num_bcd_u[1]~0_combout\)) # (\inst16|num_bcd_u[2]~1_combout\ & ((\inst16|num_bcd_u[3]~2_combout\))))) # (\SBpeso[0]~input_o\ & 
-- ((!\inst16|num_bcd_u[2]~1_combout\ $ (\inst16|num_bcd_u[3]~2_combout\)) # (\inst16|num_bcd_u[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100111111011100010011111101110001001111110111000100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[0]~input_o\,
	datab => \inst16|ALT_INV_num_bcd_u[1]~0_combout\,
	datac => \inst16|ALT_INV_num_bcd_u[2]~1_combout\,
	datad => \inst16|ALT_INV_num_bcd_u[3]~2_combout\,
	combout => \inst11|Mux5~0_combout\);

\inst11|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst11|Mux6~0_combout\ = (!\inst16|num_bcd_u[1]~0_combout\ & ((!\inst16|num_bcd_u[2]~1_combout\ $ (!\inst16|num_bcd_u[3]~2_combout\)))) # (\inst16|num_bcd_u[1]~0_combout\ & (!\inst16|num_bcd_u[3]~2_combout\ & ((!\SBpeso[0]~input_o\) # 
-- (!\inst16|num_bcd_u[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111011000000001111101100000000111110110000000011111011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[0]~input_o\,
	datab => \inst16|ALT_INV_num_bcd_u[1]~0_combout\,
	datac => \inst16|ALT_INV_num_bcd_u[2]~1_combout\,
	datad => \inst16|ALT_INV_num_bcd_u[3]~2_combout\,
	combout => \inst11|Mux6~0_combout\);

\inst16|num_bcd_d[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|num_bcd_d[0]~0_combout\ = ( \inst16|LessThan3~0_combout\ & ( !\inst16|z~1_combout\ $ (((!\SBpeso[2]~input_o\) # ((!\SBpeso[1]~input_o\) # (!\inst16|z~0_combout\)))) ) ) # ( !\inst16|LessThan3~0_combout\ & ( !\inst16|z~1_combout\ $ 
-- (((\inst16|z~0_combout\ & ((\SBpeso[1]~input_o\) # (\SBpeso[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000111000000011111111011111000000001110000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[2]~input_o\,
	datab => \ALT_INV_SBpeso[1]~input_o\,
	datac => \inst16|ALT_INV_z~0_combout\,
	datad => \inst16|ALT_INV_z~1_combout\,
	datae => \inst16|ALT_INV_LessThan3~0_combout\,
	combout => \inst16|num_bcd_d[0]~0_combout\);

\inst16|num_bcd_d[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|num_bcd_d[1]~1_combout\ = ( \SBpeso[3]~input_o\ & ( \SBpeso[2]~input_o\ & ( (!\SBpeso[7]~input_o\ & (!\SBpeso[4]~input_o\ $ (((!\SBpeso[6]~input_o\) # (\SBpeso[5]~input_o\))))) # (\SBpeso[7]~input_o\ & ((!\SBpeso[5]~input_o\ & (\SBpeso[6]~input_o\ 
-- & \SBpeso[4]~input_o\)) # (\SBpeso[5]~input_o\ & ((!\SBpeso[4]~input_o\))))) ) ) ) # ( !\SBpeso[3]~input_o\ & ( \SBpeso[2]~input_o\ & ( (!\SBpeso[6]~input_o\ & (!\SBpeso[4]~input_o\ $ (((!\SBpeso[7]~input_o\ & !\SBpeso[5]~input_o\))))) # 
-- (\SBpeso[6]~input_o\ & (!\SBpeso[4]~input_o\ & (!\SBpeso[7]~input_o\ $ (\SBpeso[5]~input_o\)))) ) ) ) # ( \SBpeso[3]~input_o\ & ( !\SBpeso[2]~input_o\ & ( (!\SBpeso[4]~input_o\ & (!\SBpeso[7]~input_o\ $ (((!\SBpeso[6]~input_o\) # (\SBpeso[5]~input_o\))))) 
-- # (\SBpeso[4]~input_o\ & (!\SBpeso[7]~input_o\ & (!\SBpeso[6]~input_o\ $ (\SBpeso[5]~input_o\)))) ) ) ) # ( !\SBpeso[3]~input_o\ & ( !\SBpeso[2]~input_o\ & ( (!\SBpeso[7]~input_o\ & (!\SBpeso[4]~input_o\ & (!\SBpeso[6]~input_o\ $ (!\SBpeso[5]~input_o\)))) 
-- # (\SBpeso[7]~input_o\ & ((!\SBpeso[6]~input_o\ & ((!\SBpeso[4]~input_o\) # (\SBpeso[5]~input_o\))) # (\SBpeso[6]~input_o\ & (\SBpeso[5]~input_o\ & !\SBpeso[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110100000100011001011000001001101101100000000010010110011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[7]~input_o\,
	datab => \ALT_INV_SBpeso[6]~input_o\,
	datac => \ALT_INV_SBpeso[5]~input_o\,
	datad => \ALT_INV_SBpeso[4]~input_o\,
	datae => \ALT_INV_SBpeso[3]~input_o\,
	dataf => \ALT_INV_SBpeso[2]~input_o\,
	combout => \inst16|num_bcd_d[1]~1_combout\);

\inst16|num_bcd_d[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|num_bcd_d[2]~2_combout\ = ( \SBpeso[3]~input_o\ & ( \SBpeso[2]~input_o\ & ( (!\SBpeso[7]~input_o\ & ((!\SBpeso[6]~input_o\ & (\SBpeso[5]~input_o\)) # (\SBpeso[6]~input_o\ & (!\SBpeso[5]~input_o\ & !\SBpeso[4]~input_o\)))) # (\SBpeso[7]~input_o\ & 
-- (!\SBpeso[6]~input_o\ $ (((\SBpeso[5]~input_o\ & \SBpeso[4]~input_o\))))) ) ) ) # ( !\SBpeso[3]~input_o\ & ( \SBpeso[2]~input_o\ & ( (!\SBpeso[7]~input_o\ & ((!\SBpeso[6]~input_o\ & (\SBpeso[5]~input_o\ & \SBpeso[4]~input_o\)) # (\SBpeso[6]~input_o\ & 
-- (!\SBpeso[5]~input_o\ & !\SBpeso[4]~input_o\)))) # (\SBpeso[7]~input_o\ & ((!\SBpeso[6]~input_o\ & (!\SBpeso[5]~input_o\ $ (!\SBpeso[4]~input_o\))) # (\SBpeso[6]~input_o\ & (\SBpeso[5]~input_o\ & \SBpeso[4]~input_o\)))) ) ) ) # ( \SBpeso[3]~input_o\ & ( 
-- !\SBpeso[2]~input_o\ & ( (!\SBpeso[6]~input_o\ & (!\SBpeso[5]~input_o\ $ (((!\SBpeso[7]~input_o\) # (!\SBpeso[4]~input_o\))))) # (\SBpeso[6]~input_o\ & ((!\SBpeso[7]~input_o\ & (!\SBpeso[5]~input_o\ & !\SBpeso[4]~input_o\)) # (\SBpeso[7]~input_o\ & 
-- (\SBpeso[5]~input_o\ & \SBpeso[4]~input_o\)))) ) ) ) # ( !\SBpeso[3]~input_o\ & ( !\SBpeso[2]~input_o\ & ( (!\SBpeso[7]~input_o\ & ((!\SBpeso[6]~input_o\ & (\SBpeso[5]~input_o\ & \SBpeso[4]~input_o\)) # (\SBpeso[6]~input_o\ & (!\SBpeso[5]~input_o\ & 
-- !\SBpeso[4]~input_o\)))) # (\SBpeso[7]~input_o\ & ((!\SBpeso[6]~input_o\ & ((\SBpeso[4]~input_o\) # (\SBpeso[5]~input_o\))) # (\SBpeso[6]~input_o\ & (\SBpeso[5]~input_o\ & \SBpeso[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001101001011000100100100100100010010010110110001001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[7]~input_o\,
	datab => \ALT_INV_SBpeso[6]~input_o\,
	datac => \ALT_INV_SBpeso[5]~input_o\,
	datad => \ALT_INV_SBpeso[4]~input_o\,
	datae => \ALT_INV_SBpeso[3]~input_o\,
	dataf => \ALT_INV_SBpeso[2]~input_o\,
	combout => \inst16|num_bcd_d[2]~2_combout\);

\inst16|num_bcd_d[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16|num_bcd_d[3]~3_combout\ = ( \SBpeso[3]~input_o\ & ( \SBpeso[2]~input_o\ & ( (\SBpeso[4]~input_o\ & ((!\SBpeso[7]~input_o\ & (\SBpeso[6]~input_o\ & !\SBpeso[5]~input_o\)) # (\SBpeso[7]~input_o\ & (!\SBpeso[6]~input_o\ & \SBpeso[5]~input_o\)))) ) ) 
-- ) # ( !\SBpeso[3]~input_o\ & ( \SBpeso[2]~input_o\ & ( (!\SBpeso[6]~input_o\ & (\SBpeso[7]~input_o\ & (\SBpeso[5]~input_o\ & \SBpeso[4]~input_o\))) # (\SBpeso[6]~input_o\ & (!\SBpeso[5]~input_o\ & (!\SBpeso[7]~input_o\ $ (!\SBpeso[4]~input_o\)))) ) ) ) # 
-- ( \SBpeso[3]~input_o\ & ( !\SBpeso[2]~input_o\ & ( (\SBpeso[4]~input_o\ & ((!\SBpeso[7]~input_o\ & (\SBpeso[6]~input_o\ & !\SBpeso[5]~input_o\)) # (\SBpeso[7]~input_o\ & (!\SBpeso[6]~input_o\ & \SBpeso[5]~input_o\)))) ) ) ) # ( !\SBpeso[3]~input_o\ & ( 
-- !\SBpeso[2]~input_o\ & ( (\SBpeso[6]~input_o\ & ((!\SBpeso[7]~input_o\ & (!\SBpeso[5]~input_o\ $ (!\SBpeso[4]~input_o\))) # (\SBpeso[7]~input_o\ & (!\SBpeso[5]~input_o\ & !\SBpeso[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100000000000000010010000010000001001000000000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SBpeso[7]~input_o\,
	datab => \ALT_INV_SBpeso[6]~input_o\,
	datac => \ALT_INV_SBpeso[5]~input_o\,
	datad => \ALT_INV_SBpeso[4]~input_o\,
	datae => \ALT_INV_SBpeso[3]~input_o\,
	dataf => \ALT_INV_SBpeso[2]~input_o\,
	combout => \inst16|num_bcd_d[3]~3_combout\);

\inst13|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Mux0~0_combout\ = (!\inst16|num_bcd_d[0]~0_combout\ & (!\inst16|num_bcd_d[3]~3_combout\ $ (((\inst16|num_bcd_d[2]~2_combout\) # (\inst16|num_bcd_d[1]~1_combout\))))) # (\inst16|num_bcd_d[0]~0_combout\ & (((\inst16|num_bcd_d[1]~1_combout\ & 
-- \inst16|num_bcd_d[3]~3_combout\)) # (\inst16|num_bcd_d[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010100111111100001010011111110000101001111111000010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_num_bcd_d[0]~0_combout\,
	datab => \inst16|ALT_INV_num_bcd_d[1]~1_combout\,
	datac => \inst16|ALT_INV_num_bcd_d[2]~2_combout\,
	datad => \inst16|ALT_INV_num_bcd_d[3]~3_combout\,
	combout => \inst13|Mux0~0_combout\);

\inst13|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Mux1~0_combout\ = (!\inst16|num_bcd_d[2]~2_combout\ & (((\inst16|num_bcd_d[1]~1_combout\ & \inst16|num_bcd_d[3]~3_combout\)))) # (\inst16|num_bcd_d[2]~2_combout\ & ((!\inst16|num_bcd_d[0]~0_combout\ $ (\inst16|num_bcd_d[1]~1_combout\)) # 
-- (\inst16|num_bcd_d[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100111111000010010011111100001001001111110000100100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_num_bcd_d[0]~0_combout\,
	datab => \inst16|ALT_INV_num_bcd_d[1]~1_combout\,
	datac => \inst16|ALT_INV_num_bcd_d[2]~2_combout\,
	datad => \inst16|ALT_INV_num_bcd_d[3]~3_combout\,
	combout => \inst13|Mux1~0_combout\);

\inst13|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Mux2~0_combout\ = (!\inst16|num_bcd_d[2]~2_combout\ & (\inst16|num_bcd_d[1]~1_combout\ & ((\inst16|num_bcd_d[3]~3_combout\) # (\inst16|num_bcd_d[0]~0_combout\)))) # (\inst16|num_bcd_d[2]~2_combout\ & (((\inst16|num_bcd_d[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000111111000100000011111100010000001111110001000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_num_bcd_d[0]~0_combout\,
	datab => \inst16|ALT_INV_num_bcd_d[1]~1_combout\,
	datac => \inst16|ALT_INV_num_bcd_d[2]~2_combout\,
	datad => \inst16|ALT_INV_num_bcd_d[3]~3_combout\,
	combout => \inst13|Mux2~0_combout\);

\inst13|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Mux3~0_combout\ = (!\inst16|num_bcd_d[0]~0_combout\ & ((!\inst16|num_bcd_d[1]~1_combout\ $ (\inst16|num_bcd_d[2]~2_combout\)) # (\inst16|num_bcd_d[3]~3_combout\))) # (\inst16|num_bcd_d[0]~0_combout\ & ((!\inst16|num_bcd_d[1]~1_combout\ & 
-- (\inst16|num_bcd_d[2]~2_combout\)) # (\inst16|num_bcd_d[1]~1_combout\ & ((\inst16|num_bcd_d[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011010111111100001101011111110000110101111111000011010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_num_bcd_d[0]~0_combout\,
	datab => \inst16|ALT_INV_num_bcd_d[1]~1_combout\,
	datac => \inst16|ALT_INV_num_bcd_d[2]~2_combout\,
	datad => \inst16|ALT_INV_num_bcd_d[3]~3_combout\,
	combout => \inst13|Mux3~0_combout\);

\inst13|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Mux4~0_combout\ = (!\inst16|num_bcd_d[0]~0_combout\) # ((!\inst16|num_bcd_d[1]~1_combout\ & (\inst16|num_bcd_d[2]~2_combout\)) # (\inst16|num_bcd_d[1]~1_combout\ & ((\inst16|num_bcd_d[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010111111101011101011111110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_num_bcd_d[0]~0_combout\,
	datab => \inst16|ALT_INV_num_bcd_d[1]~1_combout\,
	datac => \inst16|ALT_INV_num_bcd_d[2]~2_combout\,
	datad => \inst16|ALT_INV_num_bcd_d[3]~3_combout\,
	combout => \inst13|Mux4~0_combout\);

\inst13|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Mux5~0_combout\ = (!\inst16|num_bcd_d[0]~0_combout\ & ((!\inst16|num_bcd_d[2]~2_combout\ $ (\inst16|num_bcd_d[3]~3_combout\)) # (\inst16|num_bcd_d[1]~1_combout\))) # (\inst16|num_bcd_d[0]~0_combout\ & ((!\inst16|num_bcd_d[2]~2_combout\ & 
-- (\inst16|num_bcd_d[1]~1_combout\)) # (\inst16|num_bcd_d[2]~2_combout\ & ((\inst16|num_bcd_d[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001000111111101100100011111110110010001111111011001000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_num_bcd_d[0]~0_combout\,
	datab => \inst16|ALT_INV_num_bcd_d[1]~1_combout\,
	datac => \inst16|ALT_INV_num_bcd_d[2]~2_combout\,
	datad => \inst16|ALT_INV_num_bcd_d[3]~3_combout\,
	combout => \inst13|Mux5~0_combout\);

\inst13|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst13|Mux6~0_combout\ = (!\inst16|num_bcd_d[1]~1_combout\ & ((!\inst16|num_bcd_d[2]~2_combout\ $ (!\inst16|num_bcd_d[3]~3_combout\)))) # (\inst16|num_bcd_d[1]~1_combout\ & (!\inst16|num_bcd_d[3]~3_combout\ & ((!\inst16|num_bcd_d[2]~2_combout\) # 
-- (\inst16|num_bcd_d[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110111000000001111011100000000111101110000000011110111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|ALT_INV_num_bcd_d[0]~0_combout\,
	datab => \inst16|ALT_INV_num_bcd_d[1]~1_combout\,
	datac => \inst16|ALT_INV_num_bcd_d[2]~2_combout\,
	datad => \inst16|ALT_INV_num_bcd_d[3]~3_combout\,
	combout => \inst13|Mux6~0_combout\);

\pesoMaximo[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMaximo(7),
	o => \pesoMaximo[7]~input_o\);

\pesoMaximo[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMaximo(6),
	o => \pesoMaximo[6]~input_o\);

\pesoMaximo[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMaximo(5),
	o => \pesoMaximo[5]~input_o\);

\pesoMaximo[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMaximo(4),
	o => \pesoMaximo[4]~input_o\);

\pesoMaximo[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMaximo(3),
	o => \pesoMaximo[3]~input_o\);

\pesoMaximo[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMaximo(2),
	o => \pesoMaximo[2]~input_o\);

\pesoMaximo[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMaximo(1),
	o => \pesoMaximo[1]~input_o\);

\pesoMaximo[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pesoMaximo(0),
	o => \pesoMaximo[0]~input_o\);

\distanciaMinimaValida~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => distanciaMinimaValida,
	o => \distanciaMinimaValida~input_o\);

\distanciaMaximaValida~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => distanciaMaximaValida,
	o => \distanciaMaximaValida~input_o\);

ww_motor_paso <= \motor_paso~output_o\;

ww_led_sistemaOn <= \led_sistemaOn~output_o\;

ww_led_bolsa <= \led_bolsa~output_o\;

ww_led_mal <= \led_mal~output_o\;

ww_comp1 <= \comp1~output_o\;

ww_peso_out <= \peso_out~output_o\;

ww_distancia_out <= \distancia_out~output_o\;

ww_anodo7(6) <= \anodo7[6]~output_o\;

ww_anodo7(5) <= \anodo7[5]~output_o\;

ww_anodo7(4) <= \anodo7[4]~output_o\;

ww_anodo7(3) <= \anodo7[3]~output_o\;

ww_anodo7(2) <= \anodo7[2]~output_o\;

ww_anodo7(1) <= \anodo7[1]~output_o\;

ww_anodo7(0) <= \anodo7[0]~output_o\;

ww_anodo8(6) <= \anodo8[6]~output_o\;

ww_anodo8(5) <= \anodo8[5]~output_o\;

ww_anodo8(4) <= \anodo8[4]~output_o\;

ww_anodo8(3) <= \anodo8[3]~output_o\;

ww_anodo8(2) <= \anodo8[2]~output_o\;

ww_anodo8(1) <= \anodo8[1]~output_o\;

ww_anodo8(0) <= \anodo8[0]~output_o\;

ww_anodo9(6) <= \anodo9[6]~output_o\;

ww_anodo9(5) <= \anodo9[5]~output_o\;

ww_anodo9(4) <= \anodo9[4]~output_o\;

ww_anodo9(3) <= \anodo9[3]~output_o\;

ww_anodo9(2) <= \anodo9[2]~output_o\;

ww_anodo9(1) <= \anodo9[1]~output_o\;

ww_anodo9(0) <= \anodo9[0]~output_o\;

distanciaMinimaValida <= \distanciaMinimaValida~output_o\;

distanciaMaximaValida <= \distanciaMaximaValida~output_o\;
END structure;


