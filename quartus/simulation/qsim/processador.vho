-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "12/03/2024 14:51:28"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processador IS
    PORT (
	sw : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	reg_pc : BUFFER std_logic_vector(7 DOWNTO 0);
	reg_a : BUFFER std_logic_vector(7 DOWNTO 0);
	reg_b : BUFFER std_logic_vector(7 DOWNTO 0);
	reg_r : BUFFER std_logic_vector(7 DOWNTO 0);
	estado : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END processador;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_pc[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_pc[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_pc[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_pc[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_pc[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_pc[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_pc[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_pc[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[0]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[3]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[7]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[2]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[4]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reg_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reg_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reg_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reg_r : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_estado : std_logic_vector(6 DOWNTO 0);
SIGNAL \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \uc|cur_state.JGR_exec4~q\ : std_logic;
SIGNAL \uc|next_state.JMP_exec1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.JMP_exec1~q\ : std_logic;
SIGNAL \uc|cur_state.JMP_exec2~q\ : std_logic;
SIGNAL \uc|cur_state.JMP_exec3~q\ : std_logic;
SIGNAL \uc|cur_state.JMP_exec4~q\ : std_logic;
SIGNAL \ir|temp[7]~DUPLICATE_q\ : std_logic;
SIGNAL \uc|next_state.out1~0_combout\ : std_logic;
SIGNAL \uc|next_state.CMP_exec~0_combout\ : std_logic;
SIGNAL \uc|cur_state.CMP_exec~q\ : std_logic;
SIGNAL \uc|next_state.CMP_exec_imm1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.CMP_exec_imm1~q\ : std_logic;
SIGNAL \uc|cur_state.CMP_exec_imm2~q\ : std_logic;
SIGNAL \uc|cur_state.CMP_exec_imm3~q\ : std_logic;
SIGNAL \uc|WideOr22~0_combout\ : std_logic;
SIGNAL \uc|next_state.JGR_exec1~0_combout\ : std_logic;
SIGNAL \uc|next_state.R_exec_imm1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.R_exec_imm1~q\ : std_logic;
SIGNAL \uc|next_state.R_exec~0_combout\ : std_logic;
SIGNAL \uc|cur_state.R_exec~q\ : std_logic;
SIGNAL \uc|cur_state.R_exec_imm2~q\ : std_logic;
SIGNAL \uc|cur_state.R_exec_imm3~q\ : std_logic;
SIGNAL \uc|WideOr4~0_combout\ : std_logic;
SIGNAL \uc|WideOr22~combout\ : std_logic;
SIGNAL \uc|control_bus[14]~3_combout\ : std_logic;
SIGNAL \uc|control_bus[13]~2_combout\ : std_logic;
SIGNAL \uc|control_bus[12]~4_combout\ : std_logic;
SIGNAL \regR|temp[0]~0_combout\ : std_logic;
SIGNAL \regR|temp[0]~1_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \uc|next_state.LOAD_exec_B1~0_combout\ : std_logic;
SIGNAL \uc|next_state.LOAD_exec_imm_B1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_B1~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_B2~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_B3~feeder_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_B3~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_B4~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_B5~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_B6~DUPLICATE_q\ : std_logic;
SIGNAL \uc|next_state.MOV_exec_imm_B1~0_combout\ : std_logic;
SIGNAL \uc|next_state.MOV_exec_imm_B1~1_combout\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_imm_B1~q\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_imm_B2~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_imm_B3~q\ : std_logic;
SIGNAL \uc|next_state.LOAD_exec_B1~1_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_B1~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_B2~q\ : std_logic;
SIGNAL \uc|WideOr3~2_combout\ : std_logic;
SIGNAL \uc|Mux4~0_combout\ : std_logic;
SIGNAL \uc|Mux4~1_combout\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_B~q\ : std_logic;
SIGNAL \uc|next_state.in_a~0_combout\ : std_logic;
SIGNAL \uc|next_state.in_b~0_combout\ : std_logic;
SIGNAL \uc|cur_state.in_b~q\ : std_logic;
SIGNAL \uc|next_state.in_r~0_combout\ : std_logic;
SIGNAL \uc|cur_state.in_r~q\ : std_logic;
SIGNAL \uc|next_state.in_a~1_combout\ : std_logic;
SIGNAL \uc|cur_state.in_a~q\ : std_logic;
SIGNAL \uc|WideOr19~0_combout\ : std_logic;
SIGNAL \regB|temp[1]~1_combout\ : std_logic;
SIGNAL \regB|temp[1]~0_combout\ : std_logic;
SIGNAL \m5|saida[7]~7_combout\ : std_logic;
SIGNAL \regB|temp[1]~2_combout\ : std_logic;
SIGNAL \uc|cur_state.in_b~DUPLICATE_q\ : std_logic;
SIGNAL \uc|WideOr21~combout\ : std_logic;
SIGNAL \uc|next_state.MOV_exec_imm_A1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_imm_A1~q\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_imm_A2~q\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_imm_A3~q\ : std_logic;
SIGNAL \uc|next_state.LOAD_exec_A1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_A1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_A2~q\ : std_logic;
SIGNAL \uc|next_state.LOAD_exec_imm_A1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_A1~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_A2~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_A3~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_A4~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_A5~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_A6~q\ : std_logic;
SIGNAL \uc|WideOr20~0_combout\ : std_logic;
SIGNAL \uc|Mux3~0_combout\ : std_logic;
SIGNAL \uc|Mux3~1_combout\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_A~q\ : std_logic;
SIGNAL \regA|temp[0]~1_combout\ : std_logic;
SIGNAL \regA|temp[0]~0_combout\ : std_logic;
SIGNAL \m4|saida[7]~7_combout\ : std_logic;
SIGNAL \regA|temp[0]~2_combout\ : std_logic;
SIGNAL \uc|WideOr20~combout\ : std_logic;
SIGNAL \m11|Mux0~0_combout\ : std_logic;
SIGNAL \m6|saida[7]~14_combout\ : std_logic;
SIGNAL \uc|next_state.LOAD_exec_R1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_R1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_R2~q\ : std_logic;
SIGNAL \uc|next_state.LOAD_exec_imm_R1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_R1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_R2~feeder_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_R2~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_R3~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_R4~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_R5~q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_R6~q\ : std_logic;
SIGNAL \uc|Mux5~0_combout\ : std_logic;
SIGNAL \uc|Mux5~1_combout\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_R~q\ : std_logic;
SIGNAL \uc|Selector8~0_combout\ : std_logic;
SIGNAL \uc|Selector8~1_combout\ : std_logic;
SIGNAL \m6|saida[7]~15_combout\ : std_logic;
SIGNAL \regR|temp[0]~2_combout\ : std_logic;
SIGNAL \regR|temp[0]~3_combout\ : std_logic;
SIGNAL \uc|WideOr29~0_combout\ : std_logic;
SIGNAL \uc|WideOr29~combout\ : std_logic;
SIGNAL \m12|Mux0~0_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \m11|Mux1~0_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \m4|saida[5]~5_combout\ : std_logic;
SIGNAL \m5|saida[5]~5_combout\ : std_logic;
SIGNAL \m12|Mux2~0_combout\ : std_logic;
SIGNAL \m11|Mux3~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \m12|Mux4~0_combout\ : std_logic;
SIGNAL \alu|Mux22~0_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \m4|saida[2]~2_combout\ : std_logic;
SIGNAL \m11|Mux5~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \m4|saida[1]~1_combout\ : std_logic;
SIGNAL \m5|saida[1]~1_combout\ : std_logic;
SIGNAL \m11|Mux6~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \m5|saida[0]~0_combout\ : std_logic;
SIGNAL \m4|saida[0]~0_combout\ : std_logic;
SIGNAL \m12|Mux7~0_combout\ : std_logic;
SIGNAL \m11|Mux7~0_combout\ : std_logic;
SIGNAL \alu|Add0~34_cout\ : std_logic;
SIGNAL \alu|Add0~2\ : std_logic;
SIGNAL \alu|Add0~5_sumout\ : std_logic;
SIGNAL \m6|saida[1]~2_combout\ : std_logic;
SIGNAL \m6|saida[1]~3_combout\ : std_logic;
SIGNAL \m12|Mux6~0_combout\ : std_logic;
SIGNAL \alu|Add0~6\ : std_logic;
SIGNAL \alu|Add0~9_sumout\ : std_logic;
SIGNAL \m6|saida[2]~4_combout\ : std_logic;
SIGNAL \m6|saida[2]~5_combout\ : std_logic;
SIGNAL \m5|saida[2]~2_combout\ : std_logic;
SIGNAL \m12|Mux5~0_combout\ : std_logic;
SIGNAL \alu|Add0~10\ : std_logic;
SIGNAL \alu|Add0~13_sumout\ : std_logic;
SIGNAL \m6|saida[3]~6_combout\ : std_logic;
SIGNAL \m6|saida[3]~7_combout\ : std_logic;
SIGNAL \m5|saida[3]~3_combout\ : std_logic;
SIGNAL \m4|saida[3]~3_combout\ : std_logic;
SIGNAL \m11|Mux4~0_combout\ : std_logic;
SIGNAL \alu|Add0~14\ : std_logic;
SIGNAL \alu|Add0~17_sumout\ : std_logic;
SIGNAL \m6|saida[4]~8_combout\ : std_logic;
SIGNAL \m6|saida[4]~9_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \m5|saida[4]~4_combout\ : std_logic;
SIGNAL \m4|saida[4]~4_combout\ : std_logic;
SIGNAL \m12|Mux3~0_combout\ : std_logic;
SIGNAL \alu|Add0~18\ : std_logic;
SIGNAL \alu|Add0~21_sumout\ : std_logic;
SIGNAL \m6|saida[5]~10_combout\ : std_logic;
SIGNAL \m6|saida[5]~11_combout\ : std_logic;
SIGNAL \m11|Mux2~0_combout\ : std_logic;
SIGNAL \alu|Add0~22\ : std_logic;
SIGNAL \alu|Add0~25_sumout\ : std_logic;
SIGNAL \m6|saida[6]~12_combout\ : std_logic;
SIGNAL \m6|saida[6]~13_combout\ : std_logic;
SIGNAL \m4|saida[6]~6_combout\ : std_logic;
SIGNAL \m5|saida[6]~6_combout\ : std_logic;
SIGNAL \m12|Mux1~0_combout\ : std_logic;
SIGNAL \alu|Add0~26\ : std_logic;
SIGNAL \alu|Add0~29_sumout\ : std_logic;
SIGNAL \sinal|temp~combout\ : std_logic;
SIGNAL \uc|next_state.JEQ_exec1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.JEQ_exec1~q\ : std_logic;
SIGNAL \uc|cur_state.JEQ_exec2~q\ : std_logic;
SIGNAL \uc|cur_state.JEQ_exec3~q\ : std_logic;
SIGNAL \uc|cur_state.JEQ_exec4~q\ : std_logic;
SIGNAL \alu|Add0~1_sumout\ : std_logic;
SIGNAL \alu|Equal0~0_combout\ : std_logic;
SIGNAL \alu|Equal0~1_combout\ : std_logic;
SIGNAL \zero|temp~combout\ : std_logic;
SIGNAL \pc|temp[7]~0_combout\ : std_logic;
SIGNAL \uc|next_state.out1~1_combout\ : std_logic;
SIGNAL \uc|cur_state.out1~q\ : std_logic;
SIGNAL \uc|next_state.STORE_exec_imm_A1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_A1~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_A2~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_A3~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_A4~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_A5~q\ : std_logic;
SIGNAL \uc|WideOr33~0_combout\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec2~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_B6~q\ : std_logic;
SIGNAL \uc|WideOr6~1_combout\ : std_logic;
SIGNAL \uc|WideOr0~1_combout\ : std_logic;
SIGNAL \uc|WideOr0~0_combout\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_B5~q\ : std_logic;
SIGNAL \uc|WideOr3~1_combout\ : std_logic;
SIGNAL \uc|WideOr33~combout\ : std_logic;
SIGNAL \uc|cur_state.Pc~q\ : std_logic;
SIGNAL \uc|cur_state.JGR_exec1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|WideOr4~4_combout\ : std_logic;
SIGNAL \uc|WideOr2~1_combout\ : std_logic;
SIGNAL \uc|WideOr2~2_combout\ : std_logic;
SIGNAL \uc|cur_state.CMP_exec_imm1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|WideOr0~2_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_R1~q\ : std_logic;
SIGNAL \uc|WideOr7~0_combout\ : std_logic;
SIGNAL \uc|WideOr7~combout\ : std_logic;
SIGNAL \uc|Selector0~0_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_B2~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_A1~q\ : std_logic;
SIGNAL \uc|WideOr2~3_combout\ : std_logic;
SIGNAL \uc|control_bus[28]~5_combout\ : std_logic;
SIGNAL \m14|Mux2~0_combout\ : std_logic;
SIGNAL \m14|Mux2~1_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \m14|Mux1~0_combout\ : std_logic;
SIGNAL \m14|Mux1~1_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \m14|Mux0~0_combout\ : std_logic;
SIGNAL \m14|Mux0~1_combout\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_R5~DUPLICATE_q\ : std_logic;
SIGNAL \m7|Mux7~0_combout\ : std_logic;
SIGNAL \m7|Mux7~1_combout\ : std_logic;
SIGNAL \m7|Mux6~0_combout\ : std_logic;
SIGNAL \m7|Mux5~0_combout\ : std_logic;
SIGNAL \m7|Mux4~0_combout\ : std_logic;
SIGNAL \m7|Mux3~0_combout\ : std_logic;
SIGNAL \m7|Mux2~0_combout\ : std_logic;
SIGNAL \m7|Mux1~0_combout\ : std_logic;
SIGNAL \m7|Mux0~0_combout\ : std_logic;
SIGNAL \uc|next_state.JGR_exec1~1_combout\ : std_logic;
SIGNAL \uc|cur_state.JGR_exec1~q\ : std_logic;
SIGNAL \uc|cur_state.JGR_exec2~q\ : std_logic;
SIGNAL \uc|cur_state.JGR_exec3~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_B3~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_R3~q\ : std_logic;
SIGNAL \uc|WideOr1~4_combout\ : std_logic;
SIGNAL \uc|WideOr14~combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \m14|Mux3~0_combout\ : std_logic;
SIGNAL \m14|Mux3~1_combout\ : std_logic;
SIGNAL \uc|next_state.ini~0_combout\ : std_logic;
SIGNAL \uc|next_state.ini~1_combout\ : std_logic;
SIGNAL \uc|cur_state.ini~q\ : std_logic;
SIGNAL \m14|Mux4~0_combout\ : std_logic;
SIGNAL \m14|Mux4~1_combout\ : std_logic;
SIGNAL \uc|Selector10~0_combout\ : std_logic;
SIGNAL \uc|Selector10~1_combout\ : std_logic;
SIGNAL \uc|cur_state.busca1~q\ : std_logic;
SIGNAL \uc|next_state.busca2~combout\ : std_logic;
SIGNAL \uc|cur_state.busca2~q\ : std_logic;
SIGNAL \uc|cur_state.decode~q\ : std_logic;
SIGNAL \uc|next_state.STORE_exec_imm_R1~0_combout\ : std_logic;
SIGNAL \uc|next_state.STORE_exec1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec1~q\ : std_logic;
SIGNAL \uc|WideOr9~combout\ : std_logic;
SIGNAL \m14|Mux5~0_combout\ : std_logic;
SIGNAL \m14|Mux5~1_combout\ : std_logic;
SIGNAL \ir|temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \uc|Equal0~0_combout\ : std_logic;
SIGNAL \uc|next_state.STORE_exec_imm_B1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_B1~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_B2~feeder_combout\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_B2~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_B3~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_B4~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_B5~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_A5~DUPLICATE_q\ : std_logic;
SIGNAL \uc|WideOr1~3_combout\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_R4~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec2~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_A5~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|WideOr1~1_combout\ : std_logic;
SIGNAL \uc|WideOr10~0_combout\ : std_logic;
SIGNAL \m14|Mux6~0_combout\ : std_logic;
SIGNAL \m14|Mux6~1_combout\ : std_logic;
SIGNAL \ir|temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \m14|Mux7~0_combout\ : std_logic;
SIGNAL \m14|Mux7~1_combout\ : std_logic;
SIGNAL \ir|temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \uc|next_state.MOV_exec_imm_R1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_imm_R1~q\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_imm_R2~q\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_imm_R3~feeder_combout\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_imm_R3~q\ : std_logic;
SIGNAL \uc|Selector9~0_combout\ : std_logic;
SIGNAL \m6|saida[0]~0_combout\ : std_logic;
SIGNAL \m6|saida[0]~1_combout\ : std_logic;
SIGNAL \m7|Mux7~2_combout\ : std_logic;
SIGNAL \ir|temp[4]~DUPLICATE_q\ : std_logic;
SIGNAL \uc|next_state.STORE_exec_imm_R1~1_combout\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_R1~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_R2~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_R3~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_R4~DUPLICATE_q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_R5~q\ : std_logic;
SIGNAL \uc|cur_state.STORE_exec_imm_B4~q\ : std_logic;
SIGNAL \uc|WideOr1~2_combout\ : std_logic;
SIGNAL \uc|WideOr8~combout\ : std_logic;
SIGNAL \ir|temp[3]~DUPLICATE_q\ : std_logic;
SIGNAL \uc|control_bus[6]~0_combout\ : std_logic;
SIGNAL \uc|control_bus[5]~1_combout\ : std_logic;
SIGNAL \m13|Mux7~0_combout\ : std_logic;
SIGNAL \regOut|temp[6]~0_combout\ : std_logic;
SIGNAL \m13|Mux6~0_combout\ : std_logic;
SIGNAL \m13|Mux5~0_combout\ : std_logic;
SIGNAL \m13|Mux4~0_combout\ : std_logic;
SIGNAL \m13|Mux3~0_combout\ : std_logic;
SIGNAL \m13|Mux2~0_combout\ : std_logic;
SIGNAL \m13|Mux1~0_combout\ : std_logic;
SIGNAL \m13|Mux0~0_combout\ : std_logic;
SIGNAL \uc|WideOr5~0_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_B4~q\ : std_logic;
SIGNAL \uc|WideOr5~1_combout\ : std_logic;
SIGNAL \uc|WideOr1~0_combout\ : std_logic;
SIGNAL \uc|WideOr5~2_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_R4~DUPLICATE_q\ : std_logic;
SIGNAL \uc|WideOr6~2_combout\ : std_logic;
SIGNAL \uc|WideOr6~3_combout\ : std_logic;
SIGNAL \uc|WideOr6~0_combout\ : std_logic;
SIGNAL \uc|cur_state.wait1~0_combout\ : std_logic;
SIGNAL \uc|cur_state.wait1~q\ : std_logic;
SIGNAL \uc|WideOr2~0_combout\ : std_logic;
SIGNAL \uc|WideOr6~combout\ : std_logic;
SIGNAL \uc|WideOr3~0_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_imm_B3~q\ : std_logic;
SIGNAL \uc|WideOr5~3_combout\ : std_logic;
SIGNAL \uc|WideOr5~5_combout\ : std_logic;
SIGNAL \uc|WideOr5~4_combout\ : std_logic;
SIGNAL \uc|WideOr5~6_combout\ : std_logic;
SIGNAL \uc|WideOr5~combout\ : std_logic;
SIGNAL \uc|WideOr4~5_combout\ : std_logic;
SIGNAL \uc|WideOr4~6_combout\ : std_logic;
SIGNAL \uc|WideOr4~2_combout\ : std_logic;
SIGNAL \uc|cur_state.LOAD_exec_R1~q\ : std_logic;
SIGNAL \uc|WideOr4~1_combout\ : std_logic;
SIGNAL \uc|WideOr4~3_combout\ : std_logic;
SIGNAL \uc|WideOr4~combout\ : std_logic;
SIGNAL \uc|cur_state.MOV_exec_imm_B2~q\ : std_logic;
SIGNAL \uc|WideOr3~3_combout\ : std_logic;
SIGNAL \uc|WideOr3~4_combout\ : std_logic;
SIGNAL \uc|WideOr3~combout\ : std_logic;
SIGNAL \uc|WideOr2~4_combout\ : std_logic;
SIGNAL \uc|WideOr2~5_combout\ : std_logic;
SIGNAL \uc|WideOr2~combout\ : std_logic;
SIGNAL \uc|WideOr1~5_combout\ : std_logic;
SIGNAL \uc|WideOr1~6_combout\ : std_logic;
SIGNAL \uc|WideOr1~combout\ : std_logic;
SIGNAL \uc|WideOr0~3_combout\ : std_logic;
SIGNAL \uc|WideOr0~combout\ : std_logic;
SIGNAL \mem|inst1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pc|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regOut|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regA|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regB|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regR|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu|temp1\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ir|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regR|ALT_INV_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regB|ALT_INV_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regA|ALT_INV_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pc|ALT_INV_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uc|ALT_INV_cur_state.JEQ_exec1~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr1~2_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec1~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr3~4_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr3~3_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_B2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_B5~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_A1~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr3~2_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_imm_B2~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr3~1_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.CMP_exec~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr4~6_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr4~5_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_imm_A1~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_A3~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_B1~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr4~4_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr4~3_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr4~2_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_R1~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_imm_R3~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr4~1_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.JMP_exec1~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_R3~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_R1~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr19~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.R_exec~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr5~6_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr5~5_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.JEQ_exec3~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.busca2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_A5~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.R_exec_imm2~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr5~4_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_R3~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_R5~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_A1~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.JMP_exec3~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.in_b~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_B~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.Pc~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_A1~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr5~3_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_imm_A3~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_A5~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_B3~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.JGR_exec3~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_imm_R1~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_B4~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_R1~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_B1~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.CMP_exec_imm2~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr6~3_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr6~2_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.in_a~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_A4~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_A2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.busca1~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr6~1_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_B6~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_R2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_R4~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.JMP_exec2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.R_exec_imm1~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_imm_B3~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_A~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_imm_A2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_A4~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_B2~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.wait1~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_R2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.JGR_exec2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.JEQ_exec2~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr5~2_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr5~1_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_imm_B1~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_B4~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.JGR_exec4~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.JEQ_exec4~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.JMP_exec4~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_imm_R2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_B5~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_B2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.CMP_exec_imm3~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.decode~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_B1~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_A2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_R2~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_A6~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr29~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.in_r~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.MOV_exec_R~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_R6~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.R_exec_imm3~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_R4~q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_A2~q\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \uc|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_next_state.STORE_exec_imm_R1~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_next_state.in_a~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_next_state.MOV_exec_imm_B1~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_saida[7]~14_combout\ : std_logic;
SIGNAL \m11|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \m12|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_saida[6]~12_combout\ : std_logic;
SIGNAL \m11|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \m12|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_saida[5]~10_combout\ : std_logic;
SIGNAL \m11|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \m12|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_saida[4]~8_combout\ : std_logic;
SIGNAL \m11|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \m12|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_saida[3]~6_combout\ : std_logic;
SIGNAL \m11|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \m12|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_saida[2]~4_combout\ : std_logic;
SIGNAL \m11|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \m12|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \m11|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \m12|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \regR|ALT_INV_temp[0]~2_combout\ : std_logic;
SIGNAL \uc|ALT_INV_next_state.JGR_exec1~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \uc|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \m6|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_control_bus[12]~4_combout\ : std_logic;
SIGNAL \regR|ALT_INV_temp[0]~1_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr22~0_combout\ : std_logic;
SIGNAL \m11|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \m12|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_control_bus[14]~3_combout\ : std_logic;
SIGNAL \uc|ALT_INV_control_bus[13]~2_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr22~combout\ : std_logic;
SIGNAL \regR|ALT_INV_temp[0]~0_combout\ : std_logic;
SIGNAL \regB|ALT_INV_temp[1]~1_combout\ : std_logic;
SIGNAL \regB|ALT_INV_temp[1]~0_combout\ : std_logic;
SIGNAL \regA|ALT_INV_temp[0]~1_combout\ : std_logic;
SIGNAL \regA|ALT_INV_temp[0]~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr20~0_combout\ : std_logic;
SIGNAL \ir|ALT_INV_temp\ : std_logic_vector(7 DOWNTO 1);
SIGNAL \uc|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.ini~q\ : std_logic;
SIGNAL \uc|ALT_INV_control_bus[5]~1_combout\ : std_logic;
SIGNAL \uc|ALT_INV_control_bus[6]~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr0~3_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr0~2_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_R5~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr1~6_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr1~5_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr1~4_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_A3~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr1~3_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr2~5_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr2~4_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr2~3_combout\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.out1~q\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr2~2_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr2~1_combout\ : std_logic;
SIGNAL \ir|ALT_INV_temp[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ir|ALT_INV_temp[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ir|ALT_INV_temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ir|ALT_INV_temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ir|ALT_INV_temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ir|ALT_INV_temp[3]~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_R5~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_A1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.JGR_exec1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_R1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_A5~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.in_b~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_A5~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_B3~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_B4~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_R1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec2~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_B6~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_R4~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.CMP_exec_imm1~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_B3~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_imm_B4~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_B5~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.LOAD_exec_B2~DUPLICATE_q\ : std_logic;
SIGNAL \uc|ALT_INV_cur_state.STORE_exec_imm_R4~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \alu|ALT_INV_temp1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sinal|ALT_INV_temp~combout\ : std_logic;
SIGNAL \zero|ALT_INV_temp~combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \m14|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \m14|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \m14|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \m14|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \m14|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \m14|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \m14|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \m14|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_control_bus[28]~5_combout\ : std_logic;
SIGNAL \uc|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr10~0_combout\ : std_logic;
SIGNAL \m7|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \m7|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_next_state.ini~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_WideOr33~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_next_state.LOAD_exec_B1~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \uc|ALT_INV_next_state.out1~0_combout\ : std_logic;

BEGIN

ww_sw <= sw;
ww_clk <= clk;
leds <= ww_leds;
reg_pc <= ww_reg_pc;
reg_a <= ww_reg_a;
reg_b <= ww_reg_b;
reg_r <= ww_reg_r;
estado <= ww_estado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \m7|Mux0~0_combout\ & \m7|Mux1~0_combout\ & \m7|Mux2~0_combout\ & \m7|Mux3~0_combout\ & 
\m7|Mux4~0_combout\ & \m7|Mux5~0_combout\ & \m7|Mux6~0_combout\ & \m7|Mux7~2_combout\);

\mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\m14|Mux0~1_combout\ & \m14|Mux1~1_combout\ & \m14|Mux2~1_combout\ & \m14|Mux3~1_combout\ & \m14|Mux4~1_combout\ & \m14|Mux5~1_combout\ & \m14|Mux6~1_combout\ & 
\m14|Mux7~1_combout\);

\mem|inst1|altsyncram_component|auto_generated|q_a\(0) <= \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem|inst1|altsyncram_component|auto_generated|q_a\(1) <= \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem|inst1|altsyncram_component|auto_generated|q_a\(2) <= \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem|inst1|altsyncram_component|auto_generated|q_a\(3) <= \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem|inst1|altsyncram_component|auto_generated|q_a\(4) <= \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem|inst1|altsyncram_component|auto_generated|q_a\(5) <= \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem|inst1|altsyncram_component|auto_generated|q_a\(6) <= \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem|inst1|altsyncram_component|auto_generated|q_a\(7) <= \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\alu|ALT_INV_Add0~1_sumout\ <= NOT \alu|Add0~1_sumout\;
\mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \mem|inst1|altsyncram_component|auto_generated|q_a\(1);
\mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \mem|inst1|altsyncram_component|auto_generated|q_a\(2);
\mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \mem|inst1|altsyncram_component|auto_generated|q_a\(3);
\mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \mem|inst1|altsyncram_component|auto_generated|q_a\(4);
\mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \mem|inst1|altsyncram_component|auto_generated|q_a\(5);
\mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \mem|inst1|altsyncram_component|auto_generated|q_a\(6);
\mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \mem|inst1|altsyncram_component|auto_generated|q_a\(7);
\mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \mem|inst1|altsyncram_component|auto_generated|q_a\(0);
\regR|ALT_INV_temp\(7) <= NOT \regR|temp\(7);
\regR|ALT_INV_temp\(6) <= NOT \regR|temp\(6);
\regR|ALT_INV_temp\(5) <= NOT \regR|temp\(5);
\regR|ALT_INV_temp\(4) <= NOT \regR|temp\(4);
\regR|ALT_INV_temp\(3) <= NOT \regR|temp\(3);
\regR|ALT_INV_temp\(2) <= NOT \regR|temp\(2);
\regR|ALT_INV_temp\(1) <= NOT \regR|temp\(1);
\regR|ALT_INV_temp\(0) <= NOT \regR|temp\(0);
\regB|ALT_INV_temp\(7) <= NOT \regB|temp\(7);
\regB|ALT_INV_temp\(6) <= NOT \regB|temp\(6);
\regB|ALT_INV_temp\(5) <= NOT \regB|temp\(5);
\regB|ALT_INV_temp\(4) <= NOT \regB|temp\(4);
\regB|ALT_INV_temp\(3) <= NOT \regB|temp\(3);
\regB|ALT_INV_temp\(2) <= NOT \regB|temp\(2);
\regB|ALT_INV_temp\(1) <= NOT \regB|temp\(1);
\regB|ALT_INV_temp\(0) <= NOT \regB|temp\(0);
\regA|ALT_INV_temp\(7) <= NOT \regA|temp\(7);
\regA|ALT_INV_temp\(6) <= NOT \regA|temp\(6);
\regA|ALT_INV_temp\(5) <= NOT \regA|temp\(5);
\regA|ALT_INV_temp\(4) <= NOT \regA|temp\(4);
\regA|ALT_INV_temp\(3) <= NOT \regA|temp\(3);
\regA|ALT_INV_temp\(2) <= NOT \regA|temp\(2);
\regA|ALT_INV_temp\(1) <= NOT \regA|temp\(1);
\regA|ALT_INV_temp\(0) <= NOT \regA|temp\(0);
\pc|ALT_INV_temp\(7) <= NOT \pc|temp\(7);
\pc|ALT_INV_temp\(6) <= NOT \pc|temp\(6);
\pc|ALT_INV_temp\(5) <= NOT \pc|temp\(5);
\pc|ALT_INV_temp\(4) <= NOT \pc|temp\(4);
\pc|ALT_INV_temp\(3) <= NOT \pc|temp\(3);
\pc|ALT_INV_temp\(2) <= NOT \pc|temp\(2);
\pc|ALT_INV_temp\(1) <= NOT \pc|temp\(1);
\pc|ALT_INV_temp\(0) <= NOT \pc|temp\(0);
\uc|ALT_INV_cur_state.JEQ_exec1~q\ <= NOT \uc|cur_state.JEQ_exec1~q\;
\uc|ALT_INV_WideOr1~2_combout\ <= NOT \uc|WideOr1~2_combout\;
\uc|ALT_INV_WideOr1~1_combout\ <= NOT \uc|WideOr1~1_combout\;
\uc|ALT_INV_cur_state.STORE_exec1~q\ <= NOT \uc|cur_state.STORE_exec1~q\;
\uc|ALT_INV_WideOr3~4_combout\ <= NOT \uc|WideOr3~4_combout\;
\uc|ALT_INV_WideOr3~3_combout\ <= NOT \uc|WideOr3~3_combout\;
\uc|ALT_INV_cur_state.STORE_exec_imm_B2~q\ <= NOT \uc|cur_state.STORE_exec_imm_B2~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_B5~q\ <= NOT \uc|cur_state.LOAD_exec_imm_B5~q\;
\uc|ALT_INV_cur_state.LOAD_exec_A1~q\ <= NOT \uc|cur_state.LOAD_exec_A1~q\;
\uc|ALT_INV_WideOr3~2_combout\ <= NOT \uc|WideOr3~2_combout\;
\uc|ALT_INV_cur_state.MOV_exec_imm_B2~q\ <= NOT \uc|cur_state.MOV_exec_imm_B2~q\;
\uc|ALT_INV_WideOr3~1_combout\ <= NOT \uc|WideOr3~1_combout\;
\uc|ALT_INV_cur_state.CMP_exec~q\ <= NOT \uc|cur_state.CMP_exec~q\;
\uc|ALT_INV_WideOr4~6_combout\ <= NOT \uc|WideOr4~6_combout\;
\uc|ALT_INV_WideOr4~5_combout\ <= NOT \uc|WideOr4~5_combout\;
\uc|ALT_INV_cur_state.MOV_exec_imm_A1~q\ <= NOT \uc|cur_state.MOV_exec_imm_A1~q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_A3~q\ <= NOT \uc|cur_state.STORE_exec_imm_A3~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_B1~q\ <= NOT \uc|cur_state.LOAD_exec_imm_B1~q\;
\uc|ALT_INV_WideOr4~4_combout\ <= NOT \uc|WideOr4~4_combout\;
\uc|ALT_INV_WideOr4~3_combout\ <= NOT \uc|WideOr4~3_combout\;
\uc|ALT_INV_WideOr4~2_combout\ <= NOT \uc|WideOr4~2_combout\;
\uc|ALT_INV_cur_state.STORE_exec_imm_R1~q\ <= NOT \uc|cur_state.STORE_exec_imm_R1~q\;
\uc|ALT_INV_cur_state.MOV_exec_imm_R3~q\ <= NOT \uc|cur_state.MOV_exec_imm_R3~q\;
\uc|ALT_INV_WideOr4~1_combout\ <= NOT \uc|WideOr4~1_combout\;
\uc|ALT_INV_cur_state.JMP_exec1~q\ <= NOT \uc|cur_state.JMP_exec1~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_R3~q\ <= NOT \uc|cur_state.LOAD_exec_imm_R3~q\;
\uc|ALT_INV_cur_state.LOAD_exec_R1~q\ <= NOT \uc|cur_state.LOAD_exec_R1~q\;
\uc|ALT_INV_WideOr19~0_combout\ <= NOT \uc|WideOr19~0_combout\;
\uc|ALT_INV_WideOr4~0_combout\ <= NOT \uc|WideOr4~0_combout\;
\uc|ALT_INV_cur_state.R_exec~q\ <= NOT \uc|cur_state.R_exec~q\;
\uc|ALT_INV_WideOr5~6_combout\ <= NOT \uc|WideOr5~6_combout\;
\uc|ALT_INV_WideOr5~5_combout\ <= NOT \uc|WideOr5~5_combout\;
\uc|ALT_INV_cur_state.JEQ_exec3~q\ <= NOT \uc|cur_state.JEQ_exec3~q\;
\uc|ALT_INV_cur_state.busca2~q\ <= NOT \uc|cur_state.busca2~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_A5~q\ <= NOT \uc|cur_state.LOAD_exec_imm_A5~q\;
\uc|ALT_INV_cur_state.R_exec_imm2~q\ <= NOT \uc|cur_state.R_exec_imm2~q\;
\uc|ALT_INV_WideOr5~4_combout\ <= NOT \uc|WideOr5~4_combout\;
\uc|ALT_INV_cur_state.STORE_exec_imm_R3~q\ <= NOT \uc|cur_state.STORE_exec_imm_R3~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_R5~q\ <= NOT \uc|cur_state.LOAD_exec_imm_R5~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_A1~q\ <= NOT \uc|cur_state.LOAD_exec_imm_A1~q\;
\uc|ALT_INV_cur_state.JMP_exec3~q\ <= NOT \uc|cur_state.JMP_exec3~q\;
\uc|ALT_INV_cur_state.in_b~q\ <= NOT \uc|cur_state.in_b~q\;
\uc|ALT_INV_cur_state.MOV_exec_B~q\ <= NOT \uc|cur_state.MOV_exec_B~q\;
\uc|ALT_INV_cur_state.Pc~q\ <= NOT \uc|cur_state.Pc~q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_A1~q\ <= NOT \uc|cur_state.STORE_exec_imm_A1~q\;
\uc|ALT_INV_WideOr5~3_combout\ <= NOT \uc|WideOr5~3_combout\;
\uc|ALT_INV_cur_state.MOV_exec_imm_A3~q\ <= NOT \uc|cur_state.MOV_exec_imm_A3~q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_A5~q\ <= NOT \uc|cur_state.STORE_exec_imm_A5~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_B3~q\ <= NOT \uc|cur_state.LOAD_exec_imm_B3~q\;
\uc|ALT_INV_cur_state.JGR_exec3~q\ <= NOT \uc|cur_state.JGR_exec3~q\;
\uc|ALT_INV_WideOr3~0_combout\ <= NOT \uc|WideOr3~0_combout\;
\uc|ALT_INV_cur_state.MOV_exec_imm_R1~q\ <= NOT \uc|cur_state.MOV_exec_imm_R1~q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_B4~q\ <= NOT \uc|cur_state.STORE_exec_imm_B4~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_R1~q\ <= NOT \uc|cur_state.LOAD_exec_imm_R1~q\;
\uc|ALT_INV_cur_state.LOAD_exec_B1~q\ <= NOT \uc|cur_state.LOAD_exec_B1~q\;
\uc|ALT_INV_cur_state.CMP_exec_imm2~q\ <= NOT \uc|cur_state.CMP_exec_imm2~q\;
\uc|ALT_INV_WideOr6~3_combout\ <= NOT \uc|WideOr6~3_combout\;
\uc|ALT_INV_WideOr6~2_combout\ <= NOT \uc|WideOr6~2_combout\;
\uc|ALT_INV_cur_state.in_a~q\ <= NOT \uc|cur_state.in_a~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_A4~q\ <= NOT \uc|cur_state.LOAD_exec_imm_A4~q\;
\uc|ALT_INV_cur_state.LOAD_exec_A2~q\ <= NOT \uc|cur_state.LOAD_exec_A2~q\;
\uc|ALT_INV_cur_state.busca1~q\ <= NOT \uc|cur_state.busca1~q\;
\uc|ALT_INV_WideOr6~1_combout\ <= NOT \uc|WideOr6~1_combout\;
\uc|ALT_INV_cur_state.STORE_exec2~q\ <= NOT \uc|cur_state.STORE_exec2~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_B6~q\ <= NOT \uc|cur_state.LOAD_exec_imm_B6~q\;
\uc|ALT_INV_cur_state.LOAD_exec_R2~q\ <= NOT \uc|cur_state.LOAD_exec_R2~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_R4~q\ <= NOT \uc|cur_state.LOAD_exec_imm_R4~q\;
\uc|ALT_INV_cur_state.JMP_exec2~q\ <= NOT \uc|cur_state.JMP_exec2~q\;
\uc|ALT_INV_cur_state.R_exec_imm1~q\ <= NOT \uc|cur_state.R_exec_imm1~q\;
\uc|ALT_INV_WideOr6~0_combout\ <= NOT \uc|WideOr6~0_combout\;
\uc|ALT_INV_cur_state.MOV_exec_imm_B3~q\ <= NOT \uc|cur_state.MOV_exec_imm_B3~q\;
\uc|ALT_INV_cur_state.MOV_exec_A~q\ <= NOT \uc|cur_state.MOV_exec_A~q\;
\uc|ALT_INV_cur_state.MOV_exec_imm_A2~q\ <= NOT \uc|cur_state.MOV_exec_imm_A2~q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_A4~q\ <= NOT \uc|cur_state.STORE_exec_imm_A4~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_B2~q\ <= NOT \uc|cur_state.LOAD_exec_imm_B2~q\;
\uc|ALT_INV_WideOr2~0_combout\ <= NOT \uc|WideOr2~0_combout\;
\uc|ALT_INV_cur_state.wait1~q\ <= NOT \uc|cur_state.wait1~q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_R2~q\ <= NOT \uc|cur_state.STORE_exec_imm_R2~q\;
\uc|ALT_INV_cur_state.JGR_exec2~q\ <= NOT \uc|cur_state.JGR_exec2~q\;
\uc|ALT_INV_cur_state.JEQ_exec2~q\ <= NOT \uc|cur_state.JEQ_exec2~q\;
\uc|ALT_INV_WideOr5~2_combout\ <= NOT \uc|WideOr5~2_combout\;
\uc|ALT_INV_WideOr5~1_combout\ <= NOT \uc|WideOr5~1_combout\;
\uc|ALT_INV_cur_state.MOV_exec_imm_B1~q\ <= NOT \uc|cur_state.MOV_exec_imm_B1~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_B4~q\ <= NOT \uc|cur_state.LOAD_exec_imm_B4~q\;
\uc|ALT_INV_cur_state.JGR_exec4~q\ <= NOT \uc|cur_state.JGR_exec4~q\;
\uc|ALT_INV_cur_state.JEQ_exec4~q\ <= NOT \uc|cur_state.JEQ_exec4~q\;
\uc|ALT_INV_cur_state.JMP_exec4~q\ <= NOT \uc|cur_state.JMP_exec4~q\;
\uc|ALT_INV_WideOr5~0_combout\ <= NOT \uc|WideOr5~0_combout\;
\uc|ALT_INV_cur_state.MOV_exec_imm_R2~q\ <= NOT \uc|cur_state.MOV_exec_imm_R2~q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_B5~q\ <= NOT \uc|cur_state.STORE_exec_imm_B5~q\;
\uc|ALT_INV_cur_state.LOAD_exec_B2~q\ <= NOT \uc|cur_state.LOAD_exec_B2~q\;
\uc|ALT_INV_cur_state.CMP_exec_imm3~q\ <= NOT \uc|cur_state.CMP_exec_imm3~q\;
\uc|ALT_INV_cur_state.decode~q\ <= NOT \uc|cur_state.decode~q\;
\uc|ALT_INV_WideOr1~0_combout\ <= NOT \uc|WideOr1~0_combout\;
\uc|ALT_INV_cur_state.STORE_exec_imm_B1~q\ <= NOT \uc|cur_state.STORE_exec_imm_B1~q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_A2~q\ <= NOT \uc|cur_state.STORE_exec_imm_A2~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_R2~q\ <= NOT \uc|cur_state.LOAD_exec_imm_R2~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_A6~q\ <= NOT \uc|cur_state.LOAD_exec_imm_A6~q\;
\uc|ALT_INV_WideOr29~0_combout\ <= NOT \uc|WideOr29~0_combout\;
\uc|ALT_INV_cur_state.in_r~q\ <= NOT \uc|cur_state.in_r~q\;
\uc|ALT_INV_cur_state.MOV_exec_R~q\ <= NOT \uc|cur_state.MOV_exec_R~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_R6~q\ <= NOT \uc|cur_state.LOAD_exec_imm_R6~q\;
\uc|ALT_INV_cur_state.R_exec_imm3~q\ <= NOT \uc|cur_state.R_exec_imm3~q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_R4~q\ <= NOT \uc|cur_state.STORE_exec_imm_R4~q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_A2~q\ <= NOT \uc|cur_state.LOAD_exec_imm_A2~q\;
\alu|ALT_INV_Add0~29_sumout\ <= NOT \alu|Add0~29_sumout\;
\alu|ALT_INV_Add0~25_sumout\ <= NOT \alu|Add0~25_sumout\;
\alu|ALT_INV_Add0~21_sumout\ <= NOT \alu|Add0~21_sumout\;
\alu|ALT_INV_Add0~17_sumout\ <= NOT \alu|Add0~17_sumout\;
\alu|ALT_INV_Add0~13_sumout\ <= NOT \alu|Add0~13_sumout\;
\alu|ALT_INV_Add0~9_sumout\ <= NOT \alu|Add0~9_sumout\;
\alu|ALT_INV_Add0~5_sumout\ <= NOT \alu|Add0~5_sumout\;
\uc|ALT_INV_Mux3~0_combout\ <= NOT \uc|Mux3~0_combout\;
\uc|ALT_INV_Equal0~0_combout\ <= NOT \uc|Equal0~0_combout\;
\uc|ALT_INV_next_state.STORE_exec_imm_R1~0_combout\ <= NOT \uc|next_state.STORE_exec_imm_R1~0_combout\;
\uc|ALT_INV_next_state.in_a~0_combout\ <= NOT \uc|next_state.in_a~0_combout\;
\uc|ALT_INV_Mux5~0_combout\ <= NOT \uc|Mux5~0_combout\;
\uc|ALT_INV_next_state.MOV_exec_imm_B1~0_combout\ <= NOT \uc|next_state.MOV_exec_imm_B1~0_combout\;
\m6|ALT_INV_saida[7]~14_combout\ <= NOT \m6|saida[7]~14_combout\;
\m11|ALT_INV_Mux0~0_combout\ <= NOT \m11|Mux0~0_combout\;
\m12|ALT_INV_Mux0~0_combout\ <= NOT \m12|Mux0~0_combout\;
\m6|ALT_INV_saida[6]~12_combout\ <= NOT \m6|saida[6]~12_combout\;
\m11|ALT_INV_Mux1~0_combout\ <= NOT \m11|Mux1~0_combout\;
\m12|ALT_INV_Mux1~0_combout\ <= NOT \m12|Mux1~0_combout\;
\m6|ALT_INV_saida[5]~10_combout\ <= NOT \m6|saida[5]~10_combout\;
\m11|ALT_INV_Mux2~0_combout\ <= NOT \m11|Mux2~0_combout\;
\m12|ALT_INV_Mux2~0_combout\ <= NOT \m12|Mux2~0_combout\;
\m6|ALT_INV_saida[4]~8_combout\ <= NOT \m6|saida[4]~8_combout\;
\m11|ALT_INV_Mux3~0_combout\ <= NOT \m11|Mux3~0_combout\;
\m12|ALT_INV_Mux3~0_combout\ <= NOT \m12|Mux3~0_combout\;
\m6|ALT_INV_saida[3]~6_combout\ <= NOT \m6|saida[3]~6_combout\;
\m11|ALT_INV_Mux4~0_combout\ <= NOT \m11|Mux4~0_combout\;
\m12|ALT_INV_Mux4~0_combout\ <= NOT \m12|Mux4~0_combout\;
\m6|ALT_INV_saida[2]~4_combout\ <= NOT \m6|saida[2]~4_combout\;
\m11|ALT_INV_Mux5~0_combout\ <= NOT \m11|Mux5~0_combout\;
\m12|ALT_INV_Mux5~0_combout\ <= NOT \m12|Mux5~0_combout\;
\m6|ALT_INV_saida[1]~2_combout\ <= NOT \m6|saida[1]~2_combout\;
\m11|ALT_INV_Mux6~0_combout\ <= NOT \m11|Mux6~0_combout\;
\m12|ALT_INV_Mux6~0_combout\ <= NOT \m12|Mux6~0_combout\;
\regR|ALT_INV_temp[0]~2_combout\ <= NOT \regR|temp[0]~2_combout\;
\uc|ALT_INV_next_state.JGR_exec1~0_combout\ <= NOT \uc|next_state.JGR_exec1~0_combout\;
\uc|ALT_INV_Selector8~1_combout\ <= NOT \uc|Selector8~1_combout\;
\uc|ALT_INV_Selector8~0_combout\ <= NOT \uc|Selector8~0_combout\;
\uc|ALT_INV_Selector9~0_combout\ <= NOT \uc|Selector9~0_combout\;
\m6|ALT_INV_saida[0]~0_combout\ <= NOT \m6|saida[0]~0_combout\;
\uc|ALT_INV_control_bus[12]~4_combout\ <= NOT \uc|control_bus[12]~4_combout\;
\regR|ALT_INV_temp[0]~1_combout\ <= NOT \regR|temp[0]~1_combout\;
\uc|ALT_INV_WideOr22~0_combout\ <= NOT \uc|WideOr22~0_combout\;
\m11|ALT_INV_Mux7~0_combout\ <= NOT \m11|Mux7~0_combout\;
\m12|ALT_INV_Mux7~0_combout\ <= NOT \m12|Mux7~0_combout\;
\uc|ALT_INV_control_bus[14]~3_combout\ <= NOT \uc|control_bus[14]~3_combout\;
\uc|ALT_INV_control_bus[13]~2_combout\ <= NOT \uc|control_bus[13]~2_combout\;
\uc|ALT_INV_WideOr22~combout\ <= NOT \uc|WideOr22~combout\;
\regR|ALT_INV_temp[0]~0_combout\ <= NOT \regR|temp[0]~0_combout\;
\regB|ALT_INV_temp[1]~1_combout\ <= NOT \regB|temp[1]~1_combout\;
\regB|ALT_INV_temp[1]~0_combout\ <= NOT \regB|temp[1]~0_combout\;
\regA|ALT_INV_temp[0]~1_combout\ <= NOT \regA|temp[0]~1_combout\;
\regA|ALT_INV_temp[0]~0_combout\ <= NOT \regA|temp[0]~0_combout\;
\uc|ALT_INV_WideOr20~0_combout\ <= NOT \uc|WideOr20~0_combout\;
\ir|ALT_INV_temp\(7) <= NOT \ir|temp\(7);
\ir|ALT_INV_temp\(6) <= NOT \ir|temp\(6);
\ir|ALT_INV_temp\(5) <= NOT \ir|temp\(5);
\ir|ALT_INV_temp\(4) <= NOT \ir|temp\(4);
\ir|ALT_INV_temp\(1) <= NOT \ir|temp\(1);
\uc|ALT_INV_WideOr7~0_combout\ <= NOT \uc|WideOr7~0_combout\;
\uc|ALT_INV_cur_state.ini~q\ <= NOT \uc|cur_state.ini~q\;
\uc|ALT_INV_control_bus[5]~1_combout\ <= NOT \uc|control_bus[5]~1_combout\;
\ir|ALT_INV_temp\(2) <= NOT \ir|temp\(2);
\uc|ALT_INV_control_bus[6]~0_combout\ <= NOT \uc|control_bus[6]~0_combout\;
\ir|ALT_INV_temp\(3) <= NOT \ir|temp\(3);
\uc|ALT_INV_WideOr0~3_combout\ <= NOT \uc|WideOr0~3_combout\;
\uc|ALT_INV_WideOr0~2_combout\ <= NOT \uc|WideOr0~2_combout\;
\uc|ALT_INV_WideOr0~1_combout\ <= NOT \uc|WideOr0~1_combout\;
\uc|ALT_INV_WideOr0~0_combout\ <= NOT \uc|WideOr0~0_combout\;
\uc|ALT_INV_cur_state.STORE_exec_imm_R5~q\ <= NOT \uc|cur_state.STORE_exec_imm_R5~q\;
\uc|ALT_INV_WideOr1~6_combout\ <= NOT \uc|WideOr1~6_combout\;
\uc|ALT_INV_WideOr1~5_combout\ <= NOT \uc|WideOr1~5_combout\;
\uc|ALT_INV_WideOr1~4_combout\ <= NOT \uc|WideOr1~4_combout\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_A3~q\ <= NOT \uc|cur_state.LOAD_exec_imm_A3~q\;
\uc|ALT_INV_WideOr1~3_combout\ <= NOT \uc|WideOr1~3_combout\;
\uc|ALT_INV_WideOr2~5_combout\ <= NOT \uc|WideOr2~5_combout\;
\uc|ALT_INV_WideOr2~4_combout\ <= NOT \uc|WideOr2~4_combout\;
\uc|ALT_INV_WideOr2~3_combout\ <= NOT \uc|WideOr2~3_combout\;
\uc|ALT_INV_cur_state.out1~q\ <= NOT \uc|cur_state.out1~q\;
\uc|ALT_INV_WideOr2~2_combout\ <= NOT \uc|WideOr2~2_combout\;
\uc|ALT_INV_WideOr2~1_combout\ <= NOT \uc|WideOr2~1_combout\;
\ir|ALT_INV_temp[7]~DUPLICATE_q\ <= NOT \ir|temp[7]~DUPLICATE_q\;
\ir|ALT_INV_temp[4]~DUPLICATE_q\ <= NOT \ir|temp[4]~DUPLICATE_q\;
\ir|ALT_INV_temp[1]~DUPLICATE_q\ <= NOT \ir|temp[1]~DUPLICATE_q\;
\ir|ALT_INV_temp[0]~DUPLICATE_q\ <= NOT \ir|temp[0]~DUPLICATE_q\;
\ir|ALT_INV_temp[2]~DUPLICATE_q\ <= NOT \ir|temp[2]~DUPLICATE_q\;
\ir|ALT_INV_temp[3]~DUPLICATE_q\ <= NOT \ir|temp[3]~DUPLICATE_q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_R5~DUPLICATE_q\ <= NOT \uc|cur_state.STORE_exec_imm_R5~DUPLICATE_q\;
\uc|ALT_INV_cur_state.STORE_exec1~DUPLICATE_q\ <= NOT \uc|cur_state.STORE_exec1~DUPLICATE_q\;
\uc|ALT_INV_cur_state.LOAD_exec_A1~DUPLICATE_q\ <= NOT \uc|cur_state.LOAD_exec_A1~DUPLICATE_q\;
\uc|ALT_INV_cur_state.JGR_exec1~DUPLICATE_q\ <= NOT \uc|cur_state.JGR_exec1~DUPLICATE_q\;
\uc|ALT_INV_cur_state.LOAD_exec_R1~DUPLICATE_q\ <= NOT \uc|cur_state.LOAD_exec_R1~DUPLICATE_q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_A5~DUPLICATE_q\ <= NOT \uc|cur_state.LOAD_exec_imm_A5~DUPLICATE_q\;
\uc|ALT_INV_cur_state.in_b~DUPLICATE_q\ <= NOT \uc|cur_state.in_b~DUPLICATE_q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_A5~DUPLICATE_q\ <= NOT \uc|cur_state.STORE_exec_imm_A5~DUPLICATE_q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_B3~DUPLICATE_q\ <= NOT \uc|cur_state.LOAD_exec_imm_B3~DUPLICATE_q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_B4~DUPLICATE_q\ <= NOT \uc|cur_state.STORE_exec_imm_B4~DUPLICATE_q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_R1~DUPLICATE_q\ <= NOT \uc|cur_state.LOAD_exec_imm_R1~DUPLICATE_q\;
\uc|ALT_INV_cur_state.STORE_exec2~DUPLICATE_q\ <= NOT \uc|cur_state.STORE_exec2~DUPLICATE_q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_B6~DUPLICATE_q\ <= NOT \uc|cur_state.LOAD_exec_imm_B6~DUPLICATE_q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_R4~DUPLICATE_q\ <= NOT \uc|cur_state.LOAD_exec_imm_R4~DUPLICATE_q\;
\uc|ALT_INV_cur_state.CMP_exec_imm1~DUPLICATE_q\ <= NOT \uc|cur_state.CMP_exec_imm1~DUPLICATE_q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_B3~DUPLICATE_q\ <= NOT \uc|cur_state.STORE_exec_imm_B3~DUPLICATE_q\;
\uc|ALT_INV_cur_state.LOAD_exec_imm_B4~DUPLICATE_q\ <= NOT \uc|cur_state.LOAD_exec_imm_B4~DUPLICATE_q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_B5~DUPLICATE_q\ <= NOT \uc|cur_state.STORE_exec_imm_B5~DUPLICATE_q\;
\uc|ALT_INV_cur_state.LOAD_exec_B2~DUPLICATE_q\ <= NOT \uc|cur_state.LOAD_exec_B2~DUPLICATE_q\;
\uc|ALT_INV_cur_state.STORE_exec_imm_R4~DUPLICATE_q\ <= NOT \uc|cur_state.STORE_exec_imm_R4~DUPLICATE_q\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\alu|ALT_INV_temp1\(7) <= NOT \alu|temp1\(7);
\alu|ALT_INV_temp1\(6) <= NOT \alu|temp1\(6);
\alu|ALT_INV_temp1\(5) <= NOT \alu|temp1\(5);
\alu|ALT_INV_temp1\(4) <= NOT \alu|temp1\(4);
\alu|ALT_INV_temp1\(3) <= NOT \alu|temp1\(3);
\alu|ALT_INV_temp1\(2) <= NOT \alu|temp1\(2);
\alu|ALT_INV_temp1\(1) <= NOT \alu|temp1\(1);
\alu|ALT_INV_temp1\(0) <= NOT \alu|temp1\(0);
\sinal|ALT_INV_temp~combout\ <= NOT \sinal|temp~combout\;
\zero|ALT_INV_temp~combout\ <= NOT \zero|temp~combout\;
\alu|ALT_INV_Mux22~0_combout\ <= NOT \alu|Mux22~0_combout\;
\m14|ALT_INV_Mux0~0_combout\ <= NOT \m14|Mux0~0_combout\;
\m14|ALT_INV_Mux1~0_combout\ <= NOT \m14|Mux1~0_combout\;
\m14|ALT_INV_Mux2~0_combout\ <= NOT \m14|Mux2~0_combout\;
\m14|ALT_INV_Mux3~0_combout\ <= NOT \m14|Mux3~0_combout\;
\m14|ALT_INV_Mux4~0_combout\ <= NOT \m14|Mux4~0_combout\;
\m14|ALT_INV_Mux5~0_combout\ <= NOT \m14|Mux5~0_combout\;
\m14|ALT_INV_Mux6~0_combout\ <= NOT \m14|Mux6~0_combout\;
\m14|ALT_INV_Mux7~0_combout\ <= NOT \m14|Mux7~0_combout\;
\uc|ALT_INV_control_bus[28]~5_combout\ <= NOT \uc|control_bus[28]~5_combout\;
\uc|ALT_INV_Selector0~0_combout\ <= NOT \uc|Selector0~0_combout\;
\uc|ALT_INV_WideOr9~combout\ <= NOT \uc|WideOr9~combout\;
\uc|ALT_INV_WideOr10~0_combout\ <= NOT \uc|WideOr10~0_combout\;
\m7|ALT_INV_Mux7~1_combout\ <= NOT \m7|Mux7~1_combout\;
\m7|ALT_INV_Mux7~0_combout\ <= NOT \m7|Mux7~0_combout\;
\alu|ALT_INV_Equal0~1_combout\ <= NOT \alu|Equal0~1_combout\;
\alu|ALT_INV_Equal0~0_combout\ <= NOT \alu|Equal0~0_combout\;
\uc|ALT_INV_next_state.ini~0_combout\ <= NOT \uc|next_state.ini~0_combout\;
\uc|ALT_INV_Mux4~0_combout\ <= NOT \uc|Mux4~0_combout\;
\uc|ALT_INV_WideOr33~0_combout\ <= NOT \uc|WideOr33~0_combout\;
\uc|ALT_INV_next_state.LOAD_exec_B1~0_combout\ <= NOT \uc|next_state.LOAD_exec_B1~0_combout\;
\uc|ALT_INV_Selector10~0_combout\ <= NOT \uc|Selector10~0_combout\;
\uc|ALT_INV_next_state.out1~0_combout\ <= NOT \uc|next_state.out1~0_combout\;

-- Location: IOOBUF_X0_Y18_N79
\leds[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regOut|temp\(0),
	devoe => ww_devoe,
	o => ww_leds(0));

-- Location: IOOBUF_X0_Y18_N96
\leds[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regOut|temp\(1),
	devoe => ww_devoe,
	o => ww_leds(1));

-- Location: IOOBUF_X0_Y18_N62
\leds[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regOut|temp\(2),
	devoe => ww_devoe,
	o => ww_leds(2));

-- Location: IOOBUF_X0_Y18_N45
\leds[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regOut|temp\(3),
	devoe => ww_devoe,
	o => ww_leds(3));

-- Location: IOOBUF_X0_Y19_N39
\leds[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regOut|temp\(4),
	devoe => ww_devoe,
	o => ww_leds(4));

-- Location: IOOBUF_X0_Y19_N56
\leds[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regOut|temp\(5),
	devoe => ww_devoe,
	o => ww_leds(5));

-- Location: IOOBUF_X0_Y19_N5
\leds[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regOut|temp\(6),
	devoe => ww_devoe,
	o => ww_leds(6));

-- Location: IOOBUF_X0_Y19_N22
\leds[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regOut|temp\(7),
	devoe => ww_devoe,
	o => ww_leds(7));

-- Location: IOOBUF_X38_Y0_N53
\reg_pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|temp\(0),
	devoe => ww_devoe,
	o => ww_reg_pc(0));

-- Location: IOOBUF_X36_Y0_N2
\reg_pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|temp\(1),
	devoe => ww_devoe,
	o => ww_reg_pc(1));

-- Location: IOOBUF_X43_Y0_N36
\reg_pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|temp\(2),
	devoe => ww_devoe,
	o => ww_reg_pc(2));

-- Location: IOOBUF_X43_Y0_N53
\reg_pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|temp\(3),
	devoe => ww_devoe,
	o => ww_reg_pc(3));

-- Location: IOOBUF_X33_Y0_N93
\reg_pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|temp\(4),
	devoe => ww_devoe,
	o => ww_reg_pc(4));

-- Location: IOOBUF_X32_Y45_N93
\reg_pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|temp\(5),
	devoe => ww_devoe,
	o => ww_reg_pc(5));

-- Location: IOOBUF_X43_Y0_N19
\reg_pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|temp\(6),
	devoe => ww_devoe,
	o => ww_reg_pc(6));

-- Location: IOOBUF_X32_Y45_N76
\reg_pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|temp\(7),
	devoe => ww_devoe,
	o => ww_reg_pc(7));

-- Location: IOOBUF_X23_Y0_N76
\reg_a[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|temp\(0),
	devoe => ww_devoe,
	o => ww_reg_a(0));

-- Location: IOOBUF_X23_Y0_N59
\reg_a[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|temp\(1),
	devoe => ww_devoe,
	o => ww_reg_a(1));

-- Location: IOOBUF_X22_Y0_N53
\reg_a[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|temp\(2),
	devoe => ww_devoe,
	o => ww_reg_a(2));

-- Location: IOOBUF_X24_Y0_N2
\reg_a[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|temp\(3),
	devoe => ww_devoe,
	o => ww_reg_a(3));

-- Location: IOOBUF_X29_Y0_N2
\reg_a[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|temp\(4),
	devoe => ww_devoe,
	o => ww_reg_a(4));

-- Location: IOOBUF_X24_Y0_N19
\reg_a[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|temp\(5),
	devoe => ww_devoe,
	o => ww_reg_a(5));

-- Location: IOOBUF_X19_Y0_N53
\reg_a[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|temp\(6),
	devoe => ww_devoe,
	o => ww_reg_a(6));

-- Location: IOOBUF_X33_Y0_N76
\reg_a[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regA|temp\(7),
	devoe => ww_devoe,
	o => ww_reg_a(7));

-- Location: IOOBUF_X23_Y0_N42
\reg_b[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|temp\(0),
	devoe => ww_devoe,
	o => ww_reg_b(0));

-- Location: IOOBUF_X22_Y0_N36
\reg_b[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|temp\(1),
	devoe => ww_devoe,
	o => ww_reg_b(1));

-- Location: IOOBUF_X22_Y0_N2
\reg_b[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|temp\(2),
	devoe => ww_devoe,
	o => ww_reg_b(2));

-- Location: IOOBUF_X23_Y0_N93
\reg_b[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|temp\(3),
	devoe => ww_devoe,
	o => ww_reg_b(3));

-- Location: IOOBUF_X22_Y0_N19
\reg_b[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|temp\(4),
	devoe => ww_devoe,
	o => ww_reg_b(4));

-- Location: IOOBUF_X24_Y0_N36
\reg_b[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|temp\(5),
	devoe => ww_devoe,
	o => ww_reg_b(5));

-- Location: IOOBUF_X25_Y0_N36
\reg_b[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|temp\(6),
	devoe => ww_devoe,
	o => ww_reg_b(6));

-- Location: IOOBUF_X38_Y0_N19
\reg_b[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regB|temp\(7),
	devoe => ww_devoe,
	o => ww_reg_b(7));

-- Location: IOOBUF_X36_Y0_N19
\reg_r[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regR|temp\(0),
	devoe => ww_devoe,
	o => ww_reg_r(0));

-- Location: IOOBUF_X29_Y0_N36
\reg_r[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regR|temp\(1),
	devoe => ww_devoe,
	o => ww_reg_r(1));

-- Location: IOOBUF_X24_Y0_N53
\reg_r[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regR|temp\(2),
	devoe => ww_devoe,
	o => ww_reg_r(2));

-- Location: IOOBUF_X25_Y0_N2
\reg_r[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regR|temp\(3),
	devoe => ww_devoe,
	o => ww_reg_r(3));

-- Location: IOOBUF_X29_Y0_N53
\reg_r[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regR|temp\(4),
	devoe => ww_devoe,
	o => ww_reg_r(4));

-- Location: IOOBUF_X25_Y0_N19
\reg_r[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regR|temp\(5),
	devoe => ww_devoe,
	o => ww_reg_r(5));

-- Location: IOOBUF_X25_Y0_N53
\reg_r[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regR|temp\(6),
	devoe => ww_devoe,
	o => ww_reg_r(6));

-- Location: IOOBUF_X29_Y0_N19
\reg_r[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regR|temp\(7),
	devoe => ww_devoe,
	o => ww_reg_r(7));

-- Location: IOOBUF_X40_Y0_N76
\estado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uc|WideOr6~combout\,
	devoe => ww_devoe,
	o => ww_estado(0));

