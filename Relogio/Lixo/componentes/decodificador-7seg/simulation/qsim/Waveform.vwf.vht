-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/28/2019 09:18:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          decodificador7seg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decodificador7seg_vhd_vec_tst IS
END decodificador7seg_vhd_vec_tst;
ARCHITECTURE decodificador7seg_arch OF decodificador7seg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dadoHex : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL hab : STD_LOGIC;
SIGNAL saida7seg : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT decodificador7seg
	PORT (
	dadoHex : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	hab : IN STD_LOGIC;
	saida7seg : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : decodificador7seg
	PORT MAP (
-- list connections between master ports and signals
	dadoHex => dadoHex,
	hab => hab,
	saida7seg => saida7seg
	);
-- dadoHex[3]
t_prcs_dadoHex_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		dadoHex(3) <= '0';
		WAIT FOR 80000 ps;
		dadoHex(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	dadoHex(3) <= '0';
WAIT;
END PROCESS t_prcs_dadoHex_3;
-- dadoHex[2]
t_prcs_dadoHex_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		dadoHex(2) <= '0';
		WAIT FOR 40000 ps;
		dadoHex(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	dadoHex(2) <= '0';
WAIT;
END PROCESS t_prcs_dadoHex_2;
-- dadoHex[1]
t_prcs_dadoHex_1: PROCESS
BEGIN
LOOP
	dadoHex(1) <= '0';
	WAIT FOR 20000 ps;
	dadoHex(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dadoHex_1;
-- dadoHex[0]
t_prcs_dadoHex_0: PROCESS
BEGIN
LOOP
	dadoHex(0) <= '0';
	WAIT FOR 10000 ps;
	dadoHex(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dadoHex_0;

-- hab
t_prcs_hab: PROCESS
BEGIN
	hab <= '1';
WAIT;
END PROCESS t_prcs_hab;
END decodificador7seg_arch;