-- Location: IOOBUF_X40_Y0_N93
\estado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uc|WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_estado(1));

-- Location: IOOBUF_X38_Y0_N2
\estado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uc|WideOr4~combout\,
	devoe => ww_devoe,
	o => ww_estado(2));

-- Location: IOOBUF_X40_Y0_N42
\estado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uc|WideOr3~combout\,
	devoe => ww_devoe,
	o => ww_estado(3));

-- Location: IOOBUF_X19_Y0_N19
\estado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uc|WideOr2~combout\,
	devoe => ww_devoe,
	o => ww_estado(4));

-- Location: IOOBUF_X38_Y0_N36
\estado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uc|WideOr1~combout\,
	devoe => ww_devoe,
	o => ww_estado(5));

-- Location: IOOBUF_X40_Y0_N59
\estado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uc|WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_estado(6));

-- Location: IOIBUF_X10_Y0_N92
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X32_Y4_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \pc|temp\(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \pc|temp\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc|ALT_INV_temp\(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X29_Y4_N10
\ir|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(4),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp\(4));

-- Location: LABCELL_X32_Y4_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \pc|temp\(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \pc|temp\(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc|ALT_INV_temp\(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X32_Y4_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \pc|temp\(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \pc|temp\(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc|ALT_INV_temp\(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X34_Y4_N53
\uc|cur_state.JGR_exec4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.JGR_exec3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JGR_exec4~q\);

-- Location: LABCELL_X32_Y5_N3
\uc|next_state.JMP_exec1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.JMP_exec1~0_combout\ = ( \uc|cur_state.decode~q\ & ( (!\ir|temp[4]~DUPLICATE_q\ & (!\ir|temp\(7) & (\ir|temp\(5) & \ir|temp\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datab => \ir|ALT_INV_temp\(7),
	datac => \ir|ALT_INV_temp\(5),
	datad => \ir|ALT_INV_temp\(6),
	dataf => \uc|ALT_INV_cur_state.decode~q\,
	combout => \uc|next_state.JMP_exec1~0_combout\);

-- Location: FF_X32_Y5_N4
\uc|cur_state.JMP_exec1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.JMP_exec1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JMP_exec1~q\);

-- Location: FF_X34_Y4_N8
\uc|cur_state.JMP_exec2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.JMP_exec1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JMP_exec2~q\);

-- Location: FF_X34_Y4_N55
\uc|cur_state.JMP_exec3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.JMP_exec2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JMP_exec3~q\);

-- Location: FF_X34_Y4_N35
\uc|cur_state.JMP_exec4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.JMP_exec3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JMP_exec4~q\);

-- Location: FF_X29_Y4_N5
\ir|temp[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(7),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp[7]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y3_N36
\uc|next_state.out1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.out1~0_combout\ = ( \ir|temp[4]~DUPLICATE_q\ & ( \uc|cur_state.decode~q\ & ( \ir|temp\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir|ALT_INV_temp\(6),
	datae => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	dataf => \uc|ALT_INV_cur_state.decode~q\,
	combout => \uc|next_state.out1~0_combout\);

-- Location: LABCELL_X31_Y3_N36
\uc|next_state.CMP_exec~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.CMP_exec~0_combout\ = ( \uc|next_state.out1~0_combout\ & ( (!\uc|Equal0~0_combout\ & (!\ir|temp\(5) & !\ir|temp[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_Equal0~0_combout\,
	datac => \ir|ALT_INV_temp\(5),
	datad => \ir|ALT_INV_temp[7]~DUPLICATE_q\,
	dataf => \uc|ALT_INV_next_state.out1~0_combout\,
	combout => \uc|next_state.CMP_exec~0_combout\);

-- Location: FF_X31_Y3_N38
\uc|cur_state.CMP_exec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.CMP_exec~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.CMP_exec~q\);

-- Location: MLABCELL_X34_Y4_N0
\uc|next_state.CMP_exec_imm1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.CMP_exec_imm1~0_combout\ = ( \uc|Equal0~0_combout\ & ( (!\ir|temp\(7) & (!\ir|temp\(5) & \uc|next_state.out1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir|ALT_INV_temp\(7),
	datac => \ir|ALT_INV_temp\(5),
	datad => \uc|ALT_INV_next_state.out1~0_combout\,
	dataf => \uc|ALT_INV_Equal0~0_combout\,
	combout => \uc|next_state.CMP_exec_imm1~0_combout\);

-- Location: FF_X34_Y4_N1
\uc|cur_state.CMP_exec_imm1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.CMP_exec_imm1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.CMP_exec_imm1~q\);

-- Location: FF_X34_Y3_N1
\uc|cur_state.CMP_exec_imm2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.CMP_exec_imm1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.CMP_exec_imm2~q\);

-- Location: FF_X31_Y3_N53
\uc|cur_state.CMP_exec_imm3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.CMP_exec_imm2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.CMP_exec_imm3~q\);

-- Location: LABCELL_X31_Y3_N54
\uc|WideOr22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr22~0_combout\ = ( !\uc|cur_state.CMP_exec_imm3~q\ & ( !\uc|cur_state.CMP_exec~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uc|ALT_INV_cur_state.CMP_exec~q\,
	dataf => \uc|ALT_INV_cur_state.CMP_exec_imm3~q\,
	combout => \uc|WideOr22~0_combout\);

-- Location: LABCELL_X32_Y3_N15
\uc|next_state.JGR_exec1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.JGR_exec1~0_combout\ = (!\ir|temp\(5) & !\ir|temp[4]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir|ALT_INV_temp\(5),
	datad => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	combout => \uc|next_state.JGR_exec1~0_combout\);

-- Location: LABCELL_X31_Y3_N39
\uc|next_state.R_exec_imm1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.R_exec_imm1~0_combout\ = ( \ir|temp\(6) & ( (\uc|next_state.JGR_exec1~0_combout\ & (\uc|Equal0~0_combout\ & (\uc|cur_state.decode~q\ & !\ir|temp[7]~DUPLICATE_q\))) ) ) # ( !\ir|temp\(6) & ( (\uc|Equal0~0_combout\ & (\uc|cur_state.decode~q\ 
-- & !\ir|temp[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_next_state.JGR_exec1~0_combout\,
	datab => \uc|ALT_INV_Equal0~0_combout\,
	datac => \uc|ALT_INV_cur_state.decode~q\,
	datad => \ir|ALT_INV_temp[7]~DUPLICATE_q\,
	dataf => \ir|ALT_INV_temp\(6),
	combout => \uc|next_state.R_exec_imm1~0_combout\);

-- Location: FF_X31_Y3_N41
\uc|cur_state.R_exec_imm1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.R_exec_imm1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.R_exec_imm1~q\);

-- Location: LABCELL_X31_Y3_N57
\uc|next_state.R_exec~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.R_exec~0_combout\ = ( !\uc|Equal0~0_combout\ & ( (!\ir|temp[7]~DUPLICATE_q\ & (\uc|cur_state.decode~q\ & ((!\ir|temp\(6)) # (\uc|next_state.JGR_exec1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010000000000001101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_next_state.JGR_exec1~0_combout\,
	datab => \ir|ALT_INV_temp\(6),
	datac => \ir|ALT_INV_temp[7]~DUPLICATE_q\,
	datad => \uc|ALT_INV_cur_state.decode~q\,
	dataf => \uc|ALT_INV_Equal0~0_combout\,
	combout => \uc|next_state.R_exec~0_combout\);

-- Location: FF_X31_Y3_N59
\uc|cur_state.R_exec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.R_exec~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.R_exec~q\);

-- Location: FF_X32_Y3_N5
\uc|cur_state.R_exec_imm2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.R_exec_imm1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.R_exec_imm2~q\);

-- Location: FF_X31_Y3_N47
\uc|cur_state.R_exec_imm3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.R_exec_imm2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.R_exec_imm3~q\);

-- Location: LABCELL_X32_Y3_N27
\uc|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr4~0_combout\ = ( !\uc|cur_state.R_exec_imm3~q\ & ( (!\uc|cur_state.R_exec_imm1~q\ & (!\uc|cur_state.R_exec~q\ & !\uc|cur_state.R_exec_imm2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.R_exec_imm1~q\,
	datac => \uc|ALT_INV_cur_state.R_exec~q\,
	datad => \uc|ALT_INV_cur_state.R_exec_imm2~q\,
	dataf => \uc|ALT_INV_cur_state.R_exec_imm3~q\,
	combout => \uc|WideOr4~0_combout\);

-- Location: FF_X29_Y4_N50
\ir|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(1),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp\(1));

-- Location: LABCELL_X31_Y3_N21
\uc|WideOr22\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr22~combout\ = ( !\uc|cur_state.R_exec_imm2~q\ & ( !\uc|cur_state.CMP_exec_imm3~q\ & ( (!\uc|cur_state.CMP_exec~q\ & (!\uc|cur_state.R_exec_imm1~q\ & (!\uc|cur_state.R_exec_imm3~q\ & !\uc|cur_state.R_exec~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.CMP_exec~q\,
	datab => \uc|ALT_INV_cur_state.R_exec_imm1~q\,
	datac => \uc|ALT_INV_cur_state.R_exec_imm3~q\,
	datad => \uc|ALT_INV_cur_state.R_exec~q\,
	datae => \uc|ALT_INV_cur_state.R_exec_imm2~q\,
	dataf => \uc|ALT_INV_cur_state.CMP_exec_imm3~q\,
	combout => \uc|WideOr22~combout\);

-- Location: LABCELL_X31_Y3_N9
\uc|control_bus[14]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|control_bus[14]~3_combout\ = ( !\uc|WideOr22~combout\ & ( \ir|temp\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ir|ALT_INV_temp\(1),
	dataf => \uc|ALT_INV_WideOr22~combout\,
	combout => \uc|control_bus[14]~3_combout\);

-- Location: LABCELL_X31_Y3_N6
\uc|control_bus[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|control_bus[13]~2_combout\ = ( !\uc|WideOr22~combout\ & ( \ir|temp[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	dataf => \uc|ALT_INV_WideOr22~combout\,
	combout => \uc|control_bus[13]~2_combout\);

-- Location: LABCELL_X32_Y2_N36
\uc|control_bus[12]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|control_bus[12]~4_combout\ = ( \ir|temp\(6) & ( \uc|cur_state.R_exec~q\ ) ) # ( \ir|temp\(6) & ( !\uc|cur_state.R_exec~q\ & ( ((\uc|cur_state.R_exec_imm1~q\) # (\uc|cur_state.R_exec_imm2~q\)) # (\uc|cur_state.R_exec_imm3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.R_exec_imm3~q\,
	datac => \uc|ALT_INV_cur_state.R_exec_imm2~q\,
	datad => \uc|ALT_INV_cur_state.R_exec_imm1~q\,
	datae => \ir|ALT_INV_temp\(6),
	dataf => \uc|ALT_INV_cur_state.R_exec~q\,
	combout => \uc|control_bus[12]~4_combout\);

-- Location: LABCELL_X32_Y3_N18
\regR|temp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regR|temp[0]~0_combout\ = ( \uc|cur_state.R_exec~q\ & ( \ir|temp\(5) ) ) # ( !\uc|cur_state.R_exec~q\ & ( (\ir|temp\(5) & (((\uc|cur_state.R_exec_imm2~q\) # (\uc|cur_state.R_exec_imm1~q\)) # (\uc|cur_state.R_exec_imm3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.R_exec_imm3~q\,
	datab => \ir|ALT_INV_temp\(5),
	datac => \uc|ALT_INV_cur_state.R_exec_imm1~q\,
	datad => \uc|ALT_INV_cur_state.R_exec_imm2~q\,
	dataf => \uc|ALT_INV_cur_state.R_exec~q\,
	combout => \regR|temp[0]~0_combout\);

-- Location: LABCELL_X32_Y2_N48
\regR|temp[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regR|temp[0]~1_combout\ = ( \uc|WideOr22~0_combout\ & ( (\regR|temp[0]~0_combout\ & !\ir|temp[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regR|ALT_INV_temp[0]~0_combout\,
	datad => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	dataf => \uc|ALT_INV_WideOr22~0_combout\,
	combout => \regR|temp[0]~1_combout\);

-- Location: IOIBUF_X34_Y0_N35
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: MLABCELL_X34_Y4_N48
\uc|next_state.LOAD_exec_B1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.LOAD_exec_B1~0_combout\ = ( \ir|temp\(7) & ( (!\ir|temp\(5) & (\uc|cur_state.decode~q\ & (!\ir|temp\(6) & \ir|temp\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp\(5),
	datab => \uc|ALT_INV_cur_state.decode~q\,
	datac => \ir|ALT_INV_temp\(6),
	datad => \ir|ALT_INV_temp\(4),
	dataf => \ir|ALT_INV_temp\(7),
	combout => \uc|next_state.LOAD_exec_B1~0_combout\);

-- Location: MLABCELL_X34_Y2_N30
\uc|next_state.LOAD_exec_imm_B1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.LOAD_exec_imm_B1~0_combout\ = ( !\ir|temp\(3) & ( \uc|Equal0~0_combout\ & ( (\uc|next_state.LOAD_exec_B1~0_combout\ & \ir|temp[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_next_state.LOAD_exec_B1~0_combout\,
	datac => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datae => \ir|ALT_INV_temp\(3),
	dataf => \uc|ALT_INV_Equal0~0_combout\,
	combout => \uc|next_state.LOAD_exec_imm_B1~0_combout\);

-- Location: FF_X34_Y2_N31
\uc|cur_state.LOAD_exec_imm_B1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.LOAD_exec_imm_B1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_B1~q\);

-- Location: FF_X34_Y4_N28
\uc|cur_state.LOAD_exec_imm_B2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_B1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_B2~q\);

-- Location: LABCELL_X32_Y6_N24
\uc|cur_state.LOAD_exec_imm_B3~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|cur_state.LOAD_exec_imm_B3~feeder_combout\ = ( \uc|cur_state.LOAD_exec_imm_B2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_imm_B2~q\,
	combout => \uc|cur_state.LOAD_exec_imm_B3~feeder_combout\);

-- Location: FF_X32_Y6_N25
\uc|cur_state.LOAD_exec_imm_B3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|cur_state.LOAD_exec_imm_B3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_B3~DUPLICATE_q\);

-- Location: FF_X31_Y4_N11
\uc|cur_state.LOAD_exec_imm_B4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_B3~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_B4~DUPLICATE_q\);

-- Location: FF_X31_Y4_N2
\uc|cur_state.LOAD_exec_imm_B5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_B4~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_B5~q\);

-- Location: FF_X29_Y2_N14
\uc|cur_state.LOAD_exec_imm_B6~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_B5~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_B6~DUPLICATE_q\);

-- Location: LABCELL_X32_Y5_N15
\uc|next_state.MOV_exec_imm_B1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.MOV_exec_imm_B1~0_combout\ = ( \ir|temp[4]~DUPLICATE_q\ & ( \ir|temp\(5) & ( (!\ir|temp\(6) & (\ir|temp\(7) & \uc|cur_state.decode~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp\(6),
	datac => \ir|ALT_INV_temp\(7),
	datad => \uc|ALT_INV_cur_state.decode~q\,
	datae => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	dataf => \ir|ALT_INV_temp\(5),
	combout => \uc|next_state.MOV_exec_imm_B1~0_combout\);

-- Location: MLABCELL_X34_Y5_N39
\uc|next_state.MOV_exec_imm_B1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.MOV_exec_imm_B1~1_combout\ = ( \uc|next_state.MOV_exec_imm_B1~0_combout\ & ( \uc|Equal0~0_combout\ & ( (!\ir|temp[3]~DUPLICATE_q\ & \ir|temp[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[3]~DUPLICATE_q\,
	datac => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datae => \uc|ALT_INV_next_state.MOV_exec_imm_B1~0_combout\,
	dataf => \uc|ALT_INV_Equal0~0_combout\,
	combout => \uc|next_state.MOV_exec_imm_B1~1_combout\);

-- Location: FF_X34_Y5_N40
\uc|cur_state.MOV_exec_imm_B1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.MOV_exec_imm_B1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_imm_B1~q\);

-- Location: FF_X35_Y4_N58
\uc|cur_state.MOV_exec_imm_B2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.MOV_exec_imm_B1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_imm_B2~DUPLICATE_q\);

-- Location: FF_X29_Y2_N29
\uc|cur_state.MOV_exec_imm_B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.MOV_exec_imm_B2~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_imm_B3~q\);

-- Location: LABCELL_X29_Y4_N15
\uc|next_state.LOAD_exec_B1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.LOAD_exec_B1~1_combout\ = ( \uc|next_state.LOAD_exec_B1~0_combout\ & ( (\ir|temp[2]~DUPLICATE_q\ & (!\ir|temp\(3) & !\uc|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datab => \ir|ALT_INV_temp\(3),
	datac => \uc|ALT_INV_Equal0~0_combout\,
	dataf => \uc|ALT_INV_next_state.LOAD_exec_B1~0_combout\,
	combout => \uc|next_state.LOAD_exec_B1~1_combout\);

-- Location: FF_X29_Y4_N17
\uc|cur_state.LOAD_exec_B1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.LOAD_exec_B1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_B1~q\);

-- Location: FF_X29_Y4_N37
\uc|cur_state.LOAD_exec_B2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_B1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_B2~q\);

-- Location: LABCELL_X29_Y2_N51
\uc|WideOr3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr3~2_combout\ = ( !\uc|cur_state.MOV_exec_imm_B3~q\ & ( !\uc|cur_state.LOAD_exec_B2~q\ & ( !\uc|cur_state.LOAD_exec_imm_B6~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_B6~DUPLICATE_q\,
	datae => \uc|ALT_INV_cur_state.MOV_exec_imm_B3~q\,
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_B2~q\,
	combout => \uc|WideOr3~2_combout\);

-- Location: LABCELL_X29_Y5_N15
\uc|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Mux4~0_combout\ = ( !\ir|temp\(3) & ( (\ir|temp[2]~DUPLICATE_q\ & ((!\ir|temp[0]~DUPLICATE_q\) # (!\ir|temp[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datac => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	datad => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \ir|ALT_INV_temp\(3),
	combout => \uc|Mux4~0_combout\);

-- Location: LABCELL_X29_Y5_N12
\uc|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Mux4~1_combout\ = ( \uc|next_state.MOV_exec_imm_B1~0_combout\ & ( \uc|Mux4~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_Mux4~0_combout\,
	dataf => \uc|ALT_INV_next_state.MOV_exec_imm_B1~0_combout\,
	combout => \uc|Mux4~1_combout\);

-- Location: FF_X29_Y5_N14
\uc|cur_state.MOV_exec_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_B~q\);

-- Location: MLABCELL_X28_Y3_N24
\uc|next_state.in_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.in_a~0_combout\ = ( !\ir|temp\(5) & ( \uc|cur_state.decode~q\ & ( (\ir|temp\(6) & (\ir|temp[7]~DUPLICATE_q\ & !\ir|temp[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp\(6),
	datab => \ir|ALT_INV_temp[7]~DUPLICATE_q\,
	datac => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datae => \ir|ALT_INV_temp\(5),
	dataf => \uc|ALT_INV_cur_state.decode~q\,
	combout => \uc|next_state.in_a~0_combout\);

-- Location: LABCELL_X32_Y2_N42
\uc|next_state.in_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.in_b~0_combout\ = ( \uc|next_state.in_a~0_combout\ & ( (\ir|temp[2]~DUPLICATE_q\ & !\ir|temp\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datad => \ir|ALT_INV_temp\(3),
	dataf => \uc|ALT_INV_next_state.in_a~0_combout\,
	combout => \uc|next_state.in_b~0_combout\);

-- Location: FF_X32_Y2_N43
\uc|cur_state.in_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.in_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.in_b~q\);

-- Location: FF_X31_Y3_N5
\ir|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(2),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp\(2));

-- Location: LABCELL_X32_Y2_N57
\uc|next_state.in_r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.in_r~0_combout\ = ( \ir|temp\(3) & ( (!\ir|temp\(2) & \uc|next_state.in_a~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir|ALT_INV_temp\(2),
	datac => \uc|ALT_INV_next_state.in_a~0_combout\,
	datae => \ir|ALT_INV_temp\(3),
	combout => \uc|next_state.in_r~0_combout\);

-- Location: FF_X32_Y2_N59
\uc|cur_state.in_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.in_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.in_r~q\);

-- Location: LABCELL_X32_Y2_N30
\uc|next_state.in_a~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.in_a~1_combout\ = ( \uc|next_state.in_a~0_combout\ & ( (!\ir|temp[2]~DUPLICATE_q\ & !\ir|temp\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datad => \ir|ALT_INV_temp\(3),
	dataf => \uc|ALT_INV_next_state.in_a~0_combout\,
	combout => \uc|next_state.in_a~1_combout\);

-- Location: FF_X32_Y2_N32
\uc|cur_state.in_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.in_a~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.in_a~q\);

-- Location: LABCELL_X32_Y2_N12
\uc|WideOr19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr19~0_combout\ = ( \uc|cur_state.in_a~q\ ) # ( !\uc|cur_state.in_a~q\ & ( (\uc|cur_state.in_r~q\) # (\uc|cur_state.in_b~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_cur_state.in_b~q\,
	datad => \uc|ALT_INV_cur_state.in_r~q\,
	dataf => \uc|ALT_INV_cur_state.in_a~q\,
	combout => \uc|WideOr19~0_combout\);

-- Location: LABCELL_X29_Y5_N21
\regB|temp[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regB|temp[1]~1_combout\ = ( \ir|temp[1]~DUPLICATE_q\ & ( !\uc|WideOr19~0_combout\ & ( (!\uc|WideOr3~2_combout\) # (\uc|cur_state.MOV_exec_B~q\) ) ) ) # ( !\ir|temp[1]~DUPLICATE_q\ & ( !\uc|WideOr19~0_combout\ & ( !\uc|WideOr3~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_WideOr3~2_combout\,
	datac => \uc|ALT_INV_cur_state.MOV_exec_B~q\,
	datae => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \uc|ALT_INV_WideOr19~0_combout\,
	combout => \regB|temp[1]~1_combout\);

-- Location: LABCELL_X29_Y3_N18
\regB|temp[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regB|temp[1]~0_combout\ = ( \ir|temp[1]~DUPLICATE_q\ & ( (!\uc|WideOr19~0_combout\ & ((!\uc|WideOr3~2_combout\) # ((!\uc|cur_state.MOV_exec_B~q\) # (\ir|temp[0]~DUPLICATE_q\)))) ) ) # ( !\ir|temp[1]~DUPLICATE_q\ & ( !\uc|WideOr19~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010001010101010101010101010101010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr19~0_combout\,
	datab => \uc|ALT_INV_WideOr3~2_combout\,
	datac => \uc|ALT_INV_cur_state.MOV_exec_B~q\,
	datad => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	datae => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	combout => \regB|temp[1]~0_combout\);

-- Location: LABCELL_X26_Y4_N54
\m5|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \m5|saida[7]~7_combout\ = ( \regB|temp[1]~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( (\regB|temp[1]~1_combout\) # (\regA|temp\(7)) ) ) ) # ( !\regB|temp[1]~0_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( (!\regB|temp[1]~1_combout\ & ((\sw[7]~input_o\))) # (\regB|temp[1]~1_combout\ & (\regR|temp\(7))) ) ) ) # ( \regB|temp[1]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (\regA|temp\(7) & !\regB|temp[1]~1_combout\) ) ) ) # ( !\regB|temp[1]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( (!\regB|temp[1]~1_combout\ & ((\sw[7]~input_o\))) # (\regB|temp[1]~1_combout\ & (\regR|temp\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|ALT_INV_temp\(7),
	datab => \regR|ALT_INV_temp\(7),
	datac => \ALT_INV_sw[7]~input_o\,
	datad => \regB|ALT_INV_temp[1]~1_combout\,
	datae => \regB|ALT_INV_temp[1]~0_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \m5|saida[7]~7_combout\);

-- Location: LABCELL_X29_Y3_N54
\regB|temp[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regB|temp[1]~2_combout\ = ( \uc|cur_state.MOV_exec_B~q\ & ( \ir|temp[0]~DUPLICATE_q\ & ( (\uc|WideOr3~2_combout\ & !\ir|temp[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_WideOr3~2_combout\,
	datac => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	datae => \uc|ALT_INV_cur_state.MOV_exec_B~q\,
	dataf => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	combout => \regB|temp[1]~2_combout\);

-- Location: FF_X32_Y2_N44
\uc|cur_state.in_b~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.in_b~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.in_b~DUPLICATE_q\);

-- Location: LABCELL_X29_Y3_N48
\uc|WideOr21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr21~combout\ = ( \uc|cur_state.in_b~DUPLICATE_q\ ) # ( !\uc|cur_state.in_b~DUPLICATE_q\ & ( (!\uc|WideOr3~2_combout\) # (\uc|cur_state.MOV_exec_B~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_WideOr3~2_combout\,
	datac => \uc|ALT_INV_cur_state.MOV_exec_B~q\,
	dataf => \uc|ALT_INV_cur_state.in_b~DUPLICATE_q\,
	combout => \uc|WideOr21~combout\);

-- Location: FF_X26_Y4_N56
\regB|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m5|saida[7]~7_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regB|temp[1]~2_combout\,
	ena => \uc|WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regB|temp\(7));

-- Location: LABCELL_X29_Y5_N42
\uc|next_state.MOV_exec_imm_A1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.MOV_exec_imm_A1~0_combout\ = ( \uc|Equal0~0_combout\ & ( \uc|next_state.MOV_exec_imm_B1~0_combout\ & ( (!\ir|temp\(3) & !\ir|temp[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp\(3),
	datac => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datae => \uc|ALT_INV_Equal0~0_combout\,
	dataf => \uc|ALT_INV_next_state.MOV_exec_imm_B1~0_combout\,
	combout => \uc|next_state.MOV_exec_imm_A1~0_combout\);

-- Location: FF_X29_Y5_N43
\uc|cur_state.MOV_exec_imm_A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.MOV_exec_imm_A1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_imm_A1~q\);

-- Location: FF_X35_Y4_N16
\uc|cur_state.MOV_exec_imm_A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.MOV_exec_imm_A1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_imm_A2~q\);

-- Location: FF_X32_Y6_N8
\uc|cur_state.MOV_exec_imm_A3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.MOV_exec_imm_A2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_imm_A3~q\);

-- Location: LABCELL_X29_Y4_N12
\uc|next_state.LOAD_exec_A1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.LOAD_exec_A1~0_combout\ = ( \uc|next_state.LOAD_exec_B1~0_combout\ & ( (!\ir|temp[2]~DUPLICATE_q\ & (!\ir|temp\(3) & !\uc|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datab => \ir|ALT_INV_temp\(3),
	datad => \uc|ALT_INV_Equal0~0_combout\,
	dataf => \uc|ALT_INV_next_state.LOAD_exec_B1~0_combout\,
	combout => \uc|next_state.LOAD_exec_A1~0_combout\);

-- Location: FF_X29_Y4_N13
\uc|cur_state.LOAD_exec_A1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.LOAD_exec_A1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_A1~DUPLICATE_q\);

-- Location: FF_X29_Y4_N23
\uc|cur_state.LOAD_exec_A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_A1~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_A2~q\);

-- Location: MLABCELL_X34_Y2_N57
\uc|next_state.LOAD_exec_imm_A1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.LOAD_exec_imm_A1~0_combout\ = ( !\ir|temp\(3) & ( !\ir|temp[2]~DUPLICATE_q\ & ( (\uc|next_state.LOAD_exec_B1~0_combout\ & \uc|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_next_state.LOAD_exec_B1~0_combout\,
	datab => \uc|ALT_INV_Equal0~0_combout\,
	datae => \ir|ALT_INV_temp\(3),
	dataf => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	combout => \uc|next_state.LOAD_exec_imm_A1~0_combout\);

-- Location: FF_X34_Y2_N58
\uc|cur_state.LOAD_exec_imm_A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.LOAD_exec_imm_A1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_A1~q\);

-- Location: FF_X34_Y4_N26
\uc|cur_state.LOAD_exec_imm_A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_A1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_A2~q\);

-- Location: FF_X35_Y4_N8
\uc|cur_state.LOAD_exec_imm_A3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_A2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_A3~q\);

-- Location: FF_X31_Y4_N8
\uc|cur_state.LOAD_exec_imm_A4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_A3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_A4~q\);

-- Location: FF_X31_Y4_N22
\uc|cur_state.LOAD_exec_imm_A5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_A4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_A5~q\);

-- Location: FF_X32_Y6_N47
\uc|cur_state.LOAD_exec_imm_A6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_A5~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_A6~q\);

-- Location: LABCELL_X32_Y6_N45
\uc|WideOr20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr20~0_combout\ = (!\uc|cur_state.MOV_exec_imm_A3~q\ & (!\uc|cur_state.LOAD_exec_A2~q\ & !\uc|cur_state.LOAD_exec_imm_A6~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.MOV_exec_imm_A3~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_A2~q\,
	datad => \uc|ALT_INV_cur_state.LOAD_exec_imm_A6~q\,
	combout => \uc|WideOr20~0_combout\);

-- Location: LABCELL_X29_Y5_N48
\uc|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Mux3~0_combout\ = ( !\ir|temp\(3) & ( (!\ir|temp[2]~DUPLICATE_q\ & ((!\ir|temp[1]~DUPLICATE_q\) # (!\ir|temp[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	datab => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	datac => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	dataf => \ir|ALT_INV_temp\(3),
	combout => \uc|Mux3~0_combout\);

-- Location: LABCELL_X29_Y5_N57
\uc|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Mux3~1_combout\ = ( \uc|next_state.MOV_exec_imm_B1~0_combout\ & ( \uc|Mux3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_Mux3~0_combout\,
	dataf => \uc|ALT_INV_next_state.MOV_exec_imm_B1~0_combout\,
	combout => \uc|Mux3~1_combout\);

-- Location: FF_X29_Y5_N58
\uc|cur_state.MOV_exec_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_A~q\);

-- Location: LABCELL_X31_Y6_N9
\regA|temp[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|temp[0]~1_combout\ = ( \uc|cur_state.MOV_exec_A~q\ & ( (!\uc|WideOr19~0_combout\ & ((!\uc|WideOr20~0_combout\) # (\ir|temp[1]~DUPLICATE_q\))) ) ) # ( !\uc|cur_state.MOV_exec_A~q\ & ( (!\uc|WideOr19~0_combout\ & !\uc|WideOr20~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	datac => \uc|ALT_INV_WideOr19~0_combout\,
	datad => \uc|ALT_INV_WideOr20~0_combout\,
	dataf => \uc|ALT_INV_cur_state.MOV_exec_A~q\,
	combout => \regA|temp[0]~1_combout\);

-- Location: LABCELL_X31_Y6_N6
\regA|temp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|temp[0]~0_combout\ = ( \uc|WideOr20~0_combout\ & ( (!\uc|WideOr19~0_combout\ & ((!\ir|temp[1]~DUPLICATE_q\) # ((!\uc|cur_state.MOV_exec_A~q\) # (\ir|temp[0]~DUPLICATE_q\)))) ) ) # ( !\uc|WideOr20~0_combout\ & ( !\uc|WideOr19~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011101111000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	datab => \uc|ALT_INV_cur_state.MOV_exec_A~q\,
	datac => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	datad => \uc|ALT_INV_WideOr19~0_combout\,
	dataf => \uc|ALT_INV_WideOr20~0_combout\,
	combout => \regA|temp[0]~0_combout\);

-- Location: LABCELL_X31_Y6_N24
\m4|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \m4|saida[7]~7_combout\ = ( \regA|temp[0]~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( (\regA|temp[0]~1_combout\) # (\regB|temp\(7)) ) ) ) # ( !\regA|temp[0]~0_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( (!\regA|temp[0]~1_combout\ & ((\sw[7]~input_o\))) # (\regA|temp[0]~1_combout\ & (\regR|temp\(7))) ) ) ) # ( \regA|temp[0]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( 
-- (\regB|temp\(7) & !\regA|temp[0]~1_combout\) ) ) ) # ( !\regA|temp[0]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( (!\regA|temp[0]~1_combout\ & ((\sw[7]~input_o\))) # (\regA|temp[0]~1_combout\ & (\regR|temp\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp\(7),
	datab => \regR|ALT_INV_temp\(7),
	datac => \ALT_INV_sw[7]~input_o\,
	datad => \regA|ALT_INV_temp[0]~1_combout\,
	datae => \regA|ALT_INV_temp[0]~0_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \m4|saida[7]~7_combout\);

-- Location: LABCELL_X31_Y6_N36
\regA|temp[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regA|temp[0]~2_combout\ = ( \uc|WideOr20~0_combout\ & ( (!\uc|WideOr19~0_combout\ & ((!\uc|cur_state.MOV_exec_A~q\) # ((!\ir|temp[0]~DUPLICATE_q\ & !\ir|temp[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101100000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	datab => \uc|ALT_INV_cur_state.MOV_exec_A~q\,
	datac => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	datad => \uc|ALT_INV_WideOr19~0_combout\,
	dataf => \uc|ALT_INV_WideOr20~0_combout\,
	combout => \regA|temp[0]~2_combout\);

-- Location: LABCELL_X32_Y6_N36
\uc|WideOr20\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr20~combout\ = ( \uc|cur_state.MOV_exec_A~q\ ) # ( !\uc|cur_state.MOV_exec_A~q\ & ( (!\uc|WideOr20~0_combout\) # (\uc|cur_state.in_a~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_cur_state.in_a~q\,
	datad => \uc|ALT_INV_WideOr20~0_combout\,
	dataf => \uc|ALT_INV_cur_state.MOV_exec_A~q\,
	combout => \uc|WideOr20~combout\);

-- Location: FF_X31_Y6_N26
\regA|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m4|saida[7]~7_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regA|temp[0]~2_combout\,
	ena => \uc|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|temp\(7));

-- Location: LABCELL_X32_Y2_N24
\m11|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m11|Mux0~0_combout\ = ( \regB|temp\(7) & ( \ir|temp\(2) & ( (!\uc|WideOr22~combout\ & ((!\ir|temp\(3)))) # (\uc|WideOr22~combout\ & (\regA|temp\(7))) ) ) ) # ( !\regB|temp\(7) & ( \ir|temp\(2) & ( (\regA|temp\(7) & \uc|WideOr22~combout\) ) ) ) # ( 
-- \regB|temp\(7) & ( !\ir|temp\(2) & ( (!\uc|WideOr22~combout\ & ((!\ir|temp\(3) & (\regA|temp\(7))) # (\ir|temp\(3) & ((\regR|temp\(7)))))) # (\uc|WideOr22~combout\ & (\regA|temp\(7))) ) ) ) # ( !\regB|temp\(7) & ( !\ir|temp\(2) & ( (!\uc|WideOr22~combout\ 
-- & ((!\ir|temp\(3) & (\regA|temp\(7))) # (\ir|temp\(3) & ((\regR|temp\(7)))))) # (\uc|WideOr22~combout\ & (\regA|temp\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100011101010101010001110100010001000100011101110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|ALT_INV_temp\(7),
	datab => \uc|ALT_INV_WideOr22~combout\,
	datac => \regR|ALT_INV_temp\(7),
	datad => \ir|ALT_INV_temp\(3),
	datae => \regB|ALT_INV_temp\(7),
	dataf => \ir|ALT_INV_temp\(2),
	combout => \m11|Mux0~0_combout\);

-- Location: LABCELL_X31_Y2_N9
\m6|saida[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[7]~14_combout\ = ( \m11|Mux0~0_combout\ & ( \m12|Mux0~0_combout\ & ( (!\uc|control_bus[12]~4_combout\ & (((\alu|temp1\(7) & !\regR|temp[0]~1_combout\)) # (\regR|temp[0]~0_combout\))) ) ) ) # ( !\m11|Mux0~0_combout\ & ( \m12|Mux0~0_combout\ & ( 
-- (!\uc|control_bus[12]~4_combout\ & (!\regR|temp[0]~1_combout\ & ((\regR|temp[0]~0_combout\) # (\alu|temp1\(7))))) ) ) ) # ( \m11|Mux0~0_combout\ & ( !\m12|Mux0~0_combout\ & ( ((!\regR|temp[0]~1_combout\ & ((\regR|temp[0]~0_combout\) # (\alu|temp1\(7)))) # 
-- (\regR|temp[0]~1_combout\ & ((!\regR|temp[0]~0_combout\)))) # (\uc|control_bus[12]~4_combout\) ) ) ) # ( !\m11|Mux0~0_combout\ & ( !\m12|Mux0~0_combout\ & ( ((!\regR|temp[0]~0_combout\ & ((\regR|temp[0]~1_combout\) # (\alu|temp1\(7))))) # 
-- (\uc|control_bus[12]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101010101011111111111010100100000101000000010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[12]~4_combout\,
	datab => \alu|ALT_INV_temp1\(7),
	datac => \regR|ALT_INV_temp[0]~1_combout\,
	datad => \regR|ALT_INV_temp[0]~0_combout\,
	datae => \m11|ALT_INV_Mux0~0_combout\,
	dataf => \m12|ALT_INV_Mux0~0_combout\,
	combout => \m6|saida[7]~14_combout\);

-- Location: LABCELL_X29_Y4_N45
\uc|next_state.LOAD_exec_R1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.LOAD_exec_R1~0_combout\ = ( \uc|next_state.LOAD_exec_B1~0_combout\ & ( (!\ir|temp[2]~DUPLICATE_q\ & (\ir|temp\(3) & !\uc|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datab => \ir|ALT_INV_temp\(3),
	datac => \uc|ALT_INV_Equal0~0_combout\,
	dataf => \uc|ALT_INV_next_state.LOAD_exec_B1~0_combout\,
	combout => \uc|next_state.LOAD_exec_R1~0_combout\);

-- Location: FF_X29_Y4_N47
\uc|cur_state.LOAD_exec_R1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.LOAD_exec_R1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_R1~DUPLICATE_q\);

-- Location: FF_X29_Y4_N41
\uc|cur_state.LOAD_exec_R2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_R1~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_R2~q\);

-- Location: MLABCELL_X34_Y4_N30
\uc|next_state.LOAD_exec_imm_R1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.LOAD_exec_imm_R1~0_combout\ = ( \uc|next_state.LOAD_exec_B1~0_combout\ & ( (\uc|Equal0~0_combout\ & (\ir|temp[3]~DUPLICATE_q\ & !\ir|temp[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_Equal0~0_combout\,
	datac => \ir|ALT_INV_temp[3]~DUPLICATE_q\,
	datad => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	dataf => \uc|ALT_INV_next_state.LOAD_exec_B1~0_combout\,
	combout => \uc|next_state.LOAD_exec_imm_R1~0_combout\);

-- Location: FF_X34_Y4_N31
\uc|cur_state.LOAD_exec_imm_R1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.LOAD_exec_imm_R1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_R1~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y6_N3
\uc|cur_state.LOAD_exec_imm_R2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|cur_state.LOAD_exec_imm_R2~feeder_combout\ = ( \uc|cur_state.LOAD_exec_imm_R1~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_imm_R1~DUPLICATE_q\,
	combout => \uc|cur_state.LOAD_exec_imm_R2~feeder_combout\);

-- Location: FF_X34_Y6_N4
\uc|cur_state.LOAD_exec_imm_R2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|cur_state.LOAD_exec_imm_R2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_R2~q\);

-- Location: FF_X34_Y4_N19
\uc|cur_state.LOAD_exec_imm_R3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_R2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_R3~q\);

-- Location: FF_X31_Y4_N29
\uc|cur_state.LOAD_exec_imm_R4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_R3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_R4~q\);

-- Location: FF_X31_Y4_N26
\uc|cur_state.LOAD_exec_imm_R5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_R4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_R5~q\);

-- Location: FF_X32_Y4_N8
\uc|cur_state.LOAD_exec_imm_R6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_R5~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_R6~q\);

-- Location: LABCELL_X29_Y5_N39
\uc|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Mux5~0_combout\ = ( \ir|temp\(3) & ( (!\ir|temp[2]~DUPLICATE_q\ & ((!\ir|temp[0]~DUPLICATE_q\) # (!\ir|temp[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datac => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	datad => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \ir|ALT_INV_temp\(3),
	combout => \uc|Mux5~0_combout\);

-- Location: LABCELL_X29_Y5_N36
\uc|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Mux5~1_combout\ = ( \uc|next_state.MOV_exec_imm_B1~0_combout\ & ( \uc|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uc|ALT_INV_Mux5~0_combout\,
	dataf => \uc|ALT_INV_next_state.MOV_exec_imm_B1~0_combout\,
	combout => \uc|Mux5~1_combout\);

-- Location: FF_X29_Y5_N37
\uc|cur_state.MOV_exec_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_R~q\);

-- Location: LABCELL_X32_Y2_N33
\uc|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Selector8~0_combout\ = ( \uc|cur_state.MOV_exec_R~q\ & ( (!\ir|temp[1]~DUPLICATE_q\ & (!\uc|cur_state.LOAD_exec_R2~q\ & (!\uc|cur_state.LOAD_exec_imm_R6~q\ & !\uc|cur_state.MOV_exec_imm_R3~q\))) ) ) # ( !\uc|cur_state.MOV_exec_R~q\ & ( 
-- (!\uc|cur_state.LOAD_exec_R2~q\ & (!\uc|cur_state.LOAD_exec_imm_R6~q\ & !\uc|cur_state.MOV_exec_imm_R3~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_R2~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_R6~q\,
	datad => \uc|ALT_INV_cur_state.MOV_exec_imm_R3~q\,
	dataf => \uc|ALT_INV_cur_state.MOV_exec_R~q\,
	combout => \uc|Selector8~0_combout\);

-- Location: LABCELL_X32_Y2_N21
\uc|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Selector8~1_combout\ = ( !\uc|cur_state.R_exec_imm3~q\ & ( !\uc|cur_state.R_exec_imm2~q\ & ( (!\uc|cur_state.R_exec~q\ & \uc|Selector8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.R_exec~q\,
	datad => \uc|ALT_INV_Selector8~0_combout\,
	datae => \uc|ALT_INV_cur_state.R_exec_imm3~q\,
	dataf => \uc|ALT_INV_cur_state.R_exec_imm2~q\,
	combout => \uc|Selector8~1_combout\);

-- Location: LABCELL_X31_Y2_N18
\m6|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[7]~15_combout\ = ( \regB|temp\(7) & ( \regA|temp\(7) & ( ((!\uc|Selector9~0_combout\ & ((\mem|inst1|altsyncram_component|auto_generated|q_a\(7)))) # (\uc|Selector9~0_combout\ & (\m6|saida[7]~14_combout\))) # (\uc|Selector8~1_combout\) ) ) ) # ( 
-- !\regB|temp\(7) & ( \regA|temp\(7) & ( (!\uc|Selector9~0_combout\ & (((\mem|inst1|altsyncram_component|auto_generated|q_a\(7) & !\uc|Selector8~1_combout\)))) # (\uc|Selector9~0_combout\ & (((\uc|Selector8~1_combout\)) # (\m6|saida[7]~14_combout\))) ) ) ) 
-- # ( \regB|temp\(7) & ( !\regA|temp\(7) & ( (!\uc|Selector9~0_combout\ & (((\uc|Selector8~1_combout\) # (\mem|inst1|altsyncram_component|auto_generated|q_a\(7))))) # (\uc|Selector9~0_combout\ & (\m6|saida[7]~14_combout\ & ((!\uc|Selector8~1_combout\)))) ) 
-- ) ) # ( !\regB|temp\(7) & ( !\regA|temp\(7) & ( (!\uc|Selector8~1_combout\ & ((!\uc|Selector9~0_combout\ & ((\mem|inst1|altsyncram_component|auto_generated|q_a\(7)))) # (\uc|Selector9~0_combout\ & (\m6|saida[7]~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_Selector9~0_combout\,
	datab => \m6|ALT_INV_saida[7]~14_combout\,
	datac => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	datad => \uc|ALT_INV_Selector8~1_combout\,
	datae => \regB|ALT_INV_temp\(7),
	dataf => \regA|ALT_INV_temp\(7),
	combout => \m6|saida[7]~15_combout\);

-- Location: LABCELL_X31_Y2_N39
\regR|temp[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regR|temp[0]~2_combout\ = ( \uc|WideOr22~0_combout\ & ( (\uc|next_state.JGR_exec1~0_combout\) # (\uc|WideOr4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_WideOr4~0_combout\,
	datad => \uc|ALT_INV_next_state.JGR_exec1~0_combout\,
	dataf => \uc|ALT_INV_WideOr22~0_combout\,
	combout => \regR|temp[0]~2_combout\);

-- Location: LABCELL_X31_Y2_N27
\regR|temp[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regR|temp[0]~3_combout\ = ( \uc|control_bus[12]~4_combout\ & ( !\uc|Selector8~1_combout\ & ( (!\uc|WideOr19~0_combout\ & (!\regR|temp[0]~2_combout\ & \uc|Selector9~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr19~0_combout\,
	datab => \regR|ALT_INV_temp[0]~2_combout\,
	datad => \uc|ALT_INV_Selector9~0_combout\,
	datae => \uc|ALT_INV_control_bus[12]~4_combout\,
	dataf => \uc|ALT_INV_Selector8~1_combout\,
	combout => \regR|temp[0]~3_combout\);

-- Location: LABCELL_X32_Y2_N3
\uc|WideOr29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr29~0_combout\ = ( !\uc|cur_state.R_exec_imm3~q\ & ( !\uc|cur_state.MOV_exec_R~q\ & ( (!\uc|cur_state.in_r~q\ & !\uc|cur_state.LOAD_exec_imm_R6~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.in_r~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_R6~q\,
	datae => \uc|ALT_INV_cur_state.R_exec_imm3~q\,
	dataf => \uc|ALT_INV_cur_state.MOV_exec_R~q\,
	combout => \uc|WideOr29~0_combout\);

-- Location: LABCELL_X31_Y2_N36
\uc|WideOr29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr29~combout\ = ( \uc|cur_state.LOAD_exec_R2~q\ ) # ( !\uc|cur_state.LOAD_exec_R2~q\ & ( ((!\uc|WideOr29~0_combout\) # (\uc|cur_state.R_exec~q\)) # (\uc|cur_state.MOV_exec_imm_R3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.MOV_exec_imm_R3~q\,
	datac => \uc|ALT_INV_cur_state.R_exec~q\,
	datad => \uc|ALT_INV_WideOr29~0_combout\,
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_R2~q\,
	combout => \uc|WideOr29~combout\);

-- Location: FF_X31_Y2_N20
\regR|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|saida[7]~15_combout\,
	asdata => \sw[7]~input_o\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regR|temp[0]~3_combout\,
	sload => \uc|WideOr19~0_combout\,
	ena => \uc|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regR|temp\(7));

-- Location: LABCELL_X31_Y2_N42
\m12|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m12|Mux0~0_combout\ = ( \regB|temp\(7) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( ((!\uc|control_bus[14]~3_combout\ & ((\regA|temp\(7)))) # (\uc|control_bus[14]~3_combout\ & (\regR|temp\(7)))) # (\uc|control_bus[13]~2_combout\) ) ) ) 
-- # ( !\regB|temp\(7) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( (!\uc|control_bus[14]~3_combout\ & (!\uc|control_bus[13]~2_combout\ & ((\regA|temp\(7))))) # (\uc|control_bus[14]~3_combout\ & (((\regR|temp\(7))) # 
-- (\uc|control_bus[13]~2_combout\))) ) ) ) # ( \regB|temp\(7) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( (!\uc|control_bus[14]~3_combout\ & (((\regA|temp\(7))) # (\uc|control_bus[13]~2_combout\))) # (\uc|control_bus[14]~3_combout\ & 
-- (!\uc|control_bus[13]~2_combout\ & (\regR|temp\(7)))) ) ) ) # ( !\regB|temp\(7) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( (!\uc|control_bus[13]~2_combout\ & ((!\uc|control_bus[14]~3_combout\ & ((\regA|temp\(7)))) # 
-- (\uc|control_bus[14]~3_combout\ & (\regR|temp\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[14]~3_combout\,
	datab => \uc|ALT_INV_control_bus[13]~2_combout\,
	datac => \regR|ALT_INV_temp\(7),
	datad => \regA|ALT_INV_temp\(7),
	datae => \regB|ALT_INV_temp\(7),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	combout => \m12|Mux0~0_combout\);

-- Location: IOIBUF_X34_Y0_N52
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: MLABCELL_X34_Y3_N54
\m11|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m11|Mux1~0_combout\ = ( \regA|temp\(6) & ( \regR|temp\(6) & ( ((!\ir|temp[2]~DUPLICATE_q\) # ((!\ir|temp[3]~DUPLICATE_q\ & \regB|temp\(6)))) # (\uc|WideOr22~combout\) ) ) ) # ( !\regA|temp\(6) & ( \regR|temp\(6) & ( (!\uc|WideOr22~combout\ & 
-- ((!\ir|temp[3]~DUPLICATE_q\ & (\ir|temp[2]~DUPLICATE_q\ & \regB|temp\(6))) # (\ir|temp[3]~DUPLICATE_q\ & (!\ir|temp[2]~DUPLICATE_q\)))) ) ) ) # ( \regA|temp\(6) & ( !\regR|temp\(6) & ( ((!\ir|temp[3]~DUPLICATE_q\ & ((!\ir|temp[2]~DUPLICATE_q\) # 
-- (\regB|temp\(6))))) # (\uc|WideOr22~combout\) ) ) ) # ( !\regA|temp\(6) & ( !\regR|temp\(6) & ( (!\ir|temp[3]~DUPLICATE_q\ & (!\uc|WideOr22~combout\ & (\ir|temp[2]~DUPLICATE_q\ & \regB|temp\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000101100111011101101000000010010001111001111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[3]~DUPLICATE_q\,
	datab => \uc|ALT_INV_WideOr22~combout\,
	datac => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datad => \regB|ALT_INV_temp\(6),
	datae => \regA|ALT_INV_temp\(6),
	dataf => \regR|ALT_INV_temp\(6),
	combout => \m11|Mux1~0_combout\);

-- Location: IOIBUF_X36_Y0_N52
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LABCELL_X31_Y6_N12
\m4|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m4|saida[5]~5_combout\ = ( \regR|temp\(5) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( ((!\regA|temp[0]~0_combout\ & (\sw[5]~input_o\)) # (\regA|temp[0]~0_combout\ & ((\regB|temp\(5))))) # (\regA|temp[0]~1_combout\) ) ) ) # ( 
-- !\regR|temp\(5) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( (!\regA|temp[0]~1_combout\ & ((!\regA|temp[0]~0_combout\ & (\sw[5]~input_o\)) # (\regA|temp[0]~0_combout\ & ((\regB|temp\(5)))))) # (\regA|temp[0]~1_combout\ & 
-- (((\regA|temp[0]~0_combout\)))) ) ) ) # ( \regR|temp\(5) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( (!\regA|temp[0]~1_combout\ & ((!\regA|temp[0]~0_combout\ & (\sw[5]~input_o\)) # (\regA|temp[0]~0_combout\ & ((\regB|temp\(5)))))) # 
-- (\regA|temp[0]~1_combout\ & (((!\regA|temp[0]~0_combout\)))) ) ) ) # ( !\regR|temp\(5) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( (!\regA|temp[0]~1_combout\ & ((!\regA|temp[0]~0_combout\ & (\sw[5]~input_o\)) # 
-- (\regA|temp[0]~0_combout\ & ((\regB|temp\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[5]~input_o\,
	datab => \regA|ALT_INV_temp[0]~1_combout\,
	datac => \regB|ALT_INV_temp\(5),
	datad => \regA|ALT_INV_temp[0]~0_combout\,
	datae => \regR|ALT_INV_temp\(5),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \m4|saida[5]~5_combout\);

-- Location: FF_X31_Y6_N14
\regA|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m4|saida[5]~5_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regA|temp[0]~2_combout\,
	ena => \uc|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|temp\(5));

-- Location: LABCELL_X29_Y3_N36
\m5|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m5|saida[5]~5_combout\ = ( \mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( \regB|temp[1]~0_combout\ & ( (\regA|temp\(5)) # (\regB|temp[1]~1_combout\) ) ) ) # ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \regB|temp[1]~0_combout\ & ( (!\regB|temp[1]~1_combout\ & \regA|temp\(5)) ) ) ) # ( \mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\regB|temp[1]~0_combout\ & ( (!\regB|temp[1]~1_combout\ & ((\sw[5]~input_o\))) # (\regB|temp[1]~1_combout\ & 
-- (\regR|temp\(5))) ) ) ) # ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\regB|temp[1]~0_combout\ & ( (!\regB|temp[1]~1_combout\ & ((\sw[5]~input_o\))) # (\regB|temp[1]~1_combout\ & (\regR|temp\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(5),
	datab => \ALT_INV_sw[5]~input_o\,
	datac => \regB|ALT_INV_temp[1]~1_combout\,
	datad => \regA|ALT_INV_temp\(5),
	datae => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \regB|ALT_INV_temp[1]~0_combout\,
	combout => \m5|saida[5]~5_combout\);

-- Location: FF_X29_Y3_N38
\regB|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m5|saida[5]~5_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regB|temp[1]~2_combout\,
	ena => \uc|WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regB|temp\(5));

-- Location: LABCELL_X31_Y3_N24
\m12|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m12|Mux2~0_combout\ = ( \mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( \uc|control_bus[13]~2_combout\ & ( (\regB|temp\(5)) # (\uc|control_bus[14]~3_combout\) ) ) ) # ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \uc|control_bus[13]~2_combout\ & ( (!\uc|control_bus[14]~3_combout\ & \regB|temp\(5)) ) ) ) # ( \mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\uc|control_bus[13]~2_combout\ & ( (!\uc|control_bus[14]~3_combout\ & (\regA|temp\(5))) # 
-- (\uc|control_bus[14]~3_combout\ & ((\regR|temp\(5)))) ) ) ) # ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\uc|control_bus[13]~2_combout\ & ( (!\uc|control_bus[14]~3_combout\ & (\regA|temp\(5))) # (\uc|control_bus[14]~3_combout\ & 
-- ((\regR|temp\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|ALT_INV_temp\(5),
	datab => \uc|ALT_INV_control_bus[14]~3_combout\,
	datac => \regB|ALT_INV_temp\(5),
	datad => \regR|ALT_INV_temp\(5),
	datae => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \uc|ALT_INV_control_bus[13]~2_combout\,
	combout => \m12|Mux2~0_combout\);

-- Location: LABCELL_X31_Y5_N42
\m11|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m11|Mux3~0_combout\ = ( \ir|temp[2]~DUPLICATE_q\ & ( \regR|temp\(4) & ( (!\uc|WideOr22~combout\ & (\regB|temp\(4) & (!\ir|temp\(3)))) # (\uc|WideOr22~combout\ & (((\regA|temp\(4))))) ) ) ) # ( !\ir|temp[2]~DUPLICATE_q\ & ( \regR|temp\(4) & ( 
-- ((!\uc|WideOr22~combout\ & \ir|temp\(3))) # (\regA|temp\(4)) ) ) ) # ( \ir|temp[2]~DUPLICATE_q\ & ( !\regR|temp\(4) & ( (!\uc|WideOr22~combout\ & (\regB|temp\(4) & (!\ir|temp\(3)))) # (\uc|WideOr22~combout\ & (((\regA|temp\(4))))) ) ) ) # ( 
-- !\ir|temp[2]~DUPLICATE_q\ & ( !\regR|temp\(4) & ( (\regA|temp\(4) & ((!\ir|temp\(3)) # (\uc|WideOr22~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011010000000111001100001100111111110100000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp\(4),
	datab => \uc|ALT_INV_WideOr22~combout\,
	datac => \ir|ALT_INV_temp\(3),
	datad => \regA|ALT_INV_temp\(4),
	datae => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	dataf => \regR|ALT_INV_temp\(4),
	combout => \m11|Mux3~0_combout\);

-- Location: IOIBUF_X34_Y0_N18
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LABCELL_X32_Y3_N6
\m12|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m12|Mux4~0_combout\ = ( \uc|control_bus[13]~2_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (\regB|temp\(3)) # (\uc|control_bus[14]~3_combout\) ) ) ) # ( !\uc|control_bus[13]~2_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (!\uc|control_bus[14]~3_combout\ & (\regA|temp\(3))) # (\uc|control_bus[14]~3_combout\ & ((\regR|temp\(3)))) ) ) ) # ( \uc|control_bus[13]~2_combout\ & ( 
-- !\mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (!\uc|control_bus[14]~3_combout\ & \regB|temp\(3)) ) ) ) # ( !\uc|control_bus[13]~2_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (!\uc|control_bus[14]~3_combout\ & 
-- (\regA|temp\(3))) # (\uc|control_bus[14]~3_combout\ & ((\regR|temp\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[14]~3_combout\,
	datab => \regB|ALT_INV_temp\(3),
	datac => \regA|ALT_INV_temp\(3),
	datad => \regR|ALT_INV_temp\(3),
	datae => \uc|ALT_INV_control_bus[13]~2_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \m12|Mux4~0_combout\);

-- Location: LABCELL_X32_Y4_N6
\alu|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux22~0_combout\ = ( \ir|temp\(5) & ( !\uc|WideOr4~0_combout\ ) ) # ( !\ir|temp\(5) & ( (\ir|temp\(6) & !\uc|WideOr4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp\(6),
	datac => \uc|ALT_INV_WideOr4~0_combout\,
	dataf => \ir|ALT_INV_temp\(5),
	combout => \alu|Mux22~0_combout\);

-- Location: IOIBUF_X34_Y0_N1
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LABCELL_X31_Y6_N0
\m4|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m4|saida[2]~2_combout\ = ( \regB|temp\(2) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( ((!\regA|temp[0]~1_combout\ & (\sw[2]~input_o\)) # (\regA|temp[0]~1_combout\ & ((\regR|temp\(2))))) # (\regA|temp[0]~0_combout\) ) ) ) # ( 
-- !\regB|temp\(2) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\regA|temp[0]~1_combout\ & (\sw[2]~input_o\ & ((!\regA|temp[0]~0_combout\)))) # (\regA|temp[0]~1_combout\ & (((\regA|temp[0]~0_combout\) # (\regR|temp\(2))))) ) ) ) # ( 
-- \regB|temp\(2) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\regA|temp[0]~1_combout\ & (((\regA|temp[0]~0_combout\)) # (\sw[2]~input_o\))) # (\regA|temp[0]~1_combout\ & (((\regR|temp\(2) & !\regA|temp[0]~0_combout\)))) ) ) ) # ( 
-- !\regB|temp\(2) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\regA|temp[0]~0_combout\ & ((!\regA|temp[0]~1_combout\ & (\sw[2]~input_o\)) # (\regA|temp[0]~1_combout\ & ((\regR|temp\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001111100110001000111001100110100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[2]~input_o\,
	datab => \regA|ALT_INV_temp[0]~1_combout\,
	datac => \regR|ALT_INV_temp\(2),
	datad => \regA|ALT_INV_temp[0]~0_combout\,
	datae => \regB|ALT_INV_temp\(2),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \m4|saida[2]~2_combout\);

-- Location: FF_X31_Y6_N2
\regA|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m4|saida[2]~2_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regA|temp[0]~2_combout\,
	ena => \uc|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|temp\(2));

-- Location: LABCELL_X32_Y5_N18
\m11|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m11|Mux5~0_combout\ = ( \regR|temp\(2) & ( \uc|WideOr22~combout\ & ( \regA|temp\(2) ) ) ) # ( !\regR|temp\(2) & ( \uc|WideOr22~combout\ & ( \regA|temp\(2) ) ) ) # ( \regR|temp\(2) & ( !\uc|WideOr22~combout\ & ( (!\ir|temp[3]~DUPLICATE_q\ & 
-- ((!\ir|temp[2]~DUPLICATE_q\ & (\regA|temp\(2))) # (\ir|temp[2]~DUPLICATE_q\ & ((\regB|temp\(2)))))) # (\ir|temp[3]~DUPLICATE_q\ & (!\ir|temp[2]~DUPLICATE_q\)) ) ) ) # ( !\regR|temp\(2) & ( !\uc|WideOr22~combout\ & ( (!\ir|temp[3]~DUPLICATE_q\ & 
-- ((!\ir|temp[2]~DUPLICATE_q\ & (\regA|temp\(2))) # (\ir|temp[2]~DUPLICATE_q\ & ((\regB|temp\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[3]~DUPLICATE_q\,
	datab => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datac => \regA|ALT_INV_temp\(2),
	datad => \regB|ALT_INV_temp\(2),
	datae => \regR|ALT_INV_temp\(2),
	dataf => \uc|ALT_INV_WideOr22~combout\,
	combout => \m11|Mux5~0_combout\);

-- Location: IOIBUF_X33_Y0_N58
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LABCELL_X31_Y6_N54
\m4|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m4|saida[1]~1_combout\ = ( \regR|temp\(1) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( ((!\regA|temp[0]~0_combout\ & (\sw[1]~input_o\)) # (\regA|temp[0]~0_combout\ & ((\regB|temp\(1))))) # (\regA|temp[0]~1_combout\) ) ) ) # ( 
-- !\regR|temp\(1) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\regA|temp[0]~1_combout\ & ((!\regA|temp[0]~0_combout\ & (\sw[1]~input_o\)) # (\regA|temp[0]~0_combout\ & ((\regB|temp\(1)))))) # (\regA|temp[0]~1_combout\ & 
-- (((\regA|temp[0]~0_combout\)))) ) ) ) # ( \regR|temp\(1) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\regA|temp[0]~1_combout\ & ((!\regA|temp[0]~0_combout\ & (\sw[1]~input_o\)) # (\regA|temp[0]~0_combout\ & ((\regB|temp\(1)))))) # 
-- (\regA|temp[0]~1_combout\ & (((!\regA|temp[0]~0_combout\)))) ) ) ) # ( !\regR|temp\(1) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\regA|temp[0]~1_combout\ & ((!\regA|temp[0]~0_combout\ & (\sw[1]~input_o\)) # 
-- (\regA|temp[0]~0_combout\ & ((\regB|temp\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datab => \regA|ALT_INV_temp[0]~1_combout\,
	datac => \regB|ALT_INV_temp\(1),
	datad => \regA|ALT_INV_temp[0]~0_combout\,
	datae => \regR|ALT_INV_temp\(1),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \m4|saida[1]~1_combout\);

-- Location: FF_X31_Y6_N56
\regA|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m4|saida[1]~1_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regA|temp[0]~2_combout\,
	ena => \uc|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|temp\(1));

-- Location: LABCELL_X26_Y4_N45
\m5|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m5|saida[1]~1_combout\ = ( \regB|temp[1]~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (\regA|temp\(1)) # (\regB|temp[1]~1_combout\) ) ) ) # ( !\regB|temp[1]~0_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\regB|temp[1]~1_combout\ & (\sw[1]~input_o\)) # (\regB|temp[1]~1_combout\ & ((\regR|temp\(1)))) ) ) ) # ( \regB|temp[1]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (!\regB|temp[1]~1_combout\ & \regA|temp\(1)) ) ) ) # ( !\regB|temp[1]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\regB|temp[1]~1_combout\ & (\sw[1]~input_o\)) # (\regB|temp[1]~1_combout\ & ((\regR|temp\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datab => \regB|ALT_INV_temp[1]~1_combout\,
	datac => \regA|ALT_INV_temp\(1),
	datad => \regR|ALT_INV_temp\(1),
	datae => \regB|ALT_INV_temp[1]~0_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \m5|saida[1]~1_combout\);

-- Location: FF_X26_Y4_N47
\regB|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m5|saida[1]~1_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regB|temp[1]~2_combout\,
	ena => \uc|WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regB|temp\(1));

-- Location: LABCELL_X31_Y3_N42
\m11|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m11|Mux6~0_combout\ = ( \regR|temp\(1) & ( \uc|WideOr22~combout\ & ( \regA|temp\(1) ) ) ) # ( !\regR|temp\(1) & ( \uc|WideOr22~combout\ & ( \regA|temp\(1) ) ) ) # ( \regR|temp\(1) & ( !\uc|WideOr22~combout\ & ( (!\ir|temp\(3) & ((!\ir|temp\(2) & 
-- (\regA|temp\(1))) # (\ir|temp\(2) & ((\regB|temp\(1)))))) # (\ir|temp\(3) & (((!\ir|temp\(2))))) ) ) ) # ( !\regR|temp\(1) & ( !\uc|WideOr22~combout\ & ( (!\ir|temp\(3) & ((!\ir|temp\(2) & (\regA|temp\(1))) # (\ir|temp\(2) & ((\regB|temp\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|ALT_INV_temp\(1),
	datab => \regB|ALT_INV_temp\(1),
	datac => \ir|ALT_INV_temp\(3),
	datad => \ir|ALT_INV_temp\(2),
	datae => \regR|ALT_INV_temp\(1),
	dataf => \uc|ALT_INV_WideOr22~combout\,
	combout => \m11|Mux6~0_combout\);

-- Location: IOIBUF_X33_Y0_N41
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LABCELL_X26_Y4_N12
\m5|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m5|saida[0]~0_combout\ = ( \regB|temp[1]~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (\regA|temp\(0)) # (\regB|temp[1]~1_combout\) ) ) ) # ( !\regB|temp[1]~0_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\regB|temp[1]~1_combout\ & ((\sw[0]~input_o\))) # (\regB|temp[1]~1_combout\ & (\regR|temp\(0))) ) ) ) # ( \regB|temp[1]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (!\regB|temp[1]~1_combout\ & \regA|temp\(0)) ) ) ) # ( !\regB|temp[1]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\regB|temp[1]~1_combout\ & ((\sw[0]~input_o\))) # (\regB|temp[1]~1_combout\ & (\regR|temp\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp[1]~1_combout\,
	datab => \regR|ALT_INV_temp\(0),
	datac => \ALT_INV_sw[0]~input_o\,
	datad => \regA|ALT_INV_temp\(0),
	datae => \regB|ALT_INV_temp[1]~0_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \m5|saida[0]~0_combout\);

-- Location: FF_X26_Y4_N14
\regB|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m5|saida[0]~0_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regB|temp[1]~2_combout\,
	ena => \uc|WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regB|temp\(0));

-- Location: LABCELL_X31_Y6_N51
\m4|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m4|saida[0]~0_combout\ = ( \regB|temp\(0) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( ((!\regA|temp[0]~1_combout\ & ((\sw[0]~input_o\))) # (\regA|temp[0]~1_combout\ & (\regR|temp\(0)))) # (\regA|temp[0]~0_combout\) ) ) ) # ( 
-- !\regB|temp\(0) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\regA|temp[0]~1_combout\ & (((!\regA|temp[0]~0_combout\ & \sw[0]~input_o\)))) # (\regA|temp[0]~1_combout\ & (((\regA|temp[0]~0_combout\)) # (\regR|temp\(0)))) ) ) ) # ( 
-- \regB|temp\(0) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\regA|temp[0]~1_combout\ & (((\sw[0]~input_o\) # (\regA|temp[0]~0_combout\)))) # (\regA|temp[0]~1_combout\ & (\regR|temp\(0) & (!\regA|temp[0]~0_combout\))) ) ) ) # ( 
-- !\regB|temp\(0) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\regA|temp[0]~0_combout\ & ((!\regA|temp[0]~1_combout\ & ((\sw[0]~input_o\))) # (\regA|temp[0]~1_combout\ & (\regR|temp\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000111001101110000010011110100110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(0),
	datab => \regA|ALT_INV_temp[0]~1_combout\,
	datac => \regA|ALT_INV_temp[0]~0_combout\,
	datad => \ALT_INV_sw[0]~input_o\,
	datae => \regB|ALT_INV_temp\(0),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \m4|saida[0]~0_combout\);

-- Location: FF_X31_Y6_N53
\regA|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m4|saida[0]~0_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regA|temp[0]~2_combout\,
	ena => \uc|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|temp\(0));

-- Location: LABCELL_X31_Y3_N12
\m12|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m12|Mux7~0_combout\ = ( \uc|control_bus[13]~2_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (\regB|temp\(0)) # (\uc|control_bus[14]~3_combout\) ) ) ) # ( !\uc|control_bus[13]~2_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\uc|control_bus[14]~3_combout\ & ((\regA|temp\(0)))) # (\uc|control_bus[14]~3_combout\ & (\regR|temp\(0))) ) ) ) # ( \uc|control_bus[13]~2_combout\ & ( 
-- !\mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\uc|control_bus[14]~3_combout\ & \regB|temp\(0)) ) ) ) # ( !\uc|control_bus[13]~2_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\uc|control_bus[14]~3_combout\ & 
-- ((\regA|temp\(0)))) # (\uc|control_bus[14]~3_combout\ & (\regR|temp\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(0),
	datab => \uc|ALT_INV_control_bus[14]~3_combout\,
	datac => \regA|ALT_INV_temp\(0),
	datad => \regB|ALT_INV_temp\(0),
	datae => \uc|ALT_INV_control_bus[13]~2_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \m12|Mux7~0_combout\);

-- Location: LABCELL_X29_Y3_N24
\m11|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m11|Mux7~0_combout\ = ( \regA|temp\(0) & ( \uc|WideOr22~combout\ ) ) # ( \regA|temp\(0) & ( !\uc|WideOr22~combout\ & ( (!\ir|temp[2]~DUPLICATE_q\ & ((!\ir|temp\(3)) # ((\regR|temp\(0))))) # (\ir|temp[2]~DUPLICATE_q\ & (!\ir|temp\(3) & 
-- ((\regB|temp\(0))))) ) ) ) # ( !\regA|temp\(0) & ( !\uc|WideOr22~combout\ & ( (!\ir|temp[2]~DUPLICATE_q\ & (\ir|temp\(3) & (\regR|temp\(0)))) # (\ir|temp[2]~DUPLICATE_q\ & (!\ir|temp\(3) & ((\regB|temp\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datab => \ir|ALT_INV_temp\(3),
	datac => \regR|ALT_INV_temp\(0),
	datad => \regB|ALT_INV_temp\(0),
	datae => \regA|ALT_INV_temp\(0),
	dataf => \uc|ALT_INV_WideOr22~combout\,
	combout => \m11|Mux7~0_combout\);

-- Location: LABCELL_X32_Y3_N30
\alu|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~34_cout\ = CARRY(( (((\ir|temp[4]~DUPLICATE_q\ & !\uc|WideOr4~0_combout\)) # (\uc|cur_state.CMP_exec~q\)) # (\uc|cur_state.CMP_exec_imm3~q\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datab => \uc|ALT_INV_WideOr4~0_combout\,
	datac => \uc|ALT_INV_cur_state.CMP_exec_imm3~q\,
	datad => \uc|ALT_INV_cur_state.CMP_exec~q\,
	cin => GND,
	cout => \alu|Add0~34_cout\);

-- Location: LABCELL_X32_Y3_N33
\alu|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~1_sumout\ = SUM(( !\m12|Mux7~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \m11|Mux7~0_combout\ ) + ( \alu|Add0~34_cout\ ))
-- \alu|Add0~2\ = CARRY(( !\m12|Mux7~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \m11|Mux7~0_combout\ ) + ( \alu|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datab => \uc|ALT_INV_WideOr4~0_combout\,
	datac => \m12|ALT_INV_Mux7~0_combout\,
	datad => \uc|ALT_INV_WideOr22~0_combout\,
	dataf => \m11|ALT_INV_Mux7~0_combout\,
	cin => \alu|Add0~34_cout\,
	sumout => \alu|Add0~1_sumout\,
	cout => \alu|Add0~2\);

-- Location: LABCELL_X32_Y3_N36
\alu|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~5_sumout\ = SUM(( !\m12|Mux6~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \m11|Mux6~0_combout\ ) + ( \alu|Add0~2\ ))
-- \alu|Add0~6\ = CARRY(( !\m12|Mux6~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \m11|Mux6~0_combout\ ) + ( \alu|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datab => \uc|ALT_INV_WideOr4~0_combout\,
	datac => \m12|ALT_INV_Mux6~0_combout\,
	datad => \uc|ALT_INV_WideOr22~0_combout\,
	dataf => \m11|ALT_INV_Mux6~0_combout\,
	cin => \alu|Add0~2\,
	sumout => \alu|Add0~5_sumout\,
	cout => \alu|Add0~6\);

-- Location: LABCELL_X32_Y4_N15
\alu|temp1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|temp1\(1) = ( \alu|Add0~5_sumout\ & ( (!\alu|Mux22~0_combout\) # (\alu|temp1\(1)) ) ) # ( !\alu|Add0~5_sumout\ & ( (\alu|temp1\(1) & \alu|Mux22~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|ALT_INV_temp1\(1),
	datad => \alu|ALT_INV_Mux22~0_combout\,
	dataf => \alu|ALT_INV_Add0~5_sumout\,
	combout => \alu|temp1\(1));

-- Location: LABCELL_X31_Y3_N0
\m6|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[1]~2_combout\ = ( \m12|Mux6~0_combout\ & ( \regR|temp[0]~1_combout\ & ( (!\uc|control_bus[12]~4_combout\ & (\regR|temp[0]~0_combout\ & \m11|Mux6~0_combout\)) ) ) ) # ( !\m12|Mux6~0_combout\ & ( \regR|temp[0]~1_combout\ & ( 
-- (!\regR|temp[0]~0_combout\) # (\uc|control_bus[12]~4_combout\) ) ) ) # ( \m12|Mux6~0_combout\ & ( !\regR|temp[0]~1_combout\ & ( (!\uc|control_bus[12]~4_combout\ & ((\regR|temp[0]~0_combout\) # (\alu|temp1\(1)))) ) ) ) # ( !\m12|Mux6~0_combout\ & ( 
-- !\regR|temp[0]~1_combout\ & ( ((!\regR|temp[0]~0_combout\ & (\alu|temp1\(1))) # (\regR|temp[0]~0_combout\ & ((\m11|Mux6~0_combout\)))) # (\uc|control_bus[12]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101111111010011000100110011110011111100110000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_temp1\(1),
	datab => \uc|ALT_INV_control_bus[12]~4_combout\,
	datac => \regR|ALT_INV_temp[0]~0_combout\,
	datad => \m11|ALT_INV_Mux6~0_combout\,
	datae => \m12|ALT_INV_Mux6~0_combout\,
	dataf => \regR|ALT_INV_temp[0]~1_combout\,
	combout => \m6|saida[1]~2_combout\);

-- Location: LABCELL_X31_Y4_N30
\m6|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[1]~3_combout\ = ( \uc|Selector8~1_combout\ & ( \m6|saida[1]~2_combout\ & ( (!\uc|Selector9~0_combout\ & (\regB|temp\(1))) # (\uc|Selector9~0_combout\ & ((\regA|temp\(1)))) ) ) ) # ( !\uc|Selector8~1_combout\ & ( \m6|saida[1]~2_combout\ & ( 
-- (\mem|inst1|altsyncram_component|auto_generated|q_a\(1)) # (\uc|Selector9~0_combout\) ) ) ) # ( \uc|Selector8~1_combout\ & ( !\m6|saida[1]~2_combout\ & ( (!\uc|Selector9~0_combout\ & (\regB|temp\(1))) # (\uc|Selector9~0_combout\ & ((\regA|temp\(1)))) ) ) 
-- ) # ( !\uc|Selector8~1_combout\ & ( !\m6|saida[1]~2_combout\ & ( (!\uc|Selector9~0_combout\ & \mem|inst1|altsyncram_component|auto_generated|q_a\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_Selector9~0_combout\,
	datab => \regB|ALT_INV_temp\(1),
	datac => \regA|ALT_INV_temp\(1),
	datad => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datae => \uc|ALT_INV_Selector8~1_combout\,
	dataf => \m6|ALT_INV_saida[1]~2_combout\,
	combout => \m6|saida[1]~3_combout\);

-- Location: FF_X31_Y4_N32
\regR|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|saida[1]~3_combout\,
	asdata => \sw[1]~input_o\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regR|temp[0]~3_combout\,
	sload => \uc|WideOr19~0_combout\,
	ena => \uc|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regR|temp\(1));

-- Location: LABCELL_X31_Y3_N30
\m12|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m12|Mux6~0_combout\ = ( \uc|control_bus[13]~2_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (\regB|temp\(1)) # (\uc|control_bus[14]~3_combout\) ) ) ) # ( !\uc|control_bus[13]~2_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\uc|control_bus[14]~3_combout\ & ((\regA|temp\(1)))) # (\uc|control_bus[14]~3_combout\ & (\regR|temp\(1))) ) ) ) # ( \uc|control_bus[13]~2_combout\ & ( 
-- !\mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\uc|control_bus[14]~3_combout\ & \regB|temp\(1)) ) ) ) # ( !\uc|control_bus[13]~2_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\uc|control_bus[14]~3_combout\ & 
-- ((\regA|temp\(1)))) # (\uc|control_bus[14]~3_combout\ & (\regR|temp\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(1),
	datab => \uc|ALT_INV_control_bus[14]~3_combout\,
	datac => \regA|ALT_INV_temp\(1),
	datad => \regB|ALT_INV_temp\(1),
	datae => \uc|ALT_INV_control_bus[13]~2_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \m12|Mux6~0_combout\);

-- Location: LABCELL_X32_Y3_N39
\alu|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~9_sumout\ = SUM(( !\m12|Mux5~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \m11|Mux5~0_combout\ ) + ( \alu|Add0~6\ ))
-- \alu|Add0~10\ = CARRY(( !\m12|Mux5~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \m11|Mux5~0_combout\ ) + ( \alu|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datab => \uc|ALT_INV_WideOr4~0_combout\,
	datac => \m12|ALT_INV_Mux5~0_combout\,
	datad => \uc|ALT_INV_WideOr22~0_combout\,
	dataf => \m11|ALT_INV_Mux5~0_combout\,
	cin => \alu|Add0~6\,
	sumout => \alu|Add0~9_sumout\,
	cout => \alu|Add0~10\);

-- Location: LABCELL_X32_Y4_N21
\alu|temp1[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|temp1\(2) = ( \alu|Add0~9_sumout\ & ( (!\alu|Mux22~0_combout\) # (\alu|temp1\(2)) ) ) # ( !\alu|Add0~9_sumout\ & ( (\alu|Mux22~0_combout\ & \alu|temp1\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|ALT_INV_Mux22~0_combout\,
	datad => \alu|ALT_INV_temp1\(2),
	dataf => \alu|ALT_INV_Add0~9_sumout\,
	combout => \alu|temp1\(2));

-- Location: LABCELL_X32_Y4_N57
\m6|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[2]~4_combout\ = ( \regR|temp[0]~1_combout\ & ( \alu|temp1\(2) & ( (!\regR|temp[0]~0_combout\ & (!\m12|Mux5~0_combout\)) # (\regR|temp[0]~0_combout\ & ((!\m12|Mux5~0_combout\ & ((\uc|control_bus[12]~4_combout\))) # (\m12|Mux5~0_combout\ & 
-- (\m11|Mux5~0_combout\ & !\uc|control_bus[12]~4_combout\)))) ) ) ) # ( !\regR|temp[0]~1_combout\ & ( \alu|temp1\(2) & ( (!\m12|Mux5~0_combout\ & ((!\regR|temp[0]~0_combout\) # ((\uc|control_bus[12]~4_combout\) # (\m11|Mux5~0_combout\)))) # 
-- (\m12|Mux5~0_combout\ & (((!\uc|control_bus[12]~4_combout\)))) ) ) ) # ( \regR|temp[0]~1_combout\ & ( !\alu|temp1\(2) & ( (!\regR|temp[0]~0_combout\ & (!\m12|Mux5~0_combout\)) # (\regR|temp[0]~0_combout\ & ((!\m12|Mux5~0_combout\ & 
-- ((\uc|control_bus[12]~4_combout\))) # (\m12|Mux5~0_combout\ & (\m11|Mux5~0_combout\ & !\uc|control_bus[12]~4_combout\)))) ) ) ) # ( !\regR|temp[0]~1_combout\ & ( !\alu|temp1\(2) & ( (!\uc|control_bus[12]~4_combout\ & (\regR|temp[0]~0_combout\ & 
-- ((\m11|Mux5~0_combout\) # (\m12|Mux5~0_combout\)))) # (\uc|control_bus[12]~4_combout\ & (((!\m12|Mux5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111001100100010011100110010111111110011001000100111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp[0]~0_combout\,
	datab => \m12|ALT_INV_Mux5~0_combout\,
	datac => \m11|ALT_INV_Mux5~0_combout\,
	datad => \uc|ALT_INV_control_bus[12]~4_combout\,
	datae => \regR|ALT_INV_temp[0]~1_combout\,
	dataf => \alu|ALT_INV_temp1\(2),
	combout => \m6|saida[2]~4_combout\);

-- Location: LABCELL_X31_Y4_N36
\m6|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[2]~5_combout\ = ( \uc|Selector8~1_combout\ & ( \m6|saida[2]~4_combout\ & ( (!\uc|Selector9~0_combout\ & (\regB|temp\(2))) # (\uc|Selector9~0_combout\ & ((\regA|temp\(2)))) ) ) ) # ( !\uc|Selector8~1_combout\ & ( \m6|saida[2]~4_combout\ & ( 
-- (\mem|inst1|altsyncram_component|auto_generated|q_a\(2)) # (\uc|Selector9~0_combout\) ) ) ) # ( \uc|Selector8~1_combout\ & ( !\m6|saida[2]~4_combout\ & ( (!\uc|Selector9~0_combout\ & (\regB|temp\(2))) # (\uc|Selector9~0_combout\ & ((\regA|temp\(2)))) ) ) 
-- ) # ( !\uc|Selector8~1_combout\ & ( !\m6|saida[2]~4_combout\ & ( (!\uc|Selector9~0_combout\ & \mem|inst1|altsyncram_component|auto_generated|q_a\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp\(2),
	datab => \regA|ALT_INV_temp\(2),
	datac => \uc|ALT_INV_Selector9~0_combout\,
	datad => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \uc|ALT_INV_Selector8~1_combout\,
	dataf => \m6|ALT_INV_saida[2]~4_combout\,
	combout => \m6|saida[2]~5_combout\);

-- Location: FF_X31_Y4_N38
\regR|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|saida[2]~5_combout\,
	asdata => \sw[2]~input_o\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regR|temp[0]~3_combout\,
	sload => \uc|WideOr19~0_combout\,
	ena => \uc|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regR|temp\(2));

-- Location: LABCELL_X26_Y4_N36
\m5|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m5|saida[2]~2_combout\ = ( \regB|temp[1]~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (\regB|temp[1]~1_combout\) # (\regA|temp\(2)) ) ) ) # ( !\regB|temp[1]~0_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\regB|temp[1]~1_combout\ & ((\sw[2]~input_o\))) # (\regB|temp[1]~1_combout\ & (\regR|temp\(2))) ) ) ) # ( \regB|temp[1]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( 
-- (\regA|temp\(2) & !\regB|temp[1]~1_combout\) ) ) ) # ( !\regB|temp[1]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\regB|temp[1]~1_combout\ & ((\sw[2]~input_o\))) # (\regB|temp[1]~1_combout\ & (\regR|temp\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(2),
	datab => \regA|ALT_INV_temp\(2),
	datac => \ALT_INV_sw[2]~input_o\,
	datad => \regB|ALT_INV_temp[1]~1_combout\,
	datae => \regB|ALT_INV_temp[1]~0_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \m5|saida[2]~2_combout\);

-- Location: FF_X26_Y4_N38
\regB|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m5|saida[2]~2_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regB|temp[1]~2_combout\,
	ena => \uc|WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regB|temp\(2));

-- Location: LABCELL_X31_Y3_N48
\m12|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m12|Mux5~0_combout\ = ( \uc|control_bus[13]~2_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (\uc|control_bus[14]~3_combout\) # (\regB|temp\(2)) ) ) ) # ( !\uc|control_bus[13]~2_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\uc|control_bus[14]~3_combout\ & ((\regA|temp\(2)))) # (\uc|control_bus[14]~3_combout\ & (\regR|temp\(2))) ) ) ) # ( \uc|control_bus[13]~2_combout\ & ( 
-- !\mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (\regB|temp\(2) & !\uc|control_bus[14]~3_combout\) ) ) ) # ( !\uc|control_bus[13]~2_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\uc|control_bus[14]~3_combout\ & 
-- ((\regA|temp\(2)))) # (\uc|control_bus[14]~3_combout\ & (\regR|temp\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp\(2),
	datab => \uc|ALT_INV_control_bus[14]~3_combout\,
	datac => \regR|ALT_INV_temp\(2),
	datad => \regA|ALT_INV_temp\(2),
	datae => \uc|ALT_INV_control_bus[13]~2_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \m12|Mux5~0_combout\);

-- Location: LABCELL_X32_Y3_N42
\alu|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~13_sumout\ = SUM(( \m11|Mux4~0_combout\ ) + ( !\m12|Mux4~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \alu|Add0~10\ ))
-- \alu|Add0~14\ = CARRY(( \m11|Mux4~0_combout\ ) + ( !\m12|Mux4~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \alu|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100011100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr4~0_combout\,
	datab => \uc|ALT_INV_WideOr22~0_combout\,
	datac => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datad => \m11|ALT_INV_Mux4~0_combout\,
	dataf => \m12|ALT_INV_Mux4~0_combout\,
	cin => \alu|Add0~10\,
	sumout => \alu|Add0~13_sumout\,
	cout => \alu|Add0~14\);

-- Location: LABCELL_X32_Y4_N27
\alu|temp1[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|temp1\(3) = ( \alu|Add0~13_sumout\ & ( (!\alu|Mux22~0_combout\) # (\alu|temp1\(3)) ) ) # ( !\alu|Add0~13_sumout\ & ( (\alu|Mux22~0_combout\ & \alu|temp1\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|ALT_INV_Mux22~0_combout\,
	datad => \alu|ALT_INV_temp1\(3),
	dataf => \alu|ALT_INV_Add0~13_sumout\,
	combout => \alu|temp1\(3));

-- Location: LABCELL_X31_Y5_N24
\m6|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[3]~6_combout\ = ( \alu|temp1\(3) & ( \regR|temp[0]~1_combout\ & ( (!\m12|Mux4~0_combout\ & (((!\regR|temp[0]~0_combout\)) # (\uc|control_bus[12]~4_combout\))) # (\m12|Mux4~0_combout\ & (!\uc|control_bus[12]~4_combout\ & (\m11|Mux4~0_combout\ & 
-- \regR|temp[0]~0_combout\))) ) ) ) # ( !\alu|temp1\(3) & ( \regR|temp[0]~1_combout\ & ( (!\m12|Mux4~0_combout\ & (((!\regR|temp[0]~0_combout\)) # (\uc|control_bus[12]~4_combout\))) # (\m12|Mux4~0_combout\ & (!\uc|control_bus[12]~4_combout\ & 
-- (\m11|Mux4~0_combout\ & \regR|temp[0]~0_combout\))) ) ) ) # ( \alu|temp1\(3) & ( !\regR|temp[0]~1_combout\ & ( (!\m12|Mux4~0_combout\ & (((!\regR|temp[0]~0_combout\) # (\m11|Mux4~0_combout\)) # (\uc|control_bus[12]~4_combout\))) # (\m12|Mux4~0_combout\ & 
-- (!\uc|control_bus[12]~4_combout\)) ) ) ) # ( !\alu|temp1\(3) & ( !\regR|temp[0]~1_combout\ & ( (!\uc|control_bus[12]~4_combout\ & (\regR|temp[0]~0_combout\ & ((\m11|Mux4~0_combout\) # (\m12|Mux4~0_combout\)))) # (\uc|control_bus[12]~4_combout\ & 
-- (!\m12|Mux4~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001101110111011100110111010101010001001101010101000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m12|ALT_INV_Mux4~0_combout\,
	datab => \uc|ALT_INV_control_bus[12]~4_combout\,
	datac => \m11|ALT_INV_Mux4~0_combout\,
	datad => \regR|ALT_INV_temp[0]~0_combout\,
	datae => \alu|ALT_INV_temp1\(3),
	dataf => \regR|ALT_INV_temp[0]~1_combout\,
	combout => \m6|saida[3]~6_combout\);

-- Location: LABCELL_X31_Y5_N0
\m6|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[3]~7_combout\ = ( \regB|temp\(3) & ( \m6|saida[3]~6_combout\ & ( (!\uc|Selector8~1_combout\ & (((\uc|Selector9~0_combout\)) # (\mem|inst1|altsyncram_component|auto_generated|q_a\(3)))) # (\uc|Selector8~1_combout\ & (((!\uc|Selector9~0_combout\) 
-- # (\regA|temp\(3))))) ) ) ) # ( !\regB|temp\(3) & ( \m6|saida[3]~6_combout\ & ( (!\uc|Selector8~1_combout\ & (((\uc|Selector9~0_combout\)) # (\mem|inst1|altsyncram_component|auto_generated|q_a\(3)))) # (\uc|Selector8~1_combout\ & 
-- (((\uc|Selector9~0_combout\ & \regA|temp\(3))))) ) ) ) # ( \regB|temp\(3) & ( !\m6|saida[3]~6_combout\ & ( (!\uc|Selector8~1_combout\ & (\mem|inst1|altsyncram_component|auto_generated|q_a\(3) & (!\uc|Selector9~0_combout\))) # (\uc|Selector8~1_combout\ & 
-- (((!\uc|Selector9~0_combout\) # (\regA|temp\(3))))) ) ) ) # ( !\regB|temp\(3) & ( !\m6|saida[3]~6_combout\ & ( (!\uc|Selector8~1_combout\ & (\mem|inst1|altsyncram_component|auto_generated|q_a\(3) & (!\uc|Selector9~0_combout\))) # (\uc|Selector8~1_combout\ 
-- & (((\uc|Selector9~0_combout\ & \regA|temp\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datab => \uc|ALT_INV_Selector8~1_combout\,
	datac => \uc|ALT_INV_Selector9~0_combout\,
	datad => \regA|ALT_INV_temp\(3),
	datae => \regB|ALT_INV_temp\(3),
	dataf => \m6|ALT_INV_saida[3]~6_combout\,
	combout => \m6|saida[3]~7_combout\);

-- Location: FF_X31_Y5_N2
\regR|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|saida[3]~7_combout\,
	asdata => \sw[3]~input_o\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regR|temp[0]~3_combout\,
	sload => \uc|WideOr19~0_combout\,
	ena => \uc|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regR|temp\(3));

-- Location: LABCELL_X26_Y4_N30
\m5|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m5|saida[3]~3_combout\ = ( \regB|temp[1]~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (\regA|temp\(3)) # (\regB|temp[1]~1_combout\) ) ) ) # ( !\regB|temp[1]~0_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (!\regB|temp[1]~1_combout\ & (\sw[3]~input_o\)) # (\regB|temp[1]~1_combout\ & ((\regR|temp\(3)))) ) ) ) # ( \regB|temp[1]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (!\regB|temp[1]~1_combout\ & \regA|temp\(3)) ) ) ) # ( !\regB|temp[1]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (!\regB|temp[1]~1_combout\ & (\sw[3]~input_o\)) # (\regB|temp[1]~1_combout\ & ((\regR|temp\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000001100110001000111010001110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[3]~input_o\,
	datab => \regB|ALT_INV_temp[1]~1_combout\,
	datac => \regR|ALT_INV_temp\(3),
	datad => \regA|ALT_INV_temp\(3),
	datae => \regB|ALT_INV_temp[1]~0_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \m5|saida[3]~3_combout\);

-- Location: FF_X26_Y4_N32
\regB|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m5|saida[3]~3_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regB|temp[1]~2_combout\,
	ena => \uc|WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regB|temp\(3));

-- Location: LABCELL_X32_Y6_N48
\m4|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m4|saida[3]~3_combout\ = ( \regA|temp[0]~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (\regB|temp\(3)) # (\regA|temp[0]~1_combout\) ) ) ) # ( !\regA|temp[0]~0_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (!\regA|temp[0]~1_combout\ & (\sw[3]~input_o\)) # (\regA|temp[0]~1_combout\ & ((\regR|temp\(3)))) ) ) ) # ( \regA|temp[0]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( 
-- (!\regA|temp[0]~1_combout\ & \regB|temp\(3)) ) ) ) # ( !\regA|temp[0]~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (!\regA|temp[0]~1_combout\ & (\sw[3]~input_o\)) # (\regA|temp[0]~1_combout\ & ((\regR|temp\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|ALT_INV_temp[0]~1_combout\,
	datab => \regB|ALT_INV_temp\(3),
	datac => \ALT_INV_sw[3]~input_o\,
	datad => \regR|ALT_INV_temp\(3),
	datae => \regA|ALT_INV_temp[0]~0_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \m4|saida[3]~3_combout\);

-- Location: FF_X32_Y6_N50
\regA|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m4|saida[3]~3_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regA|temp[0]~2_combout\,
	ena => \uc|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|temp\(3));

-- Location: LABCELL_X32_Y5_N51
\m11|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m11|Mux4~0_combout\ = ( \ir|temp[2]~DUPLICATE_q\ & ( \uc|WideOr22~combout\ & ( \regA|temp\(3) ) ) ) # ( !\ir|temp[2]~DUPLICATE_q\ & ( \uc|WideOr22~combout\ & ( \regA|temp\(3) ) ) ) # ( \ir|temp[2]~DUPLICATE_q\ & ( !\uc|WideOr22~combout\ & ( 
-- (\regB|temp\(3) & !\ir|temp[3]~DUPLICATE_q\) ) ) ) # ( !\ir|temp[2]~DUPLICATE_q\ & ( !\uc|WideOr22~combout\ & ( (!\ir|temp[3]~DUPLICATE_q\ & (\regA|temp\(3))) # (\ir|temp[3]~DUPLICATE_q\ & ((\regR|temp\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|ALT_INV_temp\(3),
	datab => \regB|ALT_INV_temp\(3),
	datac => \regR|ALT_INV_temp\(3),
	datad => \ir|ALT_INV_temp[3]~DUPLICATE_q\,
	datae => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	dataf => \uc|ALT_INV_WideOr22~combout\,
	combout => \m11|Mux4~0_combout\);

-- Location: LABCELL_X32_Y3_N45
\alu|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~17_sumout\ = SUM(( !\m12|Mux3~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \m11|Mux3~0_combout\ ) + ( \alu|Add0~14\ ))
-- \alu|Add0~18\ = CARRY(( !\m12|Mux3~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \m11|Mux3~0_combout\ ) + ( \alu|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100111000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr4~0_combout\,
	datab => \uc|ALT_INV_WideOr22~0_combout\,
	datac => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datad => \m12|ALT_INV_Mux3~0_combout\,
	dataf => \m11|ALT_INV_Mux3~0_combout\,
	cin => \alu|Add0~14\,
	sumout => \alu|Add0~17_sumout\,
	cout => \alu|Add0~18\);

-- Location: LABCELL_X32_Y3_N12
\alu|temp1[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|temp1\(4) = ( \alu|Mux22~0_combout\ & ( \alu|temp1\(4) ) ) # ( !\alu|Mux22~0_combout\ & ( \alu|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Add0~17_sumout\,
	datab => \alu|ALT_INV_temp1\(4),
	dataf => \alu|ALT_INV_Mux22~0_combout\,
	combout => \alu|temp1\(4));

-- Location: LABCELL_X31_Y5_N54
\m6|saida[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[4]~8_combout\ = ( \alu|temp1\(4) & ( \regR|temp[0]~1_combout\ & ( (!\regR|temp[0]~0_combout\ & (((!\m12|Mux3~0_combout\)))) # (\regR|temp[0]~0_combout\ & ((!\uc|control_bus[12]~4_combout\ & (\m12|Mux3~0_combout\ & \m11|Mux3~0_combout\)) # 
-- (\uc|control_bus[12]~4_combout\ & (!\m12|Mux3~0_combout\)))) ) ) ) # ( !\alu|temp1\(4) & ( \regR|temp[0]~1_combout\ & ( (!\regR|temp[0]~0_combout\ & (((!\m12|Mux3~0_combout\)))) # (\regR|temp[0]~0_combout\ & ((!\uc|control_bus[12]~4_combout\ & 
-- (\m12|Mux3~0_combout\ & \m11|Mux3~0_combout\)) # (\uc|control_bus[12]~4_combout\ & (!\m12|Mux3~0_combout\)))) ) ) ) # ( \alu|temp1\(4) & ( !\regR|temp[0]~1_combout\ & ( (!\uc|control_bus[12]~4_combout\ & ((!\regR|temp[0]~0_combout\) # 
-- ((\m11|Mux3~0_combout\) # (\m12|Mux3~0_combout\)))) # (\uc|control_bus[12]~4_combout\ & (((!\m12|Mux3~0_combout\)))) ) ) ) # ( !\alu|temp1\(4) & ( !\regR|temp[0]~1_combout\ & ( (!\uc|control_bus[12]~4_combout\ & (\regR|temp[0]~0_combout\ & 
-- ((\m11|Mux3~0_combout\) # (\m12|Mux3~0_combout\)))) # (\uc|control_bus[12]~4_combout\ & (((!\m12|Mux3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010001110100101111001111110010110000101101001011000010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp[0]~0_combout\,
	datab => \uc|ALT_INV_control_bus[12]~4_combout\,
	datac => \m12|ALT_INV_Mux3~0_combout\,
	datad => \m11|ALT_INV_Mux3~0_combout\,
	datae => \alu|ALT_INV_temp1\(4),
	dataf => \regR|ALT_INV_temp[0]~1_combout\,
	combout => \m6|saida[4]~8_combout\);

-- Location: LABCELL_X31_Y5_N48
\m6|saida[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[4]~9_combout\ = ( \mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( \m6|saida[4]~8_combout\ & ( (!\uc|Selector8~1_combout\) # ((!\uc|Selector9~0_combout\ & (\regB|temp\(4))) # (\uc|Selector9~0_combout\ & ((\regA|temp\(4))))) ) ) ) # ( 
-- !\mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( \m6|saida[4]~8_combout\ & ( (!\uc|Selector9~0_combout\ & (\regB|temp\(4) & ((\uc|Selector8~1_combout\)))) # (\uc|Selector9~0_combout\ & (((!\uc|Selector8~1_combout\) # (\regA|temp\(4))))) ) ) ) # 
-- ( \mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( !\m6|saida[4]~8_combout\ & ( (!\uc|Selector9~0_combout\ & (((!\uc|Selector8~1_combout\)) # (\regB|temp\(4)))) # (\uc|Selector9~0_combout\ & (((\regA|temp\(4) & \uc|Selector8~1_combout\)))) ) ) ) 
-- # ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( !\m6|saida[4]~8_combout\ & ( (\uc|Selector8~1_combout\ & ((!\uc|Selector9~0_combout\ & (\regB|temp\(4))) # (\uc|Selector9~0_combout\ & ((\regA|temp\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp\(4),
	datab => \regA|ALT_INV_temp\(4),
	datac => \uc|ALT_INV_Selector9~0_combout\,
	datad => \uc|ALT_INV_Selector8~1_combout\,
	datae => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	dataf => \m6|ALT_INV_saida[4]~8_combout\,
	combout => \m6|saida[4]~9_combout\);

-- Location: IOIBUF_X36_Y0_N35
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: FF_X31_Y5_N50
\regR|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|saida[4]~9_combout\,
	asdata => \sw[4]~input_o\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regR|temp[0]~3_combout\,
	sload => \uc|WideOr19~0_combout\,
	ena => \uc|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regR|temp\(4));

-- Location: LABCELL_X29_Y3_N6
\m5|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m5|saida[4]~4_combout\ = ( \regA|temp\(4) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( ((!\regB|temp[1]~1_combout\ & ((\sw[4]~input_o\))) # (\regB|temp[1]~1_combout\ & (\regR|temp\(4)))) # (\regB|temp[1]~0_combout\) ) ) ) # ( 
-- !\regA|temp\(4) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\regB|temp[1]~1_combout\ & (((\sw[4]~input_o\ & !\regB|temp[1]~0_combout\)))) # (\regB|temp[1]~1_combout\ & (((\regB|temp[1]~0_combout\)) # (\regR|temp\(4)))) ) ) ) # ( 
-- \regA|temp\(4) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\regB|temp[1]~1_combout\ & (((\regB|temp[1]~0_combout\) # (\sw[4]~input_o\)))) # (\regB|temp[1]~1_combout\ & (\regR|temp\(4) & ((!\regB|temp[1]~0_combout\)))) ) ) ) # ( 
-- !\regA|temp\(4) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\regB|temp[1]~0_combout\ & ((!\regB|temp[1]~1_combout\ & ((\sw[4]~input_o\))) # (\regB|temp[1]~1_combout\ & (\regR|temp\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp[1]~1_combout\,
	datab => \regR|ALT_INV_temp\(4),
	datac => \ALT_INV_sw[4]~input_o\,
	datad => \regB|ALT_INV_temp[1]~0_combout\,
	datae => \regA|ALT_INV_temp\(4),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \m5|saida[4]~4_combout\);

-- Location: FF_X29_Y3_N8
\regB|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m5|saida[4]~4_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regB|temp[1]~2_combout\,
	ena => \uc|WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regB|temp\(4));

-- Location: LABCELL_X31_Y6_N42
\m4|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m4|saida[4]~4_combout\ = ( \regR|temp\(4) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( ((!\regA|temp[0]~0_combout\ & ((\sw[4]~input_o\))) # (\regA|temp[0]~0_combout\ & (\regB|temp\(4)))) # (\regA|temp[0]~1_combout\) ) ) ) # ( 
-- !\regR|temp\(4) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\regA|temp[0]~1_combout\ & ((!\regA|temp[0]~0_combout\ & ((\sw[4]~input_o\))) # (\regA|temp[0]~0_combout\ & (\regB|temp\(4))))) # (\regA|temp[0]~1_combout\ & 
-- (((\regA|temp[0]~0_combout\)))) ) ) ) # ( \regR|temp\(4) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\regA|temp[0]~1_combout\ & ((!\regA|temp[0]~0_combout\ & ((\sw[4]~input_o\))) # (\regA|temp[0]~0_combout\ & (\regB|temp\(4))))) # 
-- (\regA|temp[0]~1_combout\ & (((!\regA|temp[0]~0_combout\)))) ) ) ) # ( !\regR|temp\(4) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\regA|temp[0]~1_combout\ & ((!\regA|temp[0]~0_combout\ & ((\sw[4]~input_o\))) # 
-- (\regA|temp[0]~0_combout\ & (\regB|temp\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp\(4),
	datab => \regA|ALT_INV_temp[0]~1_combout\,
	datac => \ALT_INV_sw[4]~input_o\,
	datad => \regA|ALT_INV_temp[0]~0_combout\,
	datae => \regR|ALT_INV_temp\(4),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \m4|saida[4]~4_combout\);

-- Location: FF_X31_Y6_N44
\regA|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m4|saida[4]~4_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regA|temp[0]~2_combout\,
	ena => \uc|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|temp\(4));

-- Location: LABCELL_X32_Y3_N0
\m12|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m12|Mux3~0_combout\ = ( \uc|control_bus[13]~2_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (\regB|temp\(4)) # (\uc|control_bus[14]~3_combout\) ) ) ) # ( !\uc|control_bus[13]~2_combout\ & ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\uc|control_bus[14]~3_combout\ & (\regA|temp\(4))) # (\uc|control_bus[14]~3_combout\ & ((\regR|temp\(4)))) ) ) ) # ( \uc|control_bus[13]~2_combout\ & ( 
-- !\mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\uc|control_bus[14]~3_combout\ & \regB|temp\(4)) ) ) ) # ( !\uc|control_bus[13]~2_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\uc|control_bus[14]~3_combout\ & 
-- (\regA|temp\(4))) # (\uc|control_bus[14]~3_combout\ & ((\regR|temp\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[14]~3_combout\,
	datab => \regA|ALT_INV_temp\(4),
	datac => \regR|ALT_INV_temp\(4),
	datad => \regB|ALT_INV_temp\(4),
	datae => \uc|ALT_INV_control_bus[13]~2_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \m12|Mux3~0_combout\);

-- Location: LABCELL_X32_Y3_N48
\alu|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~21_sumout\ = SUM(( \m11|Mux2~0_combout\ ) + ( !\m12|Mux2~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \alu|Add0~18\ ))
-- \alu|Add0~22\ = CARRY(( \m11|Mux2~0_combout\ ) + ( !\m12|Mux2~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \alu|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100011100111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr4~0_combout\,
	datab => \uc|ALT_INV_WideOr22~0_combout\,
	datac => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datad => \m11|ALT_INV_Mux2~0_combout\,
	dataf => \m12|ALT_INV_Mux2~0_combout\,
	cin => \alu|Add0~18\,
	sumout => \alu|Add0~21_sumout\,
	cout => \alu|Add0~22\);

-- Location: LABCELL_X31_Y5_N15
\alu|temp1[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|temp1\(5) = ( \alu|Mux22~0_combout\ & ( \alu|temp1\(5) ) ) # ( !\alu|Mux22~0_combout\ & ( \alu|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|ALT_INV_temp1\(5),
	datad => \alu|ALT_INV_Add0~21_sumout\,
	dataf => \alu|ALT_INV_Mux22~0_combout\,
	combout => \alu|temp1\(5));

-- Location: LABCELL_X31_Y5_N21
\m6|saida[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[5]~10_combout\ = ( \m12|Mux2~0_combout\ & ( \regR|temp[0]~1_combout\ & ( (\regR|temp[0]~0_combout\ & (!\uc|control_bus[12]~4_combout\ & \m11|Mux2~0_combout\)) ) ) ) # ( !\m12|Mux2~0_combout\ & ( \regR|temp[0]~1_combout\ & ( 
-- (!\regR|temp[0]~0_combout\) # (\uc|control_bus[12]~4_combout\) ) ) ) # ( \m12|Mux2~0_combout\ & ( !\regR|temp[0]~1_combout\ & ( (!\uc|control_bus[12]~4_combout\ & ((\alu|temp1\(5)) # (\regR|temp[0]~0_combout\))) ) ) ) # ( !\m12|Mux2~0_combout\ & ( 
-- !\regR|temp[0]~1_combout\ & ( ((!\regR|temp[0]~0_combout\ & ((\alu|temp1\(5)))) # (\regR|temp[0]~0_combout\ & (\m11|Mux2~0_combout\))) # (\uc|control_bus[12]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110111111010001001100110010111011101110110000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp[0]~0_combout\,
	datab => \uc|ALT_INV_control_bus[12]~4_combout\,
	datac => \m11|ALT_INV_Mux2~0_combout\,
	datad => \alu|ALT_INV_temp1\(5),
	datae => \m12|ALT_INV_Mux2~0_combout\,
	dataf => \regR|ALT_INV_temp[0]~1_combout\,
	combout => \m6|saida[5]~10_combout\);

-- Location: LABCELL_X31_Y5_N30
\m6|saida[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[5]~11_combout\ = ( \regA|temp\(5) & ( \m6|saida[5]~10_combout\ & ( ((!\uc|Selector8~1_combout\ & (\mem|inst1|altsyncram_component|auto_generated|q_a\(5))) # (\uc|Selector8~1_combout\ & ((\regB|temp\(5))))) # (\uc|Selector9~0_combout\) ) ) ) # ( 
-- !\regA|temp\(5) & ( \m6|saida[5]~10_combout\ & ( (!\uc|Selector9~0_combout\ & ((!\uc|Selector8~1_combout\ & (\mem|inst1|altsyncram_component|auto_generated|q_a\(5))) # (\uc|Selector8~1_combout\ & ((\regB|temp\(5)))))) # (\uc|Selector9~0_combout\ & 
-- (((!\uc|Selector8~1_combout\)))) ) ) ) # ( \regA|temp\(5) & ( !\m6|saida[5]~10_combout\ & ( (!\uc|Selector9~0_combout\ & ((!\uc|Selector8~1_combout\ & (\mem|inst1|altsyncram_component|auto_generated|q_a\(5))) # (\uc|Selector8~1_combout\ & 
-- ((\regB|temp\(5)))))) # (\uc|Selector9~0_combout\ & (((\uc|Selector8~1_combout\)))) ) ) ) # ( !\regA|temp\(5) & ( !\m6|saida[5]~10_combout\ & ( (!\uc|Selector9~0_combout\ & ((!\uc|Selector8~1_combout\ & 
-- (\mem|inst1|altsyncram_component|auto_generated|q_a\(5))) # (\uc|Selector8~1_combout\ & ((\regB|temp\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100101111101110111000010100111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_Selector9~0_combout\,
	datab => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	datac => \regB|ALT_INV_temp\(5),
	datad => \uc|ALT_INV_Selector8~1_combout\,
	datae => \regA|ALT_INV_temp\(5),
	dataf => \m6|ALT_INV_saida[5]~10_combout\,
	combout => \m6|saida[5]~11_combout\);

-- Location: FF_X31_Y5_N32
\regR|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|saida[5]~11_combout\,
	asdata => \sw[5]~input_o\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regR|temp[0]~3_combout\,
	sload => \uc|WideOr19~0_combout\,
	ena => \uc|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regR|temp\(5));

-- Location: LABCELL_X31_Y5_N36
\m11|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m11|Mux2~0_combout\ = ( \regA|temp\(5) & ( \regB|temp\(5) & ( (!\ir|temp\(3)) # (((!\ir|temp[2]~DUPLICATE_q\ & \regR|temp\(5))) # (\uc|WideOr22~combout\)) ) ) ) # ( !\regA|temp\(5) & ( \regB|temp\(5) & ( (!\uc|WideOr22~combout\ & 
-- ((!\ir|temp[2]~DUPLICATE_q\ & (\regR|temp\(5) & \ir|temp\(3))) # (\ir|temp[2]~DUPLICATE_q\ & ((!\ir|temp\(3)))))) ) ) ) # ( \regA|temp\(5) & ( !\regB|temp\(5) & ( ((!\ir|temp[2]~DUPLICATE_q\ & ((!\ir|temp\(3)) # (\regR|temp\(5))))) # 
-- (\uc|WideOr22~combout\) ) ) ) # ( !\regA|temp\(5) & ( !\regB|temp\(5) & ( (!\ir|temp[2]~DUPLICATE_q\ & (\regR|temp\(5) & (\ir|temp\(3) & !\uc|WideOr22~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000101000101111111101010010000000001111001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datab => \regR|ALT_INV_temp\(5),
	datac => \ir|ALT_INV_temp\(3),
	datad => \uc|ALT_INV_WideOr22~combout\,
	datae => \regA|ALT_INV_temp\(5),
	dataf => \regB|ALT_INV_temp\(5),
	combout => \m11|Mux2~0_combout\);

-- Location: LABCELL_X32_Y3_N51
\alu|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~25_sumout\ = SUM(( !\m12|Mux1~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \m11|Mux1~0_combout\ ) + ( \alu|Add0~22\ ))
-- \alu|Add0~26\ = CARRY(( !\m12|Mux1~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \m11|Mux1~0_combout\ ) + ( \alu|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100111000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr4~0_combout\,
	datab => \uc|ALT_INV_WideOr22~0_combout\,
	datac => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datad => \m12|ALT_INV_Mux1~0_combout\,
	dataf => \m11|ALT_INV_Mux1~0_combout\,
	cin => \alu|Add0~22\,
	sumout => \alu|Add0~25_sumout\,
	cout => \alu|Add0~26\);

-- Location: LABCELL_X32_Y3_N21
\alu|temp1[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|temp1\(6) = ( \alu|Mux22~0_combout\ & ( \alu|temp1\(6) ) ) # ( !\alu|Mux22~0_combout\ & ( \alu|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \alu|ALT_INV_Add0~25_sumout\,
	datad => \alu|ALT_INV_temp1\(6),
	dataf => \alu|ALT_INV_Mux22~0_combout\,
	combout => \alu|temp1\(6));

-- Location: LABCELL_X31_Y2_N12
\m6|saida[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[6]~12_combout\ = ( \regR|temp[0]~1_combout\ & ( \alu|temp1\(6) & ( (!\uc|control_bus[12]~4_combout\ & ((!\m12|Mux1~0_combout\ & (!\regR|temp[0]~0_combout\)) # (\m12|Mux1~0_combout\ & (\regR|temp[0]~0_combout\ & \m11|Mux1~0_combout\)))) # 
-- (\uc|control_bus[12]~4_combout\ & (!\m12|Mux1~0_combout\)) ) ) ) # ( !\regR|temp[0]~1_combout\ & ( \alu|temp1\(6) & ( (!\uc|control_bus[12]~4_combout\ & (((!\regR|temp[0]~0_combout\) # (\m11|Mux1~0_combout\)) # (\m12|Mux1~0_combout\))) # 
-- (\uc|control_bus[12]~4_combout\ & (!\m12|Mux1~0_combout\)) ) ) ) # ( \regR|temp[0]~1_combout\ & ( !\alu|temp1\(6) & ( (!\uc|control_bus[12]~4_combout\ & ((!\m12|Mux1~0_combout\ & (!\regR|temp[0]~0_combout\)) # (\m12|Mux1~0_combout\ & 
-- (\regR|temp[0]~0_combout\ & \m11|Mux1~0_combout\)))) # (\uc|control_bus[12]~4_combout\ & (!\m12|Mux1~0_combout\)) ) ) ) # ( !\regR|temp[0]~1_combout\ & ( !\alu|temp1\(6) & ( (!\uc|control_bus[12]~4_combout\ & (\regR|temp[0]~0_combout\ & 
-- ((\m11|Mux1~0_combout\) # (\m12|Mux1~0_combout\)))) # (\uc|control_bus[12]~4_combout\ & (!\m12|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011001001110110001001100011011100110111011101100010011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[12]~4_combout\,
	datab => \m12|ALT_INV_Mux1~0_combout\,
	datac => \regR|ALT_INV_temp[0]~0_combout\,
	datad => \m11|ALT_INV_Mux1~0_combout\,
	datae => \regR|ALT_INV_temp[0]~1_combout\,
	dataf => \alu|ALT_INV_temp1\(6),
	combout => \m6|saida[6]~12_combout\);

-- Location: LABCELL_X31_Y2_N0
\m6|saida[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[6]~13_combout\ = ( \regB|temp\(6) & ( \m6|saida[6]~12_combout\ & ( (!\uc|Selector9~0_combout\ & (((\mem|inst1|altsyncram_component|auto_generated|q_a\(6))) # (\uc|Selector8~1_combout\))) # (\uc|Selector9~0_combout\ & ((!\uc|Selector8~1_combout\) 
-- # ((\regA|temp\(6))))) ) ) ) # ( !\regB|temp\(6) & ( \m6|saida[6]~12_combout\ & ( (!\uc|Selector9~0_combout\ & (!\uc|Selector8~1_combout\ & (\mem|inst1|altsyncram_component|auto_generated|q_a\(6)))) # (\uc|Selector9~0_combout\ & 
-- ((!\uc|Selector8~1_combout\) # ((\regA|temp\(6))))) ) ) ) # ( \regB|temp\(6) & ( !\m6|saida[6]~12_combout\ & ( (!\uc|Selector9~0_combout\ & (((\mem|inst1|altsyncram_component|auto_generated|q_a\(6))) # (\uc|Selector8~1_combout\))) # 
-- (\uc|Selector9~0_combout\ & (\uc|Selector8~1_combout\ & ((\regA|temp\(6))))) ) ) ) # ( !\regB|temp\(6) & ( !\m6|saida[6]~12_combout\ & ( (!\uc|Selector9~0_combout\ & (!\uc|Selector8~1_combout\ & (\mem|inst1|altsyncram_component|auto_generated|q_a\(6)))) # 
-- (\uc|Selector9~0_combout\ & (\uc|Selector8~1_combout\ & ((\regA|temp\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_Selector9~0_combout\,
	datab => \uc|ALT_INV_Selector8~1_combout\,
	datac => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	datad => \regA|ALT_INV_temp\(6),
	datae => \regB|ALT_INV_temp\(6),
	dataf => \m6|ALT_INV_saida[6]~12_combout\,
	combout => \m6|saida[6]~13_combout\);

-- Location: FF_X31_Y2_N2
\regR|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|saida[6]~13_combout\,
	asdata => \sw[6]~input_o\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regR|temp[0]~3_combout\,
	sload => \uc|WideOr19~0_combout\,
	ena => \uc|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regR|temp\(6));

-- Location: LABCELL_X31_Y6_N30
\m4|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m4|saida[6]~6_combout\ = ( \sw[6]~input_o\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\regA|temp[0]~1_combout\ & (((!\regA|temp[0]~0_combout\)) # (\regB|temp\(6)))) # (\regA|temp[0]~1_combout\ & (((\regA|temp[0]~0_combout\) # 
-- (\regR|temp\(6))))) ) ) ) # ( !\sw[6]~input_o\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\regA|temp[0]~1_combout\ & (\regB|temp\(6) & ((\regA|temp[0]~0_combout\)))) # (\regA|temp[0]~1_combout\ & (((\regA|temp[0]~0_combout\) # 
-- (\regR|temp\(6))))) ) ) ) # ( \sw[6]~input_o\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\regA|temp[0]~1_combout\ & (((!\regA|temp[0]~0_combout\)) # (\regB|temp\(6)))) # (\regA|temp[0]~1_combout\ & (((\regR|temp\(6) & 
-- !\regA|temp[0]~0_combout\)))) ) ) ) # ( !\sw[6]~input_o\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\regA|temp[0]~1_combout\ & (\regB|temp\(6) & ((\regA|temp[0]~0_combout\)))) # (\regA|temp[0]~1_combout\ & (((\regR|temp\(6) & 
-- !\regA|temp[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp\(6),
	datab => \regA|ALT_INV_temp[0]~1_combout\,
	datac => \regR|ALT_INV_temp\(6),
	datad => \regA|ALT_INV_temp[0]~0_combout\,
	datae => \ALT_INV_sw[6]~input_o\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \m4|saida[6]~6_combout\);

-- Location: FF_X31_Y6_N32
\regA|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m4|saida[6]~6_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regA|temp[0]~2_combout\,
	ena => \uc|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|temp\(6));

-- Location: LABCELL_X26_Y4_N0
\m5|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m5|saida[6]~6_combout\ = ( \regR|temp\(6) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( ((!\regB|temp[1]~0_combout\ & (\sw[6]~input_o\)) # (\regB|temp[1]~0_combout\ & ((\regA|temp\(6))))) # (\regB|temp[1]~1_combout\) ) ) ) # ( 
-- !\regR|temp\(6) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\regB|temp[1]~0_combout\ & (!\regB|temp[1]~1_combout\ & (\sw[6]~input_o\))) # (\regB|temp[1]~0_combout\ & (((\regA|temp\(6))) # (\regB|temp[1]~1_combout\))) ) ) ) # ( 
-- \regR|temp\(6) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\regB|temp[1]~0_combout\ & (((\sw[6]~input_o\)) # (\regB|temp[1]~1_combout\))) # (\regB|temp[1]~0_combout\ & (!\regB|temp[1]~1_combout\ & ((\regA|temp\(6))))) ) ) ) # ( 
-- !\regR|temp\(6) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\regB|temp[1]~1_combout\ & ((!\regB|temp[1]~0_combout\ & (\sw[6]~input_o\)) # (\regB|temp[1]~0_combout\ & ((\regA|temp\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp[1]~0_combout\,
	datab => \regB|ALT_INV_temp[1]~1_combout\,
	datac => \ALT_INV_sw[6]~input_o\,
	datad => \regA|ALT_INV_temp\(6),
	datae => \regR|ALT_INV_temp\(6),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \m5|saida[6]~6_combout\);

-- Location: FF_X26_Y4_N2
\regB|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m5|saida[6]~6_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regB|temp[1]~2_combout\,
	ena => \uc|WideOr21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regB|temp\(6));

-- Location: LABCELL_X31_Y2_N54
\m12|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m12|Mux1~0_combout\ = ( \regR|temp\(6) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( ((!\uc|control_bus[13]~2_combout\ & ((\regA|temp\(6)))) # (\uc|control_bus[13]~2_combout\ & (\regB|temp\(6)))) # (\uc|control_bus[14]~3_combout\) ) ) ) 
-- # ( !\regR|temp\(6) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\uc|control_bus[14]~3_combout\ & ((!\uc|control_bus[13]~2_combout\ & ((\regA|temp\(6)))) # (\uc|control_bus[13]~2_combout\ & (\regB|temp\(6))))) # 
-- (\uc|control_bus[14]~3_combout\ & (\uc|control_bus[13]~2_combout\)) ) ) ) # ( \regR|temp\(6) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\uc|control_bus[14]~3_combout\ & ((!\uc|control_bus[13]~2_combout\ & ((\regA|temp\(6)))) # 
-- (\uc|control_bus[13]~2_combout\ & (\regB|temp\(6))))) # (\uc|control_bus[14]~3_combout\ & (!\uc|control_bus[13]~2_combout\)) ) ) ) # ( !\regR|temp\(6) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\uc|control_bus[14]~3_combout\ & 
-- ((!\uc|control_bus[13]~2_combout\ & ((\regA|temp\(6)))) # (\uc|control_bus[13]~2_combout\ & (\regB|temp\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[14]~3_combout\,
	datab => \uc|ALT_INV_control_bus[13]~2_combout\,
	datac => \regB|ALT_INV_temp\(6),
	datad => \regA|ALT_INV_temp\(6),
	datae => \regR|ALT_INV_temp\(6),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \m12|Mux1~0_combout\);

-- Location: LABCELL_X32_Y3_N54
\alu|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~29_sumout\ = SUM(( !\m12|Mux0~0_combout\ $ (((\uc|WideOr22~0_combout\ & ((!\ir|temp[4]~DUPLICATE_q\) # (\uc|WideOr4~0_combout\))))) ) + ( \m11|Mux0~0_combout\ ) + ( \alu|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100111000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr4~0_combout\,
	datab => \uc|ALT_INV_WideOr22~0_combout\,
	datac => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datad => \m12|ALT_INV_Mux0~0_combout\,
	dataf => \m11|ALT_INV_Mux0~0_combout\,
	cin => \alu|Add0~26\,
	sumout => \alu|Add0~29_sumout\);

-- Location: LABCELL_X32_Y3_N24
\alu|temp1[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|temp1\(7) = ( \alu|Mux22~0_combout\ & ( \alu|temp1\(7) ) ) # ( !\alu|Mux22~0_combout\ & ( \alu|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|ALT_INV_Add0~29_sumout\,
	datac => \alu|ALT_INV_temp1\(7),
	dataf => \alu|ALT_INV_Mux22~0_combout\,
	combout => \alu|temp1\(7));

-- Location: LABCELL_X32_Y4_N9
\sinal|temp\ : cyclonev_lcell_comb
-- Equation(s):
-- \sinal|temp~combout\ = ( \uc|cur_state.ini~q\ & ( (!\uc|WideOr22~0_combout\ & ((\alu|temp1\(7)))) # (\uc|WideOr22~0_combout\ & (\sinal|temp~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \sinal|ALT_INV_temp~combout\,
	datac => \uc|ALT_INV_WideOr22~0_combout\,
	datad => \alu|ALT_INV_temp1\(7),
	dataf => \uc|ALT_INV_cur_state.ini~q\,
	combout => \sinal|temp~combout\);

-- Location: LABCELL_X29_Y5_N24
\uc|next_state.JEQ_exec1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.JEQ_exec1~0_combout\ = ( \ir|temp\(6) & ( \uc|cur_state.decode~q\ & ( (\ir|temp[4]~DUPLICATE_q\ & (\ir|temp\(5) & !\ir|temp\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datab => \ir|ALT_INV_temp\(5),
	datac => \ir|ALT_INV_temp\(7),
	datae => \ir|ALT_INV_temp\(6),
	dataf => \uc|ALT_INV_cur_state.decode~q\,
	combout => \uc|next_state.JEQ_exec1~0_combout\);

-- Location: FF_X29_Y5_N25
\uc|cur_state.JEQ_exec1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.JEQ_exec1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JEQ_exec1~q\);

-- Location: FF_X35_Y4_N1
\uc|cur_state.JEQ_exec2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.JEQ_exec1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JEQ_exec2~q\);

-- Location: FF_X32_Y5_N26
\uc|cur_state.JEQ_exec3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.JEQ_exec2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JEQ_exec3~q\);

-- Location: FF_X35_Y4_N38
\uc|cur_state.JEQ_exec4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.JEQ_exec3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JEQ_exec4~q\);

-- Location: LABCELL_X32_Y4_N18
\alu|temp1[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|temp1\(0) = ( \alu|temp1\(0) & ( (\alu|Add0~1_sumout\) # (\alu|Mux22~0_combout\) ) ) # ( !\alu|temp1\(0) & ( (!\alu|Mux22~0_combout\ & \alu|Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu|ALT_INV_Mux22~0_combout\,
	datac => \alu|ALT_INV_Add0~1_sumout\,
	dataf => \alu|ALT_INV_temp1\(0),
	combout => \alu|temp1\(0));

-- Location: LABCELL_X32_Y4_N3
\alu|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal0~0_combout\ = ( !\alu|temp1\(3) & ( (!\alu|temp1\(0) & (!\alu|temp1\(1) & !\alu|temp1\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_temp1\(0),
	datac => \alu|ALT_INV_temp1\(1),
	datad => \alu|ALT_INV_temp1\(2),
	dataf => \alu|ALT_INV_temp1\(3),
	combout => \alu|Equal0~0_combout\);

-- Location: LABCELL_X32_Y4_N12
\alu|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Equal0~1_combout\ = ( !\alu|temp1\(5) & ( (!\alu|temp1\(4) & (!\alu|temp1\(6) & (!\alu|temp1\(7) & \alu|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_temp1\(4),
	datab => \alu|ALT_INV_temp1\(6),
	datac => \alu|ALT_INV_temp1\(7),
	datad => \alu|ALT_INV_Equal0~0_combout\,
	dataf => \alu|ALT_INV_temp1\(5),
	combout => \alu|Equal0~1_combout\);

-- Location: LABCELL_X32_Y4_N0
\zero|temp\ : cyclonev_lcell_comb
-- Equation(s):
-- \zero|temp~combout\ = ( \alu|Equal0~1_combout\ & ( (\uc|cur_state.ini~q\ & ((!\uc|WideOr22~0_combout\) # (\zero|temp~combout\))) ) ) # ( !\alu|Equal0~1_combout\ & ( (\zero|temp~combout\ & (\uc|cur_state.ini~q\ & \uc|WideOr22~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \zero|ALT_INV_temp~combout\,
	datac => \uc|ALT_INV_cur_state.ini~q\,
	datad => \uc|ALT_INV_WideOr22~0_combout\,
	dataf => \alu|ALT_INV_Equal0~1_combout\,
	combout => \zero|temp~combout\);

-- Location: MLABCELL_X34_Y4_N36
\pc|temp[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pc|temp[7]~0_combout\ = ( \zero|temp~combout\ & ( (((\uc|cur_state.JGR_exec4~q\ & !\sinal|temp~combout\)) # (\uc|cur_state.JEQ_exec4~q\)) # (\uc|cur_state.JMP_exec4~q\) ) ) # ( !\zero|temp~combout\ & ( ((\uc|cur_state.JGR_exec4~q\ & 
-- !\sinal|temp~combout\)) # (\uc|cur_state.JMP_exec4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001101110011111111110111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.JGR_exec4~q\,
	datab => \uc|ALT_INV_cur_state.JMP_exec4~q\,
	datac => \sinal|ALT_INV_temp~combout\,
	datad => \uc|ALT_INV_cur_state.JEQ_exec4~q\,
	dataf => \zero|ALT_INV_temp~combout\,
	combout => \pc|temp[7]~0_combout\);

-- Location: LABCELL_X32_Y5_N30
\uc|next_state.out1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.out1~1_combout\ = ( \uc|cur_state.decode~q\ & ( (\ir|temp\(6) & (\ir|temp\(7) & (\ir|temp[4]~DUPLICATE_q\ & !\ir|temp\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp\(6),
	datab => \ir|ALT_INV_temp\(7),
	datac => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datad => \ir|ALT_INV_temp\(5),
	dataf => \uc|ALT_INV_cur_state.decode~q\,
	combout => \uc|next_state.out1~1_combout\);

-- Location: FF_X32_Y5_N32
\uc|cur_state.out1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.out1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.out1~q\);

-- Location: MLABCELL_X34_Y2_N3
\uc|next_state.STORE_exec_imm_A1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.STORE_exec_imm_A1~0_combout\ = ( !\ir|temp\(3) & ( \uc|next_state.STORE_exec_imm_R1~0_combout\ & ( (!\ir|temp[4]~DUPLICATE_q\ & (\uc|Equal0~0_combout\ & !\ir|temp[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datab => \uc|ALT_INV_Equal0~0_combout\,
	datad => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datae => \ir|ALT_INV_temp\(3),
	dataf => \uc|ALT_INV_next_state.STORE_exec_imm_R1~0_combout\,
	combout => \uc|next_state.STORE_exec_imm_A1~0_combout\);

-- Location: FF_X34_Y2_N4
\uc|cur_state.STORE_exec_imm_A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.STORE_exec_imm_A1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_A1~q\);

-- Location: FF_X32_Y6_N5
\uc|cur_state.STORE_exec_imm_A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_A1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_A2~q\);

-- Location: FF_X32_Y6_N13
\uc|cur_state.STORE_exec_imm_A3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_A2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_A3~q\);

-- Location: FF_X32_Y2_N56
\uc|cur_state.STORE_exec_imm_A4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_A3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_A4~q\);

-- Location: FF_X32_Y2_N29
\uc|cur_state.STORE_exec_imm_A5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_A4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_A5~q\);

-- Location: LABCELL_X29_Y2_N24
\uc|WideOr33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr33~0_combout\ = ( !\uc|cur_state.STORE_exec_imm_A5~q\ & ( !\uc|cur_state.R_exec_imm3~q\ & ( (!\uc|cur_state.LOAD_exec_B2~q\ & (!\uc|cur_state.R_exec~q\ & (!\uc|cur_state.LOAD_exec_imm_R6~q\ & !\uc|cur_state.LOAD_exec_imm_A6~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.LOAD_exec_B2~q\,
	datab => \uc|ALT_INV_cur_state.R_exec~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_R6~q\,
	datad => \uc|ALT_INV_cur_state.LOAD_exec_imm_A6~q\,
	datae => \uc|ALT_INV_cur_state.STORE_exec_imm_A5~q\,
	dataf => \uc|ALT_INV_cur_state.R_exec_imm3~q\,
	combout => \uc|WideOr33~0_combout\);

-- Location: FF_X32_Y2_N40
\uc|cur_state.STORE_exec2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec2~DUPLICATE_q\);

-- Location: FF_X29_Y2_N13
\uc|cur_state.LOAD_exec_imm_B6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_B5~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_B6~q\);

-- Location: MLABCELL_X34_Y4_N6
\uc|WideOr6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr6~1_combout\ = ( !\uc|cur_state.LOAD_exec_imm_B6~q\ & ( (!\uc|cur_state.STORE_exec2~DUPLICATE_q\ & !\uc|cur_state.LOAD_exec_R2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_cur_state.STORE_exec2~DUPLICATE_q\,
	datad => \uc|ALT_INV_cur_state.LOAD_exec_R2~q\,
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_imm_B6~q\,
	combout => \uc|WideOr6~1_combout\);

-- Location: LABCELL_X32_Y2_N6
\uc|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr0~1_combout\ = ( !\uc|cur_state.in_b~DUPLICATE_q\ & ( (!\uc|cur_state.MOV_exec_imm_B3~q\ & (!\uc|cur_state.in_a~q\ & (!\uc|cur_state.MOV_exec_A~q\ & !\uc|cur_state.in_r~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.MOV_exec_imm_B3~q\,
	datab => \uc|ALT_INV_cur_state.in_a~q\,
	datac => \uc|ALT_INV_cur_state.MOV_exec_A~q\,
	datad => \uc|ALT_INV_cur_state.in_r~q\,
	dataf => \uc|ALT_INV_cur_state.in_b~DUPLICATE_q\,
	combout => \uc|WideOr0~1_combout\);

-- Location: LABCELL_X32_Y6_N42
\uc|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr0~0_combout\ = ( !\uc|cur_state.MOV_exec_imm_R3~q\ & ( (!\uc|cur_state.STORE_exec_imm_R5~q\ & (!\uc|cur_state.MOV_exec_imm_A3~q\ & (!\uc|cur_state.MOV_exec_R~q\ & !\uc|cur_state.MOV_exec_B~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.STORE_exec_imm_R5~q\,
	datab => \uc|ALT_INV_cur_state.MOV_exec_imm_A3~q\,
	datac => \uc|ALT_INV_cur_state.MOV_exec_R~q\,
	datad => \uc|ALT_INV_cur_state.MOV_exec_B~q\,
	dataf => \uc|ALT_INV_cur_state.MOV_exec_imm_R3~q\,
	combout => \uc|WideOr0~0_combout\);

-- Location: FF_X31_Y4_N49
\uc|cur_state.STORE_exec_imm_B5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_B4~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_B5~q\);

-- Location: MLABCELL_X34_Y5_N12
\uc|WideOr3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr3~1_combout\ = ( !\uc|cur_state.LOAD_exec_A2~q\ & ( !\uc|cur_state.CMP_exec_imm3~q\ & ( (!\uc|cur_state.CMP_exec~q\ & !\uc|cur_state.STORE_exec_imm_B5~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.CMP_exec~q\,
	datad => \uc|ALT_INV_cur_state.STORE_exec_imm_B5~q\,
	datae => \uc|ALT_INV_cur_state.LOAD_exec_A2~q\,
	dataf => \uc|ALT_INV_cur_state.CMP_exec_imm3~q\,
	combout => \uc|WideOr3~1_combout\);

-- Location: LABCELL_X35_Y4_N30
\uc|WideOr33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr33~combout\ = ( \uc|WideOr0~0_combout\ & ( \uc|WideOr3~1_combout\ & ( ((!\uc|WideOr33~0_combout\) # ((!\uc|WideOr6~1_combout\) # (!\uc|WideOr0~1_combout\))) # (\uc|cur_state.out1~q\) ) ) ) # ( !\uc|WideOr0~0_combout\ & ( \uc|WideOr3~1_combout\ ) 
-- ) # ( \uc|WideOr0~0_combout\ & ( !\uc|WideOr3~1_combout\ ) ) # ( !\uc|WideOr0~0_combout\ & ( !\uc|WideOr3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.out1~q\,
	datab => \uc|ALT_INV_WideOr33~0_combout\,
	datac => \uc|ALT_INV_WideOr6~1_combout\,
	datad => \uc|ALT_INV_WideOr0~1_combout\,
	datae => \uc|ALT_INV_WideOr0~0_combout\,
	dataf => \uc|ALT_INV_WideOr3~1_combout\,
	combout => \uc|WideOr33~combout\);

-- Location: FF_X35_Y4_N32
\uc|cur_state.Pc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|WideOr33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.Pc~q\);

-- Location: FF_X34_Y4_N17
\uc|cur_state.JGR_exec1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.JGR_exec1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JGR_exec1~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y4_N51
\uc|WideOr4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr4~4_combout\ = ( !\uc|cur_state.STORE_exec_imm_B1~q\ & ( (!\uc|cur_state.JGR_exec1~DUPLICATE_q\ & !\uc|cur_state.JGR_exec4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_cur_state.JGR_exec1~DUPLICATE_q\,
	datad => \uc|ALT_INV_cur_state.JGR_exec4~q\,
	dataf => \uc|ALT_INV_cur_state.STORE_exec_imm_B1~q\,
	combout => \uc|WideOr4~4_combout\);

-- Location: LABCELL_X35_Y4_N36
\uc|WideOr2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr2~1_combout\ = ( !\uc|cur_state.JEQ_exec1~q\ & ( (!\uc|cur_state.STORE_exec_imm_R1~q\ & (!\uc|cur_state.LOAD_exec_imm_A1~q\ & !\uc|cur_state.JEQ_exec4~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.STORE_exec_imm_R1~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_A1~q\,
	datad => \uc|ALT_INV_cur_state.JEQ_exec4~q\,
	dataf => \uc|ALT_INV_cur_state.JEQ_exec1~q\,
	combout => \uc|WideOr2~1_combout\);

-- Location: MLABCELL_X34_Y4_N3
\uc|WideOr2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr2~2_combout\ = ( \uc|WideOr2~1_combout\ & ( (!\uc|cur_state.Pc~q\ & (\uc|WideOr4~4_combout\ & !\uc|cur_state.STORE_exec_imm_A1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.Pc~q\,
	datac => \uc|ALT_INV_WideOr4~4_combout\,
	datad => \uc|ALT_INV_cur_state.STORE_exec_imm_A1~q\,
	dataf => \uc|ALT_INV_WideOr2~1_combout\,
	combout => \uc|WideOr2~2_combout\);

-- Location: FF_X34_Y4_N2
\uc|cur_state.CMP_exec_imm1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.CMP_exec_imm1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.CMP_exec_imm1~DUPLICATE_q\);

-- Location: LABCELL_X35_Y4_N21
\uc|WideOr0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr0~2_combout\ = ( !\uc|cur_state.MOV_exec_imm_A1~q\ & ( (!\uc|cur_state.MOV_exec_imm_B1~q\ & !\uc|cur_state.MOV_exec_imm_R1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_cur_state.MOV_exec_imm_B1~q\,
	datad => \uc|ALT_INV_cur_state.MOV_exec_imm_R1~q\,
	dataf => \uc|ALT_INV_cur_state.MOV_exec_imm_A1~q\,
	combout => \uc|WideOr0~2_combout\);

-- Location: FF_X34_Y4_N32
\uc|cur_state.LOAD_exec_imm_R1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.LOAD_exec_imm_R1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_R1~q\);

-- Location: MLABCELL_X34_Y4_N33
\uc|WideOr7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr7~0_combout\ = ( !\uc|cur_state.JMP_exec1~q\ & ( (!\uc|cur_state.LOAD_exec_imm_B1~q\ & (!\uc|cur_state.LOAD_exec_imm_R1~q\ & !\uc|cur_state.JMP_exec4~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.LOAD_exec_imm_B1~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_R1~q\,
	datad => \uc|ALT_INV_cur_state.JMP_exec4~q\,
	dataf => \uc|ALT_INV_cur_state.JMP_exec1~q\,
	combout => \uc|WideOr7~0_combout\);

-- Location: MLABCELL_X34_Y4_N42
\uc|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr7~combout\ = ( \uc|WideOr0~2_combout\ & ( \uc|WideOr7~0_combout\ & ( (!\uc|WideOr2~2_combout\) # ((\uc|cur_state.CMP_exec_imm1~DUPLICATE_q\) # (\uc|cur_state.R_exec_imm1~q\)) ) ) ) # ( !\uc|WideOr0~2_combout\ & ( \uc|WideOr7~0_combout\ ) ) # ( 
-- \uc|WideOr0~2_combout\ & ( !\uc|WideOr7~0_combout\ ) ) # ( !\uc|WideOr0~2_combout\ & ( !\uc|WideOr7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr2~2_combout\,
	datab => \uc|ALT_INV_cur_state.R_exec_imm1~q\,
	datac => \uc|ALT_INV_cur_state.CMP_exec_imm1~DUPLICATE_q\,
	datae => \uc|ALT_INV_WideOr0~2_combout\,
	dataf => \uc|ALT_INV_WideOr7~0_combout\,
	combout => \uc|WideOr7~combout\);

-- Location: FF_X32_Y4_N47
\pc|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	asdata => \ir|temp\(5),
	clrn => \uc|cur_state.ini~q\,
	sload => \pc|temp[7]~0_combout\,
	ena => \uc|WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|temp\(5));

-- Location: LABCELL_X29_Y4_N30
\uc|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Selector0~0_combout\ = ( !\uc|WideOr10~0_combout\ & ( (!\ir|temp[0]~DUPLICATE_q\) # (\uc|WideOr9~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	datad => \uc|ALT_INV_WideOr9~combout\,
	dataf => \uc|ALT_INV_WideOr10~0_combout\,
	combout => \uc|Selector0~0_combout\);

-- Location: FF_X29_Y4_N38
\uc|cur_state.LOAD_exec_B2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_B1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_B2~DUPLICATE_q\);

-- Location: FF_X29_Y4_N14
\uc|cur_state.LOAD_exec_A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.LOAD_exec_A1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_A1~q\);

-- Location: LABCELL_X29_Y4_N39
\uc|WideOr2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr2~3_combout\ = ( !\uc|cur_state.LOAD_exec_R1~DUPLICATE_q\ & ( !\uc|cur_state.LOAD_exec_B1~q\ & ( (!\uc|cur_state.LOAD_exec_B2~DUPLICATE_q\ & (!\uc|cur_state.LOAD_exec_R2~q\ & (!\uc|cur_state.LOAD_exec_A1~q\ & !\uc|cur_state.LOAD_exec_A2~q\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.LOAD_exec_B2~DUPLICATE_q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_R2~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_A1~q\,
	datad => \uc|ALT_INV_cur_state.LOAD_exec_A2~q\,
	datae => \uc|ALT_INV_cur_state.LOAD_exec_R1~DUPLICATE_q\,
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_B1~q\,
	combout => \uc|WideOr2~3_combout\);

-- Location: MLABCELL_X28_Y4_N54
\uc|control_bus[28]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|control_bus[28]~5_combout\ = ( \uc|cur_state.STORE_exec2~DUPLICATE_q\ & ( \uc|cur_state.STORE_exec1~q\ & ( \ir|temp[1]~DUPLICATE_q\ ) ) ) # ( !\uc|cur_state.STORE_exec2~DUPLICATE_q\ & ( \uc|cur_state.STORE_exec1~q\ & ( \ir|temp[1]~DUPLICATE_q\ ) ) ) # 
-- ( \uc|cur_state.STORE_exec2~DUPLICATE_q\ & ( !\uc|cur_state.STORE_exec1~q\ & ( \ir|temp[1]~DUPLICATE_q\ ) ) ) # ( !\uc|cur_state.STORE_exec2~DUPLICATE_q\ & ( !\uc|cur_state.STORE_exec1~q\ & ( (!\uc|WideOr2~3_combout\ & \ir|temp[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr2~3_combout\,
	datac => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	datae => \uc|ALT_INV_cur_state.STORE_exec2~DUPLICATE_q\,
	dataf => \uc|ALT_INV_cur_state.STORE_exec1~q\,
	combout => \uc|control_bus[28]~5_combout\);

-- Location: LABCELL_X29_Y4_N51
\m14|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux2~0_combout\ = ( \mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( \uc|control_bus[28]~5_combout\ & ( (!\uc|Selector0~0_combout\) # (\regR|temp\(5)) ) ) ) # ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( 
-- \uc|control_bus[28]~5_combout\ & ( (\regR|temp\(5) & \uc|Selector0~0_combout\) ) ) ) # ( \mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\uc|control_bus[28]~5_combout\ & ( (!\uc|Selector0~0_combout\ & ((\regB|temp\(5)))) # 
-- (\uc|Selector0~0_combout\ & (\regA|temp\(5))) ) ) ) # ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(5) & ( !\uc|control_bus[28]~5_combout\ & ( (!\uc|Selector0~0_combout\ & ((\regB|temp\(5)))) # (\uc|Selector0~0_combout\ & (\regA|temp\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(5),
	datab => \uc|ALT_INV_Selector0~0_combout\,
	datac => \regA|ALT_INV_temp\(5),
	datad => \regB|ALT_INV_temp\(5),
	datae => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	dataf => \uc|ALT_INV_control_bus[28]~5_combout\,
	combout => \m14|Mux2~0_combout\);

-- Location: LABCELL_X29_Y4_N57
\m14|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux2~1_combout\ = ( \m14|Mux2~0_combout\ & ( (!\uc|WideOr10~0_combout\ & ((!\uc|WideOr9~combout\) # ((\ir|temp\(5))))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(5))))) ) ) # ( !\m14|Mux2~0_combout\ & ( (!\uc|WideOr10~0_combout\ & 
-- (\uc|WideOr9~combout\ & (\ir|temp\(5)))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr10~0_combout\,
	datab => \uc|ALT_INV_WideOr9~combout\,
	datac => \ir|ALT_INV_temp\(5),
	datad => \pc|ALT_INV_temp\(5),
	dataf => \m14|ALT_INV_Mux2~0_combout\,
	combout => \m14|Mux2~1_combout\);

-- Location: LABCELL_X32_Y4_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \pc|temp\(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \pc|temp\(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc|ALT_INV_temp\(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X32_Y4_N50
\pc|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	asdata => \ir|temp\(6),
	clrn => \uc|cur_state.ini~q\,
	sload => \pc|temp[7]~0_combout\,
	ena => \uc|WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|temp\(6));

-- Location: MLABCELL_X28_Y4_N24
\m14|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux1~0_combout\ = ( \uc|Selector0~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\uc|control_bus[28]~5_combout\ & ((\regA|temp\(6)))) # (\uc|control_bus[28]~5_combout\ & (\regR|temp\(6))) ) ) ) # ( 
-- !\uc|Selector0~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (\regB|temp\(6)) # (\uc|control_bus[28]~5_combout\) ) ) ) # ( \uc|Selector0~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( 
-- (!\uc|control_bus[28]~5_combout\ & ((\regA|temp\(6)))) # (\uc|control_bus[28]~5_combout\ & (\regR|temp\(6))) ) ) ) # ( !\uc|Selector0~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(6) & ( (!\uc|control_bus[28]~5_combout\ & 
-- \regB|temp\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(6),
	datab => \uc|ALT_INV_control_bus[28]~5_combout\,
	datac => \regA|ALT_INV_temp\(6),
	datad => \regB|ALT_INV_temp\(6),
	datae => \uc|ALT_INV_Selector0~0_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	combout => \m14|Mux1~0_combout\);

-- Location: LABCELL_X29_Y4_N24
\m14|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux1~1_combout\ = ( \m14|Mux1~0_combout\ & ( (!\uc|WideOr10~0_combout\ & ((!\uc|WideOr9~combout\) # ((\ir|temp\(6))))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(6))))) ) ) # ( !\m14|Mux1~0_combout\ & ( (!\uc|WideOr10~0_combout\ & 
-- (\uc|WideOr9~combout\ & ((\ir|temp\(6))))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr10~0_combout\,
	datab => \uc|ALT_INV_WideOr9~combout\,
	datac => \pc|ALT_INV_temp\(6),
	datad => \ir|ALT_INV_temp\(6),
	dataf => \m14|ALT_INV_Mux1~0_combout\,
	combout => \m14|Mux1~1_combout\);

-- Location: LABCELL_X32_Y4_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \pc|temp\(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc|ALT_INV_temp\(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

-- Location: FF_X32_Y4_N53
\pc|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	asdata => \ir|temp\(7),
	clrn => \uc|cur_state.ini~q\,
	sload => \pc|temp[7]~0_combout\,
	ena => \uc|WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|temp\(7));

-- Location: LABCELL_X29_Y4_N6
\m14|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux0~0_combout\ = ( \mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( \uc|Selector0~0_combout\ & ( (!\uc|control_bus[28]~5_combout\ & (\regA|temp\(7))) # (\uc|control_bus[28]~5_combout\ & ((\regR|temp\(7)))) ) ) ) # ( 
-- !\mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( \uc|Selector0~0_combout\ & ( (!\uc|control_bus[28]~5_combout\ & (\regA|temp\(7))) # (\uc|control_bus[28]~5_combout\ & ((\regR|temp\(7)))) ) ) ) # ( 
-- \mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( !\uc|Selector0~0_combout\ & ( (\uc|control_bus[28]~5_combout\) # (\regB|temp\(7)) ) ) ) # ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(7) & ( !\uc|Selector0~0_combout\ & ( 
-- (\regB|temp\(7) & !\uc|control_bus[28]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp\(7),
	datab => \regA|ALT_INV_temp\(7),
	datac => \uc|ALT_INV_control_bus[28]~5_combout\,
	datad => \regR|ALT_INV_temp\(7),
	datae => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	dataf => \uc|ALT_INV_Selector0~0_combout\,
	combout => \m14|Mux0~0_combout\);

-- Location: LABCELL_X29_Y4_N54
\m14|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux0~1_combout\ = ( \m14|Mux0~0_combout\ & ( (!\uc|WideOr10~0_combout\ & ((!\uc|WideOr9~combout\) # ((\ir|temp[7]~DUPLICATE_q\)))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(7))))) ) ) # ( !\m14|Mux0~0_combout\ & ( (!\uc|WideOr10~0_combout\ & 
-- (\uc|WideOr9~combout\ & (\ir|temp[7]~DUPLICATE_q\))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr10~0_combout\,
	datab => \uc|ALT_INV_WideOr9~combout\,
	datac => \ir|ALT_INV_temp[7]~DUPLICATE_q\,
	datad => \pc|ALT_INV_temp\(7),
	dataf => \m14|ALT_INV_Mux0~0_combout\,
	combout => \m14|Mux0~1_combout\);

-- Location: FF_X31_Y4_N14
\uc|cur_state.STORE_exec_imm_R5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_R4~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_R5~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N24
\m7|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|Mux7~0_combout\ = ( \uc|cur_state.STORE_exec2~DUPLICATE_q\ & ( (!\uc|cur_state.STORE_exec_imm_B4~DUPLICATE_q\ & (!\ir|temp[2]~DUPLICATE_q\ & !\uc|cur_state.STORE_exec_imm_B5~q\)) ) ) # ( !\uc|cur_state.STORE_exec2~DUPLICATE_q\ & ( 
-- (!\uc|cur_state.STORE_exec_imm_B4~DUPLICATE_q\ & (!\uc|cur_state.STORE_exec_imm_B5~q\ & ((!\ir|temp[2]~DUPLICATE_q\) # (!\uc|cur_state.STORE_exec1~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.STORE_exec_imm_B4~DUPLICATE_q\,
	datab => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datac => \uc|ALT_INV_cur_state.STORE_exec1~q\,
	datad => \uc|ALT_INV_cur_state.STORE_exec_imm_B5~q\,
	dataf => \uc|ALT_INV_cur_state.STORE_exec2~DUPLICATE_q\,
	combout => \m7|Mux7~0_combout\);

-- Location: LABCELL_X31_Y4_N0
\m7|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|Mux7~1_combout\ = ( !\uc|cur_state.STORE_exec_imm_R4~DUPLICATE_q\ & ( \m7|Mux7~0_combout\ & ( (!\uc|cur_state.STORE_exec_imm_R5~DUPLICATE_q\ & ((!\ir|temp[3]~DUPLICATE_q\) # ((!\uc|cur_state.STORE_exec1~q\ & !\uc|cur_state.STORE_exec2~DUPLICATE_q\)))) 
-- ) ) ) # ( \uc|cur_state.STORE_exec_imm_R4~DUPLICATE_q\ & ( !\m7|Mux7~0_combout\ ) ) # ( !\uc|cur_state.STORE_exec_imm_R4~DUPLICATE_q\ & ( !\m7|Mux7~0_combout\ & ( ((\ir|temp[3]~DUPLICATE_q\ & ((\uc|cur_state.STORE_exec2~DUPLICATE_q\) # 
-- (\uc|cur_state.STORE_exec1~q\)))) # (\uc|cur_state.STORE_exec_imm_R5~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101111111111111111111111111001100100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.STORE_exec1~q\,
	datab => \uc|ALT_INV_cur_state.STORE_exec_imm_R5~DUPLICATE_q\,
	datac => \uc|ALT_INV_cur_state.STORE_exec2~DUPLICATE_q\,
	datad => \ir|ALT_INV_temp[3]~DUPLICATE_q\,
	datae => \uc|ALT_INV_cur_state.STORE_exec_imm_R4~DUPLICATE_q\,
	dataf => \m7|ALT_INV_Mux7~0_combout\,
	combout => \m7|Mux7~1_combout\);

-- Location: LABCELL_X31_Y4_N42
\m7|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|Mux6~0_combout\ = ( \regR|temp\(1) & ( (!\m7|Mux7~1_combout\ & (((\regB|temp\(1))) # (\m7|Mux7~0_combout\))) # (\m7|Mux7~1_combout\ & (\m7|Mux7~0_combout\ & (\regA|temp\(1)))) ) ) # ( !\regR|temp\(1) & ( (!\m7|Mux7~1_combout\ & (!\m7|Mux7~0_combout\ & 
-- ((\regB|temp\(1))))) # (\m7|Mux7~1_combout\ & (\m7|Mux7~0_combout\ & (\regA|temp\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001000000011000100100100011101010110010001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_Mux7~1_combout\,
	datab => \m7|ALT_INV_Mux7~0_combout\,
	datac => \regA|ALT_INV_temp\(1),
	datad => \regB|ALT_INV_temp\(1),
	dataf => \regR|ALT_INV_temp\(1),
	combout => \m7|Mux6~0_combout\);

-- Location: LABCELL_X31_Y4_N45
\m7|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|Mux5~0_combout\ = ( \regB|temp\(2) & ( (!\m7|Mux7~1_combout\ & ((!\m7|Mux7~0_combout\) # ((\regR|temp\(2))))) # (\m7|Mux7~1_combout\ & (\m7|Mux7~0_combout\ & (\regA|temp\(2)))) ) ) # ( !\regB|temp\(2) & ( (\m7|Mux7~0_combout\ & ((!\m7|Mux7~1_combout\ 
-- & ((\regR|temp\(2)))) # (\m7|Mux7~1_combout\ & (\regA|temp\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001110001001101010111000100110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \m7|ALT_INV_Mux7~1_combout\,
	datab => \m7|ALT_INV_Mux7~0_combout\,
	datac => \regA|ALT_INV_temp\(2),
	datad => \regR|ALT_INV_temp\(2),
	dataf => \regB|ALT_INV_temp\(2),
	combout => \m7|Mux5~0_combout\);

-- Location: MLABCELL_X28_Y4_N18
\m7|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|Mux4~0_combout\ = ( \m7|Mux7~1_combout\ & ( (\m7|Mux7~0_combout\ & \regA|temp\(3)) ) ) # ( !\m7|Mux7~1_combout\ & ( (!\m7|Mux7~0_combout\ & (\regB|temp\(3))) # (\m7|Mux7~0_combout\ & ((\regR|temp\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regB|ALT_INV_temp\(3),
	datab => \regR|ALT_INV_temp\(3),
	datac => \m7|ALT_INV_Mux7~0_combout\,
	datad => \regA|ALT_INV_temp\(3),
	datae => \m7|ALT_INV_Mux7~1_combout\,
	combout => \m7|Mux4~0_combout\);

-- Location: MLABCELL_X28_Y4_N3
\m7|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|Mux3~0_combout\ = ( \m7|Mux7~0_combout\ & ( \regB|temp\(4) & ( (!\m7|Mux7~1_combout\ & (\regR|temp\(4))) # (\m7|Mux7~1_combout\ & ((\regA|temp\(4)))) ) ) ) # ( !\m7|Mux7~0_combout\ & ( \regB|temp\(4) & ( !\m7|Mux7~1_combout\ ) ) ) # ( 
-- \m7|Mux7~0_combout\ & ( !\regB|temp\(4) & ( (!\m7|Mux7~1_combout\ & (\regR|temp\(4))) # (\m7|Mux7~1_combout\ & ((\regA|temp\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000111111111111000000000101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(4),
	datac => \regA|ALT_INV_temp\(4),
	datad => \m7|ALT_INV_Mux7~1_combout\,
	datae => \m7|ALT_INV_Mux7~0_combout\,
	dataf => \regB|ALT_INV_temp\(4),
	combout => \m7|Mux3~0_combout\);

-- Location: MLABCELL_X28_Y4_N6
\m7|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|Mux2~0_combout\ = ( \regB|temp\(5) & ( (!\m7|Mux7~1_combout\ & (((!\m7|Mux7~0_combout\)) # (\regR|temp\(5)))) # (\m7|Mux7~1_combout\ & (((\regA|temp\(5) & \m7|Mux7~0_combout\)))) ) ) # ( !\regB|temp\(5) & ( (\m7|Mux7~0_combout\ & 
-- ((!\m7|Mux7~1_combout\ & (\regR|temp\(5))) # (\m7|Mux7~1_combout\ & ((\regA|temp\(5)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001111110000010100111111000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(5),
	datab => \regA|ALT_INV_temp\(5),
	datac => \m7|ALT_INV_Mux7~1_combout\,
	datad => \m7|ALT_INV_Mux7~0_combout\,
	dataf => \regB|ALT_INV_temp\(5),
	combout => \m7|Mux2~0_combout\);

-- Location: MLABCELL_X28_Y4_N12
\m7|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|Mux1~0_combout\ = ( \regR|temp\(6) & ( (!\m7|Mux7~1_combout\ & (((\m7|Mux7~0_combout\) # (\regB|temp\(6))))) # (\m7|Mux7~1_combout\ & (\regA|temp\(6) & ((\m7|Mux7~0_combout\)))) ) ) # ( !\regR|temp\(6) & ( (!\m7|Mux7~1_combout\ & (((\regB|temp\(6) & 
-- !\m7|Mux7~0_combout\)))) # (\m7|Mux7~1_combout\ & (\regA|temp\(6) & ((\m7|Mux7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100000000010100110000111101010011000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|ALT_INV_temp\(6),
	datab => \regB|ALT_INV_temp\(6),
	datac => \m7|ALT_INV_Mux7~1_combout\,
	datad => \m7|ALT_INV_Mux7~0_combout\,
	dataf => \regR|ALT_INV_temp\(6),
	combout => \m7|Mux1~0_combout\);

-- Location: MLABCELL_X28_Y4_N45
\m7|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|Mux0~0_combout\ = ( \m7|Mux7~0_combout\ & ( \regA|temp\(7) & ( (\m7|Mux7~1_combout\) # (\regR|temp\(7)) ) ) ) # ( !\m7|Mux7~0_combout\ & ( \regA|temp\(7) & ( (\regB|temp\(7) & !\m7|Mux7~1_combout\) ) ) ) # ( \m7|Mux7~0_combout\ & ( !\regA|temp\(7) & ( 
-- (\regR|temp\(7) & !\m7|Mux7~1_combout\) ) ) ) # ( !\m7|Mux7~0_combout\ & ( !\regA|temp\(7) & ( (\regB|temp\(7) & !\m7|Mux7~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010000000000001111000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(7),
	datac => \regB|ALT_INV_temp\(7),
	datad => \m7|ALT_INV_Mux7~1_combout\,
	datae => \m7|ALT_INV_Mux7~0_combout\,
	dataf => \regA|ALT_INV_temp\(7),
	combout => \m7|Mux0~0_combout\);

-- Location: M10K_X30_Y4_N0
\mem|inst1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E0000D8000FF0009B000070008000059000B8000FF000AB000010000B000FF0009B000B200019000B8000FF000AB00000000BB000C4000C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_init.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Memoria:mem|mem:inst1|altsyncram:altsyncram_component|altsyncram_0e24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \uc|WideOr8~combout\,
	portare => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X32_Y4_N56
\ir|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(6),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp\(6));

-- Location: MLABCELL_X34_Y4_N15
\uc|next_state.JGR_exec1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.JGR_exec1~1_combout\ = ( !\ir|temp\(6) & ( (!\ir|temp\(5) & (\ir|temp\(7) & (\uc|cur_state.decode~q\ & !\ir|temp\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp\(5),
	datab => \ir|ALT_INV_temp\(7),
	datac => \uc|ALT_INV_cur_state.decode~q\,
	datad => \ir|ALT_INV_temp\(4),
	dataf => \ir|ALT_INV_temp\(6),
	combout => \uc|next_state.JGR_exec1~1_combout\);

-- Location: FF_X34_Y4_N16
\uc|cur_state.JGR_exec1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.JGR_exec1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JGR_exec1~q\);

-- Location: FF_X34_Y4_N47
\uc|cur_state.JGR_exec2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.JGR_exec1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JGR_exec2~q\);

-- Location: FF_X34_Y4_N41
\uc|cur_state.JGR_exec3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.JGR_exec2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.JGR_exec3~q\);

-- Location: FF_X35_Y4_N35
\uc|cur_state.STORE_exec_imm_B3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_B2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_B3~DUPLICATE_q\);

-- Location: FF_X34_Y2_N53
\uc|cur_state.STORE_exec_imm_R3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_R2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_R3~q\);

-- Location: LABCELL_X35_Y4_N51
\uc|WideOr1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr1~4_combout\ = ( !\uc|cur_state.STORE_exec_imm_A3~q\ & ( !\uc|cur_state.STORE_exec_imm_R3~q\ & ( (!\uc|cur_state.STORE_exec_imm_B3~DUPLICATE_q\ & (!\uc|cur_state.LOAD_exec_imm_A3~q\ & (!\uc|cur_state.LOAD_exec_imm_R3~q\ & 
-- !\uc|cur_state.LOAD_exec_imm_B3~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.STORE_exec_imm_B3~DUPLICATE_q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_imm_A3~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_R3~q\,
	datad => \uc|ALT_INV_cur_state.LOAD_exec_imm_B3~DUPLICATE_q\,
	datae => \uc|ALT_INV_cur_state.STORE_exec_imm_A3~q\,
	dataf => \uc|ALT_INV_cur_state.STORE_exec_imm_R3~q\,
	combout => \uc|WideOr1~4_combout\);

-- Location: LABCELL_X32_Y5_N36
\uc|WideOr14\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr14~combout\ = ( \uc|WideOr1~4_combout\ & ( (((\uc|cur_state.busca2~q\) # (\uc|cur_state.JEQ_exec3~q\)) # (\uc|cur_state.JMP_exec3~q\)) # (\uc|cur_state.JGR_exec3~q\) ) ) # ( !\uc|WideOr1~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.JGR_exec3~q\,
	datab => \uc|ALT_INV_cur_state.JMP_exec3~q\,
	datac => \uc|ALT_INV_cur_state.JEQ_exec3~q\,
	datad => \uc|ALT_INV_cur_state.busca2~q\,
	dataf => \uc|ALT_INV_WideOr1~4_combout\,
	combout => \uc|WideOr14~combout\);

-- Location: FF_X31_Y3_N19
\ir|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(0),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp\(0));

-- Location: FF_X32_Y4_N32
\pc|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	asdata => \ir|temp\(0),
	clrn => \uc|cur_state.ini~q\,
	sload => \pc|temp[7]~0_combout\,
	ena => \uc|WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|temp\(0));

-- Location: LABCELL_X32_Y4_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \pc|temp\(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \pc|temp\(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc|ALT_INV_temp\(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X32_Y4_N35
\pc|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	asdata => \ir|temp[1]~DUPLICATE_q\,
	clrn => \uc|cur_state.ini~q\,
	sload => \pc|temp[7]~0_combout\,
	ena => \uc|WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|temp\(1));

-- Location: LABCELL_X32_Y4_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \pc|temp\(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \pc|temp\(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc|ALT_INV_temp\(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X32_Y4_N38
\pc|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	asdata => \ir|temp[2]~DUPLICATE_q\,
	clrn => \uc|cur_state.ini~q\,
	sload => \pc|temp[7]~0_combout\,
	ena => \uc|WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|temp\(2));

-- Location: LABCELL_X32_Y4_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \pc|temp\(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \pc|temp\(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pc|ALT_INV_temp\(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X32_Y4_N41
\pc|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	asdata => \ir|temp[3]~DUPLICATE_q\,
	clrn => \uc|cur_state.ini~q\,
	sload => \pc|temp[7]~0_combout\,
	ena => \uc|WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|temp\(3));

-- Location: FF_X32_Y4_N44
\pc|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	asdata => \ir|temp[4]~DUPLICATE_q\,
	clrn => \uc|cur_state.ini~q\,
	sload => \pc|temp[7]~0_combout\,
	ena => \uc|WideOr7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|temp\(4));

-- Location: LABCELL_X29_Y4_N18
\m14|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux3~0_combout\ = ( \regB|temp\(4) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\uc|Selector0~0_combout\) # ((!\uc|control_bus[28]~5_combout\ & (\regA|temp\(4))) # (\uc|control_bus[28]~5_combout\ & ((\regR|temp\(4))))) ) ) ) # ( 
-- !\regB|temp\(4) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\uc|control_bus[28]~5_combout\ & (\regA|temp\(4) & ((\uc|Selector0~0_combout\)))) # (\uc|control_bus[28]~5_combout\ & (((!\uc|Selector0~0_combout\) # (\regR|temp\(4))))) ) ) 
-- ) # ( \regB|temp\(4) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (!\uc|control_bus[28]~5_combout\ & (((!\uc|Selector0~0_combout\)) # (\regA|temp\(4)))) # (\uc|control_bus[28]~5_combout\ & (((\regR|temp\(4) & 
-- \uc|Selector0~0_combout\)))) ) ) ) # ( !\regB|temp\(4) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(4) & ( (\uc|Selector0~0_combout\ & ((!\uc|control_bus[28]~5_combout\ & (\regA|temp\(4))) # (\uc|control_bus[28]~5_combout\ & 
-- ((\regR|temp\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|ALT_INV_temp\(4),
	datab => \regR|ALT_INV_temp\(4),
	datac => \uc|ALT_INV_control_bus[28]~5_combout\,
	datad => \uc|ALT_INV_Selector0~0_combout\,
	datae => \regB|ALT_INV_temp\(4),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \m14|Mux3~0_combout\);

-- Location: LABCELL_X29_Y4_N27
\m14|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux3~1_combout\ = ( \m14|Mux3~0_combout\ & ( (!\uc|WideOr10~0_combout\ & ((!\uc|WideOr9~combout\) # ((\ir|temp[4]~DUPLICATE_q\)))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(4))))) ) ) # ( !\m14|Mux3~0_combout\ & ( (!\uc|WideOr10~0_combout\ & 
-- (\uc|WideOr9~combout\ & (\ir|temp[4]~DUPLICATE_q\))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr10~0_combout\,
	datab => \uc|ALT_INV_WideOr9~combout\,
	datac => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datad => \pc|ALT_INV_temp\(4),
	dataf => \m14|ALT_INV_Mux3~0_combout\,
	combout => \m14|Mux3~1_combout\);

-- Location: FF_X29_Y4_N4
\ir|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(7),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp\(7));

-- Location: LABCELL_X32_Y5_N0
\uc|next_state.ini~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.ini~0_combout\ = ( \ir|temp[3]~DUPLICATE_q\ & ( (\ir|temp\(7) & (\uc|cur_state.decode~q\ & \ir|temp[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ir|ALT_INV_temp\(7),
	datac => \uc|ALT_INV_cur_state.decode~q\,
	datad => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	dataf => \ir|ALT_INV_temp[3]~DUPLICATE_q\,
	combout => \uc|next_state.ini~0_combout\);

-- Location: LABCELL_X32_Y4_N24
\uc|next_state.ini~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.ini~1_combout\ = ( \ir|temp\(4) & ( (!\uc|next_state.ini~0_combout\) # (\ir|temp\(6)) ) ) # ( !\ir|temp\(4) & ( (!\uc|next_state.ini~0_combout\) # ((!\ir|temp\(6) & ((!\uc|Equal0~0_combout\) # (!\ir|temp\(5)))) # (\ir|temp\(6) & 
-- ((\ir|temp\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011101111111110101110111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_next_state.ini~0_combout\,
	datab => \uc|ALT_INV_Equal0~0_combout\,
	datac => \ir|ALT_INV_temp\(6),
	datad => \ir|ALT_INV_temp\(5),
	dataf => \ir|ALT_INV_temp\(4),
	combout => \uc|next_state.ini~1_combout\);

-- Location: FF_X32_Y4_N26
\uc|cur_state.ini\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.ini~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.ini~q\);

-- Location: FF_X31_Y3_N35
\ir|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(3),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp\(3));

-- Location: LABCELL_X31_Y5_N6
\m14|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux4~0_combout\ = ( \regB|temp\(3) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (!\uc|Selector0~0_combout\) # ((!\uc|control_bus[28]~5_combout\ & (\regA|temp\(3))) # (\uc|control_bus[28]~5_combout\ & ((\regR|temp\(3))))) ) ) ) # ( 
-- !\regB|temp\(3) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (!\uc|Selector0~0_combout\ & (((\uc|control_bus[28]~5_combout\)))) # (\uc|Selector0~0_combout\ & ((!\uc|control_bus[28]~5_combout\ & (\regA|temp\(3))) # 
-- (\uc|control_bus[28]~5_combout\ & ((\regR|temp\(3)))))) ) ) ) # ( \regB|temp\(3) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (!\uc|Selector0~0_combout\ & (((!\uc|control_bus[28]~5_combout\)))) # (\uc|Selector0~0_combout\ & 
-- ((!\uc|control_bus[28]~5_combout\ & (\regA|temp\(3))) # (\uc|control_bus[28]~5_combout\ & ((\regR|temp\(3)))))) ) ) ) # ( !\regB|temp\(3) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(3) & ( (\uc|Selector0~0_combout\ & 
-- ((!\uc|control_bus[28]~5_combout\ & (\regA|temp\(3))) # (\uc|control_bus[28]~5_combout\ & ((\regR|temp\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_Selector0~0_combout\,
	datab => \regA|ALT_INV_temp\(3),
	datac => \regR|ALT_INV_temp\(3),
	datad => \uc|ALT_INV_control_bus[28]~5_combout\,
	datae => \regB|ALT_INV_temp\(3),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \m14|Mux4~0_combout\);

-- Location: LABCELL_X31_Y5_N12
\m14|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux4~1_combout\ = ( \m14|Mux4~0_combout\ & ( (!\uc|WideOr10~0_combout\ & ((!\uc|WideOr9~combout\) # ((\ir|temp\(3))))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(3))))) ) ) # ( !\m14|Mux4~0_combout\ & ( (!\uc|WideOr10~0_combout\ & 
-- (\uc|WideOr9~combout\ & (\ir|temp\(3)))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr10~0_combout\,
	datab => \uc|ALT_INV_WideOr9~combout\,
	datac => \ir|ALT_INV_temp\(3),
	datad => \pc|ALT_INV_temp\(3),
	dataf => \m14|ALT_INV_Mux4~0_combout\,
	combout => \m14|Mux4~1_combout\);

-- Location: FF_X32_Y3_N11
\ir|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(5),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp\(5));

-- Location: MLABCELL_X34_Y4_N39
\uc|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Selector10~0_combout\ = ( !\uc|cur_state.JGR_exec4~q\ & ( (!\uc|cur_state.JMP_exec4~q\ & !\uc|cur_state.JEQ_exec4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.JMP_exec4~q\,
	datac => \uc|ALT_INV_cur_state.JEQ_exec4~q\,
	dataf => \uc|ALT_INV_cur_state.JGR_exec4~q\,
	combout => \uc|Selector10~0_combout\);

-- Location: MLABCELL_X34_Y4_N12
\uc|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Selector10~1_combout\ = ( \uc|Selector10~0_combout\ & ( ((\ir|temp\(5) & (\ir|temp\(7) & \uc|next_state.out1~0_combout\))) # (\uc|cur_state.Pc~q\) ) ) # ( !\uc|Selector10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp\(5),
	datab => \ir|ALT_INV_temp\(7),
	datac => \uc|ALT_INV_cur_state.Pc~q\,
	datad => \uc|ALT_INV_next_state.out1~0_combout\,
	dataf => \uc|ALT_INV_Selector10~0_combout\,
	combout => \uc|Selector10~1_combout\);

-- Location: FF_X34_Y4_N13
\uc|cur_state.busca1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.busca1~q\);

-- Location: LABCELL_X32_Y5_N45
\uc|next_state.busca2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.busca2~combout\ = ( \uc|cur_state.ini~q\ & ( \uc|cur_state.busca1~q\ ) ) # ( !\uc|cur_state.ini~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_cur_state.busca1~q\,
	dataf => \uc|ALT_INV_cur_state.ini~q\,
	combout => \uc|next_state.busca2~combout\);

-- Location: FF_X32_Y5_N41
\uc|cur_state.busca2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|next_state.busca2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.busca2~q\);

-- Location: FF_X32_Y5_N28
\uc|cur_state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.busca2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.decode~q\);

-- Location: MLABCELL_X28_Y3_N21
\uc|next_state.STORE_exec_imm_R1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.STORE_exec_imm_R1~0_combout\ = ( \ir|temp[7]~DUPLICATE_q\ & ( !\ir|temp\(6) & ( (\uc|cur_state.decode~q\ & \ir|temp\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.decode~q\,
	datad => \ir|ALT_INV_temp\(5),
	datae => \ir|ALT_INV_temp[7]~DUPLICATE_q\,
	dataf => \ir|ALT_INV_temp\(6),
	combout => \uc|next_state.STORE_exec_imm_R1~0_combout\);

-- Location: LABCELL_X32_Y2_N9
\uc|next_state.STORE_exec1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.STORE_exec1~0_combout\ = ( !\uc|Equal0~0_combout\ & ( (\uc|next_state.STORE_exec_imm_R1~0_combout\ & !\ir|temp[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_next_state.STORE_exec_imm_R1~0_combout\,
	datad => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	dataf => \uc|ALT_INV_Equal0~0_combout\,
	combout => \uc|next_state.STORE_exec1~0_combout\);

-- Location: FF_X32_Y2_N10
\uc|cur_state.STORE_exec1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.STORE_exec1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec1~q\);

-- Location: LABCELL_X29_Y4_N42
\uc|WideOr9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr9~combout\ = ( \uc|WideOr2~3_combout\ & ( (!\uc|cur_state.STORE_exec1~q\ & !\uc|cur_state.STORE_exec2~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_cur_state.STORE_exec1~q\,
	datad => \uc|ALT_INV_cur_state.STORE_exec2~DUPLICATE_q\,
	dataf => \uc|ALT_INV_WideOr2~3_combout\,
	combout => \uc|WideOr9~combout\);

-- Location: LABCELL_X31_Y4_N18
\m14|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux5~0_combout\ = ( \uc|Selector0~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (!\uc|control_bus[28]~5_combout\ & ((\regA|temp\(2)))) # (\uc|control_bus[28]~5_combout\ & (\regR|temp\(2))) ) ) ) # ( 
-- !\uc|Selector0~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (\uc|control_bus[28]~5_combout\) # (\regB|temp\(2)) ) ) ) # ( \uc|Selector0~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( 
-- (!\uc|control_bus[28]~5_combout\ & ((\regA|temp\(2)))) # (\uc|control_bus[28]~5_combout\ & (\regR|temp\(2))) ) ) ) # ( !\uc|Selector0~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(2) & ( (\regB|temp\(2) & 
-- !\uc|control_bus[28]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(2),
	datab => \regA|ALT_INV_temp\(2),
	datac => \regB|ALT_INV_temp\(2),
	datad => \uc|ALT_INV_control_bus[28]~5_combout\,
	datae => \uc|ALT_INV_Selector0~0_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	combout => \m14|Mux5~0_combout\);

-- Location: LABCELL_X31_Y4_N57
\m14|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux5~1_combout\ = ( \m14|Mux5~0_combout\ & ( (!\uc|WideOr10~0_combout\ & ((!\uc|WideOr9~combout\) # ((\ir|temp[2]~DUPLICATE_q\)))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(2))))) ) ) # ( !\m14|Mux5~0_combout\ & ( (!\uc|WideOr10~0_combout\ & 
-- (\uc|WideOr9~combout\ & (\ir|temp[2]~DUPLICATE_q\))) # (\uc|WideOr10~0_combout\ & (((\pc|temp\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr10~0_combout\,
	datab => \uc|ALT_INV_WideOr9~combout\,
	datac => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datad => \pc|ALT_INV_temp\(2),
	dataf => \m14|ALT_INV_Mux5~0_combout\,
	combout => \m14|Mux5~1_combout\);

-- Location: FF_X29_Y4_N49
\ir|temp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(1),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp[1]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y5_N51
\uc|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Equal0~0_combout\ = ( \ir|temp[0]~DUPLICATE_q\ & ( \ir|temp[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	combout => \uc|Equal0~0_combout\);

-- Location: MLABCELL_X34_Y2_N12
\uc|next_state.STORE_exec_imm_B1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.STORE_exec_imm_B1~0_combout\ = ( !\ir|temp\(3) & ( \uc|next_state.STORE_exec_imm_R1~0_combout\ & ( (\ir|temp[2]~DUPLICATE_q\ & (\uc|Equal0~0_combout\ & !\ir|temp[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datab => \uc|ALT_INV_Equal0~0_combout\,
	datac => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datae => \ir|ALT_INV_temp\(3),
	dataf => \uc|ALT_INV_next_state.STORE_exec_imm_R1~0_combout\,
	combout => \uc|next_state.STORE_exec_imm_B1~0_combout\);

-- Location: FF_X34_Y2_N13
\uc|cur_state.STORE_exec_imm_B1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.STORE_exec_imm_B1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_B1~q\);

-- Location: LABCELL_X32_Y6_N27
\uc|cur_state.STORE_exec_imm_B2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|cur_state.STORE_exec_imm_B2~feeder_combout\ = ( \uc|cur_state.STORE_exec_imm_B1~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uc|ALT_INV_cur_state.STORE_exec_imm_B1~q\,
	combout => \uc|cur_state.STORE_exec_imm_B2~feeder_combout\);

-- Location: FF_X32_Y6_N28
\uc|cur_state.STORE_exec_imm_B2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|cur_state.STORE_exec_imm_B2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_B2~q\);

-- Location: FF_X35_Y4_N34
\uc|cur_state.STORE_exec_imm_B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_B2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_B3~q\);

-- Location: FF_X31_Y4_N5
\uc|cur_state.STORE_exec_imm_B4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_B3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_B4~DUPLICATE_q\);

-- Location: FF_X31_Y4_N50
\uc|cur_state.STORE_exec_imm_B5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_B4~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_B5~DUPLICATE_q\);

-- Location: FF_X31_Y4_N23
\uc|cur_state.LOAD_exec_imm_A5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_A4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_A5~DUPLICATE_q\);

-- Location: LABCELL_X31_Y4_N15
\uc|WideOr1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr1~3_combout\ = ( !\uc|cur_state.LOAD_exec_imm_R4~q\ & ( !\uc|cur_state.LOAD_exec_imm_R5~q\ & ( (!\uc|cur_state.LOAD_exec_imm_B5~q\ & (!\uc|cur_state.LOAD_exec_imm_B4~DUPLICATE_q\ & (!\uc|cur_state.LOAD_exec_imm_A4~q\ & 
-- !\uc|cur_state.LOAD_exec_imm_A5~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.LOAD_exec_imm_B5~q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_imm_B4~DUPLICATE_q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_A4~q\,
	datad => \uc|ALT_INV_cur_state.LOAD_exec_imm_A5~DUPLICATE_q\,
	datae => \uc|ALT_INV_cur_state.LOAD_exec_imm_R4~q\,
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_imm_R5~q\,
	combout => \uc|WideOr1~3_combout\);

-- Location: FF_X32_Y2_N2
\uc|cur_state.STORE_exec_imm_R4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_R3~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_R4~q\);

-- Location: FF_X32_Y2_N41
\uc|cur_state.STORE_exec2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec2~q\);

-- Location: FF_X32_Y2_N28
\uc|cur_state.STORE_exec_imm_A5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_A4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_A5~DUPLICATE_q\);

-- Location: FF_X32_Y2_N11
\uc|cur_state.STORE_exec1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.STORE_exec1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec1~DUPLICATE_q\);

-- Location: LABCELL_X32_Y2_N51
\uc|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr1~1_combout\ = ( !\uc|cur_state.STORE_exec1~DUPLICATE_q\ & ( (!\uc|cur_state.STORE_exec_imm_R4~q\ & (!\uc|cur_state.STORE_exec2~q\ & (!\uc|cur_state.STORE_exec_imm_A5~DUPLICATE_q\ & !\uc|cur_state.STORE_exec_imm_A4~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.STORE_exec_imm_R4~q\,
	datab => \uc|ALT_INV_cur_state.STORE_exec2~q\,
	datac => \uc|ALT_INV_cur_state.STORE_exec_imm_A5~DUPLICATE_q\,
	datad => \uc|ALT_INV_cur_state.STORE_exec_imm_A4~q\,
	dataf => \uc|ALT_INV_cur_state.STORE_exec1~DUPLICATE_q\,
	combout => \uc|WideOr1~1_combout\);

-- Location: LABCELL_X31_Y4_N6
\uc|WideOr10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr10~0_combout\ = ( \uc|WideOr1~1_combout\ & ( \uc|WideOr2~3_combout\ & ( (!\uc|cur_state.STORE_exec_imm_B4~DUPLICATE_q\ & (!\uc|cur_state.STORE_exec_imm_R5~DUPLICATE_q\ & (!\uc|cur_state.STORE_exec_imm_B5~DUPLICATE_q\ & \uc|WideOr1~3_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.STORE_exec_imm_B4~DUPLICATE_q\,
	datab => \uc|ALT_INV_cur_state.STORE_exec_imm_R5~DUPLICATE_q\,
	datac => \uc|ALT_INV_cur_state.STORE_exec_imm_B5~DUPLICATE_q\,
	datad => \uc|ALT_INV_WideOr1~3_combout\,
	datae => \uc|ALT_INV_WideOr1~1_combout\,
	dataf => \uc|ALT_INV_WideOr2~3_combout\,
	combout => \uc|WideOr10~0_combout\);

-- Location: LABCELL_X31_Y4_N51
\m14|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux6~0_combout\ = ( \uc|Selector0~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\uc|control_bus[28]~5_combout\ & (\regA|temp\(1))) # (\uc|control_bus[28]~5_combout\ & ((\regR|temp\(1)))) ) ) ) # ( 
-- !\uc|Selector0~0_combout\ & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (\regB|temp\(1)) # (\uc|control_bus[28]~5_combout\) ) ) ) # ( \uc|Selector0~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( 
-- (!\uc|control_bus[28]~5_combout\ & (\regA|temp\(1))) # (\uc|control_bus[28]~5_combout\ & ((\regR|temp\(1)))) ) ) ) # ( !\uc|Selector0~0_combout\ & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(1) & ( (!\uc|control_bus[28]~5_combout\ & 
-- \regB|temp\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010001110100011100110011111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|ALT_INV_temp\(1),
	datab => \uc|ALT_INV_control_bus[28]~5_combout\,
	datac => \regR|ALT_INV_temp\(1),
	datad => \regB|ALT_INV_temp\(1),
	datae => \uc|ALT_INV_Selector0~0_combout\,
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	combout => \m14|Mux6~0_combout\);

-- Location: LABCELL_X31_Y4_N54
\m14|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux6~1_combout\ = ( \pc|temp\(1) & ( ((!\uc|WideOr9~combout\ & (\m14|Mux6~0_combout\)) # (\uc|WideOr9~combout\ & ((\ir|temp[1]~DUPLICATE_q\)))) # (\uc|WideOr10~0_combout\) ) ) # ( !\pc|temp\(1) & ( (!\uc|WideOr10~0_combout\ & ((!\uc|WideOr9~combout\ 
-- & (\m14|Mux6~0_combout\)) # (\uc|WideOr9~combout\ & ((\ir|temp[1]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr10~0_combout\,
	datab => \uc|ALT_INV_WideOr9~combout\,
	datac => \m14|ALT_INV_Mux6~0_combout\,
	datad => \ir|ALT_INV_temp[1]~DUPLICATE_q\,
	dataf => \pc|ALT_INV_temp\(1),
	combout => \m14|Mux6~1_combout\);

-- Location: FF_X31_Y3_N20
\ir|temp[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(0),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp[0]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y4_N0
\m14|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux7~0_combout\ = ( \regB|temp\(0) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\uc|Selector0~0_combout\) # ((!\uc|control_bus[28]~5_combout\ & (\regA|temp\(0))) # (\uc|control_bus[28]~5_combout\ & ((\regR|temp\(0))))) ) ) ) # ( 
-- !\regB|temp\(0) & ( \mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\uc|control_bus[28]~5_combout\ & (\regA|temp\(0) & ((\uc|Selector0~0_combout\)))) # (\uc|control_bus[28]~5_combout\ & (((!\uc|Selector0~0_combout\) # (\regR|temp\(0))))) ) ) 
-- ) # ( \regB|temp\(0) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (!\uc|control_bus[28]~5_combout\ & (((!\uc|Selector0~0_combout\)) # (\regA|temp\(0)))) # (\uc|control_bus[28]~5_combout\ & (((\regR|temp\(0) & 
-- \uc|Selector0~0_combout\)))) ) ) ) # ( !\regB|temp\(0) & ( !\mem|inst1|altsyncram_component|auto_generated|q_a\(0) & ( (\uc|Selector0~0_combout\ & ((!\uc|control_bus[28]~5_combout\ & (\regA|temp\(0))) # (\uc|control_bus[28]~5_combout\ & 
-- ((\regR|temp\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[28]~5_combout\,
	datab => \regA|ALT_INV_temp\(0),
	datac => \regR|ALT_INV_temp\(0),
	datad => \uc|ALT_INV_Selector0~0_combout\,
	datae => \regB|ALT_INV_temp\(0),
	dataf => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \m14|Mux7~0_combout\);

-- Location: LABCELL_X29_Y4_N33
\m14|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m14|Mux7~1_combout\ = ( \uc|WideOr9~combout\ & ( (!\uc|WideOr10~0_combout\ & (\ir|temp[0]~DUPLICATE_q\)) # (\uc|WideOr10~0_combout\ & ((\pc|temp\(0)))) ) ) # ( !\uc|WideOr9~combout\ & ( (!\uc|WideOr10~0_combout\ & ((\m14|Mux7~0_combout\))) # 
-- (\uc|WideOr10~0_combout\ & (\pc|temp\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	datab => \uc|ALT_INV_WideOr10~0_combout\,
	datac => \pc|ALT_INV_temp\(0),
	datad => \m14|ALT_INV_Mux7~0_combout\,
	dataf => \uc|ALT_INV_WideOr9~combout\,
	combout => \m14|Mux7~1_combout\);

-- Location: FF_X31_Y3_N4
\ir|temp[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(2),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp[2]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y5_N45
\uc|next_state.MOV_exec_imm_R1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.MOV_exec_imm_R1~0_combout\ = ( \uc|next_state.MOV_exec_imm_B1~0_combout\ & ( \uc|Equal0~0_combout\ & ( (\ir|temp[3]~DUPLICATE_q\ & !\ir|temp[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[3]~DUPLICATE_q\,
	datac => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datae => \uc|ALT_INV_next_state.MOV_exec_imm_B1~0_combout\,
	dataf => \uc|ALT_INV_Equal0~0_combout\,
	combout => \uc|next_state.MOV_exec_imm_R1~0_combout\);

-- Location: FF_X34_Y5_N47
\uc|cur_state.MOV_exec_imm_R1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.MOV_exec_imm_R1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_imm_R1~q\);

-- Location: FF_X34_Y3_N25
\uc|cur_state.MOV_exec_imm_R2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.MOV_exec_imm_R1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_imm_R2~q\);

-- Location: LABCELL_X29_Y2_N54
\uc|cur_state.MOV_exec_imm_R3~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|cur_state.MOV_exec_imm_R3~feeder_combout\ = ( \uc|cur_state.MOV_exec_imm_R2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uc|ALT_INV_cur_state.MOV_exec_imm_R2~q\,
	combout => \uc|cur_state.MOV_exec_imm_R3~feeder_combout\);

-- Location: FF_X29_Y2_N55
\uc|cur_state.MOV_exec_imm_R3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|cur_state.MOV_exec_imm_R3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_imm_R3~q\);

-- Location: LABCELL_X32_Y2_N45
\uc|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|Selector9~0_combout\ = ( \uc|cur_state.MOV_exec_R~q\ & ( (!\uc|cur_state.MOV_exec_imm_R3~q\ & (!\ir|temp[0]~DUPLICATE_q\ & (!\uc|cur_state.LOAD_exec_imm_R6~q\ & !\uc|cur_state.LOAD_exec_R2~q\))) ) ) # ( !\uc|cur_state.MOV_exec_R~q\ & ( 
-- (!\uc|cur_state.MOV_exec_imm_R3~q\ & (!\uc|cur_state.LOAD_exec_imm_R6~q\ & !\uc|cur_state.LOAD_exec_R2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.MOV_exec_imm_R3~q\,
	datab => \ir|ALT_INV_temp[0]~DUPLICATE_q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_R6~q\,
	datad => \uc|ALT_INV_cur_state.LOAD_exec_R2~q\,
	dataf => \uc|ALT_INV_cur_state.MOV_exec_R~q\,
	combout => \uc|Selector9~0_combout\);

-- Location: LABCELL_X31_Y2_N48
\m6|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[0]~0_combout\ = ( \alu|temp1\(0) & ( \m12|Mux7~0_combout\ & ( (!\uc|control_bus[12]~4_combout\ & ((!\regR|temp[0]~1_combout\) # ((\m11|Mux7~0_combout\ & \regR|temp[0]~0_combout\)))) ) ) ) # ( !\alu|temp1\(0) & ( \m12|Mux7~0_combout\ & ( 
-- (!\uc|control_bus[12]~4_combout\ & (\regR|temp[0]~0_combout\ & ((!\regR|temp[0]~1_combout\) # (\m11|Mux7~0_combout\)))) ) ) ) # ( \alu|temp1\(0) & ( !\m12|Mux7~0_combout\ & ( ((!\regR|temp[0]~0_combout\) # ((\m11|Mux7~0_combout\ & 
-- !\regR|temp[0]~1_combout\))) # (\uc|control_bus[12]~4_combout\) ) ) ) # ( !\alu|temp1\(0) & ( !\m12|Mux7~0_combout\ & ( ((!\regR|temp[0]~0_combout\ & ((\regR|temp[0]~1_combout\))) # (\regR|temp[0]~0_combout\ & (\m11|Mux7~0_combout\ & 
-- !\regR|temp[0]~1_combout\))) # (\uc|control_bus[12]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111110101111101111111010100001010000000101010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[12]~4_combout\,
	datab => \m11|ALT_INV_Mux7~0_combout\,
	datac => \regR|ALT_INV_temp[0]~0_combout\,
	datad => \regR|ALT_INV_temp[0]~1_combout\,
	datae => \alu|ALT_INV_temp1\(0),
	dataf => \m12|ALT_INV_Mux7~0_combout\,
	combout => \m6|saida[0]~0_combout\);

-- Location: LABCELL_X31_Y2_N30
\m6|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m6|saida[0]~1_combout\ = ( \regA|temp\(0) & ( \m6|saida[0]~0_combout\ & ( ((!\uc|Selector8~1_combout\ & ((\mem|inst1|altsyncram_component|auto_generated|q_a\(0)))) # (\uc|Selector8~1_combout\ & (\regB|temp\(0)))) # (\uc|Selector9~0_combout\) ) ) ) # ( 
-- !\regA|temp\(0) & ( \m6|saida[0]~0_combout\ & ( (!\uc|Selector9~0_combout\ & ((!\uc|Selector8~1_combout\ & ((\mem|inst1|altsyncram_component|auto_generated|q_a\(0)))) # (\uc|Selector8~1_combout\ & (\regB|temp\(0))))) # (\uc|Selector9~0_combout\ & 
-- (((!\uc|Selector8~1_combout\)))) ) ) ) # ( \regA|temp\(0) & ( !\m6|saida[0]~0_combout\ & ( (!\uc|Selector9~0_combout\ & ((!\uc|Selector8~1_combout\ & ((\mem|inst1|altsyncram_component|auto_generated|q_a\(0)))) # (\uc|Selector8~1_combout\ & 
-- (\regB|temp\(0))))) # (\uc|Selector9~0_combout\ & (((\uc|Selector8~1_combout\)))) ) ) ) # ( !\regA|temp\(0) & ( !\m6|saida[0]~0_combout\ & ( (!\uc|Selector9~0_combout\ & ((!\uc|Selector8~1_combout\ & 
-- ((\mem|inst1|altsyncram_component|auto_generated|q_a\(0)))) # (\uc|Selector8~1_combout\ & (\regB|temp\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100111011101011111001000100101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_Selector9~0_combout\,
	datab => \regB|ALT_INV_temp\(0),
	datac => \mem|inst1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	datad => \uc|ALT_INV_Selector8~1_combout\,
	datae => \regA|ALT_INV_temp\(0),
	dataf => \m6|ALT_INV_saida[0]~0_combout\,
	combout => \m6|saida[0]~1_combout\);

-- Location: FF_X31_Y2_N32
\regR|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m6|saida[0]~1_combout\,
	asdata => \sw[0]~input_o\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regR|temp[0]~3_combout\,
	sload => \uc|WideOr19~0_combout\,
	ena => \uc|WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regR|temp\(0));

-- Location: MLABCELL_X28_Y4_N48
\m7|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m7|Mux7~2_combout\ = ( \m7|Mux7~0_combout\ & ( \regA|temp\(0) & ( (\m7|Mux7~1_combout\) # (\regR|temp\(0)) ) ) ) # ( !\m7|Mux7~0_combout\ & ( \regA|temp\(0) & ( (\regB|temp\(0) & !\m7|Mux7~1_combout\) ) ) ) # ( \m7|Mux7~0_combout\ & ( !\regA|temp\(0) & ( 
-- (\regR|temp\(0) & !\m7|Mux7~1_combout\) ) ) ) # ( !\m7|Mux7~0_combout\ & ( !\regA|temp\(0) & ( (\regB|temp\(0) & !\m7|Mux7~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101000000110000001100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(0),
	datab => \regB|ALT_INV_temp\(0),
	datac => \m7|ALT_INV_Mux7~1_combout\,
	datae => \m7|ALT_INV_Mux7~0_combout\,
	dataf => \regA|ALT_INV_temp\(0),
	combout => \m7|Mux7~2_combout\);

-- Location: FF_X29_Y4_N11
\ir|temp[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(4),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp[4]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y2_N48
\uc|next_state.STORE_exec_imm_R1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|next_state.STORE_exec_imm_R1~1_combout\ = ( \ir|temp\(3) & ( \uc|Equal0~0_combout\ & ( (!\ir|temp[4]~DUPLICATE_q\ & (\uc|next_state.STORE_exec_imm_R1~0_combout\ & !\ir|temp[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datab => \uc|ALT_INV_next_state.STORE_exec_imm_R1~0_combout\,
	datac => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	datae => \ir|ALT_INV_temp\(3),
	dataf => \uc|ALT_INV_Equal0~0_combout\,
	combout => \uc|next_state.STORE_exec_imm_R1~1_combout\);

-- Location: FF_X34_Y2_N49
\uc|cur_state.STORE_exec_imm_R1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.STORE_exec_imm_R1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_R1~q\);

-- Location: FF_X34_Y2_N38
\uc|cur_state.STORE_exec_imm_R2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_R1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_R2~q\);

-- Location: FF_X34_Y2_N52
\uc|cur_state.STORE_exec_imm_R3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_R2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_R3~DUPLICATE_q\);

-- Location: FF_X32_Y2_N1
\uc|cur_state.STORE_exec_imm_R4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_R3~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_R4~DUPLICATE_q\);

-- Location: FF_X31_Y4_N13
\uc|cur_state.STORE_exec_imm_R5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_R4~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_R5~q\);

-- Location: FF_X31_Y4_N4
\uc|cur_state.STORE_exec_imm_B4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.STORE_exec_imm_B3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.STORE_exec_imm_B4~q\);

-- Location: LABCELL_X32_Y6_N30
\uc|WideOr1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr1~2_combout\ = ( !\uc|cur_state.STORE_exec_imm_B4~q\ & ( (!\uc|cur_state.STORE_exec_imm_B5~q\ & \uc|WideOr1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uc|ALT_INV_cur_state.STORE_exec_imm_B5~q\,
	datad => \uc|ALT_INV_WideOr1~1_combout\,
	dataf => \uc|ALT_INV_cur_state.STORE_exec_imm_B4~q\,
	combout => \uc|WideOr1~2_combout\);

-- Location: LABCELL_X32_Y6_N9
\uc|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr8~combout\ = ( \uc|cur_state.STORE_exec_imm_R5~q\ & ( \uc|WideOr1~2_combout\ ) ) # ( \uc|cur_state.STORE_exec_imm_R5~q\ & ( !\uc|WideOr1~2_combout\ ) ) # ( !\uc|cur_state.STORE_exec_imm_R5~q\ & ( !\uc|WideOr1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \uc|ALT_INV_cur_state.STORE_exec_imm_R5~q\,
	dataf => \uc|ALT_INV_WideOr1~2_combout\,
	combout => \uc|WideOr8~combout\);

-- Location: FF_X31_Y3_N34
\ir|temp[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \mem|inst1|altsyncram_component|auto_generated|q_a\(3),
	clrn => \uc|cur_state.ini~q\,
	sload => VCC,
	ena => \uc|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|temp[3]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N9
\uc|control_bus[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|control_bus[6]~0_combout\ = ( \uc|cur_state.out1~q\ & ( \ir|temp[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir|ALT_INV_temp[3]~DUPLICATE_q\,
	dataf => \uc|ALT_INV_cur_state.out1~q\,
	combout => \uc|control_bus[6]~0_combout\);

-- Location: LABCELL_X32_Y5_N57
\uc|control_bus[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|control_bus[5]~1_combout\ = ( \uc|cur_state.out1~q\ & ( \ir|temp[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir|ALT_INV_temp[2]~DUPLICATE_q\,
	dataf => \uc|ALT_INV_cur_state.out1~q\,
	combout => \uc|control_bus[5]~1_combout\);

-- Location: MLABCELL_X28_Y4_N39
\m13|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m13|Mux7~0_combout\ = ( \regR|temp\(0) & ( ((!\uc|control_bus[5]~1_combout\ & (\regA|temp\(0))) # (\uc|control_bus[5]~1_combout\ & ((\regB|temp\(0))))) # (\uc|control_bus[6]~0_combout\) ) ) # ( !\regR|temp\(0) & ( (!\uc|control_bus[6]~0_combout\ & 
-- ((!\uc|control_bus[5]~1_combout\ & (\regA|temp\(0))) # (\uc|control_bus[5]~1_combout\ & ((\regB|temp\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[6]~0_combout\,
	datab => \uc|ALT_INV_control_bus[5]~1_combout\,
	datac => \regA|ALT_INV_temp\(0),
	datad => \regB|ALT_INV_temp\(0),
	dataf => \regR|ALT_INV_temp\(0),
	combout => \m13|Mux7~0_combout\);

-- Location: LABCELL_X32_Y5_N6
\regOut|temp[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regOut|temp[6]~0_combout\ = ( \uc|control_bus[5]~1_combout\ & ( \ir|temp[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ir|ALT_INV_temp[3]~DUPLICATE_q\,
	dataf => \uc|ALT_INV_control_bus[5]~1_combout\,
	combout => \regOut|temp[6]~0_combout\);

-- Location: FF_X28_Y4_N41
\regOut|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m13|Mux7~0_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regOut|temp[6]~0_combout\,
	ena => \uc|cur_state.out1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regOut|temp\(0));

-- Location: MLABCELL_X28_Y4_N30
\m13|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m13|Mux6~0_combout\ = ( \regR|temp\(1) & ( ((!\uc|control_bus[5]~1_combout\ & ((\regA|temp\(1)))) # (\uc|control_bus[5]~1_combout\ & (\regB|temp\(1)))) # (\uc|control_bus[6]~0_combout\) ) ) # ( !\regR|temp\(1) & ( (!\uc|control_bus[6]~0_combout\ & 
-- ((!\uc|control_bus[5]~1_combout\ & ((\regA|temp\(1)))) # (\uc|control_bus[5]~1_combout\ & (\regB|temp\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[6]~0_combout\,
	datab => \uc|ALT_INV_control_bus[5]~1_combout\,
	datac => \regB|ALT_INV_temp\(1),
	datad => \regA|ALT_INV_temp\(1),
	dataf => \regR|ALT_INV_temp\(1),
	combout => \m13|Mux6~0_combout\);

-- Location: FF_X28_Y4_N32
\regOut|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m13|Mux6~0_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regOut|temp[6]~0_combout\,
	ena => \uc|cur_state.out1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regOut|temp\(1));

-- Location: LABCELL_X32_Y5_N9
\m13|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m13|Mux5~0_combout\ = ( \uc|control_bus[5]~1_combout\ & ( (!\uc|control_bus[6]~0_combout\ & (\regB|temp\(2))) # (\uc|control_bus[6]~0_combout\ & ((\regR|temp\(2)))) ) ) # ( !\uc|control_bus[5]~1_combout\ & ( (!\uc|control_bus[6]~0_combout\ & 
-- (\regA|temp\(2))) # (\uc|control_bus[6]~0_combout\ & ((\regR|temp\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|ALT_INV_temp\(2),
	datab => \regB|ALT_INV_temp\(2),
	datac => \regR|ALT_INV_temp\(2),
	datad => \uc|ALT_INV_control_bus[6]~0_combout\,
	dataf => \uc|ALT_INV_control_bus[5]~1_combout\,
	combout => \m13|Mux5~0_combout\);

-- Location: FF_X32_Y5_N10
\regOut|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m13|Mux5~0_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regOut|temp[6]~0_combout\,
	ena => \uc|cur_state.out1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regOut|temp\(2));

-- Location: LABCELL_X32_Y5_N54
\m13|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m13|Mux4~0_combout\ = ( \uc|control_bus[5]~1_combout\ & ( (!\uc|control_bus[6]~0_combout\ & ((\regB|temp\(3)))) # (\uc|control_bus[6]~0_combout\ & (\regR|temp\(3))) ) ) # ( !\uc|control_bus[5]~1_combout\ & ( (!\uc|control_bus[6]~0_combout\ & 
-- ((\regA|temp\(3)))) # (\uc|control_bus[6]~0_combout\ & (\regR|temp\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(3),
	datab => \regB|ALT_INV_temp\(3),
	datac => \regA|ALT_INV_temp\(3),
	datad => \uc|ALT_INV_control_bus[6]~0_combout\,
	dataf => \uc|ALT_INV_control_bus[5]~1_combout\,
	combout => \m13|Mux4~0_combout\);

-- Location: FF_X32_Y5_N56
\regOut|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m13|Mux4~0_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regOut|temp[6]~0_combout\,
	ena => \uc|cur_state.out1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regOut|temp\(3));

-- Location: MLABCELL_X28_Y4_N33
\m13|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m13|Mux3~0_combout\ = ( \regB|temp\(4) & ( (!\uc|control_bus[6]~0_combout\ & (((\regA|temp\(4))) # (\uc|control_bus[5]~1_combout\))) # (\uc|control_bus[6]~0_combout\ & (((\regR|temp\(4))))) ) ) # ( !\regB|temp\(4) & ( (!\uc|control_bus[6]~0_combout\ & 
-- (!\uc|control_bus[5]~1_combout\ & (\regA|temp\(4)))) # (\uc|control_bus[6]~0_combout\ & (((\regR|temp\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[6]~0_combout\,
	datab => \uc|ALT_INV_control_bus[5]~1_combout\,
	datac => \regA|ALT_INV_temp\(4),
	datad => \regR|ALT_INV_temp\(4),
	dataf => \regB|ALT_INV_temp\(4),
	combout => \m13|Mux3~0_combout\);

-- Location: FF_X28_Y4_N34
\regOut|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m13|Mux3~0_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regOut|temp[6]~0_combout\,
	ena => \uc|cur_state.out1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regOut|temp\(4));

-- Location: MLABCELL_X28_Y4_N36
\m13|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m13|Mux2~0_combout\ = ( \regB|temp\(5) & ( (!\uc|control_bus[6]~0_combout\ & (((\regA|temp\(5))) # (\uc|control_bus[5]~1_combout\))) # (\uc|control_bus[6]~0_combout\ & (((\regR|temp\(5))))) ) ) # ( !\regB|temp\(5) & ( (!\uc|control_bus[6]~0_combout\ & 
-- (!\uc|control_bus[5]~1_combout\ & ((\regA|temp\(5))))) # (\uc|control_bus[6]~0_combout\ & (((\regR|temp\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_control_bus[6]~0_combout\,
	datab => \uc|ALT_INV_control_bus[5]~1_combout\,
	datac => \regR|ALT_INV_temp\(5),
	datad => \regA|ALT_INV_temp\(5),
	dataf => \regB|ALT_INV_temp\(5),
	combout => \m13|Mux2~0_combout\);

-- Location: FF_X28_Y4_N37
\regOut|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m13|Mux2~0_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regOut|temp[6]~0_combout\,
	ena => \uc|cur_state.out1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regOut|temp\(5));

-- Location: MLABCELL_X28_Y4_N15
\m13|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m13|Mux1~0_combout\ = ( \regR|temp\(6) & ( ((!\uc|control_bus[5]~1_combout\ & (\regA|temp\(6))) # (\uc|control_bus[5]~1_combout\ & ((\regB|temp\(6))))) # (\uc|control_bus[6]~0_combout\) ) ) # ( !\regR|temp\(6) & ( (!\uc|control_bus[6]~0_combout\ & 
-- ((!\uc|control_bus[5]~1_combout\ & (\regA|temp\(6))) # (\uc|control_bus[5]~1_combout\ & ((\regB|temp\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001010011111111110101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regA|ALT_INV_temp\(6),
	datab => \regB|ALT_INV_temp\(6),
	datac => \uc|ALT_INV_control_bus[5]~1_combout\,
	datad => \uc|ALT_INV_control_bus[6]~0_combout\,
	dataf => \regR|ALT_INV_temp\(6),
	combout => \m13|Mux1~0_combout\);

-- Location: FF_X28_Y4_N16
\regOut|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m13|Mux1~0_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regOut|temp[6]~0_combout\,
	ena => \uc|cur_state.out1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regOut|temp\(6));

-- Location: LABCELL_X32_Y5_N42
\m13|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m13|Mux0~0_combout\ = ( \uc|control_bus[5]~1_combout\ & ( (!\uc|control_bus[6]~0_combout\ & ((\regB|temp\(7)))) # (\uc|control_bus[6]~0_combout\ & (\regR|temp\(7))) ) ) # ( !\uc|control_bus[5]~1_combout\ & ( (!\uc|control_bus[6]~0_combout\ & 
-- ((\regA|temp\(7)))) # (\uc|control_bus[6]~0_combout\ & (\regR|temp\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regR|ALT_INV_temp\(7),
	datab => \regB|ALT_INV_temp\(7),
	datac => \regA|ALT_INV_temp\(7),
	datad => \uc|ALT_INV_control_bus[6]~0_combout\,
	dataf => \uc|ALT_INV_control_bus[5]~1_combout\,
	combout => \m13|Mux0~0_combout\);

-- Location: FF_X32_Y5_N43
\regOut|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \m13|Mux0~0_combout\,
	clrn => \uc|cur_state.ini~q\,
	sclr => \regOut|temp[6]~0_combout\,
	ena => \uc|cur_state.out1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regOut|temp\(7));

-- Location: MLABCELL_X34_Y3_N9
\uc|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr5~0_combout\ = ( !\uc|cur_state.decode~q\ & ( !\uc|cur_state.LOAD_exec_B2~q\ & ( (!\uc|cur_state.STORE_exec_imm_B5~q\ & (!\uc|cur_state.MOV_exec_imm_R2~q\ & !\uc|cur_state.CMP_exec_imm3~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.STORE_exec_imm_B5~q\,
	datab => \uc|ALT_INV_cur_state.MOV_exec_imm_R2~q\,
	datac => \uc|ALT_INV_cur_state.CMP_exec_imm3~q\,
	datae => \uc|ALT_INV_cur_state.decode~q\,
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_B2~q\,
	combout => \uc|WideOr5~0_combout\);

-- Location: FF_X31_Y4_N10
\uc|cur_state.LOAD_exec_imm_B4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_B3~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_B4~q\);

-- Location: LABCELL_X35_Y4_N54
\uc|WideOr5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr5~1_combout\ = ( !\uc|cur_state.LOAD_exec_imm_B4~q\ & ( !\uc|cur_state.MOV_exec_imm_B1~q\ & ( (!\uc|cur_state.JEQ_exec4~q\ & (!\uc|cur_state.JGR_exec4~q\ & !\uc|cur_state.JMP_exec4~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.JEQ_exec4~q\,
	datab => \uc|ALT_INV_cur_state.JGR_exec4~q\,
	datad => \uc|ALT_INV_cur_state.JMP_exec4~q\,
	datae => \uc|ALT_INV_cur_state.LOAD_exec_imm_B4~q\,
	dataf => \uc|ALT_INV_cur_state.MOV_exec_imm_B1~q\,
	combout => \uc|WideOr5~1_combout\);

-- Location: LABCELL_X32_Y6_N18
\uc|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr1~0_combout\ = ( !\uc|cur_state.LOAD_exec_imm_R2~q\ & ( (!\uc|cur_state.STORE_exec_imm_B1~q\ & (!\uc|cur_state.LOAD_exec_imm_A6~q\ & !\uc|cur_state.STORE_exec_imm_A2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.STORE_exec_imm_B1~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_A6~q\,
	datad => \uc|ALT_INV_cur_state.STORE_exec_imm_A2~q\,
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_imm_R2~q\,
	combout => \uc|WideOr1~0_combout\);

-- Location: MLABCELL_X34_Y2_N18
\uc|WideOr5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr5~2_combout\ = ( \uc|WideOr29~0_combout\ & ( \uc|WideOr1~0_combout\ & ( (\uc|WideOr5~0_combout\ & (\uc|WideOr5~1_combout\ & (!\uc|cur_state.STORE_exec_imm_R4~DUPLICATE_q\ & !\uc|cur_state.LOAD_exec_imm_A2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr5~0_combout\,
	datab => \uc|ALT_INV_WideOr5~1_combout\,
	datac => \uc|ALT_INV_cur_state.STORE_exec_imm_R4~DUPLICATE_q\,
	datad => \uc|ALT_INV_cur_state.LOAD_exec_imm_A2~q\,
	datae => \uc|ALT_INV_WideOr29~0_combout\,
	dataf => \uc|ALT_INV_WideOr1~0_combout\,
	combout => \uc|WideOr5~2_combout\);

-- Location: FF_X31_Y4_N28
\uc|cur_state.LOAD_exec_imm_R4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.LOAD_exec_imm_R3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_R4~DUPLICATE_q\);

-- Location: LABCELL_X32_Y6_N21
\uc|WideOr6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr6~2_combout\ = ( !\uc|cur_state.in_a~q\ & ( (!\uc|cur_state.LOAD_exec_imm_A4~q\ & (!\uc|cur_state.LOAD_exec_A2~q\ & !\uc|cur_state.busca1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.LOAD_exec_imm_A4~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_A2~q\,
	datad => \uc|ALT_INV_cur_state.busca1~q\,
	dataf => \uc|ALT_INV_cur_state.in_a~q\,
	combout => \uc|WideOr6~2_combout\);

-- Location: MLABCELL_X34_Y4_N21
\uc|WideOr6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr6~3_combout\ = ( \uc|WideOr6~2_combout\ & ( \uc|WideOr6~1_combout\ & ( (!\uc|cur_state.CMP_exec_imm1~DUPLICATE_q\ & (!\uc|cur_state.LOAD_exec_imm_R4~DUPLICATE_q\ & (!\uc|cur_state.R_exec_imm1~q\ & !\uc|cur_state.JMP_exec2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.CMP_exec_imm1~DUPLICATE_q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_imm_R4~DUPLICATE_q\,
	datac => \uc|ALT_INV_cur_state.R_exec_imm1~q\,
	datad => \uc|ALT_INV_cur_state.JMP_exec2~q\,
	datae => \uc|ALT_INV_WideOr6~2_combout\,
	dataf => \uc|ALT_INV_WideOr6~1_combout\,
	combout => \uc|WideOr6~3_combout\);

-- Location: LABCELL_X29_Y2_N45
\uc|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr6~0_combout\ = ( !\uc|cur_state.MOV_exec_imm_B3~q\ & ( !\uc|cur_state.MOV_exec_A~q\ & ( (!\uc|cur_state.LOAD_exec_imm_B2~q\ & (!\uc|cur_state.STORE_exec_imm_A4~q\ & !\uc|cur_state.MOV_exec_imm_A2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.LOAD_exec_imm_B2~q\,
	datab => \uc|ALT_INV_cur_state.STORE_exec_imm_A4~q\,
	datac => \uc|ALT_INV_cur_state.MOV_exec_imm_A2~q\,
	datae => \uc|ALT_INV_cur_state.MOV_exec_imm_B3~q\,
	dataf => \uc|ALT_INV_cur_state.MOV_exec_A~q\,
	combout => \uc|WideOr6~0_combout\);

-- Location: MLABCELL_X28_Y3_N51
\uc|cur_state.wait1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|cur_state.wait1~0_combout\ = ( \uc|cur_state.wait1~q\ & ( \uc|cur_state.decode~q\ ) ) # ( !\uc|cur_state.wait1~q\ & ( \uc|cur_state.decode~q\ & ( (\ir|temp\(6) & (\ir|temp\(5) & (\ir|temp[7]~DUPLICATE_q\ & !\ir|temp[4]~DUPLICATE_q\))) ) ) ) # ( 
-- \uc|cur_state.wait1~q\ & ( !\uc|cur_state.decode~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ir|ALT_INV_temp\(6),
	datab => \ir|ALT_INV_temp\(5),
	datac => \ir|ALT_INV_temp[7]~DUPLICATE_q\,
	datad => \ir|ALT_INV_temp[4]~DUPLICATE_q\,
	datae => \uc|ALT_INV_cur_state.wait1~q\,
	dataf => \uc|ALT_INV_cur_state.decode~q\,
	combout => \uc|cur_state.wait1~0_combout\);

-- Location: FF_X28_Y3_N52
\uc|cur_state.wait1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|cur_state.wait1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.wait1~q\);

-- Location: LABCELL_X35_Y4_N0
\uc|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr2~0_combout\ = ( !\uc|cur_state.JEQ_exec2~q\ & ( !\uc|cur_state.STORE_exec_imm_B3~DUPLICATE_q\ & ( (!\uc|cur_state.JGR_exec2~q\ & (!\uc|cur_state.wait1~q\ & !\uc|cur_state.STORE_exec_imm_R2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.JGR_exec2~q\,
	datac => \uc|ALT_INV_cur_state.wait1~q\,
	datad => \uc|ALT_INV_cur_state.STORE_exec_imm_R2~q\,
	datae => \uc|ALT_INV_cur_state.JEQ_exec2~q\,
	dataf => \uc|ALT_INV_cur_state.STORE_exec_imm_B3~DUPLICATE_q\,
	combout => \uc|WideOr2~0_combout\);

-- Location: MLABCELL_X34_Y2_N9
\uc|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr6~combout\ = ( \uc|WideOr2~0_combout\ & ( (!\uc|WideOr5~2_combout\) # ((!\uc|WideOr6~3_combout\) # (!\uc|WideOr6~0_combout\)) ) ) # ( !\uc|WideOr2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr5~2_combout\,
	datac => \uc|ALT_INV_WideOr6~3_combout\,
	datad => \uc|ALT_INV_WideOr6~0_combout\,
	dataf => \uc|ALT_INV_WideOr2~0_combout\,
	combout => \uc|WideOr6~combout\);

-- Location: MLABCELL_X34_Y3_N0
\uc|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr3~0_combout\ = ( !\uc|cur_state.CMP_exec_imm2~q\ & ( !\uc|cur_state.LOAD_exec_imm_R1~DUPLICATE_q\ & ( (!\uc|cur_state.STORE_exec_imm_B4~q\ & (!\uc|cur_state.LOAD_exec_B1~q\ & !\uc|cur_state.MOV_exec_imm_R1~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.STORE_exec_imm_B4~q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_B1~q\,
	datad => \uc|ALT_INV_cur_state.MOV_exec_imm_R1~q\,
	datae => \uc|ALT_INV_cur_state.CMP_exec_imm2~q\,
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_imm_R1~DUPLICATE_q\,
	combout => \uc|WideOr3~0_combout\);

-- Location: FF_X32_Y6_N26
\uc|cur_state.LOAD_exec_imm_B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|cur_state.LOAD_exec_imm_B3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_imm_B3~q\);

-- Location: LABCELL_X32_Y6_N15
\uc|WideOr5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr5~3_combout\ = ( !\uc|cur_state.STORE_exec_imm_A5~q\ & ( !\uc|cur_state.JGR_exec3~q\ & ( (!\uc|cur_state.LOAD_exec_imm_B3~q\ & !\uc|cur_state.MOV_exec_imm_A3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.LOAD_exec_imm_B3~q\,
	datac => \uc|ALT_INV_cur_state.MOV_exec_imm_A3~q\,
	datae => \uc|ALT_INV_cur_state.STORE_exec_imm_A5~q\,
	dataf => \uc|ALT_INV_cur_state.JGR_exec3~q\,
	combout => \uc|WideOr5~3_combout\);

-- Location: LABCELL_X32_Y5_N24
\uc|WideOr5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr5~5_combout\ = ( !\uc|cur_state.JEQ_exec3~q\ & ( !\uc|cur_state.busca2~q\ & ( (!\uc|cur_state.R_exec_imm2~q\ & !\uc|cur_state.LOAD_exec_imm_A5~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.R_exec_imm2~q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_imm_A5~q\,
	datae => \uc|ALT_INV_cur_state.JEQ_exec3~q\,
	dataf => \uc|ALT_INV_cur_state.busca2~q\,
	combout => \uc|WideOr5~5_combout\);

-- Location: MLABCELL_X34_Y4_N9
\uc|WideOr5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr5~4_combout\ = (!\uc|cur_state.LOAD_exec_imm_A1~q\ & (!\uc|cur_state.LOAD_exec_imm_R5~q\ & (!\uc|cur_state.JMP_exec3~q\ & !\uc|cur_state.STORE_exec_imm_R3~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.LOAD_exec_imm_A1~q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_imm_R5~q\,
	datac => \uc|ALT_INV_cur_state.JMP_exec3~q\,
	datad => \uc|ALT_INV_cur_state.STORE_exec_imm_R3~q\,
	combout => \uc|WideOr5~4_combout\);

-- Location: MLABCELL_X34_Y4_N24
\uc|WideOr5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr5~6_combout\ = ( !\uc|cur_state.STORE_exec_imm_A1~q\ & ( !\uc|cur_state.MOV_exec_B~q\ & ( (\uc|WideOr5~5_combout\ & (\uc|WideOr5~4_combout\ & (!\uc|cur_state.Pc~q\ & !\uc|cur_state.in_b~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr5~5_combout\,
	datab => \uc|ALT_INV_WideOr5~4_combout\,
	datac => \uc|ALT_INV_cur_state.Pc~q\,
	datad => \uc|ALT_INV_cur_state.in_b~DUPLICATE_q\,
	datae => \uc|ALT_INV_cur_state.STORE_exec_imm_A1~q\,
	dataf => \uc|ALT_INV_cur_state.MOV_exec_B~q\,
	combout => \uc|WideOr5~6_combout\);

-- Location: MLABCELL_X34_Y2_N6
\uc|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr5~combout\ = ( \uc|WideOr5~6_combout\ & ( (!\uc|WideOr5~2_combout\) # ((!\uc|WideOr3~0_combout\) # (!\uc|WideOr5~3_combout\)) ) ) # ( !\uc|WideOr5~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr5~2_combout\,
	datac => \uc|ALT_INV_WideOr3~0_combout\,
	datad => \uc|ALT_INV_WideOr5~3_combout\,
	dataf => \uc|ALT_INV_WideOr5~6_combout\,
	combout => \uc|WideOr5~combout\);

-- Location: LABCELL_X35_Y4_N6
\uc|WideOr4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr4~5_combout\ = ( !\uc|cur_state.JGR_exec2~q\ & ( !\uc|cur_state.MOV_exec_imm_A1~q\ & ( (!\uc|cur_state.LOAD_exec_imm_B4~q\ & (!\uc|cur_state.LOAD_exec_imm_B1~q\ & (!\uc|cur_state.STORE_exec_imm_A3~q\ & !\uc|cur_state.MOV_exec_imm_B1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.LOAD_exec_imm_B4~q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_imm_B1~q\,
	datac => \uc|ALT_INV_cur_state.STORE_exec_imm_A3~q\,
	datad => \uc|ALT_INV_cur_state.MOV_exec_imm_B1~q\,
	datae => \uc|ALT_INV_cur_state.JGR_exec2~q\,
	dataf => \uc|ALT_INV_cur_state.MOV_exec_imm_A1~q\,
	combout => \uc|WideOr4~5_combout\);

-- Location: LABCELL_X35_Y4_N24
\uc|WideOr4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr4~6_combout\ = ( !\uc|cur_state.LOAD_exec_imm_B2~q\ & ( !\uc|cur_state.STORE_exec_imm_A4~q\ & ( (\uc|WideOr4~5_combout\ & (!\uc|cur_state.MOV_exec_imm_A2~q\ & \uc|WideOr4~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr4~5_combout\,
	datab => \uc|ALT_INV_cur_state.MOV_exec_imm_A2~q\,
	datac => \uc|ALT_INV_WideOr4~4_combout\,
	datae => \uc|ALT_INV_cur_state.LOAD_exec_imm_B2~q\,
	dataf => \uc|ALT_INV_cur_state.STORE_exec_imm_A4~q\,
	combout => \uc|WideOr4~6_combout\);

-- Location: LABCELL_X32_Y2_N15
\uc|WideOr4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr4~2_combout\ = ( !\uc|cur_state.LOAD_exec_imm_R6~q\ & ( (!\uc|cur_state.STORE_exec_imm_R1~q\ & (!\uc|cur_state.LOAD_exec_R2~q\ & (!\uc|cur_state.STORE_exec_imm_R2~q\ & !\uc|cur_state.MOV_exec_imm_R3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.STORE_exec_imm_R1~q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_R2~q\,
	datac => \uc|ALT_INV_cur_state.STORE_exec_imm_R2~q\,
	datad => \uc|ALT_INV_cur_state.MOV_exec_imm_R3~q\,
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_imm_R6~q\,
	combout => \uc|WideOr4~2_combout\);

-- Location: FF_X29_Y4_N46
\uc|cur_state.LOAD_exec_R1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \uc|next_state.LOAD_exec_R1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.LOAD_exec_R1~q\);

-- Location: MLABCELL_X34_Y4_N57
\uc|WideOr4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr4~1_combout\ = ( !\uc|cur_state.STORE_exec_imm_R4~DUPLICATE_q\ & ( !\uc|cur_state.LOAD_exec_R1~q\ & ( (!\uc|cur_state.LOAD_exec_imm_A2~q\ & (!\uc|cur_state.JMP_exec1~q\ & (!\uc|cur_state.LOAD_exec_imm_R3~q\ & !\uc|cur_state.JMP_exec4~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.LOAD_exec_imm_A2~q\,
	datab => \uc|ALT_INV_cur_state.JMP_exec1~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_R3~q\,
	datad => \uc|ALT_INV_cur_state.JMP_exec4~q\,
	datae => \uc|ALT_INV_cur_state.STORE_exec_imm_R4~DUPLICATE_q\,
	dataf => \uc|ALT_INV_cur_state.LOAD_exec_R1~q\,
	combout => \uc|WideOr4~1_combout\);

-- Location: MLABCELL_X28_Y3_N30
\uc|WideOr4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr4~3_combout\ = ( !\uc|cur_state.JMP_exec2~q\ & ( !\uc|WideOr19~0_combout\ & ( (\uc|WideOr5~4_combout\ & (\uc|WideOr4~2_combout\ & (!\uc|cur_state.LOAD_exec_imm_R4~q\ & \uc|WideOr4~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr5~4_combout\,
	datab => \uc|ALT_INV_WideOr4~2_combout\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_R4~q\,
	datad => \uc|ALT_INV_WideOr4~1_combout\,
	datae => \uc|ALT_INV_cur_state.JMP_exec2~q\,
	dataf => \uc|ALT_INV_WideOr19~0_combout\,
	combout => \uc|WideOr4~3_combout\);

-- Location: MLABCELL_X34_Y2_N24
\uc|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr4~combout\ = ( \uc|WideOr5~3_combout\ & ( (!\uc|WideOr4~0_combout\) # ((!\uc|WideOr4~6_combout\) # (!\uc|WideOr4~3_combout\)) ) ) # ( !\uc|WideOr5~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr4~0_combout\,
	datab => \uc|ALT_INV_WideOr4~6_combout\,
	datac => \uc|ALT_INV_WideOr4~3_combout\,
	dataf => \uc|ALT_INV_WideOr5~3_combout\,
	combout => \uc|WideOr4~combout\);

-- Location: FF_X35_Y4_N59
\uc|cur_state.MOV_exec_imm_B2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \uc|cur_state.MOV_exec_imm_B1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc|cur_state.MOV_exec_imm_B2~q\);

-- Location: LABCELL_X35_Y4_N12
\uc|WideOr3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr3~3_combout\ = ( !\uc|cur_state.STORE_exec_imm_B2~q\ & ( (!\uc|cur_state.LOAD_exec_imm_B5~q\ & (!\uc|cur_state.LOAD_exec_A1~DUPLICATE_q\ & (!\uc|cur_state.CMP_exec_imm1~DUPLICATE_q\ & !\uc|cur_state.LOAD_exec_imm_R2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.LOAD_exec_imm_B5~q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_A1~DUPLICATE_q\,
	datac => \uc|ALT_INV_cur_state.CMP_exec_imm1~DUPLICATE_q\,
	datad => \uc|ALT_INV_cur_state.LOAD_exec_imm_R2~q\,
	datae => \uc|ALT_INV_cur_state.STORE_exec_imm_B2~q\,
	combout => \uc|WideOr3~3_combout\);

-- Location: LABCELL_X35_Y4_N42
\uc|WideOr3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr3~4_combout\ = ( \uc|WideOr3~3_combout\ & ( (!\uc|cur_state.MOV_exec_imm_R2~q\ & (!\uc|cur_state.MOV_exec_imm_B2~q\ & (!\uc|cur_state.STORE_exec_imm_B3~DUPLICATE_q\ & \uc|WideOr3~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.MOV_exec_imm_R2~q\,
	datab => \uc|ALT_INV_cur_state.MOV_exec_imm_B2~q\,
	datac => \uc|ALT_INV_cur_state.STORE_exec_imm_B3~DUPLICATE_q\,
	datad => \uc|ALT_INV_WideOr3~2_combout\,
	dataf => \uc|ALT_INV_WideOr3~3_combout\,
	combout => \uc|WideOr3~4_combout\);

-- Location: LABCELL_X35_Y4_N39
\uc|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr3~combout\ = ( \uc|WideOr3~4_combout\ & ( (!\uc|WideOr4~3_combout\) # ((!\uc|WideOr3~1_combout\) # (!\uc|WideOr3~0_combout\)) ) ) # ( !\uc|WideOr3~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr4~3_combout\,
	datac => \uc|ALT_INV_WideOr3~1_combout\,
	datad => \uc|ALT_INV_WideOr3~0_combout\,
	dataf => \uc|ALT_INV_WideOr3~4_combout\,
	combout => \uc|WideOr3~combout\);

-- Location: LABCELL_X32_Y6_N39
\uc|WideOr2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr2~4_combout\ = ( !\uc|cur_state.JGR_exec3~q\ & ( (!\uc|cur_state.JEQ_exec3~q\ & (!\uc|cur_state.LOAD_exec_imm_A2~q\ & !\uc|cur_state.STORE_exec_imm_A2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uc|ALT_INV_cur_state.JEQ_exec3~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_A2~q\,
	datad => \uc|ALT_INV_cur_state.STORE_exec_imm_A2~q\,
	dataf => \uc|ALT_INV_cur_state.JGR_exec3~q\,
	combout => \uc|WideOr2~4_combout\);

-- Location: LABCELL_X29_Y6_N27
\uc|WideOr2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr2~5_combout\ = ( !\uc|cur_state.out1~q\ & ( \uc|WideOr2~4_combout\ & ( (\uc|WideOr2~3_combout\ & (\uc|WideOr2~0_combout\ & !\uc|cur_state.STORE_exec_imm_B2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr2~3_combout\,
	datac => \uc|ALT_INV_WideOr2~0_combout\,
	datad => \uc|ALT_INV_cur_state.STORE_exec_imm_B2~q\,
	datae => \uc|ALT_INV_cur_state.out1~q\,
	dataf => \uc|ALT_INV_WideOr2~4_combout\,
	combout => \uc|WideOr2~5_combout\);

-- Location: LABCELL_X32_Y6_N0
\uc|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr2~combout\ = ( \uc|WideOr2~5_combout\ & ( \uc|WideOr2~2_combout\ & ( ((!\uc|WideOr1~2_combout\) # (\uc|cur_state.STORE_exec_imm_A3~q\)) # (\uc|cur_state.STORE_exec_imm_R3~q\) ) ) ) # ( !\uc|WideOr2~5_combout\ & ( \uc|WideOr2~2_combout\ ) ) # ( 
-- \uc|WideOr2~5_combout\ & ( !\uc|WideOr2~2_combout\ ) ) # ( !\uc|WideOr2~5_combout\ & ( !\uc|WideOr2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.STORE_exec_imm_R3~q\,
	datab => \uc|ALT_INV_cur_state.STORE_exec_imm_A3~q\,
	datad => \uc|ALT_INV_WideOr1~2_combout\,
	datae => \uc|ALT_INV_WideOr2~5_combout\,
	dataf => \uc|ALT_INV_WideOr2~2_combout\,
	combout => \uc|WideOr2~combout\);

-- Location: LABCELL_X32_Y6_N33
\uc|WideOr1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr1~5_combout\ = ( !\uc|cur_state.STORE_exec_imm_B2~q\ & ( (!\uc|cur_state.LOAD_exec_imm_B2~q\ & (!\uc|cur_state.LOAD_exec_imm_B6~q\ & (!\uc|cur_state.LOAD_exec_imm_R6~q\ & !\uc|cur_state.STORE_exec_imm_A1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.LOAD_exec_imm_B2~q\,
	datab => \uc|ALT_INV_cur_state.LOAD_exec_imm_B6~q\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_R6~q\,
	datad => \uc|ALT_INV_cur_state.STORE_exec_imm_A1~q\,
	dataf => \uc|ALT_INV_cur_state.STORE_exec_imm_B2~q\,
	combout => \uc|WideOr1~5_combout\);

-- Location: LABCELL_X32_Y6_N54
\uc|WideOr1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr1~6_combout\ = ( !\uc|cur_state.LOAD_exec_imm_R1~DUPLICATE_q\ & ( \uc|WideOr1~0_combout\ & ( (\uc|WideOr1~5_combout\ & (\uc|WideOr1~4_combout\ & !\uc|cur_state.LOAD_exec_imm_B1~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr1~5_combout\,
	datab => \uc|ALT_INV_WideOr1~4_combout\,
	datac => \uc|ALT_INV_cur_state.LOAD_exec_imm_B1~q\,
	datae => \uc|ALT_INV_cur_state.LOAD_exec_imm_R1~DUPLICATE_q\,
	dataf => \uc|ALT_INV_WideOr1~0_combout\,
	combout => \uc|WideOr1~6_combout\);

-- Location: MLABCELL_X34_Y2_N42
\uc|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr1~combout\ = ( \uc|WideOr1~3_combout\ & ( \uc|WideOr1~2_combout\ & ( (!\uc|WideOr1~6_combout\) # ((\uc|cur_state.STORE_exec_imm_R2~q\) # (\uc|cur_state.STORE_exec_imm_R1~q\)) ) ) ) # ( !\uc|WideOr1~3_combout\ & ( \uc|WideOr1~2_combout\ ) ) # ( 
-- \uc|WideOr1~3_combout\ & ( !\uc|WideOr1~2_combout\ ) ) # ( !\uc|WideOr1~3_combout\ & ( !\uc|WideOr1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr1~6_combout\,
	datab => \uc|ALT_INV_cur_state.STORE_exec_imm_R1~q\,
	datac => \uc|ALT_INV_cur_state.STORE_exec_imm_R2~q\,
	datae => \uc|ALT_INV_WideOr1~3_combout\,
	dataf => \uc|ALT_INV_WideOr1~2_combout\,
	combout => \uc|WideOr1~combout\);

-- Location: LABCELL_X35_Y4_N45
\uc|WideOr0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr0~3_combout\ = ( !\uc|cur_state.wait1~q\ & ( (!\uc|cur_state.MOV_exec_imm_R2~q\ & (!\uc|cur_state.MOV_exec_imm_B2~q\ & (!\uc|cur_state.Pc~q\ & !\uc|cur_state.MOV_exec_imm_A2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_cur_state.MOV_exec_imm_R2~q\,
	datab => \uc|ALT_INV_cur_state.MOV_exec_imm_B2~q\,
	datac => \uc|ALT_INV_cur_state.Pc~q\,
	datad => \uc|ALT_INV_cur_state.MOV_exec_imm_A2~q\,
	dataf => \uc|ALT_INV_cur_state.wait1~q\,
	combout => \uc|WideOr0~3_combout\);

-- Location: LABCELL_X35_Y4_N18
\uc|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uc|WideOr0~combout\ = ( \uc|WideOr0~1_combout\ & ( (!\uc|WideOr0~2_combout\) # ((!\uc|WideOr0~0_combout\) # ((!\uc|WideOr0~3_combout\) # (\uc|cur_state.out1~q\))) ) ) # ( !\uc|WideOr0~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uc|ALT_INV_WideOr0~2_combout\,
	datab => \uc|ALT_INV_WideOr0~0_combout\,
	datac => \uc|ALT_INV_cur_state.out1~q\,
	datad => \uc|ALT_INV_WideOr0~3_combout\,
	dataf => \uc|ALT_INV_WideOr0~1_combout\,
	combout => \uc|WideOr0~combout\);

-- Location: LABCELL_X6_Y17_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


