-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/03/2021 18:44:08"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	board_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(16 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END board_top;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF board_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \fir_top|fir_srg|j[0]~36_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[0]~36_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[2]~41\ : std_logic;
SIGNAL \fir_top|fir_srg|i[3]~42_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \fir_top|always0~0_combout\ : std_logic;
SIGNAL \fir_top|addr[15]~32_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \fir_top|Add0~0_combout\ : std_logic;
SIGNAL \fir_top|addr~33_combout\ : std_logic;
SIGNAL \fir_top|addr[15]~34_combout\ : std_logic;
SIGNAL \fir_top|addr[15]~35_combout\ : std_logic;
SIGNAL \fir_top|Add0~1\ : std_logic;
SIGNAL \fir_top|Add0~2_combout\ : std_logic;
SIGNAL \fir_top|addr~36_combout\ : std_logic;
SIGNAL \fir_top|Add0~3\ : std_logic;
SIGNAL \fir_top|Add0~4_combout\ : std_logic;
SIGNAL \fir_top|addr~37_combout\ : std_logic;
SIGNAL \fir_top|Add0~5\ : std_logic;
SIGNAL \fir_top|Add0~6_combout\ : std_logic;
SIGNAL \fir_top|addr~38_combout\ : std_logic;
SIGNAL \fir_top|Add0~7\ : std_logic;
SIGNAL \fir_top|Add0~8_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \fir_top|addr~39_combout\ : std_logic;
SIGNAL \fir_top|Add0~9\ : std_logic;
SIGNAL \fir_top|Add0~10_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \fir_top|addr~40_combout\ : std_logic;
SIGNAL \fir_top|Add0~11\ : std_logic;
SIGNAL \fir_top|Add0~12_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \fir_top|addr~41_combout\ : std_logic;
SIGNAL \fir_top|Add0~13\ : std_logic;
SIGNAL \fir_top|Add0~14_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \fir_top|addr~42_combout\ : std_logic;
SIGNAL \fir_top|Add0~15\ : std_logic;
SIGNAL \fir_top|Add0~16_combout\ : std_logic;
SIGNAL \fir_top|addr~43_combout\ : std_logic;
SIGNAL \fir_top|Add0~17\ : std_logic;
SIGNAL \fir_top|Add0~18_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \fir_top|addr~44_combout\ : std_logic;
SIGNAL \fir_top|Add0~19\ : std_logic;
SIGNAL \fir_top|Add0~20_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \fir_top|addr~45_combout\ : std_logic;
SIGNAL \fir_top|Add0~21\ : std_logic;
SIGNAL \fir_top|Add0~22_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \fir_top|addr~46_combout\ : std_logic;
SIGNAL \fir_top|Add0~23\ : std_logic;
SIGNAL \fir_top|Add0~24_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \fir_top|addr~47_combout\ : std_logic;
SIGNAL \fir_top|Add0~25\ : std_logic;
SIGNAL \fir_top|Add0~26_combout\ : std_logic;
SIGNAL \fir_top|addr~48_combout\ : std_logic;
SIGNAL \fir_top|Add0~27\ : std_logic;
SIGNAL \fir_top|Add0~28_combout\ : std_logic;
SIGNAL \fir_top|addr~49_combout\ : std_logic;
SIGNAL \fir_top|Add0~29\ : std_logic;
SIGNAL \fir_top|Add0~30_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \fir_top|addr~50_combout\ : std_logic;
SIGNAL \fir_top|Add0~31\ : std_logic;
SIGNAL \fir_top|Add0~32_combout\ : std_logic;
SIGNAL \fir_top|addr~51_combout\ : std_logic;
SIGNAL \fir_top|Add0~33\ : std_logic;
SIGNAL \fir_top|Add0~34_combout\ : std_logic;
SIGNAL \fir_top|addr~52_combout\ : std_logic;
SIGNAL \fir_top|Add0~35\ : std_logic;
SIGNAL \fir_top|Add0~36_combout\ : std_logic;
SIGNAL \fir_top|addr~53_combout\ : std_logic;
SIGNAL \fir_top|Add0~37\ : std_logic;
SIGNAL \fir_top|Add0~38_combout\ : std_logic;
SIGNAL \fir_top|addr~54_combout\ : std_logic;
SIGNAL \fir_top|Add0~39\ : std_logic;
SIGNAL \fir_top|Add0~40_combout\ : std_logic;
SIGNAL \fir_top|addr~55_combout\ : std_logic;
SIGNAL \fir_top|Add0~41\ : std_logic;
SIGNAL \fir_top|Add0~42_combout\ : std_logic;
SIGNAL \fir_top|addr~56_combout\ : std_logic;
SIGNAL \fir_top|Add0~43\ : std_logic;
SIGNAL \fir_top|Add0~44_combout\ : std_logic;
SIGNAL \fir_top|addr~57_combout\ : std_logic;
SIGNAL \fir_top|Add0~45\ : std_logic;
SIGNAL \fir_top|Add0~46_combout\ : std_logic;
SIGNAL \fir_top|addr~58_combout\ : std_logic;
SIGNAL \fir_top|Add0~47\ : std_logic;
SIGNAL \fir_top|Add0~48_combout\ : std_logic;
SIGNAL \fir_top|addr~59_combout\ : std_logic;
SIGNAL \fir_top|Add0~49\ : std_logic;
SIGNAL \fir_top|Add0~50_combout\ : std_logic;
SIGNAL \fir_top|addr~60_combout\ : std_logic;
SIGNAL \fir_top|Add0~51\ : std_logic;
SIGNAL \fir_top|Add0~52_combout\ : std_logic;
SIGNAL \fir_top|addr~61_combout\ : std_logic;
SIGNAL \fir_top|Add0~53\ : std_logic;
SIGNAL \fir_top|Add0~54_combout\ : std_logic;
SIGNAL \fir_top|addr~62_combout\ : std_logic;
SIGNAL \fir_top|Add0~55\ : std_logic;
SIGNAL \fir_top|Add0~56_combout\ : std_logic;
SIGNAL \fir_top|addr~63_combout\ : std_logic;
SIGNAL \fir_top|Add0~57\ : std_logic;
SIGNAL \fir_top|Add0~58_combout\ : std_logic;
SIGNAL \fir_top|addr~64_combout\ : std_logic;
SIGNAL \fir_top|Add0~59\ : std_logic;
SIGNAL \fir_top|Add0~60_combout\ : std_logic;
SIGNAL \fir_top|addr~65_combout\ : std_logic;
SIGNAL \fir_top|Add0~61\ : std_logic;
SIGNAL \fir_top|Add0~62_combout\ : std_logic;
SIGNAL \fir_top|addr~66_combout\ : std_logic;
SIGNAL \fir_top|Equal2~9_combout\ : std_logic;
SIGNAL \fir_top|Equal2~8_combout\ : std_logic;
SIGNAL \fir_top|Equal2~2_combout\ : std_logic;
SIGNAL \fir_top|Equal2~1_combout\ : std_logic;
SIGNAL \fir_top|Equal2~0_combout\ : std_logic;
SIGNAL \fir_top|Equal2~3_combout\ : std_logic;
SIGNAL \fir_top|Equal2~4_combout\ : std_logic;
SIGNAL \fir_top|Equal2~6_combout\ : std_logic;
SIGNAL \fir_top|Equal2~5_combout\ : std_logic;
SIGNAL \fir_top|Equal2~7_combout\ : std_logic;
SIGNAL \fir_top|Equal2~10_combout\ : std_logic;
SIGNAL \fir_top|Equal3~1_combout\ : std_logic;
SIGNAL \fir_top|operation[0]~4_combout\ : std_logic;
SIGNAL \fir_top|operation[0]~5_combout\ : std_logic;
SIGNAL \fir_top|operation[1]~6_combout\ : std_logic;
SIGNAL \fir_top|operation[0]~8_combout\ : std_logic;
SIGNAL \fir_top|operation[0]~7_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|always0~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[0]~37\ : std_logic;
SIGNAL \fir_top|fir_srg|j[1]~38_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[4]~102_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[1]~39\ : std_logic;
SIGNAL \fir_top|fir_srg|j[2]~41_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[2]~42\ : std_logic;
SIGNAL \fir_top|fir_srg|j[3]~43_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[3]~44\ : std_logic;
SIGNAL \fir_top|fir_srg|j[4]~45_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[4]~46\ : std_logic;
SIGNAL \fir_top|fir_srg|j[5]~47_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[5]~48\ : std_logic;
SIGNAL \fir_top|fir_srg|j[6]~49_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[6]~50\ : std_logic;
SIGNAL \fir_top|fir_srg|j[7]~51_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[7]~52\ : std_logic;
SIGNAL \fir_top|fir_srg|j[8]~53_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[8]~54\ : std_logic;
SIGNAL \fir_top|fir_srg|j[9]~55_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[9]~56\ : std_logic;
SIGNAL \fir_top|fir_srg|j[10]~57_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[10]~58\ : std_logic;
SIGNAL \fir_top|fir_srg|j[11]~59_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[11]~60\ : std_logic;
SIGNAL \fir_top|fir_srg|j[12]~61_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[12]~62\ : std_logic;
SIGNAL \fir_top|fir_srg|j[13]~63_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[13]~64\ : std_logic;
SIGNAL \fir_top|fir_srg|j[14]~65_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[14]~66\ : std_logic;
SIGNAL \fir_top|fir_srg|j[15]~67_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[15]~68\ : std_logic;
SIGNAL \fir_top|fir_srg|j[16]~69_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[16]~70\ : std_logic;
SIGNAL \fir_top|fir_srg|j[17]~71_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[17]~72\ : std_logic;
SIGNAL \fir_top|fir_srg|j[18]~73_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[18]~74\ : std_logic;
SIGNAL \fir_top|fir_srg|j[19]~75_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[19]~76\ : std_logic;
SIGNAL \fir_top|fir_srg|j[20]~77_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[20]~78\ : std_logic;
SIGNAL \fir_top|fir_srg|j[21]~79_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[21]~80\ : std_logic;
SIGNAL \fir_top|fir_srg|j[22]~81_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[22]~82\ : std_logic;
SIGNAL \fir_top|fir_srg|j[23]~83_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[23]~84\ : std_logic;
SIGNAL \fir_top|fir_srg|j[24]~85_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[24]~86\ : std_logic;
SIGNAL \fir_top|fir_srg|j[25]~87_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[25]~88\ : std_logic;
SIGNAL \fir_top|fir_srg|j[26]~89_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[26]~90\ : std_logic;
SIGNAL \fir_top|fir_srg|j[27]~91_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[27]~92\ : std_logic;
SIGNAL \fir_top|fir_srg|j[28]~93_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[28]~94\ : std_logic;
SIGNAL \fir_top|fir_srg|j[29]~95_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[29]~96\ : std_logic;
SIGNAL \fir_top|fir_srg|j[30]~97_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[30]~98\ : std_logic;
SIGNAL \fir_top|fir_srg|j[31]~99_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal2~7_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal2~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal2~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal2~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal2~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal2~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal2~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal2~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal2~8_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal2~9_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[4]~40_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[2]~101_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[3]~43\ : std_logic;
SIGNAL \fir_top|fir_srg|i[4]~44_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[4]~45\ : std_logic;
SIGNAL \fir_top|fir_srg|i[5]~46_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[5]~47\ : std_logic;
SIGNAL \fir_top|fir_srg|i[6]~48_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[6]~49\ : std_logic;
SIGNAL \fir_top|fir_srg|i[7]~50_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[7]~51\ : std_logic;
SIGNAL \fir_top|fir_srg|i[8]~52_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[8]~53\ : std_logic;
SIGNAL \fir_top|fir_srg|i[9]~54_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[9]~55\ : std_logic;
SIGNAL \fir_top|fir_srg|i[10]~56_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[10]~57\ : std_logic;
SIGNAL \fir_top|fir_srg|i[11]~58_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[11]~59\ : std_logic;
SIGNAL \fir_top|fir_srg|i[12]~60_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[12]~61\ : std_logic;
SIGNAL \fir_top|fir_srg|i[13]~62_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[13]~63\ : std_logic;
SIGNAL \fir_top|fir_srg|i[14]~64_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[14]~65\ : std_logic;
SIGNAL \fir_top|fir_srg|i[15]~66_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[15]~67\ : std_logic;
SIGNAL \fir_top|fir_srg|i[16]~68_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[16]~69\ : std_logic;
SIGNAL \fir_top|fir_srg|i[17]~70_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[17]~71\ : std_logic;
SIGNAL \fir_top|fir_srg|i[18]~72_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[18]~73\ : std_logic;
SIGNAL \fir_top|fir_srg|i[19]~74_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[19]~75\ : std_logic;
SIGNAL \fir_top|fir_srg|i[20]~76_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[20]~77\ : std_logic;
SIGNAL \fir_top|fir_srg|i[21]~78_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[21]~79\ : std_logic;
SIGNAL \fir_top|fir_srg|i[22]~80_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[22]~81\ : std_logic;
SIGNAL \fir_top|fir_srg|i[23]~82_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[23]~83\ : std_logic;
SIGNAL \fir_top|fir_srg|i[24]~84_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[24]~85\ : std_logic;
SIGNAL \fir_top|fir_srg|i[25]~86_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[25]~87\ : std_logic;
SIGNAL \fir_top|fir_srg|i[26]~88_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[26]~89\ : std_logic;
SIGNAL \fir_top|fir_srg|i[27]~90_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal3~7_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal3~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[27]~91\ : std_logic;
SIGNAL \fir_top|fir_srg|i[28]~92_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[28]~93\ : std_logic;
SIGNAL \fir_top|fir_srg|i[29]~94_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[29]~95\ : std_logic;
SIGNAL \fir_top|fir_srg|i[30]~96_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[30]~97\ : std_logic;
SIGNAL \fir_top|fir_srg|i[31]~98_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal3~8_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal3~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal3~9_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[2]~100_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[0]~37\ : std_logic;
SIGNAL \fir_top|fir_srg|i[1]~38_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|i[1]~39\ : std_logic;
SIGNAL \fir_top|fir_srg|i[2]~40_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal3~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal3~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal3~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal3~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal3~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|j[4]~101_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Equal2~10_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|done~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|done~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][0]~0_combout\ : std_logic;
SIGNAL \fir_top|signal~0_combout\ : std_logic;
SIGNAL \fir_top|signal~1_combout\ : std_logic;
SIGNAL \fir_top|x[0]~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~1\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~3\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~5\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[0][2]~20_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~7\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~9\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~11\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~13\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~15\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~17\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~19\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~21\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~23\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~25\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~27\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~29\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~31\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~33\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~35\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~36_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~34_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~30_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~32_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~14_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~26_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~28_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~24_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~22_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~13_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~12_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~10_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~11_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~20_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~18_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~14_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~16_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~12_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~15_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~8_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~37\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~39\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~41\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~43\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~45\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~47\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~49\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~51\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~53\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~55\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~57\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~59\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~61\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~62_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~60_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~56_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~42_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~44_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~40_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~38_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~16_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~50_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~46_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~48_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~17_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~52_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~54_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~18_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add1~58_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~19_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[18][3]~21_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~22_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[16][2]~23_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[16][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~118_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[17][3]~119_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[17][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Add3~1\ : std_logic;
SIGNAL \fir_top|fir_srg|Add3~3\ : std_logic;
SIGNAL \fir_top|fir_srg|Add3~5\ : std_logic;
SIGNAL \fir_top|fir_srg|Add3~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add3~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add3~7\ : std_logic;
SIGNAL \fir_top|fir_srg|Add3~8_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add3~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Add3~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~24_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[18][3]~25_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[18][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[6][1]~26_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~50_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[0][2]~51_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[0][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[6][1]~38_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~48_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[4][0]~49_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[4][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~52_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[6][1]~53_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[6][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~54_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[2][0]~55_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[2][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[17][3]~10_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~37_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~41_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[1][0]~42_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[1][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~39_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[5][3]~40_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[5][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~43_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~44_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[7][1]~45_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[7][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~46_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[3][1]~47_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[3][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~30_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~35_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[14][0]~36_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[14][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[9][0]~27_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~28_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[10][2]~29_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[10][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~33_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[8][2]~34_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[8][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~31_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[12][0]~32_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[12][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~56_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[11][0]~57_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[11][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~62_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~63_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~60_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[9][0]~61_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[9][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~58_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[13][3]~59_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[13][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~7_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~8_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~9_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~10_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux31~combout\ : std_logic;
SIGNAL \fir_top|signal~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~64_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[16][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~120_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[17][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~65_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[18][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~79_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[6][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~78_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[14][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~80_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~81_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[7][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~7_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~8_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~66_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[11][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~67_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[10][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~68_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[2][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~69_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[3][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~75_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[0][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~74_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[8][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~77_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[1][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~76_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[9][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~71_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[4][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~70_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[12][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~73_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[5][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~72_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[13][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~9_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~10_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux30~combout\ : std_logic;
SIGNAL \fir_top|signal~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~82_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[16][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~121_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[17][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~83_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[18][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~97_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[9][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~96_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[13][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~98_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~99_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[11][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~12_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~13_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~84_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[3][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~87_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[7][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~85_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[5][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~86_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[1][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~92_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[4][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~93_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[0][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~95_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[2][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~94_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[6][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~9_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~10_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~88_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[12][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~89_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[8][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~90_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[14][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~91_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[10][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~7_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~8_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~11_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~14_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~15_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux29~combout\ : std_logic;
SIGNAL \fir_top|signal~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~122_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[17][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~100_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[16][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~101_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[18][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~117_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[15][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~114_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[7][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~115_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[14][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~116_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[6][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~7_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~8_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~103_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[2][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~102_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[10][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~104_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[11][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~105_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[3][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~107_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[12][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~106_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[13][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~109_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[5][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~108_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[4][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~111_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[0][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~110_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[8][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~112_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[9][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs~113_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|inputs[1][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~9_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~10_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux28~combout\ : std_logic;
SIGNAL \fir_top|fir_srg|coefsLut~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|coefsLut~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|coefsLut~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|coefsLut~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|coefsLut~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[0]~17_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~28_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][0]~29_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|y[0]~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Decoder1~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][0]~22_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~23_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][0]~24_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][0]~19_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~20_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][0]~21_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux63~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][14]~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][0]~25_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~26_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][0]~27_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][14]~16_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~17_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][14]~18_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux63~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~14_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][15]~15_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux63~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][0]~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][0]~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][0]~8_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~9_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][0]~10_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][0]~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][0]~7_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux63~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][0]~11_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~12_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][0]~13_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][0]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux63~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux63~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux63~6_combout\ : std_logic;
SIGNAL \fir_top|Equal3~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[0]~18\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[1]~19_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~39_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~32_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~31_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux62~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~33_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~30_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux62~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~35_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~38_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~37_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~36_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux62~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux62~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~34_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][1]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux62~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux62~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux62~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[1]~20\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[2]~21_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~45_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~48_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~46_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~47_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux61~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux61~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~44_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux61~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~40_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~43_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~41_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~42_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux61~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux61~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~49_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][2]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux61~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux61~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[2]~22\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[3]~23_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~59_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~54_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~58_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~55_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~57_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~56_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux60~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux60~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux60~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~50_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~51_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~52_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux60~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~53_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][3]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux60~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux60~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux60~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[3]~24\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[4]~25_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~64_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][4]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~65_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][4]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~68_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][4]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~66_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][4]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~67_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][4]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux59~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux59~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux59~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~62_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][4]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~61_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][4]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux59~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~60_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][4]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~63_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][4]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux59~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~69_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][4]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux59~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux59~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[4]~26\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[5]~27_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~70_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][5]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~79_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][5]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~78_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][5]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~76_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][5]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~77_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][5]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux58~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~75_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][5]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux58~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~71_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][5]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~73_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][5]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~72_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][5]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux58~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~74_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][5]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux58~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux58~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux58~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux58~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[5]~28\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[6]~29_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~89_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][6]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~88_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][6]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~85_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][6]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~86_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][6]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~87_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][6]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux57~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux57~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~84_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][6]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux57~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~81_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][6]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~82_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][6]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux57~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~80_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][6]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~83_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][6]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux57~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux57~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux57~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[6]~30\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[7]~31_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~99_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][7]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~90_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][7]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~93_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][7]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~92_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][7]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux56~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~94_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][7]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~91_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][7]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux56~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~95_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][7]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~98_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][7]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~97_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][7]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~96_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][7]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux56~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux56~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux56~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux56~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux56~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[7]~32\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[8]~33_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~103_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][8]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~100_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][8]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~102_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][8]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~101_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][8]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux55~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux55~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~109_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][8]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~104_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][8]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~108_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][8]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~105_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][8]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~106_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][8]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~107_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][8]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux55~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux55~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux55~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux55~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux55~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[8]~34\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[9]~35_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~118_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][9]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~115_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][9]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~116_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][9]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~117_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][9]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux54~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux54~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~111_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][9]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~113_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][9]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~112_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][9]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux54~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~114_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][9]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux54~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux54~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~110_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][9]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~119_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][9]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux54~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux54~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[9]~36\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[10]~37_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~124_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][10]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~125_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][10]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~128_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][10]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~126_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][10]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~127_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][10]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux53~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux53~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux53~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~120_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][10]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~121_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][10]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~122_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][10]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux53~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~123_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][10]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux53~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~129_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][10]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux53~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux53~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[10]~38\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[11]~39_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~130_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][11]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~139_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][11]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~135_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][11]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~138_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][11]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~137_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][11]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~136_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][11]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux52~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux52~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~132_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][11]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~133_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][11]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux52~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~131_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][11]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~134_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][11]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux52~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux52~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux52~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux52~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[11]~40\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[12]~41_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~140_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][12]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~143_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][12]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~142_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][12]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~141_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][12]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux51~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux51~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~144_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][12]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~145_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][12]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~148_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][12]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~146_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][12]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~147_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][12]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux51~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux51~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux51~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~149_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][12]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux51~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux51~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[12]~42\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[13]~43_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~159_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][13]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~150_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][13]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~157_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][13]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~156_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][13]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux50~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~155_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][13]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~158_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][13]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux50~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~153_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][13]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~152_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][13]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux50~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~151_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][13]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~154_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][13]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux50~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux50~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux50~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux50~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[13]~44\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[14]~45_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~169_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][14]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~163_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][14]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~160_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][14]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~162_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][14]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~161_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][14]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux49~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux49~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~168_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][14]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~165_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][14]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~167_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][14]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~166_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][14]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux49~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux49~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~164_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][14]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux49~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux49~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux49~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[14]~46\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[15]~47_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~170_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][15]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~179_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][15]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~173_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][15]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~172_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][15]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux48~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~174_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][15]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~171_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][15]~feeder_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][15]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux48~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~175_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][15]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~176_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][15]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~177_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][15]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux48~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~178_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][15]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux48~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux48~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux48~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux48~6_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[15]~48\ : std_logic;
SIGNAL \fir_top|fir_srg|acc[16]~49_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~184_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[8][16]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~188_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[3][16]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~185_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[2][16]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~187_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[0][16]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~186_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[1][16]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux47~2_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux47~3_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux47~4_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~182_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[4][16]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~181_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[6][16]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux47~0_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~180_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[5][16]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~183_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[7][16]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux47~1_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs~189_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|outputs[9][16]~q\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux47~5_combout\ : std_logic;
SIGNAL \fir_top|fir_srg|Mux47~6_combout\ : std_logic;
SIGNAL \fir_top|x\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fir_top|operation\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fir_top|addr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fir_top|fir_srg|y\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fir_top|fir_srg|acc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fir_top|fir_srg|j\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fir_top|fir_srg|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~dataout\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~7\ & 
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~6\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~5\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~4\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~3\ & 
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~2\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~1\ & \fir_top|fir_srg|Mult0|auto_generated|mac_mult1~0\);

\fir_top|fir_srg|Mult0|auto_generated|mac_out2~0\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~1\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~2\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~3\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~4\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~5\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~6\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~7\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~dataout\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \fir_top|fir_srg|Mux28~combout\ & \fir_top|fir_srg|Mux29~combout\ & \fir_top|fir_srg|Mux30~combout\ & \fir_top|fir_srg|Mux31~combout\ & gnd & gnd & gnd & gnd);

\fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\fir_top|fir_srg|coefsLut~4_combout\ & \fir_top|fir_srg|coefsLut~3_combout\ & \fir_top|fir_srg|coefsLut~2_combout\ & \fir_top|fir_srg|coefsLut~1_combout\ & \fir_top|fir_srg|coefsLut~0_combout\
& gnd & gnd & gnd & gnd);

\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~0\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~1\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~2\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~3\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~4\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~5\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~6\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~7\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~dataout\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|done~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(0),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(1),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(2),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(3),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(4),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(5),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(6),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(7),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(8),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(9),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(10),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(11),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(12),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(13),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(14),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(15),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_top|fir_srg|y\(16),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X53_Y39_N0
\fir_top|fir_srg|j[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[0]~36_combout\ = \fir_top|fir_srg|j\(0) $ (VCC)
-- \fir_top|fir_srg|j[0]~37\ = CARRY(\fir_top|fir_srg|j\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(0),
	datad => VCC,
	combout => \fir_top|fir_srg|j[0]~36_combout\,
	cout => \fir_top|fir_srg|j[0]~37\);

-- Location: LCCOMB_X49_Y39_N0
\fir_top|fir_srg|i[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[0]~36_combout\ = \fir_top|fir_srg|i\(0) $ (VCC)
-- \fir_top|fir_srg|i[0]~37\ = CARRY(\fir_top|fir_srg|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(0),
	datad => VCC,
	combout => \fir_top|fir_srg|i[0]~36_combout\,
	cout => \fir_top|fir_srg|i[0]~37\);

-- Location: LCCOMB_X49_Y39_N4
\fir_top|fir_srg|i[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[2]~40_combout\ = (\fir_top|fir_srg|i\(2) & (\fir_top|fir_srg|i[1]~39\ $ (GND))) # (!\fir_top|fir_srg|i\(2) & (!\fir_top|fir_srg|i[1]~39\ & VCC))
-- \fir_top|fir_srg|i[2]~41\ = CARRY((\fir_top|fir_srg|i\(2) & !\fir_top|fir_srg|i[1]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(2),
	datad => VCC,
	cin => \fir_top|fir_srg|i[1]~39\,
	combout => \fir_top|fir_srg|i[2]~40_combout\,
	cout => \fir_top|fir_srg|i[2]~41\);

-- Location: LCCOMB_X49_Y39_N6
\fir_top|fir_srg|i[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[3]~42_combout\ = (\fir_top|fir_srg|i\(3) & (!\fir_top|fir_srg|i[2]~41\)) # (!\fir_top|fir_srg|i\(3) & ((\fir_top|fir_srg|i[2]~41\) # (GND)))
-- \fir_top|fir_srg|i[3]~43\ = CARRY((!\fir_top|fir_srg|i[2]~41\) # (!\fir_top|fir_srg|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(3),
	datad => VCC,
	cin => \fir_top|fir_srg|i[2]~41\,
	combout => \fir_top|fir_srg|i[3]~42_combout\,
	cout => \fir_top|fir_srg|i[3]~43\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X52_Y40_N2
\fir_top|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|always0~0_combout\ = (!\fir_top|operation\(0) & (!\fir_top|fir_srg|done~q\ & (\KEY[0]~input_o\ & !\fir_top|operation\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|fir_srg|done~q\,
	datac => \KEY[0]~input_o\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|always0~0_combout\);

-- Location: LCCOMB_X49_Y42_N8
\fir_top|addr[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr[15]~32_combout\ = (((\fir_top|operation\(1) & !\fir_top|fir_srg|done~q\)) # (!\KEY[0]~input_o\)) # (!\fir_top|operation\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|operation\(1),
	datac => \KEY[0]~input_o\,
	datad => \fir_top|fir_srg|done~q\,
	combout => \fir_top|addr[15]~32_combout\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X49_Y41_N0
\fir_top|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~0_combout\ = \fir_top|addr\(0) $ (VCC)
-- \fir_top|Add0~1\ = CARRY(\fir_top|addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datad => VCC,
	combout => \fir_top|Add0~0_combout\,
	cout => \fir_top|Add0~1\);

-- Location: LCCOMB_X48_Y42_N28
\fir_top|addr~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~33_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & (\SW[1]~input_o\)) # (!\fir_top|operation\(1) & ((\fir_top|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \fir_top|Add0~0_combout\,
	datac => \fir_top|addr[15]~32_combout\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~33_combout\);

-- Location: LCCOMB_X52_Y40_N20
\fir_top|addr[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr[15]~34_combout\ = (\fir_top|operation\(1) & (!\fir_top|fir_srg|done~q\)) # (!\fir_top|operation\(1) & ((\fir_top|operation\(0) & ((\fir_top|Equal2~10_combout\))) # (!\fir_top|operation\(0) & (\fir_top|fir_srg|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(1),
	datab => \fir_top|fir_srg|done~q\,
	datac => \fir_top|operation\(0),
	datad => \fir_top|Equal2~10_combout\,
	combout => \fir_top|addr[15]~34_combout\);

-- Location: LCCOMB_X52_Y40_N22
\fir_top|addr[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr[15]~35_combout\ = (!\fir_top|addr[15]~34_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \fir_top|addr[15]~34_combout\,
	combout => \fir_top|addr[15]~35_combout\);

-- Location: FF_X48_Y42_N29
\fir_top|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~33_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(0));

-- Location: LCCOMB_X49_Y41_N2
\fir_top|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~2_combout\ = (\fir_top|addr\(1) & (!\fir_top|Add0~1\)) # (!\fir_top|addr\(1) & ((\fir_top|Add0~1\) # (GND)))
-- \fir_top|Add0~3\ = CARRY((!\fir_top|Add0~1\) # (!\fir_top|addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(1),
	datad => VCC,
	cin => \fir_top|Add0~1\,
	combout => \fir_top|Add0~2_combout\,
	cout => \fir_top|Add0~3\);

-- Location: LCCOMB_X49_Y42_N4
\fir_top|addr~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~36_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & (\SW[2]~input_o\)) # (!\fir_top|operation\(1) & ((\fir_top|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \fir_top|addr[15]~32_combout\,
	datac => \fir_top|operation\(1),
	datad => \fir_top|Add0~2_combout\,
	combout => \fir_top|addr~36_combout\);

-- Location: FF_X49_Y42_N5
\fir_top|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~36_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(1));

-- Location: LCCOMB_X49_Y41_N4
\fir_top|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~4_combout\ = (\fir_top|addr\(2) & (\fir_top|Add0~3\ $ (GND))) # (!\fir_top|addr\(2) & (!\fir_top|Add0~3\ & VCC))
-- \fir_top|Add0~5\ = CARRY((\fir_top|addr\(2) & !\fir_top|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(2),
	datad => VCC,
	cin => \fir_top|Add0~3\,
	combout => \fir_top|Add0~4_combout\,
	cout => \fir_top|Add0~5\);

-- Location: LCCOMB_X48_Y42_N30
\fir_top|addr~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~37_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & (\SW[3]~input_o\)) # (!\fir_top|operation\(1) & ((\fir_top|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \fir_top|Add0~4_combout\,
	datac => \fir_top|addr[15]~32_combout\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~37_combout\);

-- Location: FF_X48_Y42_N31
\fir_top|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~37_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(2));

-- Location: LCCOMB_X49_Y41_N6
\fir_top|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~6_combout\ = (\fir_top|addr\(3) & (!\fir_top|Add0~5\)) # (!\fir_top|addr\(3) & ((\fir_top|Add0~5\) # (GND)))
-- \fir_top|Add0~7\ = CARRY((!\fir_top|Add0~5\) # (!\fir_top|addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(3),
	datad => VCC,
	cin => \fir_top|Add0~5\,
	combout => \fir_top|Add0~6_combout\,
	cout => \fir_top|Add0~7\);

-- Location: LCCOMB_X48_Y42_N8
\fir_top|addr~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~38_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & (\SW[4]~input_o\)) # (!\fir_top|operation\(1) & ((\fir_top|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \fir_top|addr[15]~32_combout\,
	datac => \fir_top|Add0~6_combout\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~38_combout\);

-- Location: FF_X48_Y42_N9
\fir_top|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~38_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(3));

-- Location: LCCOMB_X49_Y41_N8
\fir_top|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~8_combout\ = (\fir_top|addr\(4) & (\fir_top|Add0~7\ $ (GND))) # (!\fir_top|addr\(4) & (!\fir_top|Add0~7\ & VCC))
-- \fir_top|Add0~9\ = CARRY((\fir_top|addr\(4) & !\fir_top|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(4),
	datad => VCC,
	cin => \fir_top|Add0~7\,
	combout => \fir_top|Add0~8_combout\,
	cout => \fir_top|Add0~9\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X50_Y41_N8
\fir_top|addr~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~39_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & ((\SW[5]~input_o\))) # (!\fir_top|operation\(1) & (\fir_top|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|Add0~8_combout\,
	datab => \SW[5]~input_o\,
	datac => \fir_top|addr[15]~32_combout\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~39_combout\);

-- Location: FF_X50_Y41_N9
\fir_top|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~39_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(4));

-- Location: LCCOMB_X49_Y41_N10
\fir_top|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~10_combout\ = (\fir_top|addr\(5) & (!\fir_top|Add0~9\)) # (!\fir_top|addr\(5) & ((\fir_top|Add0~9\) # (GND)))
-- \fir_top|Add0~11\ = CARRY((!\fir_top|Add0~9\) # (!\fir_top|addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(5),
	datad => VCC,
	cin => \fir_top|Add0~9\,
	combout => \fir_top|Add0~10_combout\,
	cout => \fir_top|Add0~11\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X50_Y41_N2
\fir_top|addr~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~40_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & ((\SW[6]~input_o\))) # (!\fir_top|operation\(1) & (\fir_top|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|Add0~10_combout\,
	datab => \SW[6]~input_o\,
	datac => \fir_top|addr[15]~32_combout\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~40_combout\);

-- Location: FF_X50_Y41_N3
\fir_top|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~40_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(5));

-- Location: LCCOMB_X49_Y41_N12
\fir_top|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~12_combout\ = (\fir_top|addr\(6) & (\fir_top|Add0~11\ $ (GND))) # (!\fir_top|addr\(6) & (!\fir_top|Add0~11\ & VCC))
-- \fir_top|Add0~13\ = CARRY((\fir_top|addr\(6) & !\fir_top|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(6),
	datad => VCC,
	cin => \fir_top|Add0~11\,
	combout => \fir_top|Add0~12_combout\,
	cout => \fir_top|Add0~13\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X50_Y41_N12
\fir_top|addr~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~41_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & ((\SW[7]~input_o\))) # (!\fir_top|operation\(1) & (\fir_top|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|Add0~12_combout\,
	datab => \SW[7]~input_o\,
	datac => \fir_top|addr[15]~32_combout\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~41_combout\);

-- Location: FF_X50_Y41_N13
\fir_top|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~41_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(6));

-- Location: LCCOMB_X49_Y41_N14
\fir_top|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~14_combout\ = (\fir_top|addr\(7) & (!\fir_top|Add0~13\)) # (!\fir_top|addr\(7) & ((\fir_top|Add0~13\) # (GND)))
-- \fir_top|Add0~15\ = CARRY((!\fir_top|Add0~13\) # (!\fir_top|addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(7),
	datad => VCC,
	cin => \fir_top|Add0~13\,
	combout => \fir_top|Add0~14_combout\,
	cout => \fir_top|Add0~15\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X50_Y41_N6
\fir_top|addr~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~42_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & ((\SW[8]~input_o\))) # (!\fir_top|operation\(1) & (\fir_top|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|Add0~14_combout\,
	datab => \SW[8]~input_o\,
	datac => \fir_top|addr[15]~32_combout\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~42_combout\);

-- Location: FF_X50_Y41_N7
\fir_top|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~42_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(7));

-- Location: LCCOMB_X49_Y41_N16
\fir_top|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~16_combout\ = (\fir_top|addr\(8) & (\fir_top|Add0~15\ $ (GND))) # (!\fir_top|addr\(8) & (!\fir_top|Add0~15\ & VCC))
-- \fir_top|Add0~17\ = CARRY((\fir_top|addr\(8) & !\fir_top|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(8),
	datad => VCC,
	cin => \fir_top|Add0~15\,
	combout => \fir_top|Add0~16_combout\,
	cout => \fir_top|Add0~17\);

-- Location: LCCOMB_X50_Y41_N26
\fir_top|addr~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~43_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & (\SW[9]~input_o\)) # (!\fir_top|operation\(1) & ((\fir_top|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr[15]~32_combout\,
	datab => \SW[9]~input_o\,
	datac => \fir_top|Add0~16_combout\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~43_combout\);

-- Location: FF_X50_Y41_N27
\fir_top|addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~43_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(8));

-- Location: LCCOMB_X49_Y41_N18
\fir_top|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~18_combout\ = (\fir_top|addr\(9) & (!\fir_top|Add0~17\)) # (!\fir_top|addr\(9) & ((\fir_top|Add0~17\) # (GND)))
-- \fir_top|Add0~19\ = CARRY((!\fir_top|Add0~17\) # (!\fir_top|addr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(9),
	datad => VCC,
	cin => \fir_top|Add0~17\,
	combout => \fir_top|Add0~18_combout\,
	cout => \fir_top|Add0~19\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X50_Y41_N16
\fir_top|addr~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~44_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & ((\SW[10]~input_o\))) # (!\fir_top|operation\(1) & (\fir_top|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(1),
	datab => \fir_top|Add0~18_combout\,
	datac => \fir_top|addr[15]~32_combout\,
	datad => \SW[10]~input_o\,
	combout => \fir_top|addr~44_combout\);

-- Location: FF_X50_Y41_N17
\fir_top|addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~44_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(9));

-- Location: LCCOMB_X49_Y41_N20
\fir_top|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~20_combout\ = (\fir_top|addr\(10) & (\fir_top|Add0~19\ $ (GND))) # (!\fir_top|addr\(10) & (!\fir_top|Add0~19\ & VCC))
-- \fir_top|Add0~21\ = CARRY((\fir_top|addr\(10) & !\fir_top|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(10),
	datad => VCC,
	cin => \fir_top|Add0~19\,
	combout => \fir_top|Add0~20_combout\,
	cout => \fir_top|Add0~21\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X50_Y41_N14
\fir_top|addr~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~45_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & ((\SW[11]~input_o\))) # (!\fir_top|operation\(1) & (\fir_top|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr[15]~32_combout\,
	datab => \fir_top|Add0~20_combout\,
	datac => \SW[11]~input_o\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~45_combout\);

-- Location: FF_X50_Y41_N15
\fir_top|addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~45_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(10));

-- Location: LCCOMB_X49_Y41_N22
\fir_top|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~22_combout\ = (\fir_top|addr\(11) & (!\fir_top|Add0~21\)) # (!\fir_top|addr\(11) & ((\fir_top|Add0~21\) # (GND)))
-- \fir_top|Add0~23\ = CARRY((!\fir_top|Add0~21\) # (!\fir_top|addr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(11),
	datad => VCC,
	cin => \fir_top|Add0~21\,
	combout => \fir_top|Add0~22_combout\,
	cout => \fir_top|Add0~23\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X50_Y41_N24
\fir_top|addr~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~46_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & ((\SW[12]~input_o\))) # (!\fir_top|operation\(1) & (\fir_top|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(1),
	datab => \fir_top|Add0~22_combout\,
	datac => \fir_top|addr[15]~32_combout\,
	datad => \SW[12]~input_o\,
	combout => \fir_top|addr~46_combout\);

-- Location: FF_X50_Y41_N25
\fir_top|addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~46_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(11));

-- Location: LCCOMB_X49_Y41_N24
\fir_top|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~24_combout\ = (\fir_top|addr\(12) & (\fir_top|Add0~23\ $ (GND))) # (!\fir_top|addr\(12) & (!\fir_top|Add0~23\ & VCC))
-- \fir_top|Add0~25\ = CARRY((\fir_top|addr\(12) & !\fir_top|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(12),
	datad => VCC,
	cin => \fir_top|Add0~23\,
	combout => \fir_top|Add0~24_combout\,
	cout => \fir_top|Add0~25\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X50_Y41_N4
\fir_top|addr~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~47_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & ((\SW[13]~input_o\))) # (!\fir_top|operation\(1) & (\fir_top|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(1),
	datab => \fir_top|Add0~24_combout\,
	datac => \fir_top|addr[15]~32_combout\,
	datad => \SW[13]~input_o\,
	combout => \fir_top|addr~47_combout\);

-- Location: FF_X50_Y41_N5
\fir_top|addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~47_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(12));

-- Location: LCCOMB_X49_Y41_N26
\fir_top|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~26_combout\ = (\fir_top|addr\(13) & (!\fir_top|Add0~25\)) # (!\fir_top|addr\(13) & ((\fir_top|Add0~25\) # (GND)))
-- \fir_top|Add0~27\ = CARRY((!\fir_top|Add0~25\) # (!\fir_top|addr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(13),
	datad => VCC,
	cin => \fir_top|Add0~25\,
	combout => \fir_top|Add0~26_combout\,
	cout => \fir_top|Add0~27\);

-- Location: LCCOMB_X50_Y41_N18
\fir_top|addr~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~48_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & (\SW[14]~input_o\)) # (!\fir_top|operation\(1) & ((\fir_top|Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr[15]~32_combout\,
	datab => \SW[14]~input_o\,
	datac => \fir_top|Add0~26_combout\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~48_combout\);

-- Location: FF_X50_Y41_N19
\fir_top|addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~48_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(13));

-- Location: LCCOMB_X49_Y41_N28
\fir_top|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~28_combout\ = (\fir_top|addr\(14) & (\fir_top|Add0~27\ $ (GND))) # (!\fir_top|addr\(14) & (!\fir_top|Add0~27\ & VCC))
-- \fir_top|Add0~29\ = CARRY((\fir_top|addr\(14) & !\fir_top|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(14),
	datad => VCC,
	cin => \fir_top|Add0~27\,
	combout => \fir_top|Add0~28_combout\,
	cout => \fir_top|Add0~29\);

-- Location: LCCOMB_X50_Y41_N28
\fir_top|addr~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~49_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & (\SW[15]~input_o\)) # (!\fir_top|operation\(1) & ((\fir_top|Add0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr[15]~32_combout\,
	datab => \SW[15]~input_o\,
	datac => \fir_top|Add0~28_combout\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~49_combout\);

-- Location: FF_X50_Y41_N29
\fir_top|addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~49_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(14));

-- Location: LCCOMB_X49_Y41_N30
\fir_top|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~30_combout\ = (\fir_top|addr\(15) & (!\fir_top|Add0~29\)) # (!\fir_top|addr\(15) & ((\fir_top|Add0~29\) # (GND)))
-- \fir_top|Add0~31\ = CARRY((!\fir_top|Add0~29\) # (!\fir_top|addr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(15),
	datad => VCC,
	cin => \fir_top|Add0~29\,
	combout => \fir_top|Add0~30_combout\,
	cout => \fir_top|Add0~31\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X50_Y41_N22
\fir_top|addr~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~50_combout\ = (!\fir_top|addr[15]~32_combout\ & ((\fir_top|operation\(1) & ((\SW[16]~input_o\))) # (!\fir_top|operation\(1) & (\fir_top|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(1),
	datab => \fir_top|Add0~30_combout\,
	datac => \fir_top|addr[15]~32_combout\,
	datad => \SW[16]~input_o\,
	combout => \fir_top|addr~50_combout\);

-- Location: FF_X50_Y41_N23
\fir_top|addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~50_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(15));

-- Location: LCCOMB_X49_Y40_N0
\fir_top|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~32_combout\ = (\fir_top|addr\(16) & (\fir_top|Add0~31\ $ (GND))) # (!\fir_top|addr\(16) & (!\fir_top|Add0~31\ & VCC))
-- \fir_top|Add0~33\ = CARRY((\fir_top|addr\(16) & !\fir_top|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(16),
	datad => VCC,
	cin => \fir_top|Add0~31\,
	combout => \fir_top|Add0~32_combout\,
	cout => \fir_top|Add0~33\);

-- Location: LCCOMB_X50_Y40_N24
\fir_top|addr~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~51_combout\ = (\fir_top|operation\(0) & (!\fir_top|operation\(1) & (\fir_top|Add0~32_combout\ & \KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|operation\(1),
	datac => \fir_top|Add0~32_combout\,
	datad => \KEY[0]~input_o\,
	combout => \fir_top|addr~51_combout\);

-- Location: FF_X50_Y40_N25
\fir_top|addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~51_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(16));

-- Location: LCCOMB_X49_Y40_N2
\fir_top|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~34_combout\ = (\fir_top|addr\(17) & (!\fir_top|Add0~33\)) # (!\fir_top|addr\(17) & ((\fir_top|Add0~33\) # (GND)))
-- \fir_top|Add0~35\ = CARRY((!\fir_top|Add0~33\) # (!\fir_top|addr\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(17),
	datad => VCC,
	cin => \fir_top|Add0~33\,
	combout => \fir_top|Add0~34_combout\,
	cout => \fir_top|Add0~35\);

-- Location: LCCOMB_X52_Y40_N4
\fir_top|addr~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~52_combout\ = (\fir_top|operation\(0) & (\fir_top|Add0~34_combout\ & (\KEY[0]~input_o\ & !\fir_top|operation\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|Add0~34_combout\,
	datac => \KEY[0]~input_o\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~52_combout\);

-- Location: FF_X52_Y40_N5
\fir_top|addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~52_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(17));

-- Location: LCCOMB_X49_Y40_N4
\fir_top|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~36_combout\ = (\fir_top|addr\(18) & (\fir_top|Add0~35\ $ (GND))) # (!\fir_top|addr\(18) & (!\fir_top|Add0~35\ & VCC))
-- \fir_top|Add0~37\ = CARRY((\fir_top|addr\(18) & !\fir_top|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(18),
	datad => VCC,
	cin => \fir_top|Add0~35\,
	combout => \fir_top|Add0~36_combout\,
	cout => \fir_top|Add0~37\);

-- Location: LCCOMB_X50_Y40_N14
\fir_top|addr~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~53_combout\ = (\fir_top|operation\(0) & (!\fir_top|operation\(1) & (\fir_top|Add0~36_combout\ & \KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|operation\(1),
	datac => \fir_top|Add0~36_combout\,
	datad => \KEY[0]~input_o\,
	combout => \fir_top|addr~53_combout\);

-- Location: FF_X50_Y40_N15
\fir_top|addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~53_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(18));

-- Location: LCCOMB_X49_Y40_N6
\fir_top|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~38_combout\ = (\fir_top|addr\(19) & (!\fir_top|Add0~37\)) # (!\fir_top|addr\(19) & ((\fir_top|Add0~37\) # (GND)))
-- \fir_top|Add0~39\ = CARRY((!\fir_top|Add0~37\) # (!\fir_top|addr\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(19),
	datad => VCC,
	cin => \fir_top|Add0~37\,
	combout => \fir_top|Add0~38_combout\,
	cout => \fir_top|Add0~39\);

-- Location: LCCOMB_X50_Y40_N20
\fir_top|addr~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~54_combout\ = (\fir_top|operation\(0) & (!\fir_top|operation\(1) & (\fir_top|Add0~38_combout\ & \KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|operation\(1),
	datac => \fir_top|Add0~38_combout\,
	datad => \KEY[0]~input_o\,
	combout => \fir_top|addr~54_combout\);

-- Location: FF_X50_Y40_N21
\fir_top|addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~54_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(19));

-- Location: LCCOMB_X49_Y40_N8
\fir_top|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~40_combout\ = (\fir_top|addr\(20) & (\fir_top|Add0~39\ $ (GND))) # (!\fir_top|addr\(20) & (!\fir_top|Add0~39\ & VCC))
-- \fir_top|Add0~41\ = CARRY((\fir_top|addr\(20) & !\fir_top|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(20),
	datad => VCC,
	cin => \fir_top|Add0~39\,
	combout => \fir_top|Add0~40_combout\,
	cout => \fir_top|Add0~41\);

-- Location: LCCOMB_X50_Y40_N30
\fir_top|addr~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~55_combout\ = (\KEY[0]~input_o\ & (!\fir_top|operation\(1) & (\fir_top|operation\(0) & \fir_top|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|operation\(1),
	datac => \fir_top|operation\(0),
	datad => \fir_top|Add0~40_combout\,
	combout => \fir_top|addr~55_combout\);

-- Location: FF_X50_Y40_N31
\fir_top|addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~55_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(20));

-- Location: LCCOMB_X49_Y40_N10
\fir_top|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~42_combout\ = (\fir_top|addr\(21) & (!\fir_top|Add0~41\)) # (!\fir_top|addr\(21) & ((\fir_top|Add0~41\) # (GND)))
-- \fir_top|Add0~43\ = CARRY((!\fir_top|Add0~41\) # (!\fir_top|addr\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(21),
	datad => VCC,
	cin => \fir_top|Add0~41\,
	combout => \fir_top|Add0~42_combout\,
	cout => \fir_top|Add0~43\);

-- Location: LCCOMB_X50_Y40_N0
\fir_top|addr~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~56_combout\ = (\KEY[0]~input_o\ & (!\fir_top|operation\(1) & (\fir_top|operation\(0) & \fir_top|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|operation\(1),
	datac => \fir_top|operation\(0),
	datad => \fir_top|Add0~42_combout\,
	combout => \fir_top|addr~56_combout\);

-- Location: FF_X50_Y40_N1
\fir_top|addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~56_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(21));

-- Location: LCCOMB_X49_Y40_N12
\fir_top|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~44_combout\ = (\fir_top|addr\(22) & (\fir_top|Add0~43\ $ (GND))) # (!\fir_top|addr\(22) & (!\fir_top|Add0~43\ & VCC))
-- \fir_top|Add0~45\ = CARRY((\fir_top|addr\(22) & !\fir_top|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(22),
	datad => VCC,
	cin => \fir_top|Add0~43\,
	combout => \fir_top|Add0~44_combout\,
	cout => \fir_top|Add0~45\);

-- Location: LCCOMB_X52_Y40_N24
\fir_top|addr~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~57_combout\ = (\fir_top|operation\(0) & (\fir_top|Add0~44_combout\ & (\KEY[0]~input_o\ & !\fir_top|operation\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|Add0~44_combout\,
	datac => \KEY[0]~input_o\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~57_combout\);

-- Location: FF_X52_Y40_N25
\fir_top|addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~57_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(22));

-- Location: LCCOMB_X49_Y40_N14
\fir_top|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~46_combout\ = (\fir_top|addr\(23) & (!\fir_top|Add0~45\)) # (!\fir_top|addr\(23) & ((\fir_top|Add0~45\) # (GND)))
-- \fir_top|Add0~47\ = CARRY((!\fir_top|Add0~45\) # (!\fir_top|addr\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(23),
	datad => VCC,
	cin => \fir_top|Add0~45\,
	combout => \fir_top|Add0~46_combout\,
	cout => \fir_top|Add0~47\);

-- Location: LCCOMB_X52_Y40_N6
\fir_top|addr~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~58_combout\ = (\fir_top|operation\(0) & (\fir_top|Add0~46_combout\ & (\KEY[0]~input_o\ & !\fir_top|operation\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|Add0~46_combout\,
	datac => \KEY[0]~input_o\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|addr~58_combout\);

-- Location: FF_X52_Y40_N7
\fir_top|addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~58_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(23));

-- Location: LCCOMB_X49_Y40_N16
\fir_top|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~48_combout\ = (\fir_top|addr\(24) & (\fir_top|Add0~47\ $ (GND))) # (!\fir_top|addr\(24) & (!\fir_top|Add0~47\ & VCC))
-- \fir_top|Add0~49\ = CARRY((\fir_top|addr\(24) & !\fir_top|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(24),
	datad => VCC,
	cin => \fir_top|Add0~47\,
	combout => \fir_top|Add0~48_combout\,
	cout => \fir_top|Add0~49\);

-- Location: LCCOMB_X50_Y40_N2
\fir_top|addr~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~59_combout\ = (\fir_top|operation\(0) & (!\fir_top|operation\(1) & (\fir_top|Add0~48_combout\ & \KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|operation\(1),
	datac => \fir_top|Add0~48_combout\,
	datad => \KEY[0]~input_o\,
	combout => \fir_top|addr~59_combout\);

-- Location: FF_X50_Y40_N3
\fir_top|addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~59_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(24));

-- Location: LCCOMB_X49_Y40_N18
\fir_top|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~50_combout\ = (\fir_top|addr\(25) & (!\fir_top|Add0~49\)) # (!\fir_top|addr\(25) & ((\fir_top|Add0~49\) # (GND)))
-- \fir_top|Add0~51\ = CARRY((!\fir_top|Add0~49\) # (!\fir_top|addr\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(25),
	datad => VCC,
	cin => \fir_top|Add0~49\,
	combout => \fir_top|Add0~50_combout\,
	cout => \fir_top|Add0~51\);

-- Location: LCCOMB_X50_Y40_N4
\fir_top|addr~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~60_combout\ = (\KEY[0]~input_o\ & (!\fir_top|operation\(1) & (\fir_top|operation\(0) & \fir_top|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|operation\(1),
	datac => \fir_top|operation\(0),
	datad => \fir_top|Add0~50_combout\,
	combout => \fir_top|addr~60_combout\);

-- Location: FF_X50_Y40_N5
\fir_top|addr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~60_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(25));

-- Location: LCCOMB_X49_Y40_N20
\fir_top|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~52_combout\ = (\fir_top|addr\(26) & (\fir_top|Add0~51\ $ (GND))) # (!\fir_top|addr\(26) & (!\fir_top|Add0~51\ & VCC))
-- \fir_top|Add0~53\ = CARRY((\fir_top|addr\(26) & !\fir_top|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(26),
	datad => VCC,
	cin => \fir_top|Add0~51\,
	combout => \fir_top|Add0~52_combout\,
	cout => \fir_top|Add0~53\);

-- Location: LCCOMB_X50_Y40_N26
\fir_top|addr~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~61_combout\ = (\KEY[0]~input_o\ & (!\fir_top|operation\(1) & (\fir_top|operation\(0) & \fir_top|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|operation\(1),
	datac => \fir_top|operation\(0),
	datad => \fir_top|Add0~52_combout\,
	combout => \fir_top|addr~61_combout\);

-- Location: FF_X50_Y40_N27
\fir_top|addr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~61_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(26));

-- Location: LCCOMB_X49_Y40_N22
\fir_top|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~54_combout\ = (\fir_top|addr\(27) & (!\fir_top|Add0~53\)) # (!\fir_top|addr\(27) & ((\fir_top|Add0~53\) # (GND)))
-- \fir_top|Add0~55\ = CARRY((!\fir_top|Add0~53\) # (!\fir_top|addr\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(27),
	datad => VCC,
	cin => \fir_top|Add0~53\,
	combout => \fir_top|Add0~54_combout\,
	cout => \fir_top|Add0~55\);

-- Location: LCCOMB_X50_Y40_N8
\fir_top|addr~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~62_combout\ = (\KEY[0]~input_o\ & (!\fir_top|operation\(1) & (\fir_top|operation\(0) & \fir_top|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|operation\(1),
	datac => \fir_top|operation\(0),
	datad => \fir_top|Add0~54_combout\,
	combout => \fir_top|addr~62_combout\);

-- Location: FF_X50_Y40_N9
\fir_top|addr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~62_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(27));

-- Location: LCCOMB_X49_Y40_N24
\fir_top|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~56_combout\ = (\fir_top|addr\(28) & (\fir_top|Add0~55\ $ (GND))) # (!\fir_top|addr\(28) & (!\fir_top|Add0~55\ & VCC))
-- \fir_top|Add0~57\ = CARRY((\fir_top|addr\(28) & !\fir_top|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(28),
	datad => VCC,
	cin => \fir_top|Add0~55\,
	combout => \fir_top|Add0~56_combout\,
	cout => \fir_top|Add0~57\);

-- Location: LCCOMB_X50_Y40_N28
\fir_top|addr~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~63_combout\ = (\KEY[0]~input_o\ & (!\fir_top|operation\(1) & (\fir_top|operation\(0) & \fir_top|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|operation\(1),
	datac => \fir_top|operation\(0),
	datad => \fir_top|Add0~56_combout\,
	combout => \fir_top|addr~63_combout\);

-- Location: FF_X50_Y40_N29
\fir_top|addr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~63_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(28));

-- Location: LCCOMB_X49_Y40_N26
\fir_top|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~58_combout\ = (\fir_top|addr\(29) & (!\fir_top|Add0~57\)) # (!\fir_top|addr\(29) & ((\fir_top|Add0~57\) # (GND)))
-- \fir_top|Add0~59\ = CARRY((!\fir_top|Add0~57\) # (!\fir_top|addr\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(29),
	datad => VCC,
	cin => \fir_top|Add0~57\,
	combout => \fir_top|Add0~58_combout\,
	cout => \fir_top|Add0~59\);

-- Location: LCCOMB_X50_Y40_N6
\fir_top|addr~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~64_combout\ = (\fir_top|operation\(0) & (!\fir_top|operation\(1) & (\fir_top|Add0~58_combout\ & \KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|operation\(1),
	datac => \fir_top|Add0~58_combout\,
	datad => \KEY[0]~input_o\,
	combout => \fir_top|addr~64_combout\);

-- Location: FF_X50_Y40_N7
\fir_top|addr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~64_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(29));

-- Location: LCCOMB_X49_Y40_N28
\fir_top|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~60_combout\ = (\fir_top|addr\(30) & (\fir_top|Add0~59\ $ (GND))) # (!\fir_top|addr\(30) & (!\fir_top|Add0~59\ & VCC))
-- \fir_top|Add0~61\ = CARRY((\fir_top|addr\(30) & !\fir_top|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(30),
	datad => VCC,
	cin => \fir_top|Add0~59\,
	combout => \fir_top|Add0~60_combout\,
	cout => \fir_top|Add0~61\);

-- Location: LCCOMB_X50_Y40_N16
\fir_top|addr~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~65_combout\ = (\KEY[0]~input_o\ & (!\fir_top|operation\(1) & (\fir_top|operation\(0) & \fir_top|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|operation\(1),
	datac => \fir_top|operation\(0),
	datad => \fir_top|Add0~60_combout\,
	combout => \fir_top|addr~65_combout\);

-- Location: FF_X50_Y40_N17
\fir_top|addr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~65_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(30));

-- Location: LCCOMB_X49_Y40_N30
\fir_top|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Add0~62_combout\ = \fir_top|Add0~61\ $ (\fir_top|addr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fir_top|addr\(31),
	cin => \fir_top|Add0~61\,
	combout => \fir_top|Add0~62_combout\);

-- Location: LCCOMB_X50_Y40_N22
\fir_top|addr~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|addr~66_combout\ = (\KEY[0]~input_o\ & (!\fir_top|operation\(1) & (\fir_top|operation\(0) & \fir_top|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|operation\(1),
	datac => \fir_top|operation\(0),
	datad => \fir_top|Add0~62_combout\,
	combout => \fir_top|addr~66_combout\);

-- Location: FF_X50_Y40_N23
\fir_top|addr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|addr~66_combout\,
	ena => \fir_top|addr[15]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|addr\(31));

-- Location: LCCOMB_X50_Y40_N12
\fir_top|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal2~9_combout\ = (!\fir_top|addr\(29) & (!\fir_top|addr\(30) & (!\fir_top|addr\(31) & !\fir_top|addr\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(29),
	datab => \fir_top|addr\(30),
	datac => \fir_top|addr\(31),
	datad => \fir_top|addr\(28),
	combout => \fir_top|Equal2~9_combout\);

-- Location: LCCOMB_X50_Y40_N18
\fir_top|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal2~8_combout\ = (!\fir_top|addr\(26) & (!\fir_top|addr\(25) & (!\fir_top|addr\(27) & !\fir_top|addr\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(26),
	datab => \fir_top|addr\(25),
	datac => \fir_top|addr\(27),
	datad => \fir_top|addr\(24),
	combout => \fir_top|Equal2~8_combout\);

-- Location: LCCOMB_X50_Y41_N10
\fir_top|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal2~2_combout\ = (!\fir_top|addr\(8) & (!\fir_top|addr\(11) & (!\fir_top|addr\(10) & !\fir_top|addr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(8),
	datab => \fir_top|addr\(11),
	datac => \fir_top|addr\(10),
	datad => \fir_top|addr\(9),
	combout => \fir_top|Equal2~2_combout\);

-- Location: LCCOMB_X50_Y41_N0
\fir_top|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal2~1_combout\ = (!\fir_top|addr\(7) & (!\fir_top|addr\(4) & (!\fir_top|addr\(6) & !\fir_top|addr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(7),
	datab => \fir_top|addr\(4),
	datac => \fir_top|addr\(6),
	datad => \fir_top|addr\(5),
	combout => \fir_top|Equal2~1_combout\);

-- Location: LCCOMB_X48_Y42_N4
\fir_top|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal2~0_combout\ = (!\fir_top|addr\(2) & (!\fir_top|addr\(0) & (\fir_top|addr\(3) & \fir_top|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|addr\(0),
	datac => \fir_top|addr\(3),
	datad => \fir_top|addr\(1),
	combout => \fir_top|Equal2~0_combout\);

-- Location: LCCOMB_X50_Y41_N20
\fir_top|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal2~3_combout\ = (!\fir_top|addr\(15) & (!\fir_top|addr\(14) & (!\fir_top|addr\(12) & !\fir_top|addr\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(15),
	datab => \fir_top|addr\(14),
	datac => \fir_top|addr\(12),
	datad => \fir_top|addr\(13),
	combout => \fir_top|Equal2~3_combout\);

-- Location: LCCOMB_X50_Y41_N30
\fir_top|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal2~4_combout\ = (\fir_top|Equal2~2_combout\ & (\fir_top|Equal2~1_combout\ & (\fir_top|Equal2~0_combout\ & \fir_top|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|Equal2~2_combout\,
	datab => \fir_top|Equal2~1_combout\,
	datac => \fir_top|Equal2~0_combout\,
	datad => \fir_top|Equal2~3_combout\,
	combout => \fir_top|Equal2~4_combout\);

-- Location: LCCOMB_X52_Y40_N8
\fir_top|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal2~6_combout\ = (!\fir_top|addr\(23) & (!\fir_top|addr\(21) & (!\fir_top|addr\(20) & !\fir_top|addr\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(23),
	datab => \fir_top|addr\(21),
	datac => \fir_top|addr\(20),
	datad => \fir_top|addr\(22),
	combout => \fir_top|Equal2~6_combout\);

-- Location: LCCOMB_X52_Y40_N10
\fir_top|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal2~5_combout\ = (!\fir_top|addr\(18) & (!\fir_top|addr\(17) & (!\fir_top|addr\(19) & !\fir_top|addr\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(18),
	datab => \fir_top|addr\(17),
	datac => \fir_top|addr\(19),
	datad => \fir_top|addr\(16),
	combout => \fir_top|Equal2~5_combout\);

-- Location: LCCOMB_X52_Y40_N14
\fir_top|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal2~7_combout\ = (\fir_top|Equal2~6_combout\ & \fir_top|Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|Equal2~6_combout\,
	datad => \fir_top|Equal2~5_combout\,
	combout => \fir_top|Equal2~7_combout\);

-- Location: LCCOMB_X50_Y40_N10
\fir_top|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal2~10_combout\ = (\fir_top|Equal2~9_combout\ & (\fir_top|Equal2~8_combout\ & (\fir_top|Equal2~4_combout\ & \fir_top|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|Equal2~9_combout\,
	datab => \fir_top|Equal2~8_combout\,
	datac => \fir_top|Equal2~4_combout\,
	datad => \fir_top|Equal2~7_combout\,
	combout => \fir_top|Equal2~10_combout\);

-- Location: LCCOMB_X52_Y40_N18
\fir_top|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal3~1_combout\ = (\fir_top|operation\(0) & !\fir_top|operation\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|operation\(0),
	datad => \fir_top|operation\(1),
	combout => \fir_top|Equal3~1_combout\);

-- Location: LCCOMB_X52_Y40_N0
\fir_top|operation[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|operation[0]~4_combout\ = (\fir_top|operation\(0)) # ((\fir_top|fir_srg|done~q\ & ((!\fir_top|operation\(1)))) # (!\fir_top|fir_srg|done~q\ & ((\fir_top|operation\(1)) # (!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|fir_srg|done~q\,
	datac => \KEY[0]~input_o\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|operation[0]~4_combout\);

-- Location: LCCOMB_X52_Y40_N16
\fir_top|operation[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|operation[0]~5_combout\ = (\KEY[0]~input_o\ & ((\fir_top|Equal3~1_combout\ & (!\fir_top|Equal2~10_combout\)) # (!\fir_top|Equal3~1_combout\ & ((\fir_top|operation[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|Equal2~10_combout\,
	datab => \fir_top|Equal3~1_combout\,
	datac => \KEY[0]~input_o\,
	datad => \fir_top|operation[0]~4_combout\,
	combout => \fir_top|operation[0]~5_combout\);

-- Location: LCCOMB_X52_Y40_N12
\fir_top|operation[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|operation[1]~6_combout\ = (\fir_top|operation[0]~5_combout\ & (((\fir_top|operation\(1))))) # (!\fir_top|operation[0]~5_combout\ & (\KEY[0]~input_o\ & (!\fir_top|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|always0~0_combout\,
	datac => \fir_top|operation\(1),
	datad => \fir_top|operation[0]~5_combout\,
	combout => \fir_top|operation[1]~6_combout\);

-- Location: FF_X52_Y40_N13
\fir_top|operation[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|operation[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|operation\(1));

-- Location: LCCOMB_X52_Y40_N30
\fir_top|operation[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|operation[0]~8_combout\ = (!\fir_top|operation\(0) & (\KEY[0]~input_o\ & (\fir_top|fir_srg|done~q\ $ (!\fir_top|operation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|fir_srg|done~q\,
	datac => \KEY[0]~input_o\,
	datad => \fir_top|operation\(1),
	combout => \fir_top|operation[0]~8_combout\);

-- Location: LCCOMB_X52_Y40_N26
\fir_top|operation[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|operation[0]~7_combout\ = (\fir_top|operation[0]~8_combout\) # ((\fir_top|operation\(0) & \fir_top|operation[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation[0]~8_combout\,
	datac => \fir_top|operation\(0),
	datad => \fir_top|operation[0]~5_combout\,
	combout => \fir_top|operation[0]~7_combout\);

-- Location: FF_X52_Y40_N27
\fir_top|operation[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|operation[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|operation\(0));

-- Location: LCCOMB_X49_Y42_N2
\fir_top|fir_srg|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|always0~0_combout\ = (!\fir_top|fir_srg|done~q\ & (\fir_top|operation\(1) & !\fir_top|operation\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|done~q\,
	datac => \fir_top|operation\(1),
	datad => \fir_top|operation\(0),
	combout => \fir_top|fir_srg|always0~0_combout\);

-- Location: LCCOMB_X53_Y39_N2
\fir_top|fir_srg|j[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[1]~38_combout\ = (\fir_top|fir_srg|j\(1) & (!\fir_top|fir_srg|j[0]~37\)) # (!\fir_top|fir_srg|j\(1) & ((\fir_top|fir_srg|j[0]~37\) # (GND)))
-- \fir_top|fir_srg|j[1]~39\ = CARRY((!\fir_top|fir_srg|j[0]~37\) # (!\fir_top|fir_srg|j\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(1),
	datad => VCC,
	cin => \fir_top|fir_srg|j[0]~37\,
	combout => \fir_top|fir_srg|j[1]~38_combout\,
	cout => \fir_top|fir_srg|j[1]~39\);

-- Location: LCCOMB_X49_Y42_N6
\fir_top|fir_srg|j[4]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[4]~102_combout\ = ((!\fir_top|fir_srg|Equal3~9_combout\ & (!\fir_top|fir_srg|Equal3~4_combout\ & \fir_top|fir_srg|j[4]~40_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Equal3~9_combout\,
	datab => \fir_top|fir_srg|Equal3~4_combout\,
	datac => \KEY[0]~input_o\,
	datad => \fir_top|fir_srg|j[4]~40_combout\,
	combout => \fir_top|fir_srg|j[4]~102_combout\);

-- Location: FF_X48_Y39_N9
\fir_top|fir_srg|j[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fir_top|fir_srg|j[1]~38_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	sload => VCC,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(1));

-- Location: LCCOMB_X53_Y39_N4
\fir_top|fir_srg|j[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[2]~41_combout\ = (\fir_top|fir_srg|j\(2) & (\fir_top|fir_srg|j[1]~39\ $ (GND))) # (!\fir_top|fir_srg|j\(2) & (!\fir_top|fir_srg|j[1]~39\ & VCC))
-- \fir_top|fir_srg|j[2]~42\ = CARRY((\fir_top|fir_srg|j\(2) & !\fir_top|fir_srg|j[1]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(2),
	datad => VCC,
	cin => \fir_top|fir_srg|j[1]~39\,
	combout => \fir_top|fir_srg|j[2]~41_combout\,
	cout => \fir_top|fir_srg|j[2]~42\);

-- Location: FF_X48_Y39_N13
\fir_top|fir_srg|j[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fir_top|fir_srg|j[2]~41_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	sload => VCC,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(2));

-- Location: LCCOMB_X53_Y39_N6
\fir_top|fir_srg|j[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[3]~43_combout\ = (\fir_top|fir_srg|j\(3) & (!\fir_top|fir_srg|j[2]~42\)) # (!\fir_top|fir_srg|j\(3) & ((\fir_top|fir_srg|j[2]~42\) # (GND)))
-- \fir_top|fir_srg|j[3]~44\ = CARRY((!\fir_top|fir_srg|j[2]~42\) # (!\fir_top|fir_srg|j\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(3),
	datad => VCC,
	cin => \fir_top|fir_srg|j[2]~42\,
	combout => \fir_top|fir_srg|j[3]~43_combout\,
	cout => \fir_top|fir_srg|j[3]~44\);

-- Location: FF_X48_Y39_N11
\fir_top|fir_srg|j[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fir_top|fir_srg|j[3]~43_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	sload => VCC,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(3));

-- Location: LCCOMB_X53_Y39_N8
\fir_top|fir_srg|j[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[4]~45_combout\ = (\fir_top|fir_srg|j\(4) & (\fir_top|fir_srg|j[3]~44\ $ (GND))) # (!\fir_top|fir_srg|j\(4) & (!\fir_top|fir_srg|j[3]~44\ & VCC))
-- \fir_top|fir_srg|j[4]~46\ = CARRY((\fir_top|fir_srg|j\(4) & !\fir_top|fir_srg|j[3]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(4),
	datad => VCC,
	cin => \fir_top|fir_srg|j[3]~44\,
	combout => \fir_top|fir_srg|j[4]~45_combout\,
	cout => \fir_top|fir_srg|j[4]~46\);

-- Location: FF_X53_Y39_N9
\fir_top|fir_srg|j[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[4]~45_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(4));

-- Location: LCCOMB_X53_Y39_N10
\fir_top|fir_srg|j[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[5]~47_combout\ = (\fir_top|fir_srg|j\(5) & (!\fir_top|fir_srg|j[4]~46\)) # (!\fir_top|fir_srg|j\(5) & ((\fir_top|fir_srg|j[4]~46\) # (GND)))
-- \fir_top|fir_srg|j[5]~48\ = CARRY((!\fir_top|fir_srg|j[4]~46\) # (!\fir_top|fir_srg|j\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(5),
	datad => VCC,
	cin => \fir_top|fir_srg|j[4]~46\,
	combout => \fir_top|fir_srg|j[5]~47_combout\,
	cout => \fir_top|fir_srg|j[5]~48\);

-- Location: FF_X53_Y39_N11
\fir_top|fir_srg|j[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[5]~47_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(5));

-- Location: LCCOMB_X53_Y39_N12
\fir_top|fir_srg|j[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[6]~49_combout\ = (\fir_top|fir_srg|j\(6) & (\fir_top|fir_srg|j[5]~48\ $ (GND))) # (!\fir_top|fir_srg|j\(6) & (!\fir_top|fir_srg|j[5]~48\ & VCC))
-- \fir_top|fir_srg|j[6]~50\ = CARRY((\fir_top|fir_srg|j\(6) & !\fir_top|fir_srg|j[5]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(6),
	datad => VCC,
	cin => \fir_top|fir_srg|j[5]~48\,
	combout => \fir_top|fir_srg|j[6]~49_combout\,
	cout => \fir_top|fir_srg|j[6]~50\);

-- Location: FF_X53_Y39_N13
\fir_top|fir_srg|j[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[6]~49_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(6));

-- Location: LCCOMB_X53_Y39_N14
\fir_top|fir_srg|j[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[7]~51_combout\ = (\fir_top|fir_srg|j\(7) & (!\fir_top|fir_srg|j[6]~50\)) # (!\fir_top|fir_srg|j\(7) & ((\fir_top|fir_srg|j[6]~50\) # (GND)))
-- \fir_top|fir_srg|j[7]~52\ = CARRY((!\fir_top|fir_srg|j[6]~50\) # (!\fir_top|fir_srg|j\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(7),
	datad => VCC,
	cin => \fir_top|fir_srg|j[6]~50\,
	combout => \fir_top|fir_srg|j[7]~51_combout\,
	cout => \fir_top|fir_srg|j[7]~52\);

-- Location: FF_X53_Y39_N15
\fir_top|fir_srg|j[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[7]~51_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(7));

-- Location: LCCOMB_X53_Y39_N16
\fir_top|fir_srg|j[8]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[8]~53_combout\ = (\fir_top|fir_srg|j\(8) & (\fir_top|fir_srg|j[7]~52\ $ (GND))) # (!\fir_top|fir_srg|j\(8) & (!\fir_top|fir_srg|j[7]~52\ & VCC))
-- \fir_top|fir_srg|j[8]~54\ = CARRY((\fir_top|fir_srg|j\(8) & !\fir_top|fir_srg|j[7]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(8),
	datad => VCC,
	cin => \fir_top|fir_srg|j[7]~52\,
	combout => \fir_top|fir_srg|j[8]~53_combout\,
	cout => \fir_top|fir_srg|j[8]~54\);

-- Location: FF_X53_Y39_N17
\fir_top|fir_srg|j[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[8]~53_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(8));

-- Location: LCCOMB_X53_Y39_N18
\fir_top|fir_srg|j[9]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[9]~55_combout\ = (\fir_top|fir_srg|j\(9) & (!\fir_top|fir_srg|j[8]~54\)) # (!\fir_top|fir_srg|j\(9) & ((\fir_top|fir_srg|j[8]~54\) # (GND)))
-- \fir_top|fir_srg|j[9]~56\ = CARRY((!\fir_top|fir_srg|j[8]~54\) # (!\fir_top|fir_srg|j\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(9),
	datad => VCC,
	cin => \fir_top|fir_srg|j[8]~54\,
	combout => \fir_top|fir_srg|j[9]~55_combout\,
	cout => \fir_top|fir_srg|j[9]~56\);

-- Location: FF_X53_Y39_N19
\fir_top|fir_srg|j[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[9]~55_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(9));

-- Location: LCCOMB_X53_Y39_N20
\fir_top|fir_srg|j[10]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[10]~57_combout\ = (\fir_top|fir_srg|j\(10) & (\fir_top|fir_srg|j[9]~56\ $ (GND))) # (!\fir_top|fir_srg|j\(10) & (!\fir_top|fir_srg|j[9]~56\ & VCC))
-- \fir_top|fir_srg|j[10]~58\ = CARRY((\fir_top|fir_srg|j\(10) & !\fir_top|fir_srg|j[9]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(10),
	datad => VCC,
	cin => \fir_top|fir_srg|j[9]~56\,
	combout => \fir_top|fir_srg|j[10]~57_combout\,
	cout => \fir_top|fir_srg|j[10]~58\);

-- Location: FF_X53_Y39_N21
\fir_top|fir_srg|j[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[10]~57_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(10));

-- Location: LCCOMB_X53_Y39_N22
\fir_top|fir_srg|j[11]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[11]~59_combout\ = (\fir_top|fir_srg|j\(11) & (!\fir_top|fir_srg|j[10]~58\)) # (!\fir_top|fir_srg|j\(11) & ((\fir_top|fir_srg|j[10]~58\) # (GND)))
-- \fir_top|fir_srg|j[11]~60\ = CARRY((!\fir_top|fir_srg|j[10]~58\) # (!\fir_top|fir_srg|j\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(11),
	datad => VCC,
	cin => \fir_top|fir_srg|j[10]~58\,
	combout => \fir_top|fir_srg|j[11]~59_combout\,
	cout => \fir_top|fir_srg|j[11]~60\);

-- Location: FF_X53_Y39_N23
\fir_top|fir_srg|j[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[11]~59_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(11));

-- Location: LCCOMB_X53_Y39_N24
\fir_top|fir_srg|j[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[12]~61_combout\ = (\fir_top|fir_srg|j\(12) & (\fir_top|fir_srg|j[11]~60\ $ (GND))) # (!\fir_top|fir_srg|j\(12) & (!\fir_top|fir_srg|j[11]~60\ & VCC))
-- \fir_top|fir_srg|j[12]~62\ = CARRY((\fir_top|fir_srg|j\(12) & !\fir_top|fir_srg|j[11]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(12),
	datad => VCC,
	cin => \fir_top|fir_srg|j[11]~60\,
	combout => \fir_top|fir_srg|j[12]~61_combout\,
	cout => \fir_top|fir_srg|j[12]~62\);

-- Location: FF_X53_Y39_N25
\fir_top|fir_srg|j[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[12]~61_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(12));

-- Location: LCCOMB_X53_Y39_N26
\fir_top|fir_srg|j[13]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[13]~63_combout\ = (\fir_top|fir_srg|j\(13) & (!\fir_top|fir_srg|j[12]~62\)) # (!\fir_top|fir_srg|j\(13) & ((\fir_top|fir_srg|j[12]~62\) # (GND)))
-- \fir_top|fir_srg|j[13]~64\ = CARRY((!\fir_top|fir_srg|j[12]~62\) # (!\fir_top|fir_srg|j\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(13),
	datad => VCC,
	cin => \fir_top|fir_srg|j[12]~62\,
	combout => \fir_top|fir_srg|j[13]~63_combout\,
	cout => \fir_top|fir_srg|j[13]~64\);

-- Location: FF_X53_Y39_N27
\fir_top|fir_srg|j[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[13]~63_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(13));

-- Location: LCCOMB_X53_Y39_N28
\fir_top|fir_srg|j[14]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[14]~65_combout\ = (\fir_top|fir_srg|j\(14) & (\fir_top|fir_srg|j[13]~64\ $ (GND))) # (!\fir_top|fir_srg|j\(14) & (!\fir_top|fir_srg|j[13]~64\ & VCC))
-- \fir_top|fir_srg|j[14]~66\ = CARRY((\fir_top|fir_srg|j\(14) & !\fir_top|fir_srg|j[13]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(14),
	datad => VCC,
	cin => \fir_top|fir_srg|j[13]~64\,
	combout => \fir_top|fir_srg|j[14]~65_combout\,
	cout => \fir_top|fir_srg|j[14]~66\);

-- Location: FF_X53_Y39_N29
\fir_top|fir_srg|j[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[14]~65_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(14));

-- Location: LCCOMB_X53_Y39_N30
\fir_top|fir_srg|j[15]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[15]~67_combout\ = (\fir_top|fir_srg|j\(15) & (!\fir_top|fir_srg|j[14]~66\)) # (!\fir_top|fir_srg|j\(15) & ((\fir_top|fir_srg|j[14]~66\) # (GND)))
-- \fir_top|fir_srg|j[15]~68\ = CARRY((!\fir_top|fir_srg|j[14]~66\) # (!\fir_top|fir_srg|j\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(15),
	datad => VCC,
	cin => \fir_top|fir_srg|j[14]~66\,
	combout => \fir_top|fir_srg|j[15]~67_combout\,
	cout => \fir_top|fir_srg|j[15]~68\);

-- Location: FF_X53_Y39_N31
\fir_top|fir_srg|j[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[15]~67_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(15));

-- Location: LCCOMB_X53_Y38_N0
\fir_top|fir_srg|j[16]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[16]~69_combout\ = (\fir_top|fir_srg|j\(16) & (\fir_top|fir_srg|j[15]~68\ $ (GND))) # (!\fir_top|fir_srg|j\(16) & (!\fir_top|fir_srg|j[15]~68\ & VCC))
-- \fir_top|fir_srg|j[16]~70\ = CARRY((\fir_top|fir_srg|j\(16) & !\fir_top|fir_srg|j[15]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(16),
	datad => VCC,
	cin => \fir_top|fir_srg|j[15]~68\,
	combout => \fir_top|fir_srg|j[16]~69_combout\,
	cout => \fir_top|fir_srg|j[16]~70\);

-- Location: FF_X53_Y38_N1
\fir_top|fir_srg|j[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[16]~69_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(16));

-- Location: LCCOMB_X53_Y38_N2
\fir_top|fir_srg|j[17]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[17]~71_combout\ = (\fir_top|fir_srg|j\(17) & (!\fir_top|fir_srg|j[16]~70\)) # (!\fir_top|fir_srg|j\(17) & ((\fir_top|fir_srg|j[16]~70\) # (GND)))
-- \fir_top|fir_srg|j[17]~72\ = CARRY((!\fir_top|fir_srg|j[16]~70\) # (!\fir_top|fir_srg|j\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(17),
	datad => VCC,
	cin => \fir_top|fir_srg|j[16]~70\,
	combout => \fir_top|fir_srg|j[17]~71_combout\,
	cout => \fir_top|fir_srg|j[17]~72\);

-- Location: FF_X53_Y38_N3
\fir_top|fir_srg|j[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[17]~71_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(17));

-- Location: LCCOMB_X53_Y38_N4
\fir_top|fir_srg|j[18]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[18]~73_combout\ = (\fir_top|fir_srg|j\(18) & (\fir_top|fir_srg|j[17]~72\ $ (GND))) # (!\fir_top|fir_srg|j\(18) & (!\fir_top|fir_srg|j[17]~72\ & VCC))
-- \fir_top|fir_srg|j[18]~74\ = CARRY((\fir_top|fir_srg|j\(18) & !\fir_top|fir_srg|j[17]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(18),
	datad => VCC,
	cin => \fir_top|fir_srg|j[17]~72\,
	combout => \fir_top|fir_srg|j[18]~73_combout\,
	cout => \fir_top|fir_srg|j[18]~74\);

-- Location: FF_X53_Y38_N5
\fir_top|fir_srg|j[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[18]~73_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(18));

-- Location: LCCOMB_X53_Y38_N6
\fir_top|fir_srg|j[19]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[19]~75_combout\ = (\fir_top|fir_srg|j\(19) & (!\fir_top|fir_srg|j[18]~74\)) # (!\fir_top|fir_srg|j\(19) & ((\fir_top|fir_srg|j[18]~74\) # (GND)))
-- \fir_top|fir_srg|j[19]~76\ = CARRY((!\fir_top|fir_srg|j[18]~74\) # (!\fir_top|fir_srg|j\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(19),
	datad => VCC,
	cin => \fir_top|fir_srg|j[18]~74\,
	combout => \fir_top|fir_srg|j[19]~75_combout\,
	cout => \fir_top|fir_srg|j[19]~76\);

-- Location: FF_X53_Y38_N7
\fir_top|fir_srg|j[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[19]~75_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(19));

-- Location: LCCOMB_X53_Y38_N8
\fir_top|fir_srg|j[20]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[20]~77_combout\ = (\fir_top|fir_srg|j\(20) & (\fir_top|fir_srg|j[19]~76\ $ (GND))) # (!\fir_top|fir_srg|j\(20) & (!\fir_top|fir_srg|j[19]~76\ & VCC))
-- \fir_top|fir_srg|j[20]~78\ = CARRY((\fir_top|fir_srg|j\(20) & !\fir_top|fir_srg|j[19]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(20),
	datad => VCC,
	cin => \fir_top|fir_srg|j[19]~76\,
	combout => \fir_top|fir_srg|j[20]~77_combout\,
	cout => \fir_top|fir_srg|j[20]~78\);

-- Location: FF_X53_Y38_N9
\fir_top|fir_srg|j[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[20]~77_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(20));

-- Location: LCCOMB_X53_Y38_N10
\fir_top|fir_srg|j[21]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[21]~79_combout\ = (\fir_top|fir_srg|j\(21) & (!\fir_top|fir_srg|j[20]~78\)) # (!\fir_top|fir_srg|j\(21) & ((\fir_top|fir_srg|j[20]~78\) # (GND)))
-- \fir_top|fir_srg|j[21]~80\ = CARRY((!\fir_top|fir_srg|j[20]~78\) # (!\fir_top|fir_srg|j\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(21),
	datad => VCC,
	cin => \fir_top|fir_srg|j[20]~78\,
	combout => \fir_top|fir_srg|j[21]~79_combout\,
	cout => \fir_top|fir_srg|j[21]~80\);

-- Location: FF_X53_Y38_N11
\fir_top|fir_srg|j[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[21]~79_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(21));

-- Location: LCCOMB_X53_Y38_N12
\fir_top|fir_srg|j[22]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[22]~81_combout\ = (\fir_top|fir_srg|j\(22) & (\fir_top|fir_srg|j[21]~80\ $ (GND))) # (!\fir_top|fir_srg|j\(22) & (!\fir_top|fir_srg|j[21]~80\ & VCC))
-- \fir_top|fir_srg|j[22]~82\ = CARRY((\fir_top|fir_srg|j\(22) & !\fir_top|fir_srg|j[21]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(22),
	datad => VCC,
	cin => \fir_top|fir_srg|j[21]~80\,
	combout => \fir_top|fir_srg|j[22]~81_combout\,
	cout => \fir_top|fir_srg|j[22]~82\);

-- Location: FF_X53_Y38_N13
\fir_top|fir_srg|j[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[22]~81_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(22));

-- Location: LCCOMB_X53_Y38_N14
\fir_top|fir_srg|j[23]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[23]~83_combout\ = (\fir_top|fir_srg|j\(23) & (!\fir_top|fir_srg|j[22]~82\)) # (!\fir_top|fir_srg|j\(23) & ((\fir_top|fir_srg|j[22]~82\) # (GND)))
-- \fir_top|fir_srg|j[23]~84\ = CARRY((!\fir_top|fir_srg|j[22]~82\) # (!\fir_top|fir_srg|j\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(23),
	datad => VCC,
	cin => \fir_top|fir_srg|j[22]~82\,
	combout => \fir_top|fir_srg|j[23]~83_combout\,
	cout => \fir_top|fir_srg|j[23]~84\);

-- Location: FF_X53_Y38_N15
\fir_top|fir_srg|j[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[23]~83_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(23));

-- Location: LCCOMB_X53_Y38_N16
\fir_top|fir_srg|j[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[24]~85_combout\ = (\fir_top|fir_srg|j\(24) & (\fir_top|fir_srg|j[23]~84\ $ (GND))) # (!\fir_top|fir_srg|j\(24) & (!\fir_top|fir_srg|j[23]~84\ & VCC))
-- \fir_top|fir_srg|j[24]~86\ = CARRY((\fir_top|fir_srg|j\(24) & !\fir_top|fir_srg|j[23]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(24),
	datad => VCC,
	cin => \fir_top|fir_srg|j[23]~84\,
	combout => \fir_top|fir_srg|j[24]~85_combout\,
	cout => \fir_top|fir_srg|j[24]~86\);

-- Location: FF_X53_Y38_N17
\fir_top|fir_srg|j[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[24]~85_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(24));

-- Location: LCCOMB_X53_Y38_N18
\fir_top|fir_srg|j[25]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[25]~87_combout\ = (\fir_top|fir_srg|j\(25) & (!\fir_top|fir_srg|j[24]~86\)) # (!\fir_top|fir_srg|j\(25) & ((\fir_top|fir_srg|j[24]~86\) # (GND)))
-- \fir_top|fir_srg|j[25]~88\ = CARRY((!\fir_top|fir_srg|j[24]~86\) # (!\fir_top|fir_srg|j\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(25),
	datad => VCC,
	cin => \fir_top|fir_srg|j[24]~86\,
	combout => \fir_top|fir_srg|j[25]~87_combout\,
	cout => \fir_top|fir_srg|j[25]~88\);

-- Location: FF_X53_Y38_N19
\fir_top|fir_srg|j[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[25]~87_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(25));

-- Location: LCCOMB_X53_Y38_N20
\fir_top|fir_srg|j[26]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[26]~89_combout\ = (\fir_top|fir_srg|j\(26) & (\fir_top|fir_srg|j[25]~88\ $ (GND))) # (!\fir_top|fir_srg|j\(26) & (!\fir_top|fir_srg|j[25]~88\ & VCC))
-- \fir_top|fir_srg|j[26]~90\ = CARRY((\fir_top|fir_srg|j\(26) & !\fir_top|fir_srg|j[25]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(26),
	datad => VCC,
	cin => \fir_top|fir_srg|j[25]~88\,
	combout => \fir_top|fir_srg|j[26]~89_combout\,
	cout => \fir_top|fir_srg|j[26]~90\);

-- Location: FF_X53_Y38_N21
\fir_top|fir_srg|j[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[26]~89_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(26));

-- Location: LCCOMB_X53_Y38_N22
\fir_top|fir_srg|j[27]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[27]~91_combout\ = (\fir_top|fir_srg|j\(27) & (!\fir_top|fir_srg|j[26]~90\)) # (!\fir_top|fir_srg|j\(27) & ((\fir_top|fir_srg|j[26]~90\) # (GND)))
-- \fir_top|fir_srg|j[27]~92\ = CARRY((!\fir_top|fir_srg|j[26]~90\) # (!\fir_top|fir_srg|j\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(27),
	datad => VCC,
	cin => \fir_top|fir_srg|j[26]~90\,
	combout => \fir_top|fir_srg|j[27]~91_combout\,
	cout => \fir_top|fir_srg|j[27]~92\);

-- Location: FF_X53_Y38_N23
\fir_top|fir_srg|j[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[27]~91_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(27));

-- Location: LCCOMB_X53_Y38_N24
\fir_top|fir_srg|j[28]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[28]~93_combout\ = (\fir_top|fir_srg|j\(28) & (\fir_top|fir_srg|j[27]~92\ $ (GND))) # (!\fir_top|fir_srg|j\(28) & (!\fir_top|fir_srg|j[27]~92\ & VCC))
-- \fir_top|fir_srg|j[28]~94\ = CARRY((\fir_top|fir_srg|j\(28) & !\fir_top|fir_srg|j[27]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(28),
	datad => VCC,
	cin => \fir_top|fir_srg|j[27]~92\,
	combout => \fir_top|fir_srg|j[28]~93_combout\,
	cout => \fir_top|fir_srg|j[28]~94\);

-- Location: FF_X53_Y38_N25
\fir_top|fir_srg|j[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[28]~93_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(28));

-- Location: LCCOMB_X53_Y38_N26
\fir_top|fir_srg|j[29]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[29]~95_combout\ = (\fir_top|fir_srg|j\(29) & (!\fir_top|fir_srg|j[28]~94\)) # (!\fir_top|fir_srg|j\(29) & ((\fir_top|fir_srg|j[28]~94\) # (GND)))
-- \fir_top|fir_srg|j[29]~96\ = CARRY((!\fir_top|fir_srg|j[28]~94\) # (!\fir_top|fir_srg|j\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(29),
	datad => VCC,
	cin => \fir_top|fir_srg|j[28]~94\,
	combout => \fir_top|fir_srg|j[29]~95_combout\,
	cout => \fir_top|fir_srg|j[29]~96\);

-- Location: FF_X53_Y38_N27
\fir_top|fir_srg|j[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[29]~95_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(29));

-- Location: LCCOMB_X53_Y38_N28
\fir_top|fir_srg|j[30]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[30]~97_combout\ = (\fir_top|fir_srg|j\(30) & (\fir_top|fir_srg|j[29]~96\ $ (GND))) # (!\fir_top|fir_srg|j\(30) & (!\fir_top|fir_srg|j[29]~96\ & VCC))
-- \fir_top|fir_srg|j[30]~98\ = CARRY((\fir_top|fir_srg|j\(30) & !\fir_top|fir_srg|j[29]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|j\(30),
	datad => VCC,
	cin => \fir_top|fir_srg|j[29]~96\,
	combout => \fir_top|fir_srg|j[30]~97_combout\,
	cout => \fir_top|fir_srg|j[30]~98\);

-- Location: FF_X53_Y38_N29
\fir_top|fir_srg|j[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[30]~97_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(30));

-- Location: LCCOMB_X53_Y38_N30
\fir_top|fir_srg|j[31]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[31]~99_combout\ = \fir_top|fir_srg|j\(31) $ (\fir_top|fir_srg|j[30]~98\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(31),
	cin => \fir_top|fir_srg|j[30]~98\,
	combout => \fir_top|fir_srg|j[31]~99_combout\);

-- Location: FF_X53_Y38_N31
\fir_top|fir_srg|j[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|j[31]~99_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(31));

-- Location: LCCOMB_X52_Y38_N12
\fir_top|fir_srg|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal2~7_combout\ = (!\fir_top|fir_srg|j\(29) & (!\fir_top|fir_srg|j\(30) & (!\fir_top|fir_srg|j\(31) & !\fir_top|fir_srg|j\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(29),
	datab => \fir_top|fir_srg|j\(30),
	datac => \fir_top|fir_srg|j\(31),
	datad => \fir_top|fir_srg|j\(28),
	combout => \fir_top|fir_srg|Equal2~7_combout\);

-- Location: LCCOMB_X52_Y38_N0
\fir_top|fir_srg|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal2~5_combout\ = (!\fir_top|fir_srg|j\(23) & (!\fir_top|fir_srg|j\(21) & (!\fir_top|fir_srg|j\(20) & !\fir_top|fir_srg|j\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(23),
	datab => \fir_top|fir_srg|j\(21),
	datac => \fir_top|fir_srg|j\(20),
	datad => \fir_top|fir_srg|j\(22),
	combout => \fir_top|fir_srg|Equal2~5_combout\);

-- Location: LCCOMB_X52_Y38_N22
\fir_top|fir_srg|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal2~6_combout\ = (!\fir_top|fir_srg|j\(27) & (!\fir_top|fir_srg|j\(25) & (!\fir_top|fir_srg|j\(26) & !\fir_top|fir_srg|j\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(27),
	datab => \fir_top|fir_srg|j\(25),
	datac => \fir_top|fir_srg|j\(26),
	datad => \fir_top|fir_srg|j\(24),
	combout => \fir_top|fir_srg|Equal2~6_combout\);

-- Location: LCCOMB_X52_Y39_N30
\fir_top|fir_srg|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal2~1_combout\ = (!\fir_top|fir_srg|j\(11) & (!\fir_top|fir_srg|j\(9) & (!\fir_top|fir_srg|j\(10) & !\fir_top|fir_srg|j\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(11),
	datab => \fir_top|fir_srg|j\(9),
	datac => \fir_top|fir_srg|j\(10),
	datad => \fir_top|fir_srg|j\(8),
	combout => \fir_top|fir_srg|Equal2~1_combout\);

-- Location: LCCOMB_X52_Y38_N28
\fir_top|fir_srg|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal2~3_combout\ = (!\fir_top|fir_srg|j\(17) & (!\fir_top|fir_srg|j\(18) & (!\fir_top|fir_srg|j\(16) & !\fir_top|fir_srg|j\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(17),
	datab => \fir_top|fir_srg|j\(18),
	datac => \fir_top|fir_srg|j\(16),
	datad => \fir_top|fir_srg|j\(19),
	combout => \fir_top|fir_srg|Equal2~3_combout\);

-- Location: LCCOMB_X52_Y39_N20
\fir_top|fir_srg|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal2~0_combout\ = (!\fir_top|fir_srg|j\(7) & (!\fir_top|fir_srg|j\(6) & (!\fir_top|fir_srg|j\(5) & !\fir_top|fir_srg|j\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(7),
	datab => \fir_top|fir_srg|j\(6),
	datac => \fir_top|fir_srg|j\(5),
	datad => \fir_top|fir_srg|j\(4),
	combout => \fir_top|fir_srg|Equal2~0_combout\);

-- Location: LCCOMB_X52_Y39_N8
\fir_top|fir_srg|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal2~2_combout\ = (!\fir_top|fir_srg|j\(12) & (!\fir_top|fir_srg|j\(14) & (!\fir_top|fir_srg|j\(15) & !\fir_top|fir_srg|j\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(12),
	datab => \fir_top|fir_srg|j\(14),
	datac => \fir_top|fir_srg|j\(15),
	datad => \fir_top|fir_srg|j\(13),
	combout => \fir_top|fir_srg|Equal2~2_combout\);

-- Location: LCCOMB_X52_Y38_N2
\fir_top|fir_srg|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal2~4_combout\ = (\fir_top|fir_srg|Equal2~1_combout\ & (\fir_top|fir_srg|Equal2~3_combout\ & (\fir_top|fir_srg|Equal2~0_combout\ & \fir_top|fir_srg|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Equal2~1_combout\,
	datab => \fir_top|fir_srg|Equal2~3_combout\,
	datac => \fir_top|fir_srg|Equal2~0_combout\,
	datad => \fir_top|fir_srg|Equal2~2_combout\,
	combout => \fir_top|fir_srg|Equal2~4_combout\);

-- Location: LCCOMB_X52_Y38_N10
\fir_top|fir_srg|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal2~8_combout\ = (\fir_top|fir_srg|Equal2~7_combout\ & (\fir_top|fir_srg|Equal2~5_combout\ & (\fir_top|fir_srg|Equal2~6_combout\ & \fir_top|fir_srg|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Equal2~7_combout\,
	datab => \fir_top|fir_srg|Equal2~5_combout\,
	datac => \fir_top|fir_srg|Equal2~6_combout\,
	datad => \fir_top|fir_srg|Equal2~4_combout\,
	combout => \fir_top|fir_srg|Equal2~8_combout\);

-- Location: LCCOMB_X50_Y42_N12
\fir_top|fir_srg|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal2~9_combout\ = (\fir_top|fir_srg|j\(3) & (!\fir_top|fir_srg|j\(2) & \fir_top|fir_srg|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(3),
	datab => \fir_top|fir_srg|j\(2),
	datac => \fir_top|fir_srg|Equal2~8_combout\,
	combout => \fir_top|fir_srg|Equal2~9_combout\);

-- Location: LCCOMB_X50_Y42_N4
\fir_top|fir_srg|j[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[4]~40_combout\ = (\fir_top|fir_srg|always0~0_combout\ & ((\fir_top|fir_srg|j\(0)) # ((!\fir_top|fir_srg|Equal2~9_combout\) # (!\fir_top|fir_srg|j\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(0),
	datab => \fir_top|fir_srg|always0~0_combout\,
	datac => \fir_top|fir_srg|j\(1),
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|j[4]~40_combout\);

-- Location: LCCOMB_X49_Y42_N14
\fir_top|fir_srg|i[2]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[2]~101_combout\ = ((\fir_top|fir_srg|j[4]~40_combout\ & ((\fir_top|operation\(1)) # (!\fir_top|operation\(0))))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(0),
	datab => \fir_top|operation\(1),
	datac => \KEY[0]~input_o\,
	datad => \fir_top|fir_srg|j[4]~40_combout\,
	combout => \fir_top|fir_srg|i[2]~101_combout\);

-- Location: FF_X49_Y39_N7
\fir_top|fir_srg|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[3]~42_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(3));

-- Location: LCCOMB_X49_Y39_N8
\fir_top|fir_srg|i[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[4]~44_combout\ = (\fir_top|fir_srg|i\(4) & (\fir_top|fir_srg|i[3]~43\ $ (GND))) # (!\fir_top|fir_srg|i\(4) & (!\fir_top|fir_srg|i[3]~43\ & VCC))
-- \fir_top|fir_srg|i[4]~45\ = CARRY((\fir_top|fir_srg|i\(4) & !\fir_top|fir_srg|i[3]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(4),
	datad => VCC,
	cin => \fir_top|fir_srg|i[3]~43\,
	combout => \fir_top|fir_srg|i[4]~44_combout\,
	cout => \fir_top|fir_srg|i[4]~45\);

-- Location: FF_X49_Y39_N9
\fir_top|fir_srg|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[4]~44_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(4));

-- Location: LCCOMB_X49_Y39_N10
\fir_top|fir_srg|i[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[5]~46_combout\ = (\fir_top|fir_srg|i\(5) & (!\fir_top|fir_srg|i[4]~45\)) # (!\fir_top|fir_srg|i\(5) & ((\fir_top|fir_srg|i[4]~45\) # (GND)))
-- \fir_top|fir_srg|i[5]~47\ = CARRY((!\fir_top|fir_srg|i[4]~45\) # (!\fir_top|fir_srg|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(5),
	datad => VCC,
	cin => \fir_top|fir_srg|i[4]~45\,
	combout => \fir_top|fir_srg|i[5]~46_combout\,
	cout => \fir_top|fir_srg|i[5]~47\);

-- Location: FF_X49_Y39_N11
\fir_top|fir_srg|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[5]~46_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(5));

-- Location: LCCOMB_X49_Y39_N12
\fir_top|fir_srg|i[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[6]~48_combout\ = (\fir_top|fir_srg|i\(6) & (\fir_top|fir_srg|i[5]~47\ $ (GND))) # (!\fir_top|fir_srg|i\(6) & (!\fir_top|fir_srg|i[5]~47\ & VCC))
-- \fir_top|fir_srg|i[6]~49\ = CARRY((\fir_top|fir_srg|i\(6) & !\fir_top|fir_srg|i[5]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(6),
	datad => VCC,
	cin => \fir_top|fir_srg|i[5]~47\,
	combout => \fir_top|fir_srg|i[6]~48_combout\,
	cout => \fir_top|fir_srg|i[6]~49\);

-- Location: FF_X49_Y39_N13
\fir_top|fir_srg|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[6]~48_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(6));

-- Location: LCCOMB_X49_Y39_N14
\fir_top|fir_srg|i[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[7]~50_combout\ = (\fir_top|fir_srg|i\(7) & (!\fir_top|fir_srg|i[6]~49\)) # (!\fir_top|fir_srg|i\(7) & ((\fir_top|fir_srg|i[6]~49\) # (GND)))
-- \fir_top|fir_srg|i[7]~51\ = CARRY((!\fir_top|fir_srg|i[6]~49\) # (!\fir_top|fir_srg|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(7),
	datad => VCC,
	cin => \fir_top|fir_srg|i[6]~49\,
	combout => \fir_top|fir_srg|i[7]~50_combout\,
	cout => \fir_top|fir_srg|i[7]~51\);

-- Location: FF_X49_Y39_N15
\fir_top|fir_srg|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[7]~50_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(7));

-- Location: LCCOMB_X49_Y39_N16
\fir_top|fir_srg|i[8]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[8]~52_combout\ = (\fir_top|fir_srg|i\(8) & (\fir_top|fir_srg|i[7]~51\ $ (GND))) # (!\fir_top|fir_srg|i\(8) & (!\fir_top|fir_srg|i[7]~51\ & VCC))
-- \fir_top|fir_srg|i[8]~53\ = CARRY((\fir_top|fir_srg|i\(8) & !\fir_top|fir_srg|i[7]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(8),
	datad => VCC,
	cin => \fir_top|fir_srg|i[7]~51\,
	combout => \fir_top|fir_srg|i[8]~52_combout\,
	cout => \fir_top|fir_srg|i[8]~53\);

-- Location: FF_X49_Y39_N17
\fir_top|fir_srg|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[8]~52_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(8));

-- Location: LCCOMB_X49_Y39_N18
\fir_top|fir_srg|i[9]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[9]~54_combout\ = (\fir_top|fir_srg|i\(9) & (!\fir_top|fir_srg|i[8]~53\)) # (!\fir_top|fir_srg|i\(9) & ((\fir_top|fir_srg|i[8]~53\) # (GND)))
-- \fir_top|fir_srg|i[9]~55\ = CARRY((!\fir_top|fir_srg|i[8]~53\) # (!\fir_top|fir_srg|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(9),
	datad => VCC,
	cin => \fir_top|fir_srg|i[8]~53\,
	combout => \fir_top|fir_srg|i[9]~54_combout\,
	cout => \fir_top|fir_srg|i[9]~55\);

-- Location: FF_X49_Y39_N19
\fir_top|fir_srg|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[9]~54_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(9));

-- Location: LCCOMB_X49_Y39_N20
\fir_top|fir_srg|i[10]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[10]~56_combout\ = (\fir_top|fir_srg|i\(10) & (\fir_top|fir_srg|i[9]~55\ $ (GND))) # (!\fir_top|fir_srg|i\(10) & (!\fir_top|fir_srg|i[9]~55\ & VCC))
-- \fir_top|fir_srg|i[10]~57\ = CARRY((\fir_top|fir_srg|i\(10) & !\fir_top|fir_srg|i[9]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(10),
	datad => VCC,
	cin => \fir_top|fir_srg|i[9]~55\,
	combout => \fir_top|fir_srg|i[10]~56_combout\,
	cout => \fir_top|fir_srg|i[10]~57\);

-- Location: FF_X49_Y39_N21
\fir_top|fir_srg|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[10]~56_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(10));

-- Location: LCCOMB_X49_Y39_N22
\fir_top|fir_srg|i[11]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[11]~58_combout\ = (\fir_top|fir_srg|i\(11) & (!\fir_top|fir_srg|i[10]~57\)) # (!\fir_top|fir_srg|i\(11) & ((\fir_top|fir_srg|i[10]~57\) # (GND)))
-- \fir_top|fir_srg|i[11]~59\ = CARRY((!\fir_top|fir_srg|i[10]~57\) # (!\fir_top|fir_srg|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(11),
	datad => VCC,
	cin => \fir_top|fir_srg|i[10]~57\,
	combout => \fir_top|fir_srg|i[11]~58_combout\,
	cout => \fir_top|fir_srg|i[11]~59\);

-- Location: FF_X49_Y39_N23
\fir_top|fir_srg|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[11]~58_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(11));

-- Location: LCCOMB_X49_Y39_N24
\fir_top|fir_srg|i[12]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[12]~60_combout\ = (\fir_top|fir_srg|i\(12) & (\fir_top|fir_srg|i[11]~59\ $ (GND))) # (!\fir_top|fir_srg|i\(12) & (!\fir_top|fir_srg|i[11]~59\ & VCC))
-- \fir_top|fir_srg|i[12]~61\ = CARRY((\fir_top|fir_srg|i\(12) & !\fir_top|fir_srg|i[11]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(12),
	datad => VCC,
	cin => \fir_top|fir_srg|i[11]~59\,
	combout => \fir_top|fir_srg|i[12]~60_combout\,
	cout => \fir_top|fir_srg|i[12]~61\);

-- Location: FF_X49_Y39_N25
\fir_top|fir_srg|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[12]~60_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(12));

-- Location: LCCOMB_X49_Y39_N26
\fir_top|fir_srg|i[13]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[13]~62_combout\ = (\fir_top|fir_srg|i\(13) & (!\fir_top|fir_srg|i[12]~61\)) # (!\fir_top|fir_srg|i\(13) & ((\fir_top|fir_srg|i[12]~61\) # (GND)))
-- \fir_top|fir_srg|i[13]~63\ = CARRY((!\fir_top|fir_srg|i[12]~61\) # (!\fir_top|fir_srg|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(13),
	datad => VCC,
	cin => \fir_top|fir_srg|i[12]~61\,
	combout => \fir_top|fir_srg|i[13]~62_combout\,
	cout => \fir_top|fir_srg|i[13]~63\);

-- Location: FF_X49_Y39_N27
\fir_top|fir_srg|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[13]~62_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(13));

-- Location: LCCOMB_X49_Y39_N28
\fir_top|fir_srg|i[14]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[14]~64_combout\ = (\fir_top|fir_srg|i\(14) & (\fir_top|fir_srg|i[13]~63\ $ (GND))) # (!\fir_top|fir_srg|i\(14) & (!\fir_top|fir_srg|i[13]~63\ & VCC))
-- \fir_top|fir_srg|i[14]~65\ = CARRY((\fir_top|fir_srg|i\(14) & !\fir_top|fir_srg|i[13]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(14),
	datad => VCC,
	cin => \fir_top|fir_srg|i[13]~63\,
	combout => \fir_top|fir_srg|i[14]~64_combout\,
	cout => \fir_top|fir_srg|i[14]~65\);

-- Location: FF_X49_Y39_N29
\fir_top|fir_srg|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[14]~64_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(14));

-- Location: LCCOMB_X49_Y39_N30
\fir_top|fir_srg|i[15]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[15]~66_combout\ = (\fir_top|fir_srg|i\(15) & (!\fir_top|fir_srg|i[14]~65\)) # (!\fir_top|fir_srg|i\(15) & ((\fir_top|fir_srg|i[14]~65\) # (GND)))
-- \fir_top|fir_srg|i[15]~67\ = CARRY((!\fir_top|fir_srg|i[14]~65\) # (!\fir_top|fir_srg|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(15),
	datad => VCC,
	cin => \fir_top|fir_srg|i[14]~65\,
	combout => \fir_top|fir_srg|i[15]~66_combout\,
	cout => \fir_top|fir_srg|i[15]~67\);

-- Location: FF_X49_Y39_N31
\fir_top|fir_srg|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[15]~66_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(15));

-- Location: LCCOMB_X49_Y38_N0
\fir_top|fir_srg|i[16]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[16]~68_combout\ = (\fir_top|fir_srg|i\(16) & (\fir_top|fir_srg|i[15]~67\ $ (GND))) # (!\fir_top|fir_srg|i\(16) & (!\fir_top|fir_srg|i[15]~67\ & VCC))
-- \fir_top|fir_srg|i[16]~69\ = CARRY((\fir_top|fir_srg|i\(16) & !\fir_top|fir_srg|i[15]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(16),
	datad => VCC,
	cin => \fir_top|fir_srg|i[15]~67\,
	combout => \fir_top|fir_srg|i[16]~68_combout\,
	cout => \fir_top|fir_srg|i[16]~69\);

-- Location: FF_X49_Y38_N1
\fir_top|fir_srg|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[16]~68_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(16));

-- Location: LCCOMB_X49_Y38_N2
\fir_top|fir_srg|i[17]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[17]~70_combout\ = (\fir_top|fir_srg|i\(17) & (!\fir_top|fir_srg|i[16]~69\)) # (!\fir_top|fir_srg|i\(17) & ((\fir_top|fir_srg|i[16]~69\) # (GND)))
-- \fir_top|fir_srg|i[17]~71\ = CARRY((!\fir_top|fir_srg|i[16]~69\) # (!\fir_top|fir_srg|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(17),
	datad => VCC,
	cin => \fir_top|fir_srg|i[16]~69\,
	combout => \fir_top|fir_srg|i[17]~70_combout\,
	cout => \fir_top|fir_srg|i[17]~71\);

-- Location: FF_X49_Y38_N3
\fir_top|fir_srg|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[17]~70_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(17));

-- Location: LCCOMB_X49_Y38_N4
\fir_top|fir_srg|i[18]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[18]~72_combout\ = (\fir_top|fir_srg|i\(18) & (\fir_top|fir_srg|i[17]~71\ $ (GND))) # (!\fir_top|fir_srg|i\(18) & (!\fir_top|fir_srg|i[17]~71\ & VCC))
-- \fir_top|fir_srg|i[18]~73\ = CARRY((\fir_top|fir_srg|i\(18) & !\fir_top|fir_srg|i[17]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(18),
	datad => VCC,
	cin => \fir_top|fir_srg|i[17]~71\,
	combout => \fir_top|fir_srg|i[18]~72_combout\,
	cout => \fir_top|fir_srg|i[18]~73\);

-- Location: FF_X49_Y38_N5
\fir_top|fir_srg|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[18]~72_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(18));

-- Location: LCCOMB_X49_Y38_N6
\fir_top|fir_srg|i[19]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[19]~74_combout\ = (\fir_top|fir_srg|i\(19) & (!\fir_top|fir_srg|i[18]~73\)) # (!\fir_top|fir_srg|i\(19) & ((\fir_top|fir_srg|i[18]~73\) # (GND)))
-- \fir_top|fir_srg|i[19]~75\ = CARRY((!\fir_top|fir_srg|i[18]~73\) # (!\fir_top|fir_srg|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(19),
	datad => VCC,
	cin => \fir_top|fir_srg|i[18]~73\,
	combout => \fir_top|fir_srg|i[19]~74_combout\,
	cout => \fir_top|fir_srg|i[19]~75\);

-- Location: FF_X49_Y38_N7
\fir_top|fir_srg|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[19]~74_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(19));

-- Location: LCCOMB_X49_Y38_N8
\fir_top|fir_srg|i[20]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[20]~76_combout\ = (\fir_top|fir_srg|i\(20) & (\fir_top|fir_srg|i[19]~75\ $ (GND))) # (!\fir_top|fir_srg|i\(20) & (!\fir_top|fir_srg|i[19]~75\ & VCC))
-- \fir_top|fir_srg|i[20]~77\ = CARRY((\fir_top|fir_srg|i\(20) & !\fir_top|fir_srg|i[19]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(20),
	datad => VCC,
	cin => \fir_top|fir_srg|i[19]~75\,
	combout => \fir_top|fir_srg|i[20]~76_combout\,
	cout => \fir_top|fir_srg|i[20]~77\);

-- Location: FF_X49_Y38_N9
\fir_top|fir_srg|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[20]~76_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(20));

-- Location: LCCOMB_X49_Y38_N10
\fir_top|fir_srg|i[21]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[21]~78_combout\ = (\fir_top|fir_srg|i\(21) & (!\fir_top|fir_srg|i[20]~77\)) # (!\fir_top|fir_srg|i\(21) & ((\fir_top|fir_srg|i[20]~77\) # (GND)))
-- \fir_top|fir_srg|i[21]~79\ = CARRY((!\fir_top|fir_srg|i[20]~77\) # (!\fir_top|fir_srg|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(21),
	datad => VCC,
	cin => \fir_top|fir_srg|i[20]~77\,
	combout => \fir_top|fir_srg|i[21]~78_combout\,
	cout => \fir_top|fir_srg|i[21]~79\);

-- Location: FF_X49_Y38_N11
\fir_top|fir_srg|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[21]~78_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(21));

-- Location: LCCOMB_X49_Y38_N12
\fir_top|fir_srg|i[22]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[22]~80_combout\ = (\fir_top|fir_srg|i\(22) & (\fir_top|fir_srg|i[21]~79\ $ (GND))) # (!\fir_top|fir_srg|i\(22) & (!\fir_top|fir_srg|i[21]~79\ & VCC))
-- \fir_top|fir_srg|i[22]~81\ = CARRY((\fir_top|fir_srg|i\(22) & !\fir_top|fir_srg|i[21]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(22),
	datad => VCC,
	cin => \fir_top|fir_srg|i[21]~79\,
	combout => \fir_top|fir_srg|i[22]~80_combout\,
	cout => \fir_top|fir_srg|i[22]~81\);

-- Location: FF_X49_Y38_N13
\fir_top|fir_srg|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[22]~80_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(22));

-- Location: LCCOMB_X49_Y38_N14
\fir_top|fir_srg|i[23]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[23]~82_combout\ = (\fir_top|fir_srg|i\(23) & (!\fir_top|fir_srg|i[22]~81\)) # (!\fir_top|fir_srg|i\(23) & ((\fir_top|fir_srg|i[22]~81\) # (GND)))
-- \fir_top|fir_srg|i[23]~83\ = CARRY((!\fir_top|fir_srg|i[22]~81\) # (!\fir_top|fir_srg|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(23),
	datad => VCC,
	cin => \fir_top|fir_srg|i[22]~81\,
	combout => \fir_top|fir_srg|i[23]~82_combout\,
	cout => \fir_top|fir_srg|i[23]~83\);

-- Location: FF_X49_Y38_N15
\fir_top|fir_srg|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[23]~82_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(23));

-- Location: LCCOMB_X49_Y38_N16
\fir_top|fir_srg|i[24]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[24]~84_combout\ = (\fir_top|fir_srg|i\(24) & (\fir_top|fir_srg|i[23]~83\ $ (GND))) # (!\fir_top|fir_srg|i\(24) & (!\fir_top|fir_srg|i[23]~83\ & VCC))
-- \fir_top|fir_srg|i[24]~85\ = CARRY((\fir_top|fir_srg|i\(24) & !\fir_top|fir_srg|i[23]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(24),
	datad => VCC,
	cin => \fir_top|fir_srg|i[23]~83\,
	combout => \fir_top|fir_srg|i[24]~84_combout\,
	cout => \fir_top|fir_srg|i[24]~85\);

-- Location: FF_X49_Y38_N17
\fir_top|fir_srg|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[24]~84_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(24));

-- Location: LCCOMB_X49_Y38_N18
\fir_top|fir_srg|i[25]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[25]~86_combout\ = (\fir_top|fir_srg|i\(25) & (!\fir_top|fir_srg|i[24]~85\)) # (!\fir_top|fir_srg|i\(25) & ((\fir_top|fir_srg|i[24]~85\) # (GND)))
-- \fir_top|fir_srg|i[25]~87\ = CARRY((!\fir_top|fir_srg|i[24]~85\) # (!\fir_top|fir_srg|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(25),
	datad => VCC,
	cin => \fir_top|fir_srg|i[24]~85\,
	combout => \fir_top|fir_srg|i[25]~86_combout\,
	cout => \fir_top|fir_srg|i[25]~87\);

-- Location: FF_X49_Y38_N19
\fir_top|fir_srg|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[25]~86_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(25));

-- Location: LCCOMB_X49_Y38_N20
\fir_top|fir_srg|i[26]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[26]~88_combout\ = (\fir_top|fir_srg|i\(26) & (\fir_top|fir_srg|i[25]~87\ $ (GND))) # (!\fir_top|fir_srg|i\(26) & (!\fir_top|fir_srg|i[25]~87\ & VCC))
-- \fir_top|fir_srg|i[26]~89\ = CARRY((\fir_top|fir_srg|i\(26) & !\fir_top|fir_srg|i[25]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(26),
	datad => VCC,
	cin => \fir_top|fir_srg|i[25]~87\,
	combout => \fir_top|fir_srg|i[26]~88_combout\,
	cout => \fir_top|fir_srg|i[26]~89\);

-- Location: FF_X49_Y38_N21
\fir_top|fir_srg|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[26]~88_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(26));

-- Location: LCCOMB_X49_Y38_N22
\fir_top|fir_srg|i[27]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[27]~90_combout\ = (\fir_top|fir_srg|i\(27) & (!\fir_top|fir_srg|i[26]~89\)) # (!\fir_top|fir_srg|i\(27) & ((\fir_top|fir_srg|i[26]~89\) # (GND)))
-- \fir_top|fir_srg|i[27]~91\ = CARRY((!\fir_top|fir_srg|i[26]~89\) # (!\fir_top|fir_srg|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(27),
	datad => VCC,
	cin => \fir_top|fir_srg|i[26]~89\,
	combout => \fir_top|fir_srg|i[27]~90_combout\,
	cout => \fir_top|fir_srg|i[27]~91\);

-- Location: FF_X49_Y38_N23
\fir_top|fir_srg|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[27]~90_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(27));

-- Location: LCCOMB_X50_Y38_N12
\fir_top|fir_srg|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal3~7_combout\ = (\fir_top|fir_srg|i\(27)) # ((\fir_top|fir_srg|i\(26)) # ((\fir_top|fir_srg|i\(24)) # (\fir_top|fir_srg|i\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(27),
	datab => \fir_top|fir_srg|i\(26),
	datac => \fir_top|fir_srg|i\(24),
	datad => \fir_top|fir_srg|i\(25),
	combout => \fir_top|fir_srg|Equal3~7_combout\);

-- Location: LCCOMB_X50_Y38_N2
\fir_top|fir_srg|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal3~6_combout\ = (\fir_top|fir_srg|i\(21)) # ((\fir_top|fir_srg|i\(23)) # ((\fir_top|fir_srg|i\(22)) # (\fir_top|fir_srg|i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(21),
	datab => \fir_top|fir_srg|i\(23),
	datac => \fir_top|fir_srg|i\(22),
	datad => \fir_top|fir_srg|i\(20),
	combout => \fir_top|fir_srg|Equal3~6_combout\);

-- Location: LCCOMB_X49_Y38_N24
\fir_top|fir_srg|i[28]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[28]~92_combout\ = (\fir_top|fir_srg|i\(28) & (\fir_top|fir_srg|i[27]~91\ $ (GND))) # (!\fir_top|fir_srg|i\(28) & (!\fir_top|fir_srg|i[27]~91\ & VCC))
-- \fir_top|fir_srg|i[28]~93\ = CARRY((\fir_top|fir_srg|i\(28) & !\fir_top|fir_srg|i[27]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(28),
	datad => VCC,
	cin => \fir_top|fir_srg|i[27]~91\,
	combout => \fir_top|fir_srg|i[28]~92_combout\,
	cout => \fir_top|fir_srg|i[28]~93\);

-- Location: FF_X49_Y38_N25
\fir_top|fir_srg|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[28]~92_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(28));

-- Location: LCCOMB_X49_Y38_N26
\fir_top|fir_srg|i[29]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[29]~94_combout\ = (\fir_top|fir_srg|i\(29) & (!\fir_top|fir_srg|i[28]~93\)) # (!\fir_top|fir_srg|i\(29) & ((\fir_top|fir_srg|i[28]~93\) # (GND)))
-- \fir_top|fir_srg|i[29]~95\ = CARRY((!\fir_top|fir_srg|i[28]~93\) # (!\fir_top|fir_srg|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(29),
	datad => VCC,
	cin => \fir_top|fir_srg|i[28]~93\,
	combout => \fir_top|fir_srg|i[29]~94_combout\,
	cout => \fir_top|fir_srg|i[29]~95\);

-- Location: FF_X49_Y38_N27
\fir_top|fir_srg|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[29]~94_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(29));

-- Location: LCCOMB_X49_Y38_N28
\fir_top|fir_srg|i[30]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[30]~96_combout\ = (\fir_top|fir_srg|i\(30) & (\fir_top|fir_srg|i[29]~95\ $ (GND))) # (!\fir_top|fir_srg|i\(30) & (!\fir_top|fir_srg|i[29]~95\ & VCC))
-- \fir_top|fir_srg|i[30]~97\ = CARRY((\fir_top|fir_srg|i\(30) & !\fir_top|fir_srg|i[29]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(30),
	datad => VCC,
	cin => \fir_top|fir_srg|i[29]~95\,
	combout => \fir_top|fir_srg|i[30]~96_combout\,
	cout => \fir_top|fir_srg|i[30]~97\);

-- Location: FF_X49_Y38_N29
\fir_top|fir_srg|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[30]~96_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(30));

-- Location: LCCOMB_X49_Y38_N30
\fir_top|fir_srg|i[31]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[31]~98_combout\ = \fir_top|fir_srg|i\(31) $ (\fir_top|fir_srg|i[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(31),
	cin => \fir_top|fir_srg|i[30]~97\,
	combout => \fir_top|fir_srg|i[31]~98_combout\);

-- Location: FF_X49_Y38_N31
\fir_top|fir_srg|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[31]~98_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(31));

-- Location: LCCOMB_X50_Y38_N22
\fir_top|fir_srg|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal3~8_combout\ = (\fir_top|fir_srg|i\(31)) # ((\fir_top|fir_srg|i\(30)) # ((\fir_top|fir_srg|i\(29)) # (\fir_top|fir_srg|i\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(31),
	datab => \fir_top|fir_srg|i\(30),
	datac => \fir_top|fir_srg|i\(29),
	datad => \fir_top|fir_srg|i\(28),
	combout => \fir_top|fir_srg|Equal3~8_combout\);

-- Location: LCCOMB_X50_Y38_N0
\fir_top|fir_srg|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal3~5_combout\ = (\fir_top|fir_srg|i\(16)) # ((\fir_top|fir_srg|i\(19)) # ((\fir_top|fir_srg|i\(18)) # (\fir_top|fir_srg|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(16),
	datab => \fir_top|fir_srg|i\(19),
	datac => \fir_top|fir_srg|i\(18),
	datad => \fir_top|fir_srg|i\(17),
	combout => \fir_top|fir_srg|Equal3~5_combout\);

-- Location: LCCOMB_X50_Y38_N20
\fir_top|fir_srg|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal3~9_combout\ = (\fir_top|fir_srg|Equal3~7_combout\) # ((\fir_top|fir_srg|Equal3~6_combout\) # ((\fir_top|fir_srg|Equal3~8_combout\) # (\fir_top|fir_srg|Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Equal3~7_combout\,
	datab => \fir_top|fir_srg|Equal3~6_combout\,
	datac => \fir_top|fir_srg|Equal3~8_combout\,
	datad => \fir_top|fir_srg|Equal3~5_combout\,
	combout => \fir_top|fir_srg|Equal3~9_combout\);

-- Location: LCCOMB_X49_Y42_N12
\fir_top|fir_srg|i[2]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[2]~100_combout\ = ((!\fir_top|fir_srg|Equal3~4_combout\ & !\fir_top|fir_srg|Equal3~9_combout\)) # (!\fir_top|fir_srg|j[4]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|Equal3~4_combout\,
	datac => \fir_top|fir_srg|Equal3~9_combout\,
	datad => \fir_top|fir_srg|j[4]~40_combout\,
	combout => \fir_top|fir_srg|i[2]~100_combout\);

-- Location: FF_X49_Y39_N1
\fir_top|fir_srg|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[0]~36_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(0));

-- Location: LCCOMB_X49_Y39_N2
\fir_top|fir_srg|i[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|i[1]~38_combout\ = (\fir_top|fir_srg|i\(1) & (!\fir_top|fir_srg|i[0]~37\)) # (!\fir_top|fir_srg|i\(1) & ((\fir_top|fir_srg|i[0]~37\) # (GND)))
-- \fir_top|fir_srg|i[1]~39\ = CARRY((!\fir_top|fir_srg|i[0]~37\) # (!\fir_top|fir_srg|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(1),
	datad => VCC,
	cin => \fir_top|fir_srg|i[0]~37\,
	combout => \fir_top|fir_srg|i[1]~38_combout\,
	cout => \fir_top|fir_srg|i[1]~39\);

-- Location: FF_X49_Y39_N3
\fir_top|fir_srg|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[1]~38_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(1));

-- Location: FF_X49_Y39_N5
\fir_top|fir_srg|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|i[2]~40_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|i\(2));

-- Location: LCCOMB_X52_Y39_N10
\fir_top|fir_srg|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal3~0_combout\ = (\fir_top|fir_srg|i\(2)) # (((\fir_top|fir_srg|i\(0)) # (!\fir_top|fir_srg|i\(3))) # (!\fir_top|fir_srg|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(2),
	datab => \fir_top|fir_srg|i\(1),
	datac => \fir_top|fir_srg|i\(0),
	datad => \fir_top|fir_srg|i\(3),
	combout => \fir_top|fir_srg|Equal3~0_combout\);

-- Location: LCCOMB_X50_Y39_N20
\fir_top|fir_srg|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal3~1_combout\ = (\fir_top|fir_srg|i\(7)) # ((\fir_top|fir_srg|i\(6)) # ((\fir_top|fir_srg|i\(5)) # (\fir_top|fir_srg|i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(7),
	datab => \fir_top|fir_srg|i\(6),
	datac => \fir_top|fir_srg|i\(5),
	datad => \fir_top|fir_srg|i\(4),
	combout => \fir_top|fir_srg|Equal3~1_combout\);

-- Location: LCCOMB_X50_Y39_N14
\fir_top|fir_srg|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal3~2_combout\ = (\fir_top|fir_srg|i\(8)) # ((\fir_top|fir_srg|i\(11)) # ((\fir_top|fir_srg|i\(9)) # (\fir_top|fir_srg|i\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(8),
	datab => \fir_top|fir_srg|i\(11),
	datac => \fir_top|fir_srg|i\(9),
	datad => \fir_top|fir_srg|i\(10),
	combout => \fir_top|fir_srg|Equal3~2_combout\);

-- Location: LCCOMB_X50_Y39_N12
\fir_top|fir_srg|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal3~3_combout\ = (\fir_top|fir_srg|i\(12)) # ((\fir_top|fir_srg|i\(15)) # ((\fir_top|fir_srg|i\(13)) # (\fir_top|fir_srg|i\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(12),
	datab => \fir_top|fir_srg|i\(15),
	datac => \fir_top|fir_srg|i\(13),
	datad => \fir_top|fir_srg|i\(14),
	combout => \fir_top|fir_srg|Equal3~3_combout\);

-- Location: LCCOMB_X50_Y39_N18
\fir_top|fir_srg|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal3~4_combout\ = (\fir_top|fir_srg|Equal3~0_combout\) # ((\fir_top|fir_srg|Equal3~1_combout\) # ((\fir_top|fir_srg|Equal3~2_combout\) # (\fir_top|fir_srg|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Equal3~0_combout\,
	datab => \fir_top|fir_srg|Equal3~1_combout\,
	datac => \fir_top|fir_srg|Equal3~2_combout\,
	datad => \fir_top|fir_srg|Equal3~3_combout\,
	combout => \fir_top|fir_srg|Equal3~4_combout\);

-- Location: LCCOMB_X49_Y42_N16
\fir_top|fir_srg|j[4]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|j[4]~101_combout\ = (\fir_top|fir_srg|Equal2~10_combout\) # ((\fir_top|fir_srg|Equal3~4_combout\) # ((\fir_top|fir_srg|Equal3~9_combout\) # (!\fir_top|fir_srg|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Equal2~10_combout\,
	datab => \fir_top|fir_srg|Equal3~4_combout\,
	datac => \fir_top|fir_srg|Equal3~9_combout\,
	datad => \fir_top|fir_srg|always0~0_combout\,
	combout => \fir_top|fir_srg|j[4]~101_combout\);

-- Location: FF_X48_Y39_N21
\fir_top|fir_srg|j[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fir_top|fir_srg|j[0]~36_combout\,
	sclr => \fir_top|fir_srg|j[4]~101_combout\,
	sload => VCC,
	ena => \fir_top|fir_srg|j[4]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|j\(0));

-- Location: LCCOMB_X50_Y42_N6
\fir_top|fir_srg|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Equal2~10_combout\ = (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|j\(1) & \fir_top|fir_srg|Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|j\(1),
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|Equal2~10_combout\);

-- Location: LCCOMB_X49_Y42_N28
\fir_top|fir_srg|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|done~0_combout\ = (\fir_top|fir_srg|Equal2~10_combout\ & ((\fir_top|fir_srg|always0~0_combout\) # ((\KEY[0]~input_o\ & \fir_top|fir_srg|done~q\)))) # (!\fir_top|fir_srg|Equal2~10_combout\ & (\KEY[0]~input_o\ & (\fir_top|fir_srg|done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Equal2~10_combout\,
	datab => \KEY[0]~input_o\,
	datac => \fir_top|fir_srg|done~q\,
	datad => \fir_top|fir_srg|always0~0_combout\,
	combout => \fir_top|fir_srg|done~0_combout\);

-- Location: FF_X49_Y42_N29
\fir_top|fir_srg|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|done~q\);

-- Location: LCCOMB_X49_Y42_N22
\fir_top|fir_srg|outputs[0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[0][0]~0_combout\ = (!\fir_top|fir_srg|j\(1) & (\fir_top|fir_srg|always0~0_combout\ & (!\fir_top|fir_srg|Equal3~9_combout\ & !\fir_top|fir_srg|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(1),
	datab => \fir_top|fir_srg|always0~0_combout\,
	datac => \fir_top|fir_srg|Equal3~9_combout\,
	datad => \fir_top|fir_srg|Equal3~4_combout\,
	combout => \fir_top|fir_srg|outputs[0][0]~0_combout\);

-- Location: LCCOMB_X52_Y38_N20
\fir_top|signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|signal~0_combout\ = (\fir_top|Add0~6_combout\ & ((\fir_top|Add0~4_combout\) # (\fir_top|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|Add0~4_combout\,
	datac => \fir_top|Add0~2_combout\,
	datad => \fir_top|Add0~6_combout\,
	combout => \fir_top|signal~0_combout\);

-- Location: LCCOMB_X52_Y38_N24
\fir_top|signal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|signal~1_combout\ = (!\fir_top|signal~0_combout\ & (\fir_top|Add0~0_combout\ & !\fir_top|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|signal~0_combout\,
	datac => \fir_top|Add0~0_combout\,
	datad => \fir_top|always0~0_combout\,
	combout => \fir_top|signal~1_combout\);

-- Location: LCCOMB_X52_Y40_N28
\fir_top|x[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|x[0]~0_combout\ = ((\fir_top|always0~0_combout\) # ((!\fir_top|Equal2~10_combout\ & \fir_top|Equal3~1_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|Equal2~10_combout\,
	datab => \fir_top|Equal3~1_combout\,
	datac => \KEY[0]~input_o\,
	datad => \fir_top|always0~0_combout\,
	combout => \fir_top|x[0]~0_combout\);

-- Location: FF_X52_Y38_N25
\fir_top|x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|signal~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \fir_top|x[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|x\(0));

-- Location: LCCOMB_X48_Y41_N0
\fir_top|fir_srg|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~0_combout\ = \fir_top|addr\(0) $ (VCC)
-- \fir_top|fir_srg|Add1~1\ = CARRY(\fir_top|addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(0),
	datad => VCC,
	combout => \fir_top|fir_srg|Add1~0_combout\,
	cout => \fir_top|fir_srg|Add1~1\);

-- Location: LCCOMB_X48_Y41_N2
\fir_top|fir_srg|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~2_combout\ = (\fir_top|addr\(1) & (!\fir_top|fir_srg|Add1~1\)) # (!\fir_top|addr\(1) & ((\fir_top|fir_srg|Add1~1\) # (GND)))
-- \fir_top|fir_srg|Add1~3\ = CARRY((!\fir_top|fir_srg|Add1~1\) # (!\fir_top|addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~1\,
	combout => \fir_top|fir_srg|Add1~2_combout\,
	cout => \fir_top|fir_srg|Add1~3\);

-- Location: LCCOMB_X48_Y41_N4
\fir_top|fir_srg|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~4_combout\ = (\fir_top|addr\(2) & (\fir_top|fir_srg|Add1~3\ $ (GND))) # (!\fir_top|addr\(2) & (!\fir_top|fir_srg|Add1~3\ & VCC))
-- \fir_top|fir_srg|Add1~5\ = CARRY((\fir_top|addr\(2) & !\fir_top|fir_srg|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~3\,
	combout => \fir_top|fir_srg|Add1~4_combout\,
	cout => \fir_top|fir_srg|Add1~5\);

-- Location: LCCOMB_X48_Y41_N6
\fir_top|fir_srg|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~6_combout\ = (\fir_top|addr\(3) & (\fir_top|fir_srg|Add1~5\ & VCC)) # (!\fir_top|addr\(3) & (!\fir_top|fir_srg|Add1~5\))
-- \fir_top|fir_srg|Add1~7\ = CARRY((!\fir_top|addr\(3) & !\fir_top|fir_srg|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(3),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~5\,
	combout => \fir_top|fir_srg|Add1~6_combout\,
	cout => \fir_top|fir_srg|Add1~7\);

-- Location: LCCOMB_X48_Y38_N28
\fir_top|fir_srg|inputs[0][2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[0][2]~20_combout\ = (!\fir_top|fir_srg|Add1~4_combout\ & !\fir_top|fir_srg|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|Add1~4_combout\,
	datad => \fir_top|fir_srg|Add1~6_combout\,
	combout => \fir_top|fir_srg|inputs[0][2]~20_combout\);

-- Location: LCCOMB_X48_Y41_N8
\fir_top|fir_srg|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~8_combout\ = (\fir_top|addr\(4) & (\fir_top|fir_srg|Add1~7\ $ (GND))) # (!\fir_top|addr\(4) & (!\fir_top|fir_srg|Add1~7\ & VCC))
-- \fir_top|fir_srg|Add1~9\ = CARRY((\fir_top|addr\(4) & !\fir_top|fir_srg|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(4),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~7\,
	combout => \fir_top|fir_srg|Add1~8_combout\,
	cout => \fir_top|fir_srg|Add1~9\);

-- Location: LCCOMB_X48_Y41_N10
\fir_top|fir_srg|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~10_combout\ = (\fir_top|addr\(5) & (!\fir_top|fir_srg|Add1~9\)) # (!\fir_top|addr\(5) & ((\fir_top|fir_srg|Add1~9\) # (GND)))
-- \fir_top|fir_srg|Add1~11\ = CARRY((!\fir_top|fir_srg|Add1~9\) # (!\fir_top|addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(5),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~9\,
	combout => \fir_top|fir_srg|Add1~10_combout\,
	cout => \fir_top|fir_srg|Add1~11\);

-- Location: LCCOMB_X48_Y41_N12
\fir_top|fir_srg|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~12_combout\ = (\fir_top|addr\(6) & (\fir_top|fir_srg|Add1~11\ $ (GND))) # (!\fir_top|addr\(6) & (!\fir_top|fir_srg|Add1~11\ & VCC))
-- \fir_top|fir_srg|Add1~13\ = CARRY((\fir_top|addr\(6) & !\fir_top|fir_srg|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(6),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~11\,
	combout => \fir_top|fir_srg|Add1~12_combout\,
	cout => \fir_top|fir_srg|Add1~13\);

-- Location: LCCOMB_X48_Y41_N14
\fir_top|fir_srg|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~14_combout\ = (\fir_top|addr\(7) & (!\fir_top|fir_srg|Add1~13\)) # (!\fir_top|addr\(7) & ((\fir_top|fir_srg|Add1~13\) # (GND)))
-- \fir_top|fir_srg|Add1~15\ = CARRY((!\fir_top|fir_srg|Add1~13\) # (!\fir_top|addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(7),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~13\,
	combout => \fir_top|fir_srg|Add1~14_combout\,
	cout => \fir_top|fir_srg|Add1~15\);

-- Location: LCCOMB_X48_Y41_N16
\fir_top|fir_srg|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~16_combout\ = (\fir_top|addr\(8) & (\fir_top|fir_srg|Add1~15\ $ (GND))) # (!\fir_top|addr\(8) & (!\fir_top|fir_srg|Add1~15\ & VCC))
-- \fir_top|fir_srg|Add1~17\ = CARRY((\fir_top|addr\(8) & !\fir_top|fir_srg|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(8),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~15\,
	combout => \fir_top|fir_srg|Add1~16_combout\,
	cout => \fir_top|fir_srg|Add1~17\);

-- Location: LCCOMB_X48_Y41_N18
\fir_top|fir_srg|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~18_combout\ = (\fir_top|addr\(9) & (!\fir_top|fir_srg|Add1~17\)) # (!\fir_top|addr\(9) & ((\fir_top|fir_srg|Add1~17\) # (GND)))
-- \fir_top|fir_srg|Add1~19\ = CARRY((!\fir_top|fir_srg|Add1~17\) # (!\fir_top|addr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(9),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~17\,
	combout => \fir_top|fir_srg|Add1~18_combout\,
	cout => \fir_top|fir_srg|Add1~19\);

-- Location: LCCOMB_X48_Y41_N20
\fir_top|fir_srg|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~20_combout\ = (\fir_top|addr\(10) & (\fir_top|fir_srg|Add1~19\ $ (GND))) # (!\fir_top|addr\(10) & (!\fir_top|fir_srg|Add1~19\ & VCC))
-- \fir_top|fir_srg|Add1~21\ = CARRY((\fir_top|addr\(10) & !\fir_top|fir_srg|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(10),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~19\,
	combout => \fir_top|fir_srg|Add1~20_combout\,
	cout => \fir_top|fir_srg|Add1~21\);

-- Location: LCCOMB_X48_Y41_N22
\fir_top|fir_srg|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~22_combout\ = (\fir_top|addr\(11) & (!\fir_top|fir_srg|Add1~21\)) # (!\fir_top|addr\(11) & ((\fir_top|fir_srg|Add1~21\) # (GND)))
-- \fir_top|fir_srg|Add1~23\ = CARRY((!\fir_top|fir_srg|Add1~21\) # (!\fir_top|addr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(11),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~21\,
	combout => \fir_top|fir_srg|Add1~22_combout\,
	cout => \fir_top|fir_srg|Add1~23\);

-- Location: LCCOMB_X48_Y41_N24
\fir_top|fir_srg|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~24_combout\ = (\fir_top|addr\(12) & (\fir_top|fir_srg|Add1~23\ $ (GND))) # (!\fir_top|addr\(12) & (!\fir_top|fir_srg|Add1~23\ & VCC))
-- \fir_top|fir_srg|Add1~25\ = CARRY((\fir_top|addr\(12) & !\fir_top|fir_srg|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(12),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~23\,
	combout => \fir_top|fir_srg|Add1~24_combout\,
	cout => \fir_top|fir_srg|Add1~25\);

-- Location: LCCOMB_X48_Y41_N26
\fir_top|fir_srg|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~26_combout\ = (\fir_top|addr\(13) & (!\fir_top|fir_srg|Add1~25\)) # (!\fir_top|addr\(13) & ((\fir_top|fir_srg|Add1~25\) # (GND)))
-- \fir_top|fir_srg|Add1~27\ = CARRY((!\fir_top|fir_srg|Add1~25\) # (!\fir_top|addr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(13),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~25\,
	combout => \fir_top|fir_srg|Add1~26_combout\,
	cout => \fir_top|fir_srg|Add1~27\);

-- Location: LCCOMB_X48_Y41_N28
\fir_top|fir_srg|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~28_combout\ = (\fir_top|addr\(14) & (\fir_top|fir_srg|Add1~27\ $ (GND))) # (!\fir_top|addr\(14) & (!\fir_top|fir_srg|Add1~27\ & VCC))
-- \fir_top|fir_srg|Add1~29\ = CARRY((\fir_top|addr\(14) & !\fir_top|fir_srg|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(14),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~27\,
	combout => \fir_top|fir_srg|Add1~28_combout\,
	cout => \fir_top|fir_srg|Add1~29\);

-- Location: LCCOMB_X48_Y41_N30
\fir_top|fir_srg|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~30_combout\ = (\fir_top|addr\(15) & (!\fir_top|fir_srg|Add1~29\)) # (!\fir_top|addr\(15) & ((\fir_top|fir_srg|Add1~29\) # (GND)))
-- \fir_top|fir_srg|Add1~31\ = CARRY((!\fir_top|fir_srg|Add1~29\) # (!\fir_top|addr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(15),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~29\,
	combout => \fir_top|fir_srg|Add1~30_combout\,
	cout => \fir_top|fir_srg|Add1~31\);

-- Location: LCCOMB_X48_Y40_N0
\fir_top|fir_srg|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~32_combout\ = (\fir_top|addr\(16) & (\fir_top|fir_srg|Add1~31\ $ (GND))) # (!\fir_top|addr\(16) & (!\fir_top|fir_srg|Add1~31\ & VCC))
-- \fir_top|fir_srg|Add1~33\ = CARRY((\fir_top|addr\(16) & !\fir_top|fir_srg|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(16),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~31\,
	combout => \fir_top|fir_srg|Add1~32_combout\,
	cout => \fir_top|fir_srg|Add1~33\);

-- Location: LCCOMB_X48_Y40_N2
\fir_top|fir_srg|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~34_combout\ = (\fir_top|addr\(17) & (!\fir_top|fir_srg|Add1~33\)) # (!\fir_top|addr\(17) & ((\fir_top|fir_srg|Add1~33\) # (GND)))
-- \fir_top|fir_srg|Add1~35\ = CARRY((!\fir_top|fir_srg|Add1~33\) # (!\fir_top|addr\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(17),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~33\,
	combout => \fir_top|fir_srg|Add1~34_combout\,
	cout => \fir_top|fir_srg|Add1~35\);

-- Location: LCCOMB_X48_Y40_N4
\fir_top|fir_srg|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~36_combout\ = (\fir_top|addr\(18) & (\fir_top|fir_srg|Add1~35\ $ (GND))) # (!\fir_top|addr\(18) & (!\fir_top|fir_srg|Add1~35\ & VCC))
-- \fir_top|fir_srg|Add1~37\ = CARRY((\fir_top|addr\(18) & !\fir_top|fir_srg|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(18),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~35\,
	combout => \fir_top|fir_srg|Add1~36_combout\,
	cout => \fir_top|fir_srg|Add1~37\);

-- Location: LCCOMB_X47_Y41_N22
\fir_top|fir_srg|inputs[15][2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~14_combout\ = (!\fir_top|fir_srg|Add1~36_combout\ & (!\fir_top|fir_srg|Add1~34_combout\ & (!\fir_top|fir_srg|Add1~30_combout\ & !\fir_top|fir_srg|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~36_combout\,
	datab => \fir_top|fir_srg|Add1~34_combout\,
	datac => \fir_top|fir_srg|Add1~30_combout\,
	datad => \fir_top|fir_srg|Add1~32_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~14_combout\);

-- Location: LCCOMB_X47_Y41_N0
\fir_top|fir_srg|inputs[15][2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~13_combout\ = (!\fir_top|fir_srg|Add1~26_combout\ & (!\fir_top|fir_srg|Add1~28_combout\ & (!\fir_top|fir_srg|Add1~24_combout\ & !\fir_top|fir_srg|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~26_combout\,
	datab => \fir_top|fir_srg|Add1~28_combout\,
	datac => \fir_top|fir_srg|Add1~24_combout\,
	datad => \fir_top|fir_srg|Add1~22_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~13_combout\);

-- Location: LCCOMB_X47_Y41_N4
\fir_top|fir_srg|inputs[15][2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~11_combout\ = (!\fir_top|operation\(1) & (!\fir_top|fir_srg|Add1~12_combout\ & (!\fir_top|fir_srg|Add1~10_combout\ & \fir_top|operation\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|operation\(1),
	datab => \fir_top|fir_srg|Add1~12_combout\,
	datac => \fir_top|fir_srg|Add1~10_combout\,
	datad => \fir_top|operation\(0),
	combout => \fir_top|fir_srg|inputs[15][2]~11_combout\);

-- Location: LCCOMB_X47_Y41_N18
\fir_top|fir_srg|inputs[15][2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~12_combout\ = (!\fir_top|fir_srg|Add1~20_combout\ & (!\fir_top|fir_srg|Add1~18_combout\ & (!\fir_top|fir_srg|Add1~14_combout\ & !\fir_top|fir_srg|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~20_combout\,
	datab => \fir_top|fir_srg|Add1~18_combout\,
	datac => \fir_top|fir_srg|Add1~14_combout\,
	datad => \fir_top|fir_srg|Add1~16_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~12_combout\);

-- Location: LCCOMB_X47_Y41_N16
\fir_top|fir_srg|inputs[15][2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~15_combout\ = (\fir_top|fir_srg|inputs[15][2]~14_combout\ & (\fir_top|fir_srg|inputs[15][2]~13_combout\ & (\fir_top|fir_srg|inputs[15][2]~11_combout\ & \fir_top|fir_srg|inputs[15][2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[15][2]~14_combout\,
	datab => \fir_top|fir_srg|inputs[15][2]~13_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~11_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~12_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~15_combout\);

-- Location: LCCOMB_X48_Y40_N6
\fir_top|fir_srg|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~38_combout\ = (\fir_top|addr\(19) & (!\fir_top|fir_srg|Add1~37\)) # (!\fir_top|addr\(19) & ((\fir_top|fir_srg|Add1~37\) # (GND)))
-- \fir_top|fir_srg|Add1~39\ = CARRY((!\fir_top|fir_srg|Add1~37\) # (!\fir_top|addr\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(19),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~37\,
	combout => \fir_top|fir_srg|Add1~38_combout\,
	cout => \fir_top|fir_srg|Add1~39\);

-- Location: LCCOMB_X48_Y40_N8
\fir_top|fir_srg|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~40_combout\ = (\fir_top|addr\(20) & (\fir_top|fir_srg|Add1~39\ $ (GND))) # (!\fir_top|addr\(20) & (!\fir_top|fir_srg|Add1~39\ & VCC))
-- \fir_top|fir_srg|Add1~41\ = CARRY((\fir_top|addr\(20) & !\fir_top|fir_srg|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(20),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~39\,
	combout => \fir_top|fir_srg|Add1~40_combout\,
	cout => \fir_top|fir_srg|Add1~41\);

-- Location: LCCOMB_X48_Y40_N10
\fir_top|fir_srg|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~42_combout\ = (\fir_top|addr\(21) & (!\fir_top|fir_srg|Add1~41\)) # (!\fir_top|addr\(21) & ((\fir_top|fir_srg|Add1~41\) # (GND)))
-- \fir_top|fir_srg|Add1~43\ = CARRY((!\fir_top|fir_srg|Add1~41\) # (!\fir_top|addr\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(21),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~41\,
	combout => \fir_top|fir_srg|Add1~42_combout\,
	cout => \fir_top|fir_srg|Add1~43\);

-- Location: LCCOMB_X48_Y40_N12
\fir_top|fir_srg|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~44_combout\ = (\fir_top|addr\(22) & (\fir_top|fir_srg|Add1~43\ $ (GND))) # (!\fir_top|addr\(22) & (!\fir_top|fir_srg|Add1~43\ & VCC))
-- \fir_top|fir_srg|Add1~45\ = CARRY((\fir_top|addr\(22) & !\fir_top|fir_srg|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(22),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~43\,
	combout => \fir_top|fir_srg|Add1~44_combout\,
	cout => \fir_top|fir_srg|Add1~45\);

-- Location: LCCOMB_X48_Y40_N14
\fir_top|fir_srg|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~46_combout\ = (\fir_top|addr\(23) & (!\fir_top|fir_srg|Add1~45\)) # (!\fir_top|addr\(23) & ((\fir_top|fir_srg|Add1~45\) # (GND)))
-- \fir_top|fir_srg|Add1~47\ = CARRY((!\fir_top|fir_srg|Add1~45\) # (!\fir_top|addr\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(23),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~45\,
	combout => \fir_top|fir_srg|Add1~46_combout\,
	cout => \fir_top|fir_srg|Add1~47\);

-- Location: LCCOMB_X48_Y40_N16
\fir_top|fir_srg|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~48_combout\ = (\fir_top|addr\(24) & (\fir_top|fir_srg|Add1~47\ $ (GND))) # (!\fir_top|addr\(24) & (!\fir_top|fir_srg|Add1~47\ & VCC))
-- \fir_top|fir_srg|Add1~49\ = CARRY((\fir_top|addr\(24) & !\fir_top|fir_srg|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(24),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~47\,
	combout => \fir_top|fir_srg|Add1~48_combout\,
	cout => \fir_top|fir_srg|Add1~49\);

-- Location: LCCOMB_X48_Y40_N18
\fir_top|fir_srg|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~50_combout\ = (\fir_top|addr\(25) & (!\fir_top|fir_srg|Add1~49\)) # (!\fir_top|addr\(25) & ((\fir_top|fir_srg|Add1~49\) # (GND)))
-- \fir_top|fir_srg|Add1~51\ = CARRY((!\fir_top|fir_srg|Add1~49\) # (!\fir_top|addr\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(25),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~49\,
	combout => \fir_top|fir_srg|Add1~50_combout\,
	cout => \fir_top|fir_srg|Add1~51\);

-- Location: LCCOMB_X48_Y40_N20
\fir_top|fir_srg|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~52_combout\ = (\fir_top|addr\(26) & (\fir_top|fir_srg|Add1~51\ $ (GND))) # (!\fir_top|addr\(26) & (!\fir_top|fir_srg|Add1~51\ & VCC))
-- \fir_top|fir_srg|Add1~53\ = CARRY((\fir_top|addr\(26) & !\fir_top|fir_srg|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(26),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~51\,
	combout => \fir_top|fir_srg|Add1~52_combout\,
	cout => \fir_top|fir_srg|Add1~53\);

-- Location: LCCOMB_X48_Y40_N22
\fir_top|fir_srg|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~54_combout\ = (\fir_top|addr\(27) & (!\fir_top|fir_srg|Add1~53\)) # (!\fir_top|addr\(27) & ((\fir_top|fir_srg|Add1~53\) # (GND)))
-- \fir_top|fir_srg|Add1~55\ = CARRY((!\fir_top|fir_srg|Add1~53\) # (!\fir_top|addr\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(27),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~53\,
	combout => \fir_top|fir_srg|Add1~54_combout\,
	cout => \fir_top|fir_srg|Add1~55\);

-- Location: LCCOMB_X48_Y40_N24
\fir_top|fir_srg|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~56_combout\ = (\fir_top|addr\(28) & (\fir_top|fir_srg|Add1~55\ $ (GND))) # (!\fir_top|addr\(28) & (!\fir_top|fir_srg|Add1~55\ & VCC))
-- \fir_top|fir_srg|Add1~57\ = CARRY((\fir_top|addr\(28) & !\fir_top|fir_srg|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|addr\(28),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~55\,
	combout => \fir_top|fir_srg|Add1~56_combout\,
	cout => \fir_top|fir_srg|Add1~57\);

-- Location: LCCOMB_X48_Y40_N26
\fir_top|fir_srg|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~58_combout\ = (\fir_top|addr\(29) & (!\fir_top|fir_srg|Add1~57\)) # (!\fir_top|addr\(29) & ((\fir_top|fir_srg|Add1~57\) # (GND)))
-- \fir_top|fir_srg|Add1~59\ = CARRY((!\fir_top|fir_srg|Add1~57\) # (!\fir_top|addr\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(29),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~57\,
	combout => \fir_top|fir_srg|Add1~58_combout\,
	cout => \fir_top|fir_srg|Add1~59\);

-- Location: LCCOMB_X48_Y40_N28
\fir_top|fir_srg|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~60_combout\ = (\fir_top|addr\(30) & (\fir_top|fir_srg|Add1~59\ $ (GND))) # (!\fir_top|addr\(30) & (!\fir_top|fir_srg|Add1~59\ & VCC))
-- \fir_top|fir_srg|Add1~61\ = CARRY((\fir_top|addr\(30) & !\fir_top|fir_srg|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(30),
	datad => VCC,
	cin => \fir_top|fir_srg|Add1~59\,
	combout => \fir_top|fir_srg|Add1~60_combout\,
	cout => \fir_top|fir_srg|Add1~61\);

-- Location: LCCOMB_X48_Y40_N30
\fir_top|fir_srg|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add1~62_combout\ = \fir_top|fir_srg|Add1~61\ $ (\fir_top|addr\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fir_top|addr\(31),
	cin => \fir_top|fir_srg|Add1~61\,
	combout => \fir_top|fir_srg|Add1~62_combout\);

-- Location: LCCOMB_X47_Y40_N12
\fir_top|fir_srg|inputs[15][2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~16_combout\ = (!\fir_top|fir_srg|Add1~42_combout\ & (!\fir_top|fir_srg|Add1~44_combout\ & (!\fir_top|fir_srg|Add1~40_combout\ & !\fir_top|fir_srg|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~42_combout\,
	datab => \fir_top|fir_srg|Add1~44_combout\,
	datac => \fir_top|fir_srg|Add1~40_combout\,
	datad => \fir_top|fir_srg|Add1~38_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~16_combout\);

-- Location: LCCOMB_X47_Y40_N2
\fir_top|fir_srg|inputs[15][2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~17_combout\ = (\fir_top|fir_srg|inputs[15][2]~16_combout\ & (!\fir_top|fir_srg|Add1~50_combout\ & (!\fir_top|fir_srg|Add1~46_combout\ & !\fir_top|fir_srg|Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[15][2]~16_combout\,
	datab => \fir_top|fir_srg|Add1~50_combout\,
	datac => \fir_top|fir_srg|Add1~46_combout\,
	datad => \fir_top|fir_srg|Add1~48_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~17_combout\);

-- Location: LCCOMB_X47_Y40_N8
\fir_top|fir_srg|inputs[15][2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~18_combout\ = (!\fir_top|fir_srg|Add1~56_combout\ & (\fir_top|fir_srg|inputs[15][2]~17_combout\ & (!\fir_top|fir_srg|Add1~52_combout\ & !\fir_top|fir_srg|Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~56_combout\,
	datab => \fir_top|fir_srg|inputs[15][2]~17_combout\,
	datac => \fir_top|fir_srg|Add1~52_combout\,
	datad => \fir_top|fir_srg|Add1~54_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~18_combout\);

-- Location: LCCOMB_X47_Y40_N26
\fir_top|fir_srg|inputs[15][2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~19_combout\ = (!\fir_top|fir_srg|Add1~62_combout\ & (!\fir_top|fir_srg|Add1~60_combout\ & (\fir_top|fir_srg|inputs[15][2]~18_combout\ & !\fir_top|fir_srg|Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~62_combout\,
	datab => \fir_top|fir_srg|Add1~60_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~18_combout\,
	datad => \fir_top|fir_srg|Add1~58_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~19_combout\);

-- Location: LCCOMB_X47_Y41_N6
\fir_top|fir_srg|inputs[18][3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[18][3]~21_combout\ = (\fir_top|fir_srg|inputs[0][2]~20_combout\ & (\fir_top|fir_srg|inputs[15][2]~15_combout\ & (\fir_top|fir_srg|Add1~8_combout\ & \fir_top|fir_srg|inputs[15][2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datab => \fir_top|fir_srg|inputs[15][2]~15_combout\,
	datac => \fir_top|fir_srg|Add1~8_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~19_combout\,
	combout => \fir_top|fir_srg|inputs[18][3]~21_combout\);

-- Location: LCCOMB_X45_Y39_N26
\fir_top|fir_srg|inputs~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~22_combout\ = (\fir_top|x\(0) & (!\fir_top|fir_srg|Add1~0_combout\ & (!\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|Add1~0_combout\,
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~22_combout\);

-- Location: LCCOMB_X45_Y39_N0
\fir_top|fir_srg|inputs[16][2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[16][2]~23_combout\ = ((!\fir_top|fir_srg|Add1~0_combout\ & (!\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|fir_srg|Add1~0_combout\,
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs[16][2]~23_combout\);

-- Location: FF_X45_Y39_N27
\fir_top|fir_srg|inputs[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~22_combout\,
	ena => \fir_top|fir_srg|inputs[16][2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[16][0]~q\);

-- Location: LCCOMB_X45_Y39_N16
\fir_top|fir_srg|inputs~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~118_combout\ = (\fir_top|x\(0) & (\fir_top|fir_srg|Add1~0_combout\ & (!\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|Add1~0_combout\,
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~118_combout\);

-- Location: LCCOMB_X45_Y39_N4
\fir_top|fir_srg|inputs[17][3]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[17][3]~119_combout\ = ((\fir_top|fir_srg|Add1~0_combout\ & (!\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|fir_srg|Add1~0_combout\,
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs[17][3]~119_combout\);

-- Location: FF_X45_Y39_N17
\fir_top|fir_srg|inputs[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~118_combout\,
	ena => \fir_top|fir_srg|inputs[17][3]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[17][0]~q\);

-- Location: LCCOMB_X48_Y39_N6
\fir_top|fir_srg|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add3~0_combout\ = (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|i\(0) $ (VCC))) # (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|i\(0) & VCC))
-- \fir_top|fir_srg|Add3~1\ = CARRY((\fir_top|fir_srg|j\(0) & \fir_top|fir_srg|i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(0),
	datab => \fir_top|fir_srg|i\(0),
	datad => VCC,
	combout => \fir_top|fir_srg|Add3~0_combout\,
	cout => \fir_top|fir_srg|Add3~1\);

-- Location: LCCOMB_X48_Y39_N8
\fir_top|fir_srg|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add3~2_combout\ = (\fir_top|fir_srg|i\(1) & ((\fir_top|fir_srg|j\(1) & (\fir_top|fir_srg|Add3~1\ & VCC)) # (!\fir_top|fir_srg|j\(1) & (!\fir_top|fir_srg|Add3~1\)))) # (!\fir_top|fir_srg|i\(1) & ((\fir_top|fir_srg|j\(1) & 
-- (!\fir_top|fir_srg|Add3~1\)) # (!\fir_top|fir_srg|j\(1) & ((\fir_top|fir_srg|Add3~1\) # (GND)))))
-- \fir_top|fir_srg|Add3~3\ = CARRY((\fir_top|fir_srg|i\(1) & (!\fir_top|fir_srg|j\(1) & !\fir_top|fir_srg|Add3~1\)) # (!\fir_top|fir_srg|i\(1) & ((!\fir_top|fir_srg|Add3~1\) # (!\fir_top|fir_srg|j\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(1),
	datab => \fir_top|fir_srg|j\(1),
	datad => VCC,
	cin => \fir_top|fir_srg|Add3~1\,
	combout => \fir_top|fir_srg|Add3~2_combout\,
	cout => \fir_top|fir_srg|Add3~3\);

-- Location: LCCOMB_X48_Y39_N10
\fir_top|fir_srg|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add3~4_combout\ = ((\fir_top|fir_srg|i\(2) $ (\fir_top|fir_srg|j\(2) $ (!\fir_top|fir_srg|Add3~3\)))) # (GND)
-- \fir_top|fir_srg|Add3~5\ = CARRY((\fir_top|fir_srg|i\(2) & ((\fir_top|fir_srg|j\(2)) # (!\fir_top|fir_srg|Add3~3\))) # (!\fir_top|fir_srg|i\(2) & (\fir_top|fir_srg|j\(2) & !\fir_top|fir_srg|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(2),
	datab => \fir_top|fir_srg|j\(2),
	datad => VCC,
	cin => \fir_top|fir_srg|Add3~3\,
	combout => \fir_top|fir_srg|Add3~4_combout\,
	cout => \fir_top|fir_srg|Add3~5\);

-- Location: LCCOMB_X48_Y39_N12
\fir_top|fir_srg|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add3~6_combout\ = (\fir_top|fir_srg|j\(3) & ((\fir_top|fir_srg|i\(3) & (\fir_top|fir_srg|Add3~5\ & VCC)) # (!\fir_top|fir_srg|i\(3) & (!\fir_top|fir_srg|Add3~5\)))) # (!\fir_top|fir_srg|j\(3) & ((\fir_top|fir_srg|i\(3) & 
-- (!\fir_top|fir_srg|Add3~5\)) # (!\fir_top|fir_srg|i\(3) & ((\fir_top|fir_srg|Add3~5\) # (GND)))))
-- \fir_top|fir_srg|Add3~7\ = CARRY((\fir_top|fir_srg|j\(3) & (!\fir_top|fir_srg|i\(3) & !\fir_top|fir_srg|Add3~5\)) # (!\fir_top|fir_srg|j\(3) & ((!\fir_top|fir_srg|Add3~5\) # (!\fir_top|fir_srg|i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(3),
	datab => \fir_top|fir_srg|i\(3),
	datad => VCC,
	cin => \fir_top|fir_srg|Add3~5\,
	combout => \fir_top|fir_srg|Add3~6_combout\,
	cout => \fir_top|fir_srg|Add3~7\);

-- Location: LCCOMB_X48_Y39_N14
\fir_top|fir_srg|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Add3~8_combout\ = \fir_top|fir_srg|i\(4) $ (\fir_top|fir_srg|Add3~7\ $ (!\fir_top|fir_srg|j\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|i\(4),
	datad => \fir_top|fir_srg|j\(4),
	cin => \fir_top|fir_srg|Add3~7\,
	combout => \fir_top|fir_srg|Add3~8_combout\);

-- Location: LCCOMB_X48_Y39_N26
\fir_top|fir_srg|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~0_combout\ = (\fir_top|fir_srg|Add3~6_combout\) # ((\fir_top|fir_srg|Add3~4_combout\) # ((\fir_top|fir_srg|Add3~2_combout\) # (!\fir_top|fir_srg|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~6_combout\,
	datab => \fir_top|fir_srg|Add3~4_combout\,
	datac => \fir_top|fir_srg|Add3~8_combout\,
	datad => \fir_top|fir_srg|Add3~2_combout\,
	combout => \fir_top|fir_srg|Mux29~0_combout\);

-- Location: LCCOMB_X47_Y39_N12
\fir_top|fir_srg|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~1_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & !\fir_top|fir_srg|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|Add3~2_combout\,
	datad => \fir_top|fir_srg|Add3~0_combout\,
	combout => \fir_top|fir_srg|Mux29~1_combout\);

-- Location: LCCOMB_X47_Y39_N14
\fir_top|fir_srg|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~2_combout\ = ((!\fir_top|fir_srg|Add3~4_combout\ & (!\fir_top|fir_srg|Add3~6_combout\ & \fir_top|fir_srg|Mux29~1_combout\))) # (!\fir_top|fir_srg|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~4_combout\,
	datab => \fir_top|fir_srg|Add3~6_combout\,
	datac => \fir_top|fir_srg|Add3~8_combout\,
	datad => \fir_top|fir_srg|Mux29~1_combout\,
	combout => \fir_top|fir_srg|Mux29~2_combout\);

-- Location: LCCOMB_X47_Y41_N12
\fir_top|fir_srg|inputs~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~24_combout\ = (!\fir_top|fir_srg|Add1~0_combout\ & (\fir_top|x\(0) & (\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~0_combout\,
	datab => \fir_top|x\(0),
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~24_combout\);

-- Location: LCCOMB_X47_Y41_N20
\fir_top|fir_srg|inputs[18][3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[18][3]~25_combout\ = ((\fir_top|fir_srg|Add1~2_combout\ & (!\fir_top|fir_srg|Add1~0_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|Add1~0_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs[18][3]~25_combout\);

-- Location: FF_X47_Y41_N13
\fir_top|fir_srg|inputs[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~24_combout\,
	ena => \fir_top|fir_srg|inputs[18][3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[18][0]~q\);

-- Location: LCCOMB_X48_Y39_N20
\fir_top|fir_srg|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~3_combout\ = (\fir_top|fir_srg|Add3~0_combout\) # (\fir_top|fir_srg|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~0_combout\,
	datad => \fir_top|fir_srg|Add3~2_combout\,
	combout => \fir_top|fir_srg|Mux29~3_combout\);

-- Location: LCCOMB_X48_Y39_N22
\fir_top|fir_srg|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~4_combout\ = (\fir_top|fir_srg|Add3~8_combout\ & ((\fir_top|fir_srg|Add3~6_combout\) # ((\fir_top|fir_srg|Add3~4_combout\) # (\fir_top|fir_srg|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~6_combout\,
	datab => \fir_top|fir_srg|Add3~4_combout\,
	datac => \fir_top|fir_srg|Add3~8_combout\,
	datad => \fir_top|fir_srg|Mux29~3_combout\,
	combout => \fir_top|fir_srg|Mux29~4_combout\);

-- Location: LCCOMB_X47_Y40_N16
\fir_top|fir_srg|inputs[6][1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[6][1]~26_combout\ = (!\fir_top|fir_srg|Add1~0_combout\ & (!\fir_top|fir_srg|Add1~8_combout\ & (\fir_top|fir_srg|inputs[15][2]~19_combout\ & \fir_top|fir_srg|inputs[15][2]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~0_combout\,
	datab => \fir_top|fir_srg|Add1~8_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~19_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~15_combout\,
	combout => \fir_top|fir_srg|inputs[6][1]~26_combout\);

-- Location: LCCOMB_X46_Y40_N28
\fir_top|fir_srg|inputs~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~50_combout\ = (\fir_top|x\(0) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & !\fir_top|fir_srg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datac => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs~50_combout\);

-- Location: LCCOMB_X46_Y40_N0
\fir_top|fir_srg|inputs[0][2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[0][2]~51_combout\ = ((\fir_top|fir_srg|inputs[6][1]~26_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & !\fir_top|fir_srg|Add1~2_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datac => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs[0][2]~51_combout\);

-- Location: FF_X46_Y40_N29
\fir_top|fir_srg|inputs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~50_combout\,
	ena => \fir_top|fir_srg|inputs[0][2]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[0][0]~q\);

-- Location: LCCOMB_X48_Y38_N26
\fir_top|fir_srg|inputs[6][1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[6][1]~38_combout\ = (\fir_top|fir_srg|Add1~4_combout\ & !\fir_top|fir_srg|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|Add1~4_combout\,
	datad => \fir_top|fir_srg|Add1~6_combout\,
	combout => \fir_top|fir_srg|inputs[6][1]~38_combout\);

-- Location: LCCOMB_X47_Y40_N4
\fir_top|fir_srg|inputs~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~48_combout\ = (\fir_top|x\(0) & (!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|fir_srg|inputs[6][1]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	combout => \fir_top|fir_srg|inputs~48_combout\);

-- Location: LCCOMB_X47_Y40_N0
\fir_top|fir_srg|inputs[4][0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[4][0]~49_combout\ = ((!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|fir_srg|inputs[6][1]~26_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	combout => \fir_top|fir_srg|inputs[4][0]~49_combout\);

-- Location: FF_X47_Y40_N5
\fir_top|fir_srg|inputs[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~48_combout\,
	ena => \fir_top|fir_srg|inputs[4][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[4][0]~q\);

-- Location: LCCOMB_X47_Y40_N18
\fir_top|fir_srg|inputs~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~52_combout\ = (\fir_top|x\(0) & (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|fir_srg|inputs[6][1]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	combout => \fir_top|fir_srg|inputs~52_combout\);

-- Location: LCCOMB_X47_Y40_N14
\fir_top|fir_srg|inputs[6][1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[6][1]~53_combout\ = ((\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|fir_srg|inputs[6][1]~26_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	combout => \fir_top|fir_srg|inputs[6][1]~53_combout\);

-- Location: FF_X47_Y40_N19
\fir_top|fir_srg|inputs[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~52_combout\,
	ena => \fir_top|fir_srg|inputs[6][1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[6][0]~q\);

-- Location: LCCOMB_X46_Y40_N26
\fir_top|fir_srg|inputs~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~54_combout\ = (\fir_top|x\(0) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & \fir_top|fir_srg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datac => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs~54_combout\);

-- Location: LCCOMB_X46_Y40_N14
\fir_top|fir_srg|inputs[2][0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[2][0]~55_combout\ = ((\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & \fir_top|fir_srg|inputs[6][1]~26_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	combout => \fir_top|fir_srg|inputs[2][0]~55_combout\);

-- Location: FF_X46_Y40_N27
\fir_top|fir_srg|inputs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~54_combout\,
	ena => \fir_top|fir_srg|inputs[2][0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[2][0]~q\);

-- Location: LCCOMB_X48_Y39_N18
\fir_top|fir_srg|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~4_combout\ = (\fir_top|fir_srg|Add3~4_combout\ & ((\fir_top|fir_srg|inputs[6][0]~q\) # ((!\fir_top|fir_srg|Add3~2_combout\)))) # (!\fir_top|fir_srg|Add3~4_combout\ & (((\fir_top|fir_srg|inputs[2][0]~q\ & 
-- \fir_top|fir_srg|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[6][0]~q\,
	datab => \fir_top|fir_srg|inputs[2][0]~q\,
	datac => \fir_top|fir_srg|Add3~4_combout\,
	datad => \fir_top|fir_srg|Add3~2_combout\,
	combout => \fir_top|fir_srg|Mux31~4_combout\);

-- Location: LCCOMB_X48_Y39_N4
\fir_top|fir_srg|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~5_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Mux31~4_combout\)))) # (!\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Mux31~4_combout\ & ((\fir_top|fir_srg|inputs[4][0]~q\))) # 
-- (!\fir_top|fir_srg|Mux31~4_combout\ & (\fir_top|fir_srg|inputs[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~2_combout\,
	datab => \fir_top|fir_srg|inputs[0][0]~q\,
	datac => \fir_top|fir_srg|inputs[4][0]~q\,
	datad => \fir_top|fir_srg|Mux31~4_combout\,
	combout => \fir_top|fir_srg|Mux31~5_combout\);

-- Location: LCCOMB_X47_Y38_N8
\fir_top|fir_srg|inputs[17][3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[17][3]~10_combout\ = (\fir_top|fir_srg|Add1~0_combout\ & !\fir_top|fir_srg|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|Add1~0_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs[17][3]~10_combout\);

-- Location: LCCOMB_X47_Y40_N22
\fir_top|fir_srg|inputs[15][2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~37_combout\ = (!\fir_top|fir_srg|Add1~8_combout\ & (\fir_top|fir_srg|inputs[15][2]~19_combout\ & \fir_top|fir_srg|inputs[15][2]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|Add1~8_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~19_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~15_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~37_combout\);

-- Location: LCCOMB_X47_Y38_N16
\fir_top|fir_srg|inputs~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~41_combout\ = (\fir_top|x\(0) & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datac => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~41_combout\);

-- Location: LCCOMB_X47_Y38_N10
\fir_top|fir_srg|inputs[1][0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[1][0]~42_combout\ = ((\fir_top|fir_srg|inputs[0][2]~20_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datab => \KEY[0]~input_o\,
	datac => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs[1][0]~42_combout\);

-- Location: FF_X47_Y38_N17
\fir_top|fir_srg|inputs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~41_combout\,
	ena => \fir_top|fir_srg|inputs[1][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[1][0]~q\);

-- Location: LCCOMB_X46_Y38_N20
\fir_top|fir_srg|inputs~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~39_combout\ = (\fir_top|fir_srg|inputs[6][1]~38_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & (\fir_top|x\(0) & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datab => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datac => \fir_top|x\(0),
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~39_combout\);

-- Location: LCCOMB_X46_Y38_N8
\fir_top|fir_srg|inputs[5][3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[5][3]~40_combout\ = ((\fir_top|fir_srg|inputs[17][3]~10_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs[5][3]~40_combout\);

-- Location: FF_X46_Y38_N21
\fir_top|fir_srg|inputs[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~39_combout\,
	ena => \fir_top|fir_srg|inputs[5][3]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[5][0]~q\);

-- Location: LCCOMB_X45_Y39_N30
\fir_top|fir_srg|inputs[15][2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~43_combout\ = (\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|Add1~0_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~43_combout\);

-- Location: LCCOMB_X48_Y38_N18
\fir_top|fir_srg|inputs~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~44_combout\ = (\fir_top|fir_srg|inputs[6][1]~38_combout\ & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & (\fir_top|fir_srg|inputs[15][2]~37_combout\ & \fir_top|x\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datab => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datad => \fir_top|x\(0),
	combout => \fir_top|fir_srg|inputs~44_combout\);

-- Location: LCCOMB_X48_Y38_N4
\fir_top|fir_srg|inputs[7][1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[7][1]~45_combout\ = ((\fir_top|fir_srg|inputs[6][1]~38_combout\ & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datab => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datad => \KEY[0]~input_o\,
	combout => \fir_top|fir_srg|inputs[7][1]~45_combout\);

-- Location: FF_X48_Y38_N19
\fir_top|fir_srg|inputs[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~44_combout\,
	ena => \fir_top|fir_srg|inputs[7][1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[7][0]~q\);

-- Location: LCCOMB_X48_Y38_N8
\fir_top|fir_srg|inputs~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~46_combout\ = (\fir_top|x\(0) & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & (\fir_top|fir_srg|inputs[15][2]~37_combout\ & \fir_top|fir_srg|inputs[0][2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datad => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	combout => \fir_top|fir_srg|inputs~46_combout\);

-- Location: LCCOMB_X48_Y38_N6
\fir_top|fir_srg|inputs[3][1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[3][1]~47_combout\ = ((\fir_top|fir_srg|inputs[15][2]~37_combout\ & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & \fir_top|fir_srg|inputs[0][2]~20_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datab => \KEY[0]~input_o\,
	datac => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datad => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	combout => \fir_top|fir_srg|inputs[3][1]~47_combout\);

-- Location: FF_X48_Y38_N9
\fir_top|fir_srg|inputs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~46_combout\,
	ena => \fir_top|fir_srg|inputs[3][1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[3][0]~q\);

-- Location: LCCOMB_X48_Y39_N0
\fir_top|fir_srg|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~2_combout\ = (\fir_top|fir_srg|Add3~4_combout\ & ((\fir_top|fir_srg|inputs[7][0]~q\) # ((!\fir_top|fir_srg|Add3~2_combout\)))) # (!\fir_top|fir_srg|Add3~4_combout\ & (((\fir_top|fir_srg|inputs[3][0]~q\ & 
-- \fir_top|fir_srg|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[7][0]~q\,
	datab => \fir_top|fir_srg|inputs[3][0]~q\,
	datac => \fir_top|fir_srg|Add3~4_combout\,
	datad => \fir_top|fir_srg|Add3~2_combout\,
	combout => \fir_top|fir_srg|Mux31~2_combout\);

-- Location: LCCOMB_X48_Y39_N28
\fir_top|fir_srg|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~3_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Mux31~2_combout\)))) # (!\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Mux31~2_combout\ & ((\fir_top|fir_srg|inputs[5][0]~q\))) # 
-- (!\fir_top|fir_srg|Mux31~2_combout\ & (\fir_top|fir_srg|inputs[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~2_combout\,
	datab => \fir_top|fir_srg|inputs[1][0]~q\,
	datac => \fir_top|fir_srg|inputs[5][0]~q\,
	datad => \fir_top|fir_srg|Mux31~2_combout\,
	combout => \fir_top|fir_srg|Mux31~3_combout\);

-- Location: LCCOMB_X48_Y39_N2
\fir_top|fir_srg|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~6_combout\ = (\fir_top|fir_srg|Add3~6_combout\ & (\fir_top|fir_srg|Add3~0_combout\)) # (!\fir_top|fir_srg|Add3~6_combout\ & ((\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|Mux31~3_combout\))) # 
-- (!\fir_top|fir_srg|Add3~0_combout\ & (\fir_top|fir_srg|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~6_combout\,
	datab => \fir_top|fir_srg|Add3~0_combout\,
	datac => \fir_top|fir_srg|Mux31~5_combout\,
	datad => \fir_top|fir_srg|Mux31~3_combout\,
	combout => \fir_top|fir_srg|Mux31~6_combout\);

-- Location: LCCOMB_X48_Y38_N24
\fir_top|fir_srg|inputs[15][2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~30_combout\ = (\fir_top|fir_srg|Add1~4_combout\ & \fir_top|fir_srg|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|Add1~4_combout\,
	datad => \fir_top|fir_srg|Add1~6_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~30_combout\);

-- Location: LCCOMB_X54_Y39_N6
\fir_top|fir_srg|inputs~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~35_combout\ = (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|x\(0) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[15][2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \fir_top|x\(0),
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	combout => \fir_top|fir_srg|inputs~35_combout\);

-- Location: LCCOMB_X54_Y39_N0
\fir_top|fir_srg|inputs[14][0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[14][0]~36_combout\ = ((\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[15][2]~30_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \KEY[0]~input_o\,
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	combout => \fir_top|fir_srg|inputs[14][0]~36_combout\);

-- Location: FF_X54_Y39_N7
\fir_top|fir_srg|inputs[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~35_combout\,
	ena => \fir_top|fir_srg|inputs[14][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[14][0]~q\);

-- Location: LCCOMB_X48_Y38_N14
\fir_top|fir_srg|inputs[9][0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[9][0]~27_combout\ = (!\fir_top|fir_srg|Add1~4_combout\ & \fir_top|fir_srg|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|Add1~4_combout\,
	datad => \fir_top|fir_srg|Add1~6_combout\,
	combout => \fir_top|fir_srg|inputs[9][0]~27_combout\);

-- Location: LCCOMB_X50_Y39_N16
\fir_top|fir_srg|inputs~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~28_combout\ = (\fir_top|x\(0) & (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[9][0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	combout => \fir_top|fir_srg|inputs~28_combout\);

-- Location: LCCOMB_X50_Y39_N8
\fir_top|fir_srg|inputs[10][2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[10][2]~29_combout\ = ((\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[9][0]~27_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \KEY[0]~input_o\,
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	combout => \fir_top|fir_srg|inputs[10][2]~29_combout\);

-- Location: FF_X50_Y39_N17
\fir_top|fir_srg|inputs[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~28_combout\,
	ena => \fir_top|fir_srg|inputs[10][2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[10][0]~q\);

-- Location: LCCOMB_X50_Y39_N6
\fir_top|fir_srg|inputs~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~33_combout\ = (\fir_top|x\(0) & (!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[9][0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	combout => \fir_top|fir_srg|inputs~33_combout\);

-- Location: LCCOMB_X50_Y39_N22
\fir_top|fir_srg|inputs[8][2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[8][2]~34_combout\ = ((!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[9][0]~27_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \KEY[0]~input_o\,
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	combout => \fir_top|fir_srg|inputs[8][2]~34_combout\);

-- Location: FF_X50_Y39_N7
\fir_top|fir_srg|inputs[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~33_combout\,
	ena => \fir_top|fir_srg|inputs[8][2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[8][0]~q\);

-- Location: LCCOMB_X54_Y39_N12
\fir_top|fir_srg|inputs~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~31_combout\ = (!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|x\(0) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[15][2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \fir_top|x\(0),
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	combout => \fir_top|fir_srg|inputs~31_combout\);

-- Location: LCCOMB_X54_Y39_N22
\fir_top|fir_srg|inputs[12][0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[12][0]~32_combout\ = ((!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[15][2]~30_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \KEY[0]~input_o\,
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	combout => \fir_top|fir_srg|inputs[12][0]~32_combout\);

-- Location: FF_X54_Y39_N13
\fir_top|fir_srg|inputs[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~31_combout\,
	ena => \fir_top|fir_srg|inputs[12][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[12][0]~q\);

-- Location: LCCOMB_X50_Y39_N0
\fir_top|fir_srg|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~0_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Add3~4_combout\)))) # (!\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Add3~4_combout\ & ((\fir_top|fir_srg|inputs[12][0]~q\))) # 
-- (!\fir_top|fir_srg|Add3~4_combout\ & (\fir_top|fir_srg|inputs[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[8][0]~q\,
	datab => \fir_top|fir_srg|inputs[12][0]~q\,
	datac => \fir_top|fir_srg|Add3~2_combout\,
	datad => \fir_top|fir_srg|Add3~4_combout\,
	combout => \fir_top|fir_srg|Mux31~0_combout\);

-- Location: LCCOMB_X50_Y39_N26
\fir_top|fir_srg|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~1_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Mux31~0_combout\ & (\fir_top|fir_srg|inputs[14][0]~q\)) # (!\fir_top|fir_srg|Mux31~0_combout\ & ((\fir_top|fir_srg|inputs[10][0]~q\))))) # 
-- (!\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[14][0]~q\,
	datab => \fir_top|fir_srg|inputs[10][0]~q\,
	datac => \fir_top|fir_srg|Add3~2_combout\,
	datad => \fir_top|fir_srg|Mux31~0_combout\,
	combout => \fir_top|fir_srg|Mux31~1_combout\);

-- Location: LCCOMB_X47_Y41_N14
\fir_top|fir_srg|inputs~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~56_combout\ = (\fir_top|fir_srg|inputs[9][0]~27_combout\ & (\fir_top|x\(0) & (\fir_top|fir_srg|inputs[15][2]~37_combout\ & \fir_top|fir_srg|inputs[15][2]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datab => \fir_top|x\(0),
	datac => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	combout => \fir_top|fir_srg|inputs~56_combout\);

-- Location: LCCOMB_X47_Y41_N10
\fir_top|fir_srg|inputs[11][0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[11][0]~57_combout\ = ((\fir_top|fir_srg|inputs[15][2]~43_combout\ & (\fir_top|fir_srg|inputs[9][0]~27_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datab => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datad => \KEY[0]~input_o\,
	combout => \fir_top|fir_srg|inputs[11][0]~57_combout\);

-- Location: FF_X47_Y41_N15
\fir_top|fir_srg|inputs[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~56_combout\,
	ena => \fir_top|fir_srg|inputs[11][0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[11][0]~q\);

-- Location: LCCOMB_X45_Y38_N8
\fir_top|fir_srg|inputs~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~62_combout\ = (\fir_top|x\(0) & (\fir_top|fir_srg|inputs[15][2]~30_combout\ & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~62_combout\);

-- Location: LCCOMB_X46_Y38_N0
\fir_top|fir_srg|inputs[15][2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[15][2]~63_combout\ = ((\fir_top|fir_srg|inputs[15][2]~30_combout\ & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs[15][2]~63_combout\);

-- Location: FF_X45_Y38_N9
\fir_top|fir_srg|inputs[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~62_combout\,
	ena => \fir_top|fir_srg|inputs[15][2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[15][0]~q\);

-- Location: LCCOMB_X47_Y38_N26
\fir_top|fir_srg|inputs~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~60_combout\ = (\fir_top|x\(0) & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & (\fir_top|fir_srg|inputs[9][0]~27_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datac => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~60_combout\);

-- Location: LCCOMB_X47_Y38_N0
\fir_top|fir_srg|inputs[9][0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[9][0]~61_combout\ = ((\fir_top|fir_srg|inputs[9][0]~27_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datab => \KEY[0]~input_o\,
	datac => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs[9][0]~61_combout\);

-- Location: FF_X47_Y38_N27
\fir_top|fir_srg|inputs[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~60_combout\,
	ena => \fir_top|fir_srg|inputs[9][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[9][0]~q\);

-- Location: LCCOMB_X46_Y38_N30
\fir_top|fir_srg|inputs~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~58_combout\ = (\fir_top|x\(0) & (\fir_top|fir_srg|inputs[15][2]~30_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(0),
	datab => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	datac => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~58_combout\);

-- Location: LCCOMB_X46_Y38_N18
\fir_top|fir_srg|inputs[13][3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs[13][3]~59_combout\ = ((\fir_top|fir_srg|inputs[15][2]~30_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	datac => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs[13][3]~59_combout\);

-- Location: FF_X46_Y38_N31
\fir_top|fir_srg|inputs[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~58_combout\,
	ena => \fir_top|fir_srg|inputs[13][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[13][0]~q\);

-- Location: LCCOMB_X47_Y38_N20
\fir_top|fir_srg|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~7_combout\ = (\fir_top|fir_srg|Add3~4_combout\ & (((\fir_top|fir_srg|inputs[13][0]~q\) # (\fir_top|fir_srg|Add3~2_combout\)))) # (!\fir_top|fir_srg|Add3~4_combout\ & (\fir_top|fir_srg|inputs[9][0]~q\ & 
-- ((!\fir_top|fir_srg|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[9][0]~q\,
	datab => \fir_top|fir_srg|inputs[13][0]~q\,
	datac => \fir_top|fir_srg|Add3~4_combout\,
	datad => \fir_top|fir_srg|Add3~2_combout\,
	combout => \fir_top|fir_srg|Mux31~7_combout\);

-- Location: LCCOMB_X47_Y38_N22
\fir_top|fir_srg|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~8_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Mux31~7_combout\ & ((\fir_top|fir_srg|inputs[15][0]~q\))) # (!\fir_top|fir_srg|Mux31~7_combout\ & (\fir_top|fir_srg|inputs[11][0]~q\)))) # 
-- (!\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[11][0]~q\,
	datab => \fir_top|fir_srg|Add3~2_combout\,
	datac => \fir_top|fir_srg|inputs[15][0]~q\,
	datad => \fir_top|fir_srg|Mux31~7_combout\,
	combout => \fir_top|fir_srg|Mux31~8_combout\);

-- Location: LCCOMB_X48_Y39_N24
\fir_top|fir_srg|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~9_combout\ = (\fir_top|fir_srg|Add3~6_combout\ & ((\fir_top|fir_srg|Mux31~6_combout\ & ((\fir_top|fir_srg|Mux31~8_combout\))) # (!\fir_top|fir_srg|Mux31~6_combout\ & (\fir_top|fir_srg|Mux31~1_combout\)))) # 
-- (!\fir_top|fir_srg|Add3~6_combout\ & (\fir_top|fir_srg|Mux31~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~6_combout\,
	datab => \fir_top|fir_srg|Mux31~6_combout\,
	datac => \fir_top|fir_srg|Mux31~1_combout\,
	datad => \fir_top|fir_srg|Mux31~8_combout\,
	combout => \fir_top|fir_srg|Mux31~9_combout\);

-- Location: LCCOMB_X48_Y39_N16
\fir_top|fir_srg|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~10_combout\ = (\fir_top|fir_srg|Mux29~2_combout\ & ((\fir_top|fir_srg|Mux29~4_combout\ & (\fir_top|fir_srg|inputs[18][0]~q\)) # (!\fir_top|fir_srg|Mux29~4_combout\ & ((\fir_top|fir_srg|Mux31~9_combout\))))) # 
-- (!\fir_top|fir_srg|Mux29~2_combout\ & (((!\fir_top|fir_srg|Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux29~2_combout\,
	datab => \fir_top|fir_srg|inputs[18][0]~q\,
	datac => \fir_top|fir_srg|Mux29~4_combout\,
	datad => \fir_top|fir_srg|Mux31~9_combout\,
	combout => \fir_top|fir_srg|Mux31~10_combout\);

-- Location: LCCOMB_X48_Y39_N30
\fir_top|fir_srg|Mux31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux31~combout\ = (\fir_top|fir_srg|Mux29~0_combout\ & (((\fir_top|fir_srg|Mux31~10_combout\)))) # (!\fir_top|fir_srg|Mux29~0_combout\ & ((\fir_top|fir_srg|Mux31~10_combout\ & (\fir_top|fir_srg|inputs[16][0]~q\)) # 
-- (!\fir_top|fir_srg|Mux31~10_combout\ & ((\fir_top|fir_srg|inputs[17][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[16][0]~q\,
	datab => \fir_top|fir_srg|inputs[17][0]~q\,
	datac => \fir_top|fir_srg|Mux29~0_combout\,
	datad => \fir_top|fir_srg|Mux31~10_combout\,
	combout => \fir_top|fir_srg|Mux31~combout\);

-- Location: LCCOMB_X52_Y38_N26
\fir_top|signal~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|signal~2_combout\ = (!\fir_top|Add0~6_combout\ & (\fir_top|Add0~2_combout\ & !\fir_top|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|Add0~6_combout\,
	datac => \fir_top|Add0~2_combout\,
	datad => \fir_top|always0~0_combout\,
	combout => \fir_top|signal~2_combout\);

-- Location: FF_X52_Y38_N27
\fir_top|x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|signal~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \fir_top|x[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|x\(1));

-- Location: LCCOMB_X45_Y39_N10
\fir_top|fir_srg|inputs~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~64_combout\ = (\fir_top|x\(1) & (!\fir_top|fir_srg|Add1~0_combout\ & (!\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(1),
	datab => \fir_top|fir_srg|Add1~0_combout\,
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~64_combout\);

-- Location: FF_X45_Y39_N11
\fir_top|fir_srg|inputs[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~64_combout\,
	ena => \fir_top|fir_srg|inputs[16][2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[16][1]~q\);

-- Location: LCCOMB_X45_Y39_N24
\fir_top|fir_srg|inputs~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~120_combout\ = (\fir_top|x\(1) & (\fir_top|fir_srg|Add1~0_combout\ & (!\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(1),
	datab => \fir_top|fir_srg|Add1~0_combout\,
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~120_combout\);

-- Location: FF_X45_Y39_N25
\fir_top|fir_srg|inputs[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~120_combout\,
	ena => \fir_top|fir_srg|inputs[17][3]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[17][1]~q\);

-- Location: LCCOMB_X47_Y41_N28
\fir_top|fir_srg|inputs~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~65_combout\ = (!\fir_top|fir_srg|Add1~0_combout\ & (\fir_top|x\(1) & (\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~0_combout\,
	datab => \fir_top|x\(1),
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~65_combout\);

-- Location: FF_X47_Y41_N29
\fir_top|fir_srg|inputs[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~65_combout\,
	ena => \fir_top|fir_srg|inputs[18][3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[18][1]~q\);

-- Location: LCCOMB_X47_Y40_N6
\fir_top|fir_srg|inputs~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~79_combout\ = (\fir_top|x\(1) & (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|fir_srg|inputs[6][1]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(1),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	combout => \fir_top|fir_srg|inputs~79_combout\);

-- Location: FF_X47_Y40_N7
\fir_top|fir_srg|inputs[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~79_combout\,
	ena => \fir_top|fir_srg|inputs[6][1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[6][1]~q\);

-- Location: LCCOMB_X54_Y39_N8
\fir_top|fir_srg|inputs~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~78_combout\ = (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|x\(1) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[15][2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \fir_top|x\(1),
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	combout => \fir_top|fir_srg|inputs~78_combout\);

-- Location: FF_X54_Y39_N9
\fir_top|fir_srg|inputs[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~78_combout\,
	ena => \fir_top|fir_srg|inputs[14][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[14][1]~q\);

-- Location: LCCOMB_X52_Y39_N26
\fir_top|fir_srg|inputs~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~80_combout\ = (\fir_top|x\(1) & (\fir_top|fir_srg|inputs[15][2]~37_combout\ & (\fir_top|fir_srg|inputs[15][2]~30_combout\ & \fir_top|fir_srg|inputs[15][2]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(1),
	datab => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	combout => \fir_top|fir_srg|inputs~80_combout\);

-- Location: FF_X52_Y39_N27
\fir_top|fir_srg|inputs[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~80_combout\,
	ena => \fir_top|fir_srg|inputs[15][2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[15][1]~q\);

-- Location: LCCOMB_X48_Y38_N0
\fir_top|fir_srg|inputs~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~81_combout\ = (\fir_top|fir_srg|inputs[15][2]~37_combout\ & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|x\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datab => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|x\(1),
	combout => \fir_top|fir_srg|inputs~81_combout\);

-- Location: FF_X48_Y38_N1
\fir_top|fir_srg|inputs[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~81_combout\,
	ena => \fir_top|fir_srg|inputs[7][1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[7][1]~q\);

-- Location: LCCOMB_X47_Y39_N30
\fir_top|fir_srg|Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~7_combout\ = (\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|Add3~6_combout\ & (\fir_top|fir_srg|inputs[15][1]~q\)) # (!\fir_top|fir_srg|Add3~6_combout\ & ((\fir_top|fir_srg|inputs[7][1]~q\))))) # 
-- (!\fir_top|fir_srg|Add3~0_combout\ & (((\fir_top|fir_srg|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~0_combout\,
	datab => \fir_top|fir_srg|inputs[15][1]~q\,
	datac => \fir_top|fir_srg|Add3~6_combout\,
	datad => \fir_top|fir_srg|inputs[7][1]~q\,
	combout => \fir_top|fir_srg|Mux30~7_combout\);

-- Location: LCCOMB_X47_Y39_N8
\fir_top|fir_srg|Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~8_combout\ = (\fir_top|fir_srg|Mux30~7_combout\ & (((\fir_top|fir_srg|inputs[14][1]~q\) # (\fir_top|fir_srg|Add3~0_combout\)))) # (!\fir_top|fir_srg|Mux30~7_combout\ & (\fir_top|fir_srg|inputs[6][1]~q\ & 
-- ((!\fir_top|fir_srg|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[6][1]~q\,
	datab => \fir_top|fir_srg|inputs[14][1]~q\,
	datac => \fir_top|fir_srg|Mux30~7_combout\,
	datad => \fir_top|fir_srg|Add3~0_combout\,
	combout => \fir_top|fir_srg|Mux30~8_combout\);

-- Location: LCCOMB_X47_Y41_N30
\fir_top|fir_srg|inputs~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~66_combout\ = (\fir_top|fir_srg|inputs[15][2]~43_combout\ & (\fir_top|fir_srg|inputs[9][0]~27_combout\ & (\fir_top|fir_srg|inputs[15][2]~37_combout\ & \fir_top|x\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datab => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datad => \fir_top|x\(1),
	combout => \fir_top|fir_srg|inputs~66_combout\);

-- Location: FF_X47_Y41_N31
\fir_top|fir_srg|inputs[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~66_combout\,
	ena => \fir_top|fir_srg|inputs[11][0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[11][1]~q\);

-- Location: LCCOMB_X52_Y39_N14
\fir_top|fir_srg|inputs~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~67_combout\ = (\fir_top|x\(1) & (\fir_top|fir_srg|inputs[9][0]~27_combout\ & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(1),
	datab => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs~67_combout\);

-- Location: FF_X47_Y39_N5
\fir_top|fir_srg|inputs[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fir_top|fir_srg|inputs~67_combout\,
	sload => VCC,
	ena => \fir_top|fir_srg|inputs[10][2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[10][1]~q\);

-- Location: LCCOMB_X46_Y40_N20
\fir_top|fir_srg|inputs~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~68_combout\ = (\fir_top|x\(1) & (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & \fir_top|fir_srg|inputs[6][1]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(1),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	combout => \fir_top|fir_srg|inputs~68_combout\);

-- Location: FF_X46_Y40_N21
\fir_top|fir_srg|inputs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~68_combout\,
	ena => \fir_top|fir_srg|inputs[2][0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[2][1]~q\);

-- Location: LCCOMB_X48_Y38_N10
\fir_top|fir_srg|inputs~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~69_combout\ = (\fir_top|x\(1) & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & (\fir_top|fir_srg|inputs[15][2]~37_combout\ & \fir_top|fir_srg|inputs[0][2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(1),
	datab => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datad => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	combout => \fir_top|fir_srg|inputs~69_combout\);

-- Location: FF_X48_Y38_N11
\fir_top|fir_srg|inputs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~69_combout\,
	ena => \fir_top|fir_srg|inputs[3][1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[3][1]~q\);

-- Location: LCCOMB_X47_Y39_N2
\fir_top|fir_srg|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~0_combout\ = (\fir_top|fir_srg|Add3~6_combout\ & (((\fir_top|fir_srg|Add3~0_combout\)))) # (!\fir_top|fir_srg|Add3~6_combout\ & ((\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|inputs[3][1]~q\))) # 
-- (!\fir_top|fir_srg|Add3~0_combout\ & (\fir_top|fir_srg|inputs[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[2][1]~q\,
	datab => \fir_top|fir_srg|inputs[3][1]~q\,
	datac => \fir_top|fir_srg|Add3~6_combout\,
	datad => \fir_top|fir_srg|Add3~0_combout\,
	combout => \fir_top|fir_srg|Mux30~0_combout\);

-- Location: LCCOMB_X47_Y39_N4
\fir_top|fir_srg|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~1_combout\ = (\fir_top|fir_srg|Add3~6_combout\ & ((\fir_top|fir_srg|Mux30~0_combout\ & (\fir_top|fir_srg|inputs[11][1]~q\)) # (!\fir_top|fir_srg|Mux30~0_combout\ & ((\fir_top|fir_srg|inputs[10][1]~q\))))) # 
-- (!\fir_top|fir_srg|Add3~6_combout\ & (((\fir_top|fir_srg|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[11][1]~q\,
	datab => \fir_top|fir_srg|Add3~6_combout\,
	datac => \fir_top|fir_srg|inputs[10][1]~q\,
	datad => \fir_top|fir_srg|Mux30~0_combout\,
	combout => \fir_top|fir_srg|Mux30~1_combout\);

-- Location: LCCOMB_X46_Y40_N6
\fir_top|fir_srg|inputs~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~75_combout\ = (\fir_top|x\(1) & (!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & \fir_top|fir_srg|inputs[6][1]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(1),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	combout => \fir_top|fir_srg|inputs~75_combout\);

-- Location: FF_X46_Y40_N7
\fir_top|fir_srg|inputs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~75_combout\,
	ena => \fir_top|fir_srg|inputs[0][2]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[0][1]~q\);

-- Location: LCCOMB_X50_Y39_N28
\fir_top|fir_srg|inputs~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~74_combout\ = (\fir_top|fir_srg|inputs[9][0]~27_combout\ & (\fir_top|x\(1) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & !\fir_top|fir_srg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datab => \fir_top|x\(1),
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs~74_combout\);

-- Location: FF_X50_Y39_N29
\fir_top|fir_srg|inputs[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~74_combout\,
	ena => \fir_top|fir_srg|inputs[8][2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[8][1]~q\);

-- Location: LCCOMB_X47_Y38_N14
\fir_top|fir_srg|inputs~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~77_combout\ = (\fir_top|fir_srg|inputs[17][3]~10_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & (\fir_top|x\(1) & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datab => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datac => \fir_top|x\(1),
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~77_combout\);

-- Location: FF_X47_Y38_N15
\fir_top|fir_srg|inputs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~77_combout\,
	ena => \fir_top|fir_srg|inputs[1][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[1][1]~q\);

-- Location: LCCOMB_X47_Y38_N24
\fir_top|fir_srg|inputs~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~76_combout\ = (\fir_top|fir_srg|inputs[9][0]~27_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & (\fir_top|x\(1) & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datab => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datac => \fir_top|x\(1),
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~76_combout\);

-- Location: FF_X47_Y38_N25
\fir_top|fir_srg|inputs[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~76_combout\,
	ena => \fir_top|fir_srg|inputs[9][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[9][1]~q\);

-- Location: LCCOMB_X47_Y39_N24
\fir_top|fir_srg|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~4_combout\ = (\fir_top|fir_srg|Add3~6_combout\ & (((\fir_top|fir_srg|inputs[9][1]~q\) # (!\fir_top|fir_srg|Add3~0_combout\)))) # (!\fir_top|fir_srg|Add3~6_combout\ & (\fir_top|fir_srg|inputs[1][1]~q\ & 
-- ((\fir_top|fir_srg|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[1][1]~q\,
	datab => \fir_top|fir_srg|inputs[9][1]~q\,
	datac => \fir_top|fir_srg|Add3~6_combout\,
	datad => \fir_top|fir_srg|Add3~0_combout\,
	combout => \fir_top|fir_srg|Mux30~4_combout\);

-- Location: LCCOMB_X47_Y39_N22
\fir_top|fir_srg|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~5_combout\ = (\fir_top|fir_srg|Add3~0_combout\ & (((\fir_top|fir_srg|Mux30~4_combout\)))) # (!\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|Mux30~4_combout\ & ((\fir_top|fir_srg|inputs[8][1]~q\))) # 
-- (!\fir_top|fir_srg|Mux30~4_combout\ & (\fir_top|fir_srg|inputs[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~0_combout\,
	datab => \fir_top|fir_srg|inputs[0][1]~q\,
	datac => \fir_top|fir_srg|inputs[8][1]~q\,
	datad => \fir_top|fir_srg|Mux30~4_combout\,
	combout => \fir_top|fir_srg|Mux30~5_combout\);

-- Location: LCCOMB_X47_Y40_N24
\fir_top|fir_srg|inputs~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~71_combout\ = (\fir_top|x\(1) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & !\fir_top|fir_srg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(1),
	datab => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs~71_combout\);

-- Location: FF_X47_Y40_N25
\fir_top|fir_srg|inputs[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~71_combout\,
	ena => \fir_top|fir_srg|inputs[4][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[4][1]~q\);

-- Location: LCCOMB_X52_Y39_N28
\fir_top|fir_srg|inputs~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~70_combout\ = (!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[15][2]~30_combout\ & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|x\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|x\(1),
	combout => \fir_top|fir_srg|inputs~70_combout\);

-- Location: FF_X52_Y39_N29
\fir_top|fir_srg|inputs[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~70_combout\,
	ena => \fir_top|fir_srg|inputs[12][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[12][1]~q\);

-- Location: LCCOMB_X46_Y38_N10
\fir_top|fir_srg|inputs~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~73_combout\ = (\fir_top|x\(1) & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(1),
	datab => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~73_combout\);

-- Location: FF_X46_Y38_N11
\fir_top|fir_srg|inputs[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~73_combout\,
	ena => \fir_top|fir_srg|inputs[5][3]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[5][1]~q\);

-- Location: LCCOMB_X46_Y38_N12
\fir_top|fir_srg|inputs~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~72_combout\ = (\fir_top|x\(1) & (\fir_top|fir_srg|inputs[15][2]~30_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(1),
	datab => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	datac => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~72_combout\);

-- Location: FF_X46_Y38_N13
\fir_top|fir_srg|inputs[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~72_combout\,
	ena => \fir_top|fir_srg|inputs[13][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[13][1]~q\);

-- Location: LCCOMB_X47_Y39_N0
\fir_top|fir_srg|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~2_combout\ = (\fir_top|fir_srg|Add3~6_combout\ & (((\fir_top|fir_srg|inputs[13][1]~q\) # (!\fir_top|fir_srg|Add3~0_combout\)))) # (!\fir_top|fir_srg|Add3~6_combout\ & (\fir_top|fir_srg|inputs[5][1]~q\ & 
-- ((\fir_top|fir_srg|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[5][1]~q\,
	datab => \fir_top|fir_srg|inputs[13][1]~q\,
	datac => \fir_top|fir_srg|Add3~6_combout\,
	datad => \fir_top|fir_srg|Add3~0_combout\,
	combout => \fir_top|fir_srg|Mux30~2_combout\);

-- Location: LCCOMB_X47_Y39_N10
\fir_top|fir_srg|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~3_combout\ = (\fir_top|fir_srg|Add3~0_combout\ & (((\fir_top|fir_srg|Mux30~2_combout\)))) # (!\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|Mux30~2_combout\ & ((\fir_top|fir_srg|inputs[12][1]~q\))) # 
-- (!\fir_top|fir_srg|Mux30~2_combout\ & (\fir_top|fir_srg|inputs[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~0_combout\,
	datab => \fir_top|fir_srg|inputs[4][1]~q\,
	datac => \fir_top|fir_srg|inputs[12][1]~q\,
	datad => \fir_top|fir_srg|Mux30~2_combout\,
	combout => \fir_top|fir_srg|Mux30~3_combout\);

-- Location: LCCOMB_X47_Y39_N20
\fir_top|fir_srg|Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~6_combout\ = (\fir_top|fir_srg|Add3~4_combout\ & ((\fir_top|fir_srg|Add3~2_combout\) # ((\fir_top|fir_srg|Mux30~3_combout\)))) # (!\fir_top|fir_srg|Add3~4_combout\ & (!\fir_top|fir_srg|Add3~2_combout\ & 
-- (\fir_top|fir_srg|Mux30~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~4_combout\,
	datab => \fir_top|fir_srg|Add3~2_combout\,
	datac => \fir_top|fir_srg|Mux30~5_combout\,
	datad => \fir_top|fir_srg|Mux30~3_combout\,
	combout => \fir_top|fir_srg|Mux30~6_combout\);

-- Location: LCCOMB_X47_Y39_N18
\fir_top|fir_srg|Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~9_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Mux30~6_combout\ & (\fir_top|fir_srg|Mux30~8_combout\)) # (!\fir_top|fir_srg|Mux30~6_combout\ & ((\fir_top|fir_srg|Mux30~1_combout\))))) # 
-- (!\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~2_combout\,
	datab => \fir_top|fir_srg|Mux30~8_combout\,
	datac => \fir_top|fir_srg|Mux30~1_combout\,
	datad => \fir_top|fir_srg|Mux30~6_combout\,
	combout => \fir_top|fir_srg|Mux30~9_combout\);

-- Location: LCCOMB_X47_Y39_N28
\fir_top|fir_srg|Mux30~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~10_combout\ = (\fir_top|fir_srg|Mux29~4_combout\ & (\fir_top|fir_srg|inputs[18][1]~q\ & (\fir_top|fir_srg|Mux29~2_combout\))) # (!\fir_top|fir_srg|Mux29~4_combout\ & (((\fir_top|fir_srg|Mux30~9_combout\) # 
-- (!\fir_top|fir_srg|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[18][1]~q\,
	datab => \fir_top|fir_srg|Mux29~4_combout\,
	datac => \fir_top|fir_srg|Mux29~2_combout\,
	datad => \fir_top|fir_srg|Mux30~9_combout\,
	combout => \fir_top|fir_srg|Mux30~10_combout\);

-- Location: LCCOMB_X47_Y39_N6
\fir_top|fir_srg|Mux30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux30~combout\ = (\fir_top|fir_srg|Mux29~0_combout\ & (((\fir_top|fir_srg|Mux30~10_combout\)))) # (!\fir_top|fir_srg|Mux29~0_combout\ & ((\fir_top|fir_srg|Mux30~10_combout\ & (\fir_top|fir_srg|inputs[16][1]~q\)) # 
-- (!\fir_top|fir_srg|Mux30~10_combout\ & ((\fir_top|fir_srg|inputs[17][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[16][1]~q\,
	datab => \fir_top|fir_srg|inputs[17][1]~q\,
	datac => \fir_top|fir_srg|Mux29~0_combout\,
	datad => \fir_top|fir_srg|Mux30~10_combout\,
	combout => \fir_top|fir_srg|Mux30~combout\);

-- Location: LCCOMB_X52_Y38_N8
\fir_top|signal~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|signal~3_combout\ = (!\fir_top|Add0~6_combout\ & (\fir_top|Add0~4_combout\ & !\fir_top|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|Add0~6_combout\,
	datac => \fir_top|Add0~4_combout\,
	datad => \fir_top|always0~0_combout\,
	combout => \fir_top|signal~3_combout\);

-- Location: FF_X52_Y38_N9
\fir_top|x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|signal~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \fir_top|x[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|x\(2));

-- Location: LCCOMB_X45_Y39_N22
\fir_top|fir_srg|inputs~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~82_combout\ = (\fir_top|x\(2) & (!\fir_top|fir_srg|Add1~0_combout\ & (!\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(2),
	datab => \fir_top|fir_srg|Add1~0_combout\,
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~82_combout\);

-- Location: FF_X45_Y39_N23
\fir_top|fir_srg|inputs[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~82_combout\,
	ena => \fir_top|fir_srg|inputs[16][2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[16][2]~q\);

-- Location: LCCOMB_X45_Y39_N28
\fir_top|fir_srg|inputs~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~121_combout\ = (\fir_top|x\(2) & (\fir_top|fir_srg|Add1~0_combout\ & (!\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(2),
	datab => \fir_top|fir_srg|Add1~0_combout\,
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~121_combout\);

-- Location: FF_X45_Y39_N29
\fir_top|fir_srg|inputs[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~121_combout\,
	ena => \fir_top|fir_srg|inputs[17][3]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[17][2]~q\);

-- Location: LCCOMB_X47_Y41_N8
\fir_top|fir_srg|inputs~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~83_combout\ = (!\fir_top|fir_srg|Add1~0_combout\ & (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|x\(2) & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~0_combout\,
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|x\(2),
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~83_combout\);

-- Location: FF_X47_Y41_N9
\fir_top|fir_srg|inputs[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~83_combout\,
	ena => \fir_top|fir_srg|inputs[18][3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[18][2]~q\);

-- Location: LCCOMB_X47_Y38_N6
\fir_top|fir_srg|inputs~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~97_combout\ = (\fir_top|fir_srg|inputs[9][0]~27_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & (\fir_top|x\(2) & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datab => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datac => \fir_top|x\(2),
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~97_combout\);

-- Location: FF_X47_Y38_N7
\fir_top|fir_srg|inputs[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~97_combout\,
	ena => \fir_top|fir_srg|inputs[9][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[9][2]~q\);

-- Location: LCCOMB_X46_Y38_N2
\fir_top|fir_srg|inputs~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~96_combout\ = (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[15][2]~30_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(2),
	datab => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	datac => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~96_combout\);

-- Location: FF_X46_Y38_N3
\fir_top|fir_srg|inputs[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~96_combout\,
	ena => \fir_top|fir_srg|inputs[13][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[13][2]~q\);

-- Location: LCCOMB_X45_Y38_N26
\fir_top|fir_srg|inputs~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~98_combout\ = (\fir_top|fir_srg|inputs[15][2]~37_combout\ & (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & \fir_top|fir_srg|inputs[15][2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datab => \fir_top|x\(2),
	datac => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	combout => \fir_top|fir_srg|inputs~98_combout\);

-- Location: FF_X45_Y38_N27
\fir_top|fir_srg|inputs[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~98_combout\,
	ena => \fir_top|fir_srg|inputs[15][2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[15][2]~q\);

-- Location: LCCOMB_X47_Y41_N2
\fir_top|fir_srg|inputs~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~99_combout\ = (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[15][2]~37_combout\ & (\fir_top|fir_srg|inputs[9][0]~27_combout\ & \fir_top|fir_srg|inputs[15][2]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(2),
	datab => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datac => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	combout => \fir_top|fir_srg|inputs~99_combout\);

-- Location: FF_X47_Y41_N3
\fir_top|fir_srg|inputs[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~99_combout\,
	ena => \fir_top|fir_srg|inputs[11][0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[11][2]~q\);

-- Location: LCCOMB_X46_Y39_N20
\fir_top|fir_srg|Mux29~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~12_combout\ = (\fir_top|fir_srg|Add3~4_combout\ & ((\fir_top|fir_srg|inputs[15][2]~q\) # ((!\fir_top|fir_srg|Add3~2_combout\)))) # (!\fir_top|fir_srg|Add3~4_combout\ & (((\fir_top|fir_srg|inputs[11][2]~q\ & 
-- \fir_top|fir_srg|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[15][2]~q\,
	datab => \fir_top|fir_srg|inputs[11][2]~q\,
	datac => \fir_top|fir_srg|Add3~4_combout\,
	datad => \fir_top|fir_srg|Add3~2_combout\,
	combout => \fir_top|fir_srg|Mux29~12_combout\);

-- Location: LCCOMB_X46_Y39_N22
\fir_top|fir_srg|Mux29~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~13_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Mux29~12_combout\)))) # (!\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Mux29~12_combout\ & ((\fir_top|fir_srg|inputs[13][2]~q\))) # 
-- (!\fir_top|fir_srg|Mux29~12_combout\ & (\fir_top|fir_srg|inputs[9][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~2_combout\,
	datab => \fir_top|fir_srg|inputs[9][2]~q\,
	datac => \fir_top|fir_srg|inputs[13][2]~q\,
	datad => \fir_top|fir_srg|Mux29~12_combout\,
	combout => \fir_top|fir_srg|Mux29~13_combout\);

-- Location: LCCOMB_X48_Y38_N30
\fir_top|fir_srg|inputs~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~84_combout\ = (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & (\fir_top|fir_srg|inputs[15][2]~37_combout\ & \fir_top|fir_srg|inputs[0][2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(2),
	datab => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datad => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	combout => \fir_top|fir_srg|inputs~84_combout\);

-- Location: FF_X48_Y38_N31
\fir_top|fir_srg|inputs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~84_combout\,
	ena => \fir_top|fir_srg|inputs[3][1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[3][2]~q\);

-- Location: LCCOMB_X48_Y38_N12
\fir_top|fir_srg|inputs~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~87_combout\ = (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & (\fir_top|fir_srg|inputs[15][2]~37_combout\ & \fir_top|fir_srg|inputs[6][1]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(2),
	datab => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	combout => \fir_top|fir_srg|inputs~87_combout\);

-- Location: FF_X48_Y38_N13
\fir_top|fir_srg|inputs[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~87_combout\,
	ena => \fir_top|fir_srg|inputs[7][1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[7][2]~q\);

-- Location: LCCOMB_X46_Y38_N16
\fir_top|fir_srg|inputs~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~85_combout\ = (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(2),
	datab => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~85_combout\);

-- Location: FF_X46_Y38_N17
\fir_top|fir_srg|inputs[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~85_combout\,
	ena => \fir_top|fir_srg|inputs[5][3]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[5][2]~q\);

-- Location: LCCOMB_X47_Y38_N28
\fir_top|fir_srg|inputs~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~86_combout\ = (\fir_top|fir_srg|inputs[17][3]~10_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & (\fir_top|x\(2) & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datab => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datac => \fir_top|x\(2),
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~86_combout\);

-- Location: FF_X47_Y38_N29
\fir_top|fir_srg|inputs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~86_combout\,
	ena => \fir_top|fir_srg|inputs[1][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[1][2]~q\);

-- Location: LCCOMB_X47_Y38_N18
\fir_top|fir_srg|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~5_combout\ = (\fir_top|fir_srg|Add3~4_combout\ & ((\fir_top|fir_srg|inputs[5][2]~q\) # ((\fir_top|fir_srg|Add3~2_combout\)))) # (!\fir_top|fir_srg|Add3~4_combout\ & (((\fir_top|fir_srg|inputs[1][2]~q\ & 
-- !\fir_top|fir_srg|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[5][2]~q\,
	datab => \fir_top|fir_srg|inputs[1][2]~q\,
	datac => \fir_top|fir_srg|Add3~4_combout\,
	datad => \fir_top|fir_srg|Add3~2_combout\,
	combout => \fir_top|fir_srg|Mux29~5_combout\);

-- Location: LCCOMB_X47_Y38_N12
\fir_top|fir_srg|Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~6_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Mux29~5_combout\ & ((\fir_top|fir_srg|inputs[7][2]~q\))) # (!\fir_top|fir_srg|Mux29~5_combout\ & (\fir_top|fir_srg|inputs[3][2]~q\)))) # 
-- (!\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[3][2]~q\,
	datab => \fir_top|fir_srg|Add3~2_combout\,
	datac => \fir_top|fir_srg|inputs[7][2]~q\,
	datad => \fir_top|fir_srg|Mux29~5_combout\,
	combout => \fir_top|fir_srg|Mux29~6_combout\);

-- Location: LCCOMB_X47_Y40_N28
\fir_top|fir_srg|inputs~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~92_combout\ = (\fir_top|x\(2) & (!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|fir_srg|inputs[6][1]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(2),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	combout => \fir_top|fir_srg|inputs~92_combout\);

-- Location: FF_X47_Y40_N29
\fir_top|fir_srg|inputs[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~92_combout\,
	ena => \fir_top|fir_srg|inputs[4][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[4][2]~q\);

-- Location: LCCOMB_X46_Y40_N4
\fir_top|fir_srg|inputs~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~93_combout\ = (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & !\fir_top|fir_srg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(2),
	datab => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datac => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs~93_combout\);

-- Location: FF_X46_Y40_N5
\fir_top|fir_srg|inputs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~93_combout\,
	ena => \fir_top|fir_srg|inputs[0][2]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[0][2]~q\);

-- Location: LCCOMB_X46_Y40_N10
\fir_top|fir_srg|inputs~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~95_combout\ = (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & \fir_top|fir_srg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(2),
	datab => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datac => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs~95_combout\);

-- Location: FF_X46_Y40_N11
\fir_top|fir_srg|inputs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~95_combout\,
	ena => \fir_top|fir_srg|inputs[2][0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[2][2]~q\);

-- Location: LCCOMB_X47_Y40_N30
\fir_top|fir_srg|inputs~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~94_combout\ = (\fir_top|x\(2) & (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|fir_srg|inputs[6][1]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(2),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	combout => \fir_top|fir_srg|inputs~94_combout\);

-- Location: FF_X47_Y40_N31
\fir_top|fir_srg|inputs[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~94_combout\,
	ena => \fir_top|fir_srg|inputs[6][1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[6][2]~q\);

-- Location: LCCOMB_X45_Y39_N20
\fir_top|fir_srg|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~9_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Add3~4_combout\ & ((\fir_top|fir_srg|inputs[6][2]~q\))) # (!\fir_top|fir_srg|Add3~4_combout\ & (\fir_top|fir_srg|inputs[2][2]~q\)))) # 
-- (!\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[2][2]~q\,
	datab => \fir_top|fir_srg|inputs[6][2]~q\,
	datac => \fir_top|fir_srg|Add3~2_combout\,
	datad => \fir_top|fir_srg|Add3~4_combout\,
	combout => \fir_top|fir_srg|Mux29~9_combout\);

-- Location: LCCOMB_X46_Y39_N8
\fir_top|fir_srg|Mux29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~10_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Mux29~9_combout\)))) # (!\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Mux29~9_combout\ & (\fir_top|fir_srg|inputs[4][2]~q\)) # 
-- (!\fir_top|fir_srg|Mux29~9_combout\ & ((\fir_top|fir_srg|inputs[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~2_combout\,
	datab => \fir_top|fir_srg|inputs[4][2]~q\,
	datac => \fir_top|fir_srg|inputs[0][2]~q\,
	datad => \fir_top|fir_srg|Mux29~9_combout\,
	combout => \fir_top|fir_srg|Mux29~10_combout\);

-- Location: LCCOMB_X54_Y39_N10
\fir_top|fir_srg|inputs~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~88_combout\ = (!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[15][2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \fir_top|x\(2),
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	combout => \fir_top|fir_srg|inputs~88_combout\);

-- Location: FF_X54_Y39_N11
\fir_top|fir_srg|inputs[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~88_combout\,
	ena => \fir_top|fir_srg|inputs[12][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[12][2]~q\);

-- Location: LCCOMB_X50_Y39_N2
\fir_top|fir_srg|inputs~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~89_combout\ = (!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[9][0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \fir_top|x\(2),
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	combout => \fir_top|fir_srg|inputs~89_combout\);

-- Location: FF_X50_Y39_N3
\fir_top|fir_srg|inputs[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~89_combout\,
	ena => \fir_top|fir_srg|inputs[8][2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[8][2]~q\);

-- Location: LCCOMB_X54_Y39_N24
\fir_top|fir_srg|inputs~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~90_combout\ = (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[15][2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \fir_top|x\(2),
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	combout => \fir_top|fir_srg|inputs~90_combout\);

-- Location: FF_X54_Y39_N25
\fir_top|fir_srg|inputs[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~90_combout\,
	ena => \fir_top|fir_srg|inputs[14][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[14][2]~q\);

-- Location: LCCOMB_X50_Y39_N4
\fir_top|fir_srg|inputs~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~91_combout\ = (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|x\(2) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[9][0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \fir_top|x\(2),
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	combout => \fir_top|fir_srg|inputs~91_combout\);

-- Location: FF_X50_Y39_N5
\fir_top|fir_srg|inputs[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~91_combout\,
	ena => \fir_top|fir_srg|inputs[10][2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[10][2]~q\);

-- Location: LCCOMB_X50_Y39_N10
\fir_top|fir_srg|Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~7_combout\ = (\fir_top|fir_srg|Add3~4_combout\ & ((\fir_top|fir_srg|inputs[14][2]~q\) # ((!\fir_top|fir_srg|Add3~2_combout\)))) # (!\fir_top|fir_srg|Add3~4_combout\ & (((\fir_top|fir_srg|inputs[10][2]~q\ & 
-- \fir_top|fir_srg|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[14][2]~q\,
	datab => \fir_top|fir_srg|inputs[10][2]~q\,
	datac => \fir_top|fir_srg|Add3~4_combout\,
	datad => \fir_top|fir_srg|Add3~2_combout\,
	combout => \fir_top|fir_srg|Mux29~7_combout\);

-- Location: LCCOMB_X50_Y39_N24
\fir_top|fir_srg|Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~8_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Mux29~7_combout\)))) # (!\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Mux29~7_combout\ & (\fir_top|fir_srg|inputs[12][2]~q\)) # 
-- (!\fir_top|fir_srg|Mux29~7_combout\ & ((\fir_top|fir_srg|inputs[8][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[12][2]~q\,
	datab => \fir_top|fir_srg|inputs[8][2]~q\,
	datac => \fir_top|fir_srg|Add3~2_combout\,
	datad => \fir_top|fir_srg|Mux29~7_combout\,
	combout => \fir_top|fir_srg|Mux29~8_combout\);

-- Location: LCCOMB_X46_Y39_N6
\fir_top|fir_srg|Mux29~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~11_combout\ = (\fir_top|fir_srg|Add3~6_combout\ & ((\fir_top|fir_srg|Add3~0_combout\) # ((\fir_top|fir_srg|Mux29~8_combout\)))) # (!\fir_top|fir_srg|Add3~6_combout\ & (!\fir_top|fir_srg|Add3~0_combout\ & 
-- (\fir_top|fir_srg|Mux29~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~6_combout\,
	datab => \fir_top|fir_srg|Add3~0_combout\,
	datac => \fir_top|fir_srg|Mux29~10_combout\,
	datad => \fir_top|fir_srg|Mux29~8_combout\,
	combout => \fir_top|fir_srg|Mux29~11_combout\);

-- Location: LCCOMB_X46_Y39_N12
\fir_top|fir_srg|Mux29~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~14_combout\ = (\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|Mux29~11_combout\ & (\fir_top|fir_srg|Mux29~13_combout\)) # (!\fir_top|fir_srg|Mux29~11_combout\ & ((\fir_top|fir_srg|Mux29~6_combout\))))) # 
-- (!\fir_top|fir_srg|Add3~0_combout\ & (((\fir_top|fir_srg|Mux29~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux29~13_combout\,
	datab => \fir_top|fir_srg|Add3~0_combout\,
	datac => \fir_top|fir_srg|Mux29~6_combout\,
	datad => \fir_top|fir_srg|Mux29~11_combout\,
	combout => \fir_top|fir_srg|Mux29~14_combout\);

-- Location: LCCOMB_X46_Y39_N18
\fir_top|fir_srg|Mux29~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~15_combout\ = (\fir_top|fir_srg|Mux29~4_combout\ & (\fir_top|fir_srg|inputs[18][2]~q\ & (\fir_top|fir_srg|Mux29~2_combout\))) # (!\fir_top|fir_srg|Mux29~4_combout\ & (((\fir_top|fir_srg|Mux29~14_combout\) # 
-- (!\fir_top|fir_srg|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux29~4_combout\,
	datab => \fir_top|fir_srg|inputs[18][2]~q\,
	datac => \fir_top|fir_srg|Mux29~2_combout\,
	datad => \fir_top|fir_srg|Mux29~14_combout\,
	combout => \fir_top|fir_srg|Mux29~15_combout\);

-- Location: LCCOMB_X45_Y39_N14
\fir_top|fir_srg|Mux29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux29~combout\ = (\fir_top|fir_srg|Mux29~0_combout\ & (((\fir_top|fir_srg|Mux29~15_combout\)))) # (!\fir_top|fir_srg|Mux29~0_combout\ & ((\fir_top|fir_srg|Mux29~15_combout\ & (\fir_top|fir_srg|inputs[16][2]~q\)) # 
-- (!\fir_top|fir_srg|Mux29~15_combout\ & ((\fir_top|fir_srg|inputs[17][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[16][2]~q\,
	datab => \fir_top|fir_srg|inputs[17][2]~q\,
	datac => \fir_top|fir_srg|Mux29~0_combout\,
	datad => \fir_top|fir_srg|Mux29~15_combout\,
	combout => \fir_top|fir_srg|Mux29~combout\);

-- Location: LCCOMB_X52_Y38_N14
\fir_top|signal~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|signal~4_combout\ = (\fir_top|Add0~6_combout\ & (!\fir_top|Add0~4_combout\ & (!\fir_top|Add0~2_combout\ & !\fir_top|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|Add0~6_combout\,
	datab => \fir_top|Add0~4_combout\,
	datac => \fir_top|Add0~2_combout\,
	datad => \fir_top|always0~0_combout\,
	combout => \fir_top|signal~4_combout\);

-- Location: FF_X52_Y38_N15
\fir_top|x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|signal~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \fir_top|x[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|x\(3));

-- Location: LCCOMB_X45_Y39_N8
\fir_top|fir_srg|inputs~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~122_combout\ = (\fir_top|x\(3) & (\fir_top|fir_srg|Add1~0_combout\ & (!\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|Add1~0_combout\,
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~122_combout\);

-- Location: FF_X45_Y39_N9
\fir_top|fir_srg|inputs[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~122_combout\,
	ena => \fir_top|fir_srg|inputs[17][3]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[17][3]~q\);

-- Location: LCCOMB_X45_Y39_N6
\fir_top|fir_srg|inputs~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~100_combout\ = (\fir_top|x\(3) & (!\fir_top|fir_srg|Add1~0_combout\ & (!\fir_top|fir_srg|Add1~2_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|Add1~0_combout\,
	datac => \fir_top|fir_srg|Add1~2_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~100_combout\);

-- Location: FF_X45_Y39_N7
\fir_top|fir_srg|inputs[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~100_combout\,
	ena => \fir_top|fir_srg|inputs[16][2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[16][3]~q\);

-- Location: LCCOMB_X47_Y41_N24
\fir_top|fir_srg|inputs~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~101_combout\ = (\fir_top|x\(3) & (\fir_top|fir_srg|Add1~2_combout\ & (!\fir_top|fir_srg|Add1~0_combout\ & \fir_top|fir_srg|inputs[18][3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|Add1~0_combout\,
	datad => \fir_top|fir_srg|inputs[18][3]~21_combout\,
	combout => \fir_top|fir_srg|inputs~101_combout\);

-- Location: FF_X47_Y41_N25
\fir_top|fir_srg|inputs[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~101_combout\,
	ena => \fir_top|fir_srg|inputs[18][3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[18][3]~q\);

-- Location: LCCOMB_X45_Y38_N10
\fir_top|fir_srg|inputs~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~117_combout\ = (\fir_top|x\(3) & (\fir_top|fir_srg|inputs[15][2]~30_combout\ & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~117_combout\);

-- Location: FF_X45_Y38_N11
\fir_top|fir_srg|inputs[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~117_combout\,
	ena => \fir_top|fir_srg|inputs[15][2]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[15][3]~q\);

-- Location: LCCOMB_X48_Y38_N2
\fir_top|fir_srg|inputs~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~114_combout\ = (\fir_top|fir_srg|inputs[6][1]~38_combout\ & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & (\fir_top|fir_srg|inputs[15][2]~37_combout\ & \fir_top|x\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datab => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datad => \fir_top|x\(3),
	combout => \fir_top|fir_srg|inputs~114_combout\);

-- Location: FF_X48_Y38_N3
\fir_top|fir_srg|inputs[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~114_combout\,
	ena => \fir_top|fir_srg|inputs[7][1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[7][3]~q\);

-- Location: LCCOMB_X54_Y39_N20
\fir_top|fir_srg|inputs~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~115_combout\ = (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|x\(3) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[15][2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \fir_top|x\(3),
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	combout => \fir_top|fir_srg|inputs~115_combout\);

-- Location: FF_X54_Y39_N21
\fir_top|fir_srg|inputs[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~115_combout\,
	ena => \fir_top|fir_srg|inputs[14][0]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[14][3]~q\);

-- Location: LCCOMB_X47_Y40_N10
\fir_top|fir_srg|inputs~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~116_combout\ = (\fir_top|x\(3) & (\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & \fir_top|fir_srg|inputs[6][1]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	combout => \fir_top|fir_srg|inputs~116_combout\);

-- Location: FF_X47_Y40_N11
\fir_top|fir_srg|inputs[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~116_combout\,
	ena => \fir_top|fir_srg|inputs[6][1]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[6][3]~q\);

-- Location: LCCOMB_X46_Y39_N2
\fir_top|fir_srg|Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~7_combout\ = (\fir_top|fir_srg|Add3~0_combout\ & (((\fir_top|fir_srg|Add3~6_combout\)))) # (!\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|Add3~6_combout\ & (\fir_top|fir_srg|inputs[14][3]~q\)) # 
-- (!\fir_top|fir_srg|Add3~6_combout\ & ((\fir_top|fir_srg|inputs[6][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[14][3]~q\,
	datab => \fir_top|fir_srg|Add3~0_combout\,
	datac => \fir_top|fir_srg|inputs[6][3]~q\,
	datad => \fir_top|fir_srg|Add3~6_combout\,
	combout => \fir_top|fir_srg|Mux28~7_combout\);

-- Location: LCCOMB_X46_Y39_N4
\fir_top|fir_srg|Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~8_combout\ = (\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|Mux28~7_combout\ & (\fir_top|fir_srg|inputs[15][3]~q\)) # (!\fir_top|fir_srg|Mux28~7_combout\ & ((\fir_top|fir_srg|inputs[7][3]~q\))))) # 
-- (!\fir_top|fir_srg|Add3~0_combout\ & (((\fir_top|fir_srg|Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[15][3]~q\,
	datab => \fir_top|fir_srg|inputs[7][3]~q\,
	datac => \fir_top|fir_srg|Add3~0_combout\,
	datad => \fir_top|fir_srg|Mux28~7_combout\,
	combout => \fir_top|fir_srg|Mux28~8_combout\);

-- Location: LCCOMB_X46_Y40_N16
\fir_top|fir_srg|inputs~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~103_combout\ = (\fir_top|x\(3) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & \fir_top|fir_srg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datac => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs~103_combout\);

-- Location: FF_X46_Y40_N17
\fir_top|fir_srg|inputs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~103_combout\,
	ena => \fir_top|fir_srg|inputs[2][0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[2][3]~q\);

-- Location: LCCOMB_X52_Y39_N12
\fir_top|fir_srg|inputs~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~102_combout\ = (\fir_top|x\(3) & (\fir_top|fir_srg|inputs[9][0]~27_combout\ & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs~102_combout\);

-- Location: FF_X47_Y39_N13
\fir_top|fir_srg|inputs[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fir_top|fir_srg|inputs~102_combout\,
	sload => VCC,
	ena => \fir_top|fir_srg|inputs[10][2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[10][3]~q\);

-- Location: LCCOMB_X47_Y41_N26
\fir_top|fir_srg|inputs~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~104_combout\ = (\fir_top|fir_srg|inputs[15][2]~43_combout\ & (\fir_top|fir_srg|inputs[9][0]~27_combout\ & (\fir_top|fir_srg|inputs[15][2]~37_combout\ & \fir_top|x\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datab => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datad => \fir_top|x\(3),
	combout => \fir_top|fir_srg|inputs~104_combout\);

-- Location: FF_X47_Y41_N27
\fir_top|fir_srg|inputs[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~104_combout\,
	ena => \fir_top|fir_srg|inputs[11][0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[11][3]~q\);

-- Location: LCCOMB_X45_Y38_N0
\fir_top|fir_srg|inputs~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~105_combout\ = (\fir_top|x\(3) & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & (\fir_top|fir_srg|inputs[15][2]~43_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datac => \fir_top|fir_srg|inputs[15][2]~43_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~105_combout\);

-- Location: FF_X45_Y38_N1
\fir_top|fir_srg|inputs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~105_combout\,
	ena => \fir_top|fir_srg|inputs[3][1]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[3][3]~q\);

-- Location: LCCOMB_X46_Y39_N28
\fir_top|fir_srg|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~0_combout\ = (\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|Add3~6_combout\ & (\fir_top|fir_srg|inputs[11][3]~q\)) # (!\fir_top|fir_srg|Add3~6_combout\ & ((\fir_top|fir_srg|inputs[3][3]~q\))))) # 
-- (!\fir_top|fir_srg|Add3~0_combout\ & (((\fir_top|fir_srg|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[11][3]~q\,
	datab => \fir_top|fir_srg|inputs[3][3]~q\,
	datac => \fir_top|fir_srg|Add3~0_combout\,
	datad => \fir_top|fir_srg|Add3~6_combout\,
	combout => \fir_top|fir_srg|Mux28~0_combout\);

-- Location: LCCOMB_X46_Y39_N26
\fir_top|fir_srg|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~1_combout\ = (\fir_top|fir_srg|Add3~0_combout\ & (((\fir_top|fir_srg|Mux28~0_combout\)))) # (!\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|Mux28~0_combout\ & ((\fir_top|fir_srg|inputs[10][3]~q\))) # 
-- (!\fir_top|fir_srg|Mux28~0_combout\ & (\fir_top|fir_srg|inputs[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[2][3]~q\,
	datab => \fir_top|fir_srg|inputs[10][3]~q\,
	datac => \fir_top|fir_srg|Add3~0_combout\,
	datad => \fir_top|fir_srg|Mux28~0_combout\,
	combout => \fir_top|fir_srg|Mux28~1_combout\);

-- Location: LCCOMB_X54_Y39_N18
\fir_top|fir_srg|inputs~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~107_combout\ = (!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|x\(3) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[15][2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add1~2_combout\,
	datab => \fir_top|x\(3),
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	combout => \fir_top|fir_srg|inputs~107_combout\);

-- Location: FF_X54_Y39_N19
\fir_top|fir_srg|inputs[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~107_combout\,
	ena => \fir_top|fir_srg|inputs[12][0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[12][3]~q\);

-- Location: LCCOMB_X46_Y38_N4
\fir_top|fir_srg|inputs~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~106_combout\ = (\fir_top|fir_srg|inputs[15][2]~37_combout\ & (\fir_top|x\(3) & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & \fir_top|fir_srg|inputs[15][2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	datab => \fir_top|x\(3),
	datac => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~30_combout\,
	combout => \fir_top|fir_srg|inputs~106_combout\);

-- Location: FF_X46_Y38_N5
\fir_top|fir_srg|inputs[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~106_combout\,
	ena => \fir_top|fir_srg|inputs[13][3]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[13][3]~q\);

-- Location: LCCOMB_X46_Y38_N22
\fir_top|fir_srg|inputs~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~109_combout\ = (\fir_top|fir_srg|inputs[6][1]~38_combout\ & (\fir_top|x\(3) & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datab => \fir_top|x\(3),
	datac => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~109_combout\);

-- Location: FF_X46_Y38_N23
\fir_top|fir_srg|inputs[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~109_combout\,
	ena => \fir_top|fir_srg|inputs[5][3]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[5][3]~q\);

-- Location: LCCOMB_X47_Y40_N20
\fir_top|fir_srg|inputs~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~108_combout\ = (\fir_top|x\(3) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & (\fir_top|fir_srg|inputs[6][1]~38_combout\ & !\fir_top|fir_srg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~38_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs~108_combout\);

-- Location: FF_X47_Y40_N21
\fir_top|fir_srg|inputs[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~108_combout\,
	ena => \fir_top|fir_srg|inputs[4][0]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[4][3]~q\);

-- Location: LCCOMB_X46_Y39_N16
\fir_top|fir_srg|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~2_combout\ = (\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|inputs[5][3]~q\) # ((\fir_top|fir_srg|Add3~6_combout\)))) # (!\fir_top|fir_srg|Add3~0_combout\ & (((\fir_top|fir_srg|inputs[4][3]~q\ & 
-- !\fir_top|fir_srg|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[5][3]~q\,
	datab => \fir_top|fir_srg|inputs[4][3]~q\,
	datac => \fir_top|fir_srg|Add3~0_combout\,
	datad => \fir_top|fir_srg|Add3~6_combout\,
	combout => \fir_top|fir_srg|Mux28~2_combout\);

-- Location: LCCOMB_X46_Y39_N30
\fir_top|fir_srg|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~3_combout\ = (\fir_top|fir_srg|Add3~6_combout\ & ((\fir_top|fir_srg|Mux28~2_combout\ & ((\fir_top|fir_srg|inputs[13][3]~q\))) # (!\fir_top|fir_srg|Mux28~2_combout\ & (\fir_top|fir_srg|inputs[12][3]~q\)))) # 
-- (!\fir_top|fir_srg|Add3~6_combout\ & (((\fir_top|fir_srg|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~6_combout\,
	datab => \fir_top|fir_srg|inputs[12][3]~q\,
	datac => \fir_top|fir_srg|inputs[13][3]~q\,
	datad => \fir_top|fir_srg|Mux28~2_combout\,
	combout => \fir_top|fir_srg|Mux28~3_combout\);

-- Location: LCCOMB_X46_Y40_N30
\fir_top|fir_srg|inputs~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~111_combout\ = (\fir_top|x\(3) & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & !\fir_top|fir_srg|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datac => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datad => \fir_top|fir_srg|Add1~2_combout\,
	combout => \fir_top|fir_srg|inputs~111_combout\);

-- Location: FF_X46_Y40_N31
\fir_top|fir_srg|inputs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~111_combout\,
	ena => \fir_top|fir_srg|inputs[0][2]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[0][3]~q\);

-- Location: LCCOMB_X50_Y39_N30
\fir_top|fir_srg|inputs~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~110_combout\ = (\fir_top|x\(3) & (!\fir_top|fir_srg|Add1~2_combout\ & (\fir_top|fir_srg|inputs[6][1]~26_combout\ & \fir_top|fir_srg|inputs[9][0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|Add1~2_combout\,
	datac => \fir_top|fir_srg|inputs[6][1]~26_combout\,
	datad => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	combout => \fir_top|fir_srg|inputs~110_combout\);

-- Location: FF_X50_Y39_N31
\fir_top|fir_srg|inputs[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~110_combout\,
	ena => \fir_top|fir_srg|inputs[8][2]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[8][3]~q\);

-- Location: LCCOMB_X47_Y38_N4
\fir_top|fir_srg|inputs~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~112_combout\ = (\fir_top|fir_srg|inputs[9][0]~27_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & (\fir_top|x\(3) & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[9][0]~27_combout\,
	datab => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datac => \fir_top|x\(3),
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~112_combout\);

-- Location: FF_X47_Y38_N5
\fir_top|fir_srg|inputs[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~112_combout\,
	ena => \fir_top|fir_srg|inputs[9][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[9][3]~q\);

-- Location: LCCOMB_X47_Y38_N30
\fir_top|fir_srg|inputs~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|inputs~113_combout\ = (\fir_top|x\(3) & (\fir_top|fir_srg|inputs[0][2]~20_combout\ & (\fir_top|fir_srg|inputs[17][3]~10_combout\ & \fir_top|fir_srg|inputs[15][2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|x\(3),
	datab => \fir_top|fir_srg|inputs[0][2]~20_combout\,
	datac => \fir_top|fir_srg|inputs[17][3]~10_combout\,
	datad => \fir_top|fir_srg|inputs[15][2]~37_combout\,
	combout => \fir_top|fir_srg|inputs~113_combout\);

-- Location: FF_X47_Y38_N31
\fir_top|fir_srg|inputs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|inputs~113_combout\,
	ena => \fir_top|fir_srg|inputs[1][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|inputs[1][3]~q\);

-- Location: LCCOMB_X46_Y39_N0
\fir_top|fir_srg|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~4_combout\ = (\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|Add3~6_combout\ & (\fir_top|fir_srg|inputs[9][3]~q\)) # (!\fir_top|fir_srg|Add3~6_combout\ & ((\fir_top|fir_srg|inputs[1][3]~q\))))) # 
-- (!\fir_top|fir_srg|Add3~0_combout\ & (((\fir_top|fir_srg|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[9][3]~q\,
	datab => \fir_top|fir_srg|inputs[1][3]~q\,
	datac => \fir_top|fir_srg|Add3~0_combout\,
	datad => \fir_top|fir_srg|Add3~6_combout\,
	combout => \fir_top|fir_srg|Mux28~4_combout\);

-- Location: LCCOMB_X46_Y39_N10
\fir_top|fir_srg|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~5_combout\ = (\fir_top|fir_srg|Add3~0_combout\ & (((\fir_top|fir_srg|Mux28~4_combout\)))) # (!\fir_top|fir_srg|Add3~0_combout\ & ((\fir_top|fir_srg|Mux28~4_combout\ & ((\fir_top|fir_srg|inputs[8][3]~q\))) # 
-- (!\fir_top|fir_srg|Mux28~4_combout\ & (\fir_top|fir_srg|inputs[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[0][3]~q\,
	datab => \fir_top|fir_srg|inputs[8][3]~q\,
	datac => \fir_top|fir_srg|Add3~0_combout\,
	datad => \fir_top|fir_srg|Mux28~4_combout\,
	combout => \fir_top|fir_srg|Mux28~5_combout\);

-- Location: LCCOMB_X46_Y39_N24
\fir_top|fir_srg|Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~6_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & (\fir_top|fir_srg|Add3~4_combout\)) # (!\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Add3~4_combout\ & (\fir_top|fir_srg|Mux28~3_combout\)) # 
-- (!\fir_top|fir_srg|Add3~4_combout\ & ((\fir_top|fir_srg|Mux28~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~2_combout\,
	datab => \fir_top|fir_srg|Add3~4_combout\,
	datac => \fir_top|fir_srg|Mux28~3_combout\,
	datad => \fir_top|fir_srg|Mux28~5_combout\,
	combout => \fir_top|fir_srg|Mux28~6_combout\);

-- Location: LCCOMB_X46_Y39_N14
\fir_top|fir_srg|Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~9_combout\ = (\fir_top|fir_srg|Add3~2_combout\ & ((\fir_top|fir_srg|Mux28~6_combout\ & (\fir_top|fir_srg|Mux28~8_combout\)) # (!\fir_top|fir_srg|Mux28~6_combout\ & ((\fir_top|fir_srg|Mux28~1_combout\))))) # 
-- (!\fir_top|fir_srg|Add3~2_combout\ & (((\fir_top|fir_srg|Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Add3~2_combout\,
	datab => \fir_top|fir_srg|Mux28~8_combout\,
	datac => \fir_top|fir_srg|Mux28~1_combout\,
	datad => \fir_top|fir_srg|Mux28~6_combout\,
	combout => \fir_top|fir_srg|Mux28~9_combout\);

-- Location: LCCOMB_X47_Y39_N16
\fir_top|fir_srg|Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~10_combout\ = (\fir_top|fir_srg|Mux29~4_combout\ & (\fir_top|fir_srg|inputs[18][3]~q\ & (\fir_top|fir_srg|Mux29~2_combout\))) # (!\fir_top|fir_srg|Mux29~4_combout\ & (((\fir_top|fir_srg|Mux28~9_combout\) # 
-- (!\fir_top|fir_srg|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|inputs[18][3]~q\,
	datab => \fir_top|fir_srg|Mux29~4_combout\,
	datac => \fir_top|fir_srg|Mux29~2_combout\,
	datad => \fir_top|fir_srg|Mux28~9_combout\,
	combout => \fir_top|fir_srg|Mux28~10_combout\);

-- Location: LCCOMB_X47_Y39_N26
\fir_top|fir_srg|Mux28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux28~combout\ = (\fir_top|fir_srg|Mux29~0_combout\ & (((\fir_top|fir_srg|Mux28~10_combout\)))) # (!\fir_top|fir_srg|Mux29~0_combout\ & ((\fir_top|fir_srg|Mux28~10_combout\ & ((\fir_top|fir_srg|inputs[16][3]~q\))) # 
-- (!\fir_top|fir_srg|Mux28~10_combout\ & (\fir_top|fir_srg|inputs[17][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux29~0_combout\,
	datab => \fir_top|fir_srg|inputs[17][3]~q\,
	datac => \fir_top|fir_srg|inputs[16][3]~q\,
	datad => \fir_top|fir_srg|Mux28~10_combout\,
	combout => \fir_top|fir_srg|Mux28~combout\);

-- Location: LCCOMB_X52_Y39_N16
\fir_top|fir_srg|coefsLut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|coefsLut~0_combout\ = (\fir_top|fir_srg|i\(1) & (((!\fir_top|fir_srg|i\(0) & !\fir_top|fir_srg|i\(3))))) # (!\fir_top|fir_srg|i\(1) & (((!\fir_top|fir_srg|i\(3))) # (!\fir_top|fir_srg|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(2),
	datab => \fir_top|fir_srg|i\(1),
	datac => \fir_top|fir_srg|i\(0),
	datad => \fir_top|fir_srg|i\(3),
	combout => \fir_top|fir_srg|coefsLut~0_combout\);

-- Location: LCCOMB_X52_Y39_N18
\fir_top|fir_srg|coefsLut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|coefsLut~1_combout\ = (\fir_top|fir_srg|i\(1) & (!\fir_top|fir_srg|i\(3) & ((\fir_top|fir_srg|i\(0)) # (!\fir_top|fir_srg|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(2),
	datab => \fir_top|fir_srg|i\(1),
	datac => \fir_top|fir_srg|i\(0),
	datad => \fir_top|fir_srg|i\(3),
	combout => \fir_top|fir_srg|coefsLut~1_combout\);

-- Location: LCCOMB_X52_Y39_N24
\fir_top|fir_srg|coefsLut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|coefsLut~2_combout\ = (!\fir_top|fir_srg|i\(3) & (\fir_top|fir_srg|i\(0) $ (((\fir_top|fir_srg|i\(2) & \fir_top|fir_srg|i\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(2),
	datab => \fir_top|fir_srg|i\(1),
	datac => \fir_top|fir_srg|i\(0),
	datad => \fir_top|fir_srg|i\(3),
	combout => \fir_top|fir_srg|coefsLut~2_combout\);

-- Location: LCCOMB_X52_Y39_N22
\fir_top|fir_srg|coefsLut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|coefsLut~3_combout\ = (\fir_top|fir_srg|i\(1) & (!\fir_top|fir_srg|i\(3) & ((\fir_top|fir_srg|i\(2)) # (\fir_top|fir_srg|i\(0))))) # (!\fir_top|fir_srg|i\(1) & (!\fir_top|fir_srg|i\(2) & (!\fir_top|fir_srg|i\(0) & 
-- \fir_top|fir_srg|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(2),
	datab => \fir_top|fir_srg|i\(1),
	datac => \fir_top|fir_srg|i\(0),
	datad => \fir_top|fir_srg|i\(3),
	combout => \fir_top|fir_srg|coefsLut~3_combout\);

-- Location: LCCOMB_X52_Y39_N4
\fir_top|fir_srg|coefsLut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|coefsLut~4_combout\ = (\fir_top|fir_srg|i\(1) & (!\fir_top|fir_srg|i\(3) & ((\fir_top|fir_srg|i\(2)) # (\fir_top|fir_srg|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|i\(2),
	datab => \fir_top|fir_srg|i\(1),
	datac => \fir_top|fir_srg|i\(0),
	datad => \fir_top|fir_srg|i\(3),
	combout => \fir_top|fir_srg|coefsLut~4_combout\);

-- Location: DSPMULT_X44_Y39_N0
\fir_top|fir_srg|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_top|fir_srg|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X44_Y39_N2
\fir_top|fir_srg|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_top|fir_srg|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X43_Y39_N16
\fir_top|fir_srg|acc[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[0]~17_combout\ = (\fir_top|fir_srg|acc\(0) & (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\fir_top|fir_srg|acc\(0) & (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~dataout\ & VCC))
-- \fir_top|fir_srg|acc[0]~18\ = CARRY((\fir_top|fir_srg|acc\(0) & \fir_top|fir_srg|Mult0|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(0),
	datab => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \fir_top|fir_srg|acc[0]~17_combout\,
	cout => \fir_top|fir_srg|acc[0]~18\);

-- Location: FF_X43_Y39_N17
\fir_top|fir_srg|acc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[0]~17_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(0));

-- Location: LCCOMB_X43_Y43_N20
\fir_top|fir_srg|outputs~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~28_combout\ = (\fir_top|fir_srg|outputs[0][0]~0_combout\ & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|acc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|acc\(0),
	combout => \fir_top|fir_srg|outputs~28_combout\);

-- Location: LCCOMB_X43_Y43_N26
\fir_top|fir_srg|outputs[9][0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[9][0]~29_combout\ = ((\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs[9][0]~29_combout\);

-- Location: FF_X43_Y43_N21
\fir_top|fir_srg|outputs[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~28_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][0]~q\);

-- Location: LCCOMB_X48_Y42_N26
\fir_top|fir_srg|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|y[0]~0_combout\ = (\fir_top|addr\(3) & ((\fir_top|addr\(0)))) # (!\fir_top|addr\(3) & (\fir_top|addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datac => \fir_top|addr\(3),
	datad => \fir_top|addr\(0),
	combout => \fir_top|fir_srg|y[0]~0_combout\);

-- Location: LCCOMB_X50_Y42_N2
\fir_top|fir_srg|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Decoder1~0_combout\ = (!\fir_top|fir_srg|j\(3) & \fir_top|fir_srg|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(3),
	datac => \fir_top|fir_srg|Equal2~8_combout\,
	combout => \fir_top|fir_srg|Decoder1~0_combout\);

-- Location: LCCOMB_X50_Y42_N16
\fir_top|fir_srg|outputs[0][0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[0][0]~22_combout\ = ((\fir_top|fir_srg|j\(2)) # ((\fir_top|fir_srg|j\(0)) # (!\fir_top|fir_srg|outputs[0][0]~0_combout\))) # (!\fir_top|fir_srg|Decoder1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Decoder1~0_combout\,
	datab => \fir_top|fir_srg|j\(2),
	datac => \fir_top|fir_srg|j\(0),
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs[0][0]~22_combout\);

-- Location: LCCOMB_X48_Y43_N14
\fir_top|fir_srg|outputs~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~23_combout\ = (\fir_top|fir_srg|acc\(0) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(0),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~23_combout\);

-- Location: LCCOMB_X45_Y40_N14
\fir_top|fir_srg|outputs[0][0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[0][0]~24_combout\ = (!\fir_top|fir_srg|outputs[0][0]~22_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs[0][0]~24_combout\);

-- Location: FF_X48_Y43_N15
\fir_top|fir_srg|outputs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~23_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][0]~q\);

-- Location: LCCOMB_X50_Y42_N30
\fir_top|fir_srg|outputs[1][0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[1][0]~19_combout\ = ((\fir_top|fir_srg|j\(2)) # ((!\fir_top|fir_srg|outputs[0][0]~0_combout\) # (!\fir_top|fir_srg|j\(0)))) # (!\fir_top|fir_srg|Decoder1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Decoder1~0_combout\,
	datab => \fir_top|fir_srg|j\(2),
	datac => \fir_top|fir_srg|j\(0),
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs[1][0]~19_combout\);

-- Location: LCCOMB_X48_Y43_N0
\fir_top|fir_srg|outputs~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~20_combout\ = (\fir_top|fir_srg|acc\(0) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(0),
	datad => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~20_combout\);

-- Location: LCCOMB_X43_Y41_N2
\fir_top|fir_srg|outputs[1][0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[1][0]~21_combout\ = (!\fir_top|fir_srg|outputs[1][0]~19_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs[1][0]~21_combout\);

-- Location: FF_X48_Y43_N1
\fir_top|fir_srg|outputs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~20_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][0]~q\);

-- Location: LCCOMB_X48_Y43_N4
\fir_top|fir_srg|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux63~2_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0))))) # (!\fir_top|addr\(1) & ((\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[1][0]~q\))) # (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|outputs[0][0]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[1][0]~q\,
	combout => \fir_top|fir_srg|Mux63~2_combout\);

-- Location: LCCOMB_X49_Y42_N30
\fir_top|fir_srg|outputs[2][14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[2][14]~4_combout\ = (\fir_top|fir_srg|j\(1) & (\fir_top|fir_srg|always0~0_combout\ & (!\fir_top|fir_srg|Equal3~9_combout\ & !\fir_top|fir_srg|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(1),
	datab => \fir_top|fir_srg|always0~0_combout\,
	datac => \fir_top|fir_srg|Equal3~9_combout\,
	datad => \fir_top|fir_srg|Equal3~4_combout\,
	combout => \fir_top|fir_srg|outputs[2][14]~4_combout\);

-- Location: LCCOMB_X49_Y42_N26
\fir_top|fir_srg|outputs[3][0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[3][0]~25_combout\ = ((\fir_top|fir_srg|j\(2)) # ((!\fir_top|fir_srg|Decoder1~0_combout\) # (!\fir_top|fir_srg|outputs[2][14]~4_combout\))) # (!\fir_top|fir_srg|j\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(0),
	datab => \fir_top|fir_srg|j\(2),
	datac => \fir_top|fir_srg|outputs[2][14]~4_combout\,
	datad => \fir_top|fir_srg|Decoder1~0_combout\,
	combout => \fir_top|fir_srg|outputs[3][0]~25_combout\);

-- Location: LCCOMB_X47_Y43_N8
\fir_top|fir_srg|outputs~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~26_combout\ = (\fir_top|fir_srg|acc\(0) & !\fir_top|fir_srg|outputs[3][0]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(0),
	datad => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	combout => \fir_top|fir_srg|outputs~26_combout\);

-- Location: LCCOMB_X48_Y38_N20
\fir_top|fir_srg|outputs[3][0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[3][0]~27_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	combout => \fir_top|fir_srg|outputs[3][0]~27_combout\);

-- Location: FF_X47_Y43_N9
\fir_top|fir_srg|outputs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~26_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][0]~q\);

-- Location: LCCOMB_X49_Y42_N0
\fir_top|fir_srg|outputs[2][14]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[2][14]~16_combout\ = (\fir_top|fir_srg|j\(0)) # ((\fir_top|fir_srg|j\(2)) # ((!\fir_top|fir_srg|Decoder1~0_combout\) # (!\fir_top|fir_srg|outputs[2][14]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(0),
	datab => \fir_top|fir_srg|j\(2),
	datac => \fir_top|fir_srg|outputs[2][14]~4_combout\,
	datad => \fir_top|fir_srg|Decoder1~0_combout\,
	combout => \fir_top|fir_srg|outputs[2][14]~16_combout\);

-- Location: LCCOMB_X46_Y43_N24
\fir_top|fir_srg|outputs~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~17_combout\ = (\fir_top|fir_srg|acc\(0) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(0),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~17_combout\);

-- Location: LCCOMB_X46_Y43_N26
\fir_top|fir_srg|outputs[2][14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[2][14]~18_combout\ = (!\fir_top|fir_srg|outputs[2][14]~16_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs[2][14]~18_combout\);

-- Location: FF_X46_Y43_N25
\fir_top|fir_srg|outputs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~17_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][0]~q\);

-- Location: LCCOMB_X47_Y43_N14
\fir_top|fir_srg|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux63~3_combout\ = (\fir_top|fir_srg|Mux63~2_combout\ & (((\fir_top|fir_srg|outputs[3][0]~q\)) # (!\fir_top|addr\(1)))) # (!\fir_top|fir_srg|Mux63~2_combout\ & (\fir_top|addr\(1) & ((\fir_top|fir_srg|outputs[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux63~2_combout\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|fir_srg|outputs[3][0]~q\,
	datad => \fir_top|fir_srg|outputs[2][0]~q\,
	combout => \fir_top|fir_srg|Mux63~3_combout\);

-- Location: LCCOMB_X43_Y39_N0
\fir_top|fir_srg|outputs~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~14_combout\ = (\fir_top|fir_srg|acc\(0) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(0),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~14_combout\);

-- Location: LCCOMB_X45_Y40_N28
\fir_top|fir_srg|outputs[8][15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[8][15]~15_combout\ = ((\fir_top|fir_srg|outputs[0][0]~0_combout\ & (!\fir_top|fir_srg|j\(0) & \fir_top|fir_srg|Equal2~9_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \fir_top|fir_srg|j\(0),
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs[8][15]~15_combout\);

-- Location: FF_X43_Y39_N1
\fir_top|fir_srg|outputs[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~14_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][0]~q\);

-- Location: LCCOMB_X47_Y43_N28
\fir_top|fir_srg|Mux63~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux63~4_combout\ = (\fir_top|addr\(3) & ((\fir_top|fir_srg|y[0]~0_combout\) # ((\fir_top|fir_srg|outputs[8][0]~q\)))) # (!\fir_top|addr\(3) & (!\fir_top|fir_srg|y[0]~0_combout\ & (\fir_top|fir_srg|Mux63~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|Mux63~3_combout\,
	datad => \fir_top|fir_srg|outputs[8][0]~q\,
	combout => \fir_top|fir_srg|Mux63~4_combout\);

-- Location: LCCOMB_X50_Y42_N24
\fir_top|fir_srg|outputs[5][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[5][0]~1_combout\ = (((!\fir_top|fir_srg|outputs[0][0]~0_combout\) # (!\fir_top|fir_srg|j\(0))) # (!\fir_top|fir_srg|j\(2))) # (!\fir_top|fir_srg|Decoder1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Decoder1~0_combout\,
	datab => \fir_top|fir_srg|j\(2),
	datac => \fir_top|fir_srg|j\(0),
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs[5][0]~1_combout\);

-- Location: LCCOMB_X42_Y43_N0
\fir_top|fir_srg|outputs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~2_combout\ = (!\fir_top|fir_srg|outputs[5][0]~1_combout\ & \fir_top|fir_srg|acc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	datac => \fir_top|fir_srg|acc\(0),
	combout => \fir_top|fir_srg|outputs~2_combout\);

-- Location: LCCOMB_X43_Y41_N4
\fir_top|fir_srg|outputs[5][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[5][0]~3_combout\ = (!\fir_top|fir_srg|outputs[5][0]~1_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs[5][0]~3_combout\);

-- Location: FF_X42_Y43_N1
\fir_top|fir_srg|outputs[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~2_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][0]~q\);

-- Location: LCCOMB_X49_Y42_N18
\fir_top|fir_srg|outputs[4][0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[4][0]~8_combout\ = (\fir_top|fir_srg|j\(0)) # (((!\fir_top|fir_srg|Decoder1~0_combout\) # (!\fir_top|fir_srg|outputs[0][0]~0_combout\)) # (!\fir_top|fir_srg|j\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(0),
	datab => \fir_top|fir_srg|j\(2),
	datac => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datad => \fir_top|fir_srg|Decoder1~0_combout\,
	combout => \fir_top|fir_srg|outputs[4][0]~8_combout\);

-- Location: LCCOMB_X42_Y42_N0
\fir_top|fir_srg|outputs~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~9_combout\ = (\fir_top|fir_srg|acc\(0) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(0),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~9_combout\);

-- Location: LCCOMB_X49_Y42_N20
\fir_top|fir_srg|outputs[4][0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[4][0]~10_combout\ = (!\fir_top|fir_srg|outputs[4][0]~8_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs[4][0]~10_combout\);

-- Location: FF_X42_Y42_N1
\fir_top|fir_srg|outputs[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~9_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][0]~q\);

-- Location: LCCOMB_X49_Y42_N24
\fir_top|fir_srg|outputs[6][0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[6][0]~5_combout\ = (\fir_top|fir_srg|j\(0)) # (((!\fir_top|fir_srg|Decoder1~0_combout\) # (!\fir_top|fir_srg|outputs[2][14]~4_combout\)) # (!\fir_top|fir_srg|j\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(0),
	datab => \fir_top|fir_srg|j\(2),
	datac => \fir_top|fir_srg|outputs[2][14]~4_combout\,
	datad => \fir_top|fir_srg|Decoder1~0_combout\,
	combout => \fir_top|fir_srg|outputs[6][0]~5_combout\);

-- Location: LCCOMB_X42_Y43_N10
\fir_top|fir_srg|outputs~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~6_combout\ = (\fir_top|fir_srg|acc\(0) & !\fir_top|fir_srg|outputs[6][0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(0),
	datad => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	combout => \fir_top|fir_srg|outputs~6_combout\);

-- Location: LCCOMB_X43_Y41_N20
\fir_top|fir_srg|outputs[6][0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[6][0]~7_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	combout => \fir_top|fir_srg|outputs[6][0]~7_combout\);

-- Location: FF_X42_Y43_N11
\fir_top|fir_srg|outputs[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~6_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][0]~q\);

-- Location: LCCOMB_X42_Y43_N16
\fir_top|fir_srg|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux63~0_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0)) # (\fir_top|fir_srg|outputs[6][0]~q\)))) # (!\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[4][0]~q\ & (!\fir_top|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|outputs[4][0]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[6][0]~q\,
	combout => \fir_top|fir_srg|Mux63~0_combout\);

-- Location: LCCOMB_X49_Y42_N10
\fir_top|fir_srg|outputs[7][0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[7][0]~11_combout\ = (((!\fir_top|fir_srg|Decoder1~0_combout\) # (!\fir_top|fir_srg|outputs[2][14]~4_combout\)) # (!\fir_top|fir_srg|j\(2))) # (!\fir_top|fir_srg|j\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(0),
	datab => \fir_top|fir_srg|j\(2),
	datac => \fir_top|fir_srg|outputs[2][14]~4_combout\,
	datad => \fir_top|fir_srg|Decoder1~0_combout\,
	combout => \fir_top|fir_srg|outputs[7][0]~11_combout\);

-- Location: LCCOMB_X46_Y43_N28
\fir_top|fir_srg|outputs~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~12_combout\ = (\fir_top|fir_srg|acc\(0) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(0),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~12_combout\);

-- Location: LCCOMB_X46_Y43_N2
\fir_top|fir_srg|outputs[7][0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[7][0]~13_combout\ = (!\fir_top|fir_srg|outputs[7][0]~11_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs[7][0]~13_combout\);

-- Location: FF_X46_Y43_N29
\fir_top|fir_srg|outputs[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~12_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][0]~q\);

-- Location: LCCOMB_X46_Y43_N6
\fir_top|fir_srg|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux63~1_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|Mux63~0_combout\ & ((\fir_top|fir_srg|outputs[7][0]~q\))) # (!\fir_top|fir_srg|Mux63~0_combout\ & (\fir_top|fir_srg|outputs[5][0]~q\)))) # (!\fir_top|addr\(0) & 
-- (((\fir_top|fir_srg|Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datab => \fir_top|fir_srg|outputs[5][0]~q\,
	datac => \fir_top|fir_srg|Mux63~0_combout\,
	datad => \fir_top|fir_srg|outputs[7][0]~q\,
	combout => \fir_top|fir_srg|Mux63~1_combout\);

-- Location: LCCOMB_X47_Y43_N22
\fir_top|fir_srg|Mux63~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux63~5_combout\ = (\fir_top|fir_srg|Mux63~4_combout\ & ((\fir_top|fir_srg|outputs[9][0]~q\) # ((!\fir_top|fir_srg|y[0]~0_combout\)))) # (!\fir_top|fir_srg|Mux63~4_combout\ & (((\fir_top|fir_srg|Mux63~1_combout\ & 
-- \fir_top|fir_srg|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[9][0]~q\,
	datab => \fir_top|fir_srg|Mux63~4_combout\,
	datac => \fir_top|fir_srg|Mux63~1_combout\,
	datad => \fir_top|fir_srg|y[0]~0_combout\,
	combout => \fir_top|fir_srg|Mux63~5_combout\);

-- Location: LCCOMB_X47_Y43_N4
\fir_top|fir_srg|Mux63~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux63~6_combout\ = (\fir_top|fir_srg|Mux63~5_combout\ & (((!\fir_top|addr\(1) & !\fir_top|addr\(2))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux63~5_combout\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|addr\(2),
	datad => \fir_top|addr\(3),
	combout => \fir_top|fir_srg|Mux63~6_combout\);

-- Location: LCCOMB_X48_Y42_N0
\fir_top|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|Equal3~0_combout\ = (\fir_top|operation\(0) & \fir_top|operation\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|operation\(0),
	datad => \fir_top|operation\(1),
	combout => \fir_top|Equal3~0_combout\);

-- Location: FF_X47_Y43_N5
\fir_top|fir_srg|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux63~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(0));

-- Location: LCCOMB_X43_Y39_N18
\fir_top|fir_srg|acc[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[1]~19_combout\ = (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\fir_top|fir_srg|acc\(1) & (\fir_top|fir_srg|acc[0]~18\ & VCC)) # (!\fir_top|fir_srg|acc\(1) & (!\fir_top|fir_srg|acc[0]~18\)))) # 
-- (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\fir_top|fir_srg|acc\(1) & (!\fir_top|fir_srg|acc[0]~18\)) # (!\fir_top|fir_srg|acc\(1) & ((\fir_top|fir_srg|acc[0]~18\) # (GND)))))
-- \fir_top|fir_srg|acc[1]~20\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\fir_top|fir_srg|acc\(1) & !\fir_top|fir_srg|acc[0]~18\)) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((!\fir_top|fir_srg|acc[0]~18\) # 
-- (!\fir_top|fir_srg|acc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \fir_top|fir_srg|acc\(1),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[0]~18\,
	combout => \fir_top|fir_srg|acc[1]~19_combout\,
	cout => \fir_top|fir_srg|acc[1]~20\);

-- Location: FF_X43_Y39_N19
\fir_top|fir_srg|acc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[1]~19_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(1));

-- Location: LCCOMB_X43_Y43_N14
\fir_top|fir_srg|outputs~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~39_combout\ = (\fir_top|fir_srg|acc\(1) & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(1),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~39_combout\);

-- Location: FF_X43_Y43_N15
\fir_top|fir_srg|outputs[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~39_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][1]~q\);

-- Location: LCCOMB_X45_Y42_N26
\fir_top|fir_srg|outputs~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~32_combout\ = (\fir_top|fir_srg|acc\(1) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(1),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~32_combout\);

-- Location: FF_X45_Y42_N27
\fir_top|fir_srg|outputs[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~32_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][1]~q\);

-- Location: LCCOMB_X45_Y42_N20
\fir_top|fir_srg|outputs~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~31_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\ & \fir_top|fir_srg|acc\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	datac => \fir_top|fir_srg|acc\(1),
	combout => \fir_top|fir_srg|outputs~31_combout\);

-- Location: FF_X45_Y42_N21
\fir_top|fir_srg|outputs[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~31_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][1]~q\);

-- Location: LCCOMB_X45_Y42_N8
\fir_top|fir_srg|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux62~0_combout\ = (\fir_top|addr\(1) & ((\fir_top|addr\(0)) # ((\fir_top|fir_srg|outputs[6][1]~q\)))) # (!\fir_top|addr\(1) & (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|addr\(0),
	datac => \fir_top|fir_srg|outputs[4][1]~q\,
	datad => \fir_top|fir_srg|outputs[6][1]~q\,
	combout => \fir_top|fir_srg|Mux62~0_combout\);

-- Location: LCCOMB_X46_Y41_N16
\fir_top|fir_srg|outputs~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~33_combout\ = (\fir_top|fir_srg|acc\(1) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(1),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~33_combout\);

-- Location: FF_X46_Y41_N17
\fir_top|fir_srg|outputs[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~33_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][1]~q\);

-- Location: LCCOMB_X42_Y41_N16
\fir_top|fir_srg|outputs~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~30_combout\ = (\fir_top|fir_srg|acc\(1) & !\fir_top|fir_srg|outputs[5][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(1),
	datad => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs~30_combout\);

-- Location: FF_X43_Y41_N5
\fir_top|fir_srg|outputs[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fir_top|fir_srg|outputs~30_combout\,
	sload => VCC,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][1]~q\);

-- Location: LCCOMB_X46_Y41_N22
\fir_top|fir_srg|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux62~1_combout\ = (\fir_top|fir_srg|Mux62~0_combout\ & ((\fir_top|fir_srg|outputs[7][1]~q\) # ((!\fir_top|addr\(0))))) # (!\fir_top|fir_srg|Mux62~0_combout\ & (((\fir_top|fir_srg|outputs[5][1]~q\ & \fir_top|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux62~0_combout\,
	datab => \fir_top|fir_srg|outputs[7][1]~q\,
	datac => \fir_top|fir_srg|outputs[5][1]~q\,
	datad => \fir_top|addr\(0),
	combout => \fir_top|fir_srg|Mux62~1_combout\);

-- Location: LCCOMB_X46_Y43_N22
\fir_top|fir_srg|outputs~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~35_combout\ = (\fir_top|fir_srg|acc\(1) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(1),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~35_combout\);

-- Location: FF_X46_Y43_N23
\fir_top|fir_srg|outputs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~35_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][1]~q\);

-- Location: LCCOMB_X45_Y41_N20
\fir_top|fir_srg|outputs~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~38_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datac => \fir_top|fir_srg|acc\(1),
	combout => \fir_top|fir_srg|outputs~38_combout\);

-- Location: FF_X45_Y41_N21
\fir_top|fir_srg|outputs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~38_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][1]~q\);

-- Location: LCCOMB_X46_Y41_N28
\fir_top|fir_srg|outputs~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~37_combout\ = (\fir_top|fir_srg|acc\(1) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(1),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~37_combout\);

-- Location: FF_X46_Y41_N29
\fir_top|fir_srg|outputs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~37_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][1]~q\);

-- Location: LCCOMB_X42_Y41_N0
\fir_top|fir_srg|outputs~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~36_combout\ = (!\fir_top|fir_srg|outputs[1][0]~19_combout\ & \fir_top|fir_srg|acc\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	datac => \fir_top|fir_srg|acc\(1),
	combout => \fir_top|fir_srg|outputs~36_combout\);

-- Location: FF_X42_Y41_N1
\fir_top|fir_srg|outputs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~36_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][1]~q\);

-- Location: LCCOMB_X46_Y41_N10
\fir_top|fir_srg|Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux62~2_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0))))) # (!\fir_top|addr\(1) & ((\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[1][1]~q\))) # (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|outputs[0][1]~q\,
	datac => \fir_top|fir_srg|outputs[1][1]~q\,
	datad => \fir_top|addr\(0),
	combout => \fir_top|fir_srg|Mux62~2_combout\);

-- Location: LCCOMB_X46_Y41_N0
\fir_top|fir_srg|Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux62~3_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|Mux62~2_combout\ & ((\fir_top|fir_srg|outputs[3][1]~q\))) # (!\fir_top|fir_srg|Mux62~2_combout\ & (\fir_top|fir_srg|outputs[2][1]~q\)))) # (!\fir_top|addr\(1) & 
-- (((\fir_top|fir_srg|Mux62~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[2][1]~q\,
	datab => \fir_top|fir_srg|outputs[3][1]~q\,
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|Mux62~2_combout\,
	combout => \fir_top|fir_srg|Mux62~3_combout\);

-- Location: LCCOMB_X43_Y39_N14
\fir_top|fir_srg|outputs~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~34_combout\ = (\fir_top|fir_srg|Equal2~9_combout\ & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|acc\(1) & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Equal2~9_combout\,
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|acc\(1),
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~34_combout\);

-- Location: FF_X43_Y39_N15
\fir_top|fir_srg|outputs[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~34_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][1]~q\);

-- Location: LCCOMB_X47_Y43_N20
\fir_top|fir_srg|Mux62~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux62~4_combout\ = (\fir_top|fir_srg|y[0]~0_combout\ & (((\fir_top|addr\(3))))) # (!\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|addr\(3) & ((\fir_top|fir_srg|outputs[8][1]~q\))) # (!\fir_top|addr\(3) & 
-- (\fir_top|fir_srg|Mux62~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux62~3_combout\,
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|outputs[8][1]~q\,
	datad => \fir_top|addr\(3),
	combout => \fir_top|fir_srg|Mux62~4_combout\);

-- Location: LCCOMB_X47_Y43_N2
\fir_top|fir_srg|Mux62~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux62~5_combout\ = (\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|fir_srg|Mux62~4_combout\ & (\fir_top|fir_srg|outputs[9][1]~q\)) # (!\fir_top|fir_srg|Mux62~4_combout\ & ((\fir_top|fir_srg|Mux62~1_combout\))))) # 
-- (!\fir_top|fir_srg|y[0]~0_combout\ & (((\fir_top|fir_srg|Mux62~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[9][1]~q\,
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|Mux62~1_combout\,
	datad => \fir_top|fir_srg|Mux62~4_combout\,
	combout => \fir_top|fir_srg|Mux62~5_combout\);

-- Location: LCCOMB_X47_Y43_N26
\fir_top|fir_srg|Mux62~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux62~6_combout\ = (\fir_top|fir_srg|Mux62~5_combout\ & (((!\fir_top|addr\(1) & !\fir_top|addr\(2))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|addr\(1),
	datac => \fir_top|addr\(2),
	datad => \fir_top|fir_srg|Mux62~5_combout\,
	combout => \fir_top|fir_srg|Mux62~6_combout\);

-- Location: FF_X47_Y43_N27
\fir_top|fir_srg|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux62~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(1));

-- Location: LCCOMB_X43_Y39_N20
\fir_top|fir_srg|acc[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[2]~21_combout\ = ((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (\fir_top|fir_srg|acc\(2) $ (!\fir_top|fir_srg|acc[1]~20\)))) # (GND)
-- \fir_top|fir_srg|acc[2]~22\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\fir_top|fir_srg|acc\(2)) # (!\fir_top|fir_srg|acc[1]~20\))) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT2\ & (\fir_top|fir_srg|acc\(2) & 
-- !\fir_top|fir_srg|acc[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \fir_top|fir_srg|acc\(2),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[1]~20\,
	combout => \fir_top|fir_srg|acc[2]~21_combout\,
	cout => \fir_top|fir_srg|acc[2]~22\);

-- Location: FF_X43_Y39_N21
\fir_top|fir_srg|acc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[2]~21_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(2));

-- Location: LCCOMB_X45_Y43_N4
\fir_top|fir_srg|outputs~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~45_combout\ = (\fir_top|fir_srg|acc\(2) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(2),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~45_combout\);

-- Location: FF_X45_Y43_N5
\fir_top|fir_srg|outputs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~45_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][2]~q\);

-- Location: LCCOMB_X45_Y41_N6
\fir_top|fir_srg|outputs~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~48_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datac => \fir_top|fir_srg|acc\(2),
	combout => \fir_top|fir_srg|outputs~48_combout\);

-- Location: FF_X45_Y41_N7
\fir_top|fir_srg|outputs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~48_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][2]~q\);

-- Location: LCCOMB_X42_Y42_N14
\fir_top|fir_srg|outputs~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~46_combout\ = (\fir_top|fir_srg|acc\(2) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(2),
	datad => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~46_combout\);

-- Location: FF_X42_Y42_N15
\fir_top|fir_srg|outputs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~46_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][2]~q\);

-- Location: LCCOMB_X46_Y42_N6
\fir_top|fir_srg|outputs~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~47_combout\ = (\fir_top|fir_srg|acc\(2) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(2),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~47_combout\);

-- Location: FF_X46_Y42_N7
\fir_top|fir_srg|outputs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~47_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][2]~q\);

-- Location: LCCOMB_X43_Y42_N18
\fir_top|fir_srg|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux61~2_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0))))) # (!\fir_top|addr\(1) & ((\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[1][2]~q\)) # (!\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[1][2]~q\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[0][2]~q\,
	combout => \fir_top|fir_srg|Mux61~2_combout\);

-- Location: LCCOMB_X43_Y42_N12
\fir_top|fir_srg|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux61~3_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|Mux61~2_combout\ & ((\fir_top|fir_srg|outputs[3][2]~q\))) # (!\fir_top|fir_srg|Mux61~2_combout\ & (\fir_top|fir_srg|outputs[2][2]~q\)))) # (!\fir_top|addr\(1) & 
-- (((\fir_top|fir_srg|Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[2][2]~q\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|fir_srg|outputs[3][2]~q\,
	datad => \fir_top|fir_srg|Mux61~2_combout\,
	combout => \fir_top|fir_srg|Mux61~3_combout\);

-- Location: LCCOMB_X43_Y39_N12
\fir_top|fir_srg|outputs~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~44_combout\ = (\fir_top|fir_srg|Equal2~9_combout\ & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|acc\(2) & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Equal2~9_combout\,
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|acc\(2),
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~44_combout\);

-- Location: FF_X43_Y39_N13
\fir_top|fir_srg|outputs[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~44_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][2]~q\);

-- Location: LCCOMB_X43_Y42_N26
\fir_top|fir_srg|Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux61~4_combout\ = (\fir_top|addr\(3) & (((\fir_top|fir_srg|outputs[8][2]~q\) # (\fir_top|fir_srg|y[0]~0_combout\)))) # (!\fir_top|addr\(3) & (\fir_top|fir_srg|Mux61~3_combout\ & ((!\fir_top|fir_srg|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux61~3_combout\,
	datab => \fir_top|fir_srg|outputs[8][2]~q\,
	datac => \fir_top|addr\(3),
	datad => \fir_top|fir_srg|y[0]~0_combout\,
	combout => \fir_top|fir_srg|Mux61~4_combout\);

-- Location: LCCOMB_X43_Y41_N26
\fir_top|fir_srg|outputs~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~40_combout\ = (\fir_top|fir_srg|acc\(2) & !\fir_top|fir_srg|outputs[5][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(2),
	datad => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs~40_combout\);

-- Location: FF_X43_Y41_N27
\fir_top|fir_srg|outputs[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~40_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][2]~q\);

-- Location: LCCOMB_X46_Y42_N8
\fir_top|fir_srg|outputs~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~43_combout\ = (\fir_top|fir_srg|acc\(2) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(2),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~43_combout\);

-- Location: FF_X46_Y42_N9
\fir_top|fir_srg|outputs[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~43_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][2]~q\);

-- Location: LCCOMB_X45_Y43_N6
\fir_top|fir_srg|outputs~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~41_combout\ = (\fir_top|fir_srg|acc\(2) & !\fir_top|fir_srg|outputs[6][0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(2),
	datad => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	combout => \fir_top|fir_srg|outputs~41_combout\);

-- Location: FF_X42_Y43_N31
\fir_top|fir_srg|outputs[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fir_top|fir_srg|outputs~41_combout\,
	sload => VCC,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][2]~q\);

-- Location: LCCOMB_X42_Y42_N10
\fir_top|fir_srg|outputs~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~42_combout\ = (\fir_top|fir_srg|acc\(2) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(2),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~42_combout\);

-- Location: FF_X42_Y42_N11
\fir_top|fir_srg|outputs[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~42_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][2]~q\);

-- Location: LCCOMB_X42_Y42_N24
\fir_top|fir_srg|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux61~0_combout\ = (\fir_top|addr\(0) & (((\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & ((\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[6][2]~q\)) # (!\fir_top|addr\(1) & ((\fir_top|fir_srg|outputs[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[6][2]~q\,
	datab => \fir_top|addr\(0),
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|outputs[4][2]~q\,
	combout => \fir_top|fir_srg|Mux61~0_combout\);

-- Location: LCCOMB_X43_Y42_N4
\fir_top|fir_srg|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux61~1_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|Mux61~0_combout\ & ((\fir_top|fir_srg|outputs[7][2]~q\))) # (!\fir_top|fir_srg|Mux61~0_combout\ & (\fir_top|fir_srg|outputs[5][2]~q\)))) # (!\fir_top|addr\(0) & 
-- (((\fir_top|fir_srg|Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datab => \fir_top|fir_srg|outputs[5][2]~q\,
	datac => \fir_top|fir_srg|outputs[7][2]~q\,
	datad => \fir_top|fir_srg|Mux61~0_combout\,
	combout => \fir_top|fir_srg|Mux61~1_combout\);

-- Location: LCCOMB_X43_Y43_N12
\fir_top|fir_srg|outputs~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~49_combout\ = (\fir_top|fir_srg|acc\(2) & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(2),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~49_combout\);

-- Location: FF_X43_Y43_N13
\fir_top|fir_srg|outputs[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~49_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][2]~q\);

-- Location: LCCOMB_X43_Y42_N0
\fir_top|fir_srg|Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux61~5_combout\ = (\fir_top|fir_srg|Mux61~4_combout\ & (((\fir_top|fir_srg|outputs[9][2]~q\)) # (!\fir_top|fir_srg|y[0]~0_combout\))) # (!\fir_top|fir_srg|Mux61~4_combout\ & (\fir_top|fir_srg|y[0]~0_combout\ & 
-- (\fir_top|fir_srg|Mux61~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux61~4_combout\,
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|Mux61~1_combout\,
	datad => \fir_top|fir_srg|outputs[9][2]~q\,
	combout => \fir_top|fir_srg|Mux61~5_combout\);

-- Location: LCCOMB_X49_Y43_N24
\fir_top|fir_srg|Mux61~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux61~6_combout\ = (\fir_top|fir_srg|Mux61~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|fir_srg|Mux61~5_combout\,
	datac => \fir_top|addr\(3),
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux61~6_combout\);

-- Location: FF_X49_Y43_N25
\fir_top|fir_srg|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux61~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(2));

-- Location: LCCOMB_X43_Y39_N22
\fir_top|fir_srg|acc[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[3]~23_combout\ = (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\fir_top|fir_srg|acc\(3) & (\fir_top|fir_srg|acc[2]~22\ & VCC)) # (!\fir_top|fir_srg|acc\(3) & (!\fir_top|fir_srg|acc[2]~22\)))) # 
-- (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\fir_top|fir_srg|acc\(3) & (!\fir_top|fir_srg|acc[2]~22\)) # (!\fir_top|fir_srg|acc\(3) & ((\fir_top|fir_srg|acc[2]~22\) # (GND)))))
-- \fir_top|fir_srg|acc[3]~24\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\fir_top|fir_srg|acc\(3) & !\fir_top|fir_srg|acc[2]~22\)) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((!\fir_top|fir_srg|acc[2]~22\) # 
-- (!\fir_top|fir_srg|acc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \fir_top|fir_srg|acc\(3),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[2]~22\,
	combout => \fir_top|fir_srg|acc[3]~23_combout\,
	cout => \fir_top|fir_srg|acc[3]~24\);

-- Location: FF_X43_Y39_N23
\fir_top|fir_srg|acc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[3]~23_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(3));

-- Location: LCCOMB_X43_Y43_N30
\fir_top|fir_srg|outputs~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~59_combout\ = (\fir_top|fir_srg|acc\(3) & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(3),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~59_combout\);

-- Location: FF_X43_Y43_N31
\fir_top|fir_srg|outputs[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~59_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][3]~q\);

-- Location: LCCOMB_X43_Y39_N6
\fir_top|fir_srg|outputs~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~54_combout\ = (\fir_top|fir_srg|acc\(3) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(3),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~54_combout\);

-- Location: FF_X43_Y39_N7
\fir_top|fir_srg|outputs[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~54_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][3]~q\);

-- Location: LCCOMB_X47_Y42_N4
\fir_top|fir_srg|outputs~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~58_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datac => \fir_top|fir_srg|acc\(3),
	combout => \fir_top|fir_srg|outputs~58_combout\);

-- Location: FF_X47_Y42_N5
\fir_top|fir_srg|outputs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~58_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][3]~q\);

-- Location: LCCOMB_X46_Y43_N20
\fir_top|fir_srg|outputs~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~55_combout\ = (\fir_top|fir_srg|acc\(3) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(3),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~55_combout\);

-- Location: FF_X46_Y43_N21
\fir_top|fir_srg|outputs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~55_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][3]~q\);

-- Location: LCCOMB_X46_Y42_N18
\fir_top|fir_srg|outputs~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~57_combout\ = (\fir_top|fir_srg|acc\(3) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(3),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~57_combout\);

-- Location: FF_X46_Y42_N19
\fir_top|fir_srg|outputs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~57_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][3]~q\);

-- Location: LCCOMB_X42_Y42_N20
\fir_top|fir_srg|outputs~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~56_combout\ = (\fir_top|fir_srg|acc\(3) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(3),
	datad => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~56_combout\);

-- Location: FF_X42_Y42_N21
\fir_top|fir_srg|outputs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~56_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][3]~q\);

-- Location: LCCOMB_X42_Y42_N18
\fir_top|fir_srg|Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux60~2_combout\ = (\fir_top|addr\(0) & (((\fir_top|addr\(1)) # (\fir_top|fir_srg|outputs[1][3]~q\)))) # (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[0][3]~q\ & (!\fir_top|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[0][3]~q\,
	datab => \fir_top|addr\(0),
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|outputs[1][3]~q\,
	combout => \fir_top|fir_srg|Mux60~2_combout\);

-- Location: LCCOMB_X43_Y42_N28
\fir_top|fir_srg|Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux60~3_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|Mux60~2_combout\ & (\fir_top|fir_srg|outputs[3][3]~q\)) # (!\fir_top|fir_srg|Mux60~2_combout\ & ((\fir_top|fir_srg|outputs[2][3]~q\))))) # (!\fir_top|addr\(1) & 
-- (((\fir_top|fir_srg|Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[3][3]~q\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|fir_srg|outputs[2][3]~q\,
	datad => \fir_top|fir_srg|Mux60~2_combout\,
	combout => \fir_top|fir_srg|Mux60~3_combout\);

-- Location: LCCOMB_X43_Y42_N14
\fir_top|fir_srg|Mux60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux60~4_combout\ = (\fir_top|addr\(3) & ((\fir_top|fir_srg|outputs[8][3]~q\) # ((\fir_top|fir_srg|y[0]~0_combout\)))) # (!\fir_top|addr\(3) & (((\fir_top|fir_srg|Mux60~3_combout\ & !\fir_top|fir_srg|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[8][3]~q\,
	datab => \fir_top|fir_srg|Mux60~3_combout\,
	datac => \fir_top|addr\(3),
	datad => \fir_top|fir_srg|y[0]~0_combout\,
	combout => \fir_top|fir_srg|Mux60~4_combout\);

-- Location: LCCOMB_X43_Y41_N16
\fir_top|fir_srg|outputs~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~50_combout\ = (\fir_top|fir_srg|acc\(3) & !\fir_top|fir_srg|outputs[5][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(3),
	datad => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs~50_combout\);

-- Location: FF_X43_Y41_N17
\fir_top|fir_srg|outputs[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~50_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][3]~q\);

-- Location: LCCOMB_X43_Y41_N22
\fir_top|fir_srg|outputs~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~51_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\ & \fir_top|fir_srg|acc\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	datad => \fir_top|fir_srg|acc\(3),
	combout => \fir_top|fir_srg|outputs~51_combout\);

-- Location: FF_X43_Y41_N23
\fir_top|fir_srg|outputs[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~51_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][3]~q\);

-- Location: LCCOMB_X43_Y42_N10
\fir_top|fir_srg|outputs~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~52_combout\ = (\fir_top|fir_srg|acc\(3) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(3),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~52_combout\);

-- Location: FF_X43_Y42_N11
\fir_top|fir_srg|outputs[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~52_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][3]~q\);

-- Location: LCCOMB_X43_Y42_N8
\fir_top|fir_srg|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux60~0_combout\ = (\fir_top|addr\(0) & (((\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & ((\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[6][3]~q\)) # (!\fir_top|addr\(1) & ((\fir_top|fir_srg|outputs[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datab => \fir_top|fir_srg|outputs[6][3]~q\,
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|outputs[4][3]~q\,
	combout => \fir_top|fir_srg|Mux60~0_combout\);

-- Location: LCCOMB_X46_Y42_N16
\fir_top|fir_srg|outputs~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~53_combout\ = (\fir_top|fir_srg|acc\(3) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(3),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~53_combout\);

-- Location: FF_X46_Y42_N17
\fir_top|fir_srg|outputs[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~53_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][3]~q\);

-- Location: LCCOMB_X43_Y42_N22
\fir_top|fir_srg|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux60~1_combout\ = (\fir_top|fir_srg|Mux60~0_combout\ & (((\fir_top|fir_srg|outputs[7][3]~q\) # (!\fir_top|addr\(0))))) # (!\fir_top|fir_srg|Mux60~0_combout\ & (\fir_top|fir_srg|outputs[5][3]~q\ & (\fir_top|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[5][3]~q\,
	datab => \fir_top|fir_srg|Mux60~0_combout\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[7][3]~q\,
	combout => \fir_top|fir_srg|Mux60~1_combout\);

-- Location: LCCOMB_X43_Y42_N24
\fir_top|fir_srg|Mux60~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux60~5_combout\ = (\fir_top|fir_srg|Mux60~4_combout\ & ((\fir_top|fir_srg|outputs[9][3]~q\) # ((!\fir_top|fir_srg|y[0]~0_combout\)))) # (!\fir_top|fir_srg|Mux60~4_combout\ & (((\fir_top|fir_srg|Mux60~1_combout\ & 
-- \fir_top|fir_srg|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[9][3]~q\,
	datab => \fir_top|fir_srg|Mux60~4_combout\,
	datac => \fir_top|fir_srg|Mux60~1_combout\,
	datad => \fir_top|fir_srg|y[0]~0_combout\,
	combout => \fir_top|fir_srg|Mux60~5_combout\);

-- Location: LCCOMB_X49_Y43_N26
\fir_top|fir_srg|Mux60~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux60~6_combout\ = (\fir_top|fir_srg|Mux60~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|fir_srg|Mux60~5_combout\,
	datac => \fir_top|addr\(3),
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux60~6_combout\);

-- Location: FF_X49_Y43_N27
\fir_top|fir_srg|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux60~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(3));

-- Location: LCCOMB_X43_Y39_N24
\fir_top|fir_srg|acc[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[4]~25_combout\ = ((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (\fir_top|fir_srg|acc\(4) $ (!\fir_top|fir_srg|acc[3]~24\)))) # (GND)
-- \fir_top|fir_srg|acc[4]~26\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\fir_top|fir_srg|acc\(4)) # (!\fir_top|fir_srg|acc[3]~24\))) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT4\ & (\fir_top|fir_srg|acc\(4) & 
-- !\fir_top|fir_srg|acc[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \fir_top|fir_srg|acc\(4),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[3]~24\,
	combout => \fir_top|fir_srg|acc[4]~25_combout\,
	cout => \fir_top|fir_srg|acc[4]~26\);

-- Location: FF_X43_Y39_N25
\fir_top|fir_srg|acc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[4]~25_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(4));

-- Location: LCCOMB_X45_Y40_N12
\fir_top|fir_srg|outputs~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~64_combout\ = (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|acc\(4) & (\fir_top|fir_srg|outputs[0][0]~0_combout\ & \fir_top|fir_srg|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(0),
	datab => \fir_top|fir_srg|acc\(4),
	datac => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs~64_combout\);

-- Location: FF_X45_Y40_N13
\fir_top|fir_srg|outputs[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~64_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][4]~q\);

-- Location: LCCOMB_X45_Y43_N22
\fir_top|fir_srg|outputs~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~65_combout\ = (\fir_top|fir_srg|acc\(4) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(4),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~65_combout\);

-- Location: FF_X45_Y43_N23
\fir_top|fir_srg|outputs[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~65_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][4]~q\);

-- Location: LCCOMB_X45_Y41_N2
\fir_top|fir_srg|outputs~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~68_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datad => \fir_top|fir_srg|acc\(4),
	combout => \fir_top|fir_srg|outputs~68_combout\);

-- Location: FF_X45_Y41_N3
\fir_top|fir_srg|outputs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~68_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][4]~q\);

-- Location: LCCOMB_X45_Y41_N16
\fir_top|fir_srg|outputs~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~66_combout\ = (!\fir_top|fir_srg|outputs[1][0]~19_combout\ & \fir_top|fir_srg|acc\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	datad => \fir_top|fir_srg|acc\(4),
	combout => \fir_top|fir_srg|outputs~66_combout\);

-- Location: FF_X45_Y41_N17
\fir_top|fir_srg|outputs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~66_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][4]~q\);

-- Location: LCCOMB_X45_Y40_N10
\fir_top|fir_srg|outputs~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~67_combout\ = (\fir_top|fir_srg|acc\(4) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(4),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~67_combout\);

-- Location: FF_X45_Y40_N11
\fir_top|fir_srg|outputs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~67_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][4]~q\);

-- Location: LCCOMB_X45_Y44_N28
\fir_top|fir_srg|Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux59~2_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0))))) # (!\fir_top|addr\(1) & ((\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[1][4]~q\)) # (!\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|outputs[1][4]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[0][4]~q\,
	combout => \fir_top|fir_srg|Mux59~2_combout\);

-- Location: LCCOMB_X45_Y44_N10
\fir_top|fir_srg|Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux59~3_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|Mux59~2_combout\ & ((\fir_top|fir_srg|outputs[3][4]~q\))) # (!\fir_top|fir_srg|Mux59~2_combout\ & (\fir_top|fir_srg|outputs[2][4]~q\)))) # (!\fir_top|addr\(1) & 
-- (((\fir_top|fir_srg|Mux59~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|outputs[2][4]~q\,
	datac => \fir_top|fir_srg|outputs[3][4]~q\,
	datad => \fir_top|fir_srg|Mux59~2_combout\,
	combout => \fir_top|fir_srg|Mux59~3_combout\);

-- Location: LCCOMB_X45_Y44_N0
\fir_top|fir_srg|Mux59~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux59~4_combout\ = (\fir_top|addr\(3) & ((\fir_top|fir_srg|y[0]~0_combout\) # ((\fir_top|fir_srg|outputs[8][4]~q\)))) # (!\fir_top|addr\(3) & (!\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|fir_srg|Mux59~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|outputs[8][4]~q\,
	datad => \fir_top|fir_srg|Mux59~3_combout\,
	combout => \fir_top|fir_srg|Mux59~4_combout\);

-- Location: LCCOMB_X45_Y42_N4
\fir_top|fir_srg|outputs~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~62_combout\ = (\fir_top|fir_srg|acc\(4) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(4),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~62_combout\);

-- Location: FF_X45_Y42_N5
\fir_top|fir_srg|outputs[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~62_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][4]~q\);

-- Location: LCCOMB_X45_Y42_N18
\fir_top|fir_srg|outputs~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~61_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\ & \fir_top|fir_srg|acc\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	datac => \fir_top|fir_srg|acc\(4),
	combout => \fir_top|fir_srg|outputs~61_combout\);

-- Location: FF_X45_Y42_N19
\fir_top|fir_srg|outputs[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~61_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][4]~q\);

-- Location: LCCOMB_X45_Y42_N10
\fir_top|fir_srg|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux59~0_combout\ = (\fir_top|addr\(1) & ((\fir_top|addr\(0)) # ((\fir_top|fir_srg|outputs[6][4]~q\)))) # (!\fir_top|addr\(1) & (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|addr\(0),
	datac => \fir_top|fir_srg|outputs[4][4]~q\,
	datad => \fir_top|fir_srg|outputs[6][4]~q\,
	combout => \fir_top|fir_srg|Mux59~0_combout\);

-- Location: LCCOMB_X42_Y43_N24
\fir_top|fir_srg|outputs~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~60_combout\ = (!\fir_top|fir_srg|outputs[5][0]~1_combout\ & \fir_top|fir_srg|acc\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	datad => \fir_top|fir_srg|acc\(4),
	combout => \fir_top|fir_srg|outputs~60_combout\);

-- Location: FF_X42_Y43_N25
\fir_top|fir_srg|outputs[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~60_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][4]~q\);

-- Location: LCCOMB_X48_Y43_N16
\fir_top|fir_srg|outputs~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~63_combout\ = (!\fir_top|fir_srg|outputs[7][0]~11_combout\ & \fir_top|fir_srg|acc\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	datad => \fir_top|fir_srg|acc\(4),
	combout => \fir_top|fir_srg|outputs~63_combout\);

-- Location: FF_X46_Y43_N3
\fir_top|fir_srg|outputs[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fir_top|fir_srg|outputs~63_combout\,
	sload => VCC,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][4]~q\);

-- Location: LCCOMB_X46_Y43_N0
\fir_top|fir_srg|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux59~1_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|Mux59~0_combout\ & ((\fir_top|fir_srg|outputs[7][4]~q\))) # (!\fir_top|fir_srg|Mux59~0_combout\ & (\fir_top|fir_srg|outputs[5][4]~q\)))) # (!\fir_top|addr\(0) & 
-- (\fir_top|fir_srg|Mux59~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datab => \fir_top|fir_srg|Mux59~0_combout\,
	datac => \fir_top|fir_srg|outputs[5][4]~q\,
	datad => \fir_top|fir_srg|outputs[7][4]~q\,
	combout => \fir_top|fir_srg|Mux59~1_combout\);

-- Location: LCCOMB_X43_Y43_N24
\fir_top|fir_srg|outputs~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~69_combout\ = (\fir_top|fir_srg|outputs[0][0]~0_combout\ & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|acc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|acc\(4),
	combout => \fir_top|fir_srg|outputs~69_combout\);

-- Location: FF_X43_Y43_N25
\fir_top|fir_srg|outputs[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~69_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][4]~q\);

-- Location: LCCOMB_X47_Y43_N16
\fir_top|fir_srg|Mux59~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux59~5_combout\ = (\fir_top|fir_srg|Mux59~4_combout\ & (((\fir_top|fir_srg|outputs[9][4]~q\)) # (!\fir_top|fir_srg|y[0]~0_combout\))) # (!\fir_top|fir_srg|Mux59~4_combout\ & (\fir_top|fir_srg|y[0]~0_combout\ & 
-- (\fir_top|fir_srg|Mux59~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux59~4_combout\,
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|Mux59~1_combout\,
	datad => \fir_top|fir_srg|outputs[9][4]~q\,
	combout => \fir_top|fir_srg|Mux59~5_combout\);

-- Location: LCCOMB_X47_Y43_N0
\fir_top|fir_srg|Mux59~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux59~6_combout\ = (\fir_top|fir_srg|Mux59~5_combout\ & (((!\fir_top|addr\(1) & !\fir_top|addr\(2))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|addr\(1),
	datac => \fir_top|addr\(2),
	datad => \fir_top|fir_srg|Mux59~5_combout\,
	combout => \fir_top|fir_srg|Mux59~6_combout\);

-- Location: FF_X47_Y43_N1
\fir_top|fir_srg|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux59~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(4));

-- Location: LCCOMB_X43_Y39_N26
\fir_top|fir_srg|acc[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[5]~27_combout\ = (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\fir_top|fir_srg|acc\(5) & (\fir_top|fir_srg|acc[4]~26\ & VCC)) # (!\fir_top|fir_srg|acc\(5) & (!\fir_top|fir_srg|acc[4]~26\)))) # 
-- (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\fir_top|fir_srg|acc\(5) & (!\fir_top|fir_srg|acc[4]~26\)) # (!\fir_top|fir_srg|acc\(5) & ((\fir_top|fir_srg|acc[4]~26\) # (GND)))))
-- \fir_top|fir_srg|acc[5]~28\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\fir_top|fir_srg|acc\(5) & !\fir_top|fir_srg|acc[4]~26\)) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((!\fir_top|fir_srg|acc[4]~26\) # 
-- (!\fir_top|fir_srg|acc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \fir_top|fir_srg|acc\(5),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[4]~26\,
	combout => \fir_top|fir_srg|acc[5]~27_combout\,
	cout => \fir_top|fir_srg|acc[5]~28\);

-- Location: FF_X43_Y39_N27
\fir_top|fir_srg|acc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[5]~27_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(5));

-- Location: LCCOMB_X45_Y40_N16
\fir_top|fir_srg|outputs~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~70_combout\ = (\fir_top|fir_srg|outputs[0][0]~0_combout\ & (\fir_top|fir_srg|acc\(5) & (!\fir_top|fir_srg|j\(0) & \fir_top|fir_srg|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datab => \fir_top|fir_srg|acc\(5),
	datac => \fir_top|fir_srg|j\(0),
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs~70_combout\);

-- Location: FF_X45_Y40_N17
\fir_top|fir_srg|outputs[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~70_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][5]~q\);

-- Location: LCCOMB_X43_Y43_N2
\fir_top|fir_srg|outputs~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~79_combout\ = (\fir_top|fir_srg|acc\(5) & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(5),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~79_combout\);

-- Location: FF_X43_Y43_N3
\fir_top|fir_srg|outputs[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~79_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][5]~q\);

-- Location: LCCOMB_X45_Y41_N0
\fir_top|fir_srg|outputs~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~78_combout\ = (\fir_top|fir_srg|acc\(5) & !\fir_top|fir_srg|outputs[3][0]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(5),
	datac => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	combout => \fir_top|fir_srg|outputs~78_combout\);

-- Location: FF_X45_Y41_N1
\fir_top|fir_srg|outputs[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~78_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][5]~q\);

-- Location: LCCOMB_X42_Y41_N6
\fir_top|fir_srg|outputs~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~76_combout\ = (!\fir_top|fir_srg|outputs[1][0]~19_combout\ & \fir_top|fir_srg|acc\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	datad => \fir_top|fir_srg|acc\(5),
	combout => \fir_top|fir_srg|outputs~76_combout\);

-- Location: FF_X42_Y41_N7
\fir_top|fir_srg|outputs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~76_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][5]~q\);

-- Location: LCCOMB_X46_Y41_N2
\fir_top|fir_srg|outputs~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~77_combout\ = (\fir_top|fir_srg|acc\(5) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(5),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~77_combout\);

-- Location: FF_X46_Y41_N3
\fir_top|fir_srg|outputs[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~77_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][5]~q\);

-- Location: LCCOMB_X46_Y41_N12
\fir_top|fir_srg|Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux58~2_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0))))) # (!\fir_top|addr\(1) & ((\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[1][5]~q\)) # (!\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[1][5]~q\,
	datab => \fir_top|fir_srg|outputs[0][5]~q\,
	datac => \fir_top|addr\(1),
	datad => \fir_top|addr\(0),
	combout => \fir_top|fir_srg|Mux58~2_combout\);

-- Location: LCCOMB_X45_Y43_N20
\fir_top|fir_srg|outputs~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~75_combout\ = (\fir_top|fir_srg|acc\(5) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(5),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~75_combout\);

-- Location: FF_X45_Y43_N21
\fir_top|fir_srg|outputs[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~75_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][5]~q\);

-- Location: LCCOMB_X45_Y43_N30
\fir_top|fir_srg|Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux58~3_combout\ = (\fir_top|fir_srg|Mux58~2_combout\ & ((\fir_top|fir_srg|outputs[3][5]~q\) # ((!\fir_top|addr\(1))))) # (!\fir_top|fir_srg|Mux58~2_combout\ & (((\fir_top|addr\(1) & \fir_top|fir_srg|outputs[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[3][5]~q\,
	datab => \fir_top|fir_srg|Mux58~2_combout\,
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|outputs[2][5]~q\,
	combout => \fir_top|fir_srg|Mux58~3_combout\);

-- Location: LCCOMB_X42_Y43_N18
\fir_top|fir_srg|outputs~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~71_combout\ = (\fir_top|fir_srg|acc\(5) & !\fir_top|fir_srg|outputs[5][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(5),
	datac => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs~71_combout\);

-- Location: FF_X42_Y43_N19
\fir_top|fir_srg|outputs[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~71_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][5]~q\);

-- Location: LCCOMB_X42_Y42_N16
\fir_top|fir_srg|outputs~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~73_combout\ = (\fir_top|fir_srg|acc\(5) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(5),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~73_combout\);

-- Location: FF_X42_Y42_N17
\fir_top|fir_srg|outputs[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~73_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][5]~q\);

-- Location: LCCOMB_X42_Y43_N30
\fir_top|fir_srg|outputs~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~72_combout\ = (\fir_top|fir_srg|acc\(5) & !\fir_top|fir_srg|outputs[6][0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(5),
	datad => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	combout => \fir_top|fir_srg|outputs~72_combout\);

-- Location: FF_X42_Y43_N5
\fir_top|fir_srg|outputs[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \fir_top|fir_srg|outputs~72_combout\,
	sload => VCC,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][5]~q\);

-- Location: LCCOMB_X42_Y43_N4
\fir_top|fir_srg|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux58~0_combout\ = (\fir_top|addr\(0) & (((\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & ((\fir_top|addr\(1) & ((\fir_top|fir_srg|outputs[6][5]~q\))) # (!\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datab => \fir_top|fir_srg|outputs[4][5]~q\,
	datac => \fir_top|fir_srg|outputs[6][5]~q\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux58~0_combout\);

-- Location: LCCOMB_X45_Y43_N16
\fir_top|fir_srg|outputs~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~74_combout\ = (\fir_top|fir_srg|acc\(5) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(5),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~74_combout\);

-- Location: FF_X45_Y43_N17
\fir_top|fir_srg|outputs[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~74_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][5]~q\);

-- Location: LCCOMB_X45_Y43_N26
\fir_top|fir_srg|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux58~1_combout\ = (\fir_top|fir_srg|Mux58~0_combout\ & (((\fir_top|fir_srg|outputs[7][5]~q\) # (!\fir_top|addr\(0))))) # (!\fir_top|fir_srg|Mux58~0_combout\ & (\fir_top|fir_srg|outputs[5][5]~q\ & (\fir_top|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[5][5]~q\,
	datab => \fir_top|fir_srg|Mux58~0_combout\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[7][5]~q\,
	combout => \fir_top|fir_srg|Mux58~1_combout\);

-- Location: LCCOMB_X45_Y43_N28
\fir_top|fir_srg|Mux58~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux58~4_combout\ = (\fir_top|fir_srg|y[0]~0_combout\ & (((\fir_top|fir_srg|Mux58~1_combout\) # (\fir_top|addr\(3))))) # (!\fir_top|fir_srg|y[0]~0_combout\ & (\fir_top|fir_srg|Mux58~3_combout\ & ((!\fir_top|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux58~3_combout\,
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|Mux58~1_combout\,
	datad => \fir_top|addr\(3),
	combout => \fir_top|fir_srg|Mux58~4_combout\);

-- Location: LCCOMB_X45_Y43_N14
\fir_top|fir_srg|Mux58~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux58~5_combout\ = (\fir_top|addr\(3) & ((\fir_top|fir_srg|Mux58~4_combout\ & ((\fir_top|fir_srg|outputs[9][5]~q\))) # (!\fir_top|fir_srg|Mux58~4_combout\ & (\fir_top|fir_srg|outputs[8][5]~q\)))) # (!\fir_top|addr\(3) & 
-- (((\fir_top|fir_srg|Mux58~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|outputs[8][5]~q\,
	datac => \fir_top|fir_srg|outputs[9][5]~q\,
	datad => \fir_top|fir_srg|Mux58~4_combout\,
	combout => \fir_top|fir_srg|Mux58~5_combout\);

-- Location: LCCOMB_X49_Y43_N4
\fir_top|fir_srg|Mux58~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux58~6_combout\ = (\fir_top|fir_srg|Mux58~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|fir_srg|Mux58~5_combout\,
	datac => \fir_top|addr\(3),
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux58~6_combout\);

-- Location: FF_X49_Y43_N5
\fir_top|fir_srg|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux58~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(5));

-- Location: LCCOMB_X43_Y39_N28
\fir_top|fir_srg|acc[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[6]~29_combout\ = ((\fir_top|fir_srg|acc\(6) $ (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (!\fir_top|fir_srg|acc[5]~28\)))) # (GND)
-- \fir_top|fir_srg|acc[6]~30\ = CARRY((\fir_top|fir_srg|acc\(6) & ((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\fir_top|fir_srg|acc[5]~28\))) # (!\fir_top|fir_srg|acc\(6) & (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT6\ & 
-- !\fir_top|fir_srg|acc[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(6),
	datab => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \fir_top|fir_srg|acc[5]~28\,
	combout => \fir_top|fir_srg|acc[6]~29_combout\,
	cout => \fir_top|fir_srg|acc[6]~30\);

-- Location: FF_X43_Y39_N29
\fir_top|fir_srg|acc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[6]~29_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(6));

-- Location: LCCOMB_X43_Y43_N8
\fir_top|fir_srg|outputs~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~89_combout\ = (\fir_top|fir_srg|acc\(6) & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(6),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~89_combout\);

-- Location: FF_X43_Y43_N9
\fir_top|fir_srg|outputs[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~89_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][6]~q\);

-- Location: LCCOMB_X45_Y41_N22
\fir_top|fir_srg|outputs~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~88_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datad => \fir_top|fir_srg|acc\(6),
	combout => \fir_top|fir_srg|outputs~88_combout\);

-- Location: FF_X45_Y41_N23
\fir_top|fir_srg|outputs[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~88_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][6]~q\);

-- Location: LCCOMB_X45_Y43_N8
\fir_top|fir_srg|outputs~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~85_combout\ = (\fir_top|fir_srg|acc\(6) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(6),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~85_combout\);

-- Location: FF_X45_Y43_N9
\fir_top|fir_srg|outputs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~85_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][6]~q\);

-- Location: LCCOMB_X45_Y41_N30
\fir_top|fir_srg|outputs~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~86_combout\ = (!\fir_top|fir_srg|outputs[1][0]~19_combout\ & \fir_top|fir_srg|acc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	datad => \fir_top|fir_srg|acc\(6),
	combout => \fir_top|fir_srg|outputs~86_combout\);

-- Location: FF_X45_Y41_N31
\fir_top|fir_srg|outputs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~86_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][6]~q\);

-- Location: LCCOMB_X46_Y41_N18
\fir_top|fir_srg|outputs~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~87_combout\ = (\fir_top|fir_srg|acc\(6) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(6),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~87_combout\);

-- Location: FF_X46_Y41_N19
\fir_top|fir_srg|outputs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~87_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][6]~q\);

-- Location: LCCOMB_X45_Y41_N4
\fir_top|fir_srg|Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux57~2_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[1][6]~q\) # ((\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & (((\fir_top|fir_srg|outputs[0][6]~q\ & !\fir_top|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[1][6]~q\,
	datab => \fir_top|fir_srg|outputs[0][6]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux57~2_combout\);

-- Location: LCCOMB_X45_Y41_N28
\fir_top|fir_srg|Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux57~3_combout\ = (\fir_top|fir_srg|Mux57~2_combout\ & ((\fir_top|fir_srg|outputs[3][6]~q\) # ((!\fir_top|addr\(1))))) # (!\fir_top|fir_srg|Mux57~2_combout\ & (((\fir_top|fir_srg|outputs[2][6]~q\ & \fir_top|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[3][6]~q\,
	datab => \fir_top|fir_srg|outputs[2][6]~q\,
	datac => \fir_top|fir_srg|Mux57~2_combout\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux57~3_combout\);

-- Location: LCCOMB_X45_Y40_N2
\fir_top|fir_srg|outputs~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~84_combout\ = (\fir_top|fir_srg|acc\(6) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|outputs[0][0]~0_combout\ & \fir_top|fir_srg|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(6),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs~84_combout\);

-- Location: FF_X45_Y40_N3
\fir_top|fir_srg|outputs[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~84_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][6]~q\);

-- Location: LCCOMB_X45_Y40_N8
\fir_top|fir_srg|Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux57~4_combout\ = (\fir_top|fir_srg|y[0]~0_combout\ & (\fir_top|addr\(3))) # (!\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|addr\(3) & ((\fir_top|fir_srg|outputs[8][6]~q\))) # (!\fir_top|addr\(3) & (\fir_top|fir_srg|Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|y[0]~0_combout\,
	datab => \fir_top|addr\(3),
	datac => \fir_top|fir_srg|Mux57~3_combout\,
	datad => \fir_top|fir_srg|outputs[8][6]~q\,
	combout => \fir_top|fir_srg|Mux57~4_combout\);

-- Location: LCCOMB_X42_Y43_N20
\fir_top|fir_srg|outputs~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~81_combout\ = (\fir_top|fir_srg|acc\(6) & !\fir_top|fir_srg|outputs[6][0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(6),
	datad => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	combout => \fir_top|fir_srg|outputs~81_combout\);

-- Location: FF_X42_Y43_N21
\fir_top|fir_srg|outputs[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~81_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][6]~q\);

-- Location: LCCOMB_X42_Y42_N2
\fir_top|fir_srg|outputs~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~82_combout\ = (\fir_top|fir_srg|acc\(6) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(6),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~82_combout\);

-- Location: FF_X42_Y42_N3
\fir_top|fir_srg|outputs[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~82_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][6]~q\);

-- Location: LCCOMB_X42_Y43_N6
\fir_top|fir_srg|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux57~0_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|outputs[6][6]~q\) # ((\fir_top|addr\(0))))) # (!\fir_top|addr\(1) & (((!\fir_top|addr\(0) & \fir_top|fir_srg|outputs[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|outputs[6][6]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[4][6]~q\,
	combout => \fir_top|fir_srg|Mux57~0_combout\);

-- Location: LCCOMB_X42_Y43_N26
\fir_top|fir_srg|outputs~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~80_combout\ = (!\fir_top|fir_srg|outputs[5][0]~1_combout\ & \fir_top|fir_srg|acc\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	datac => \fir_top|fir_srg|acc\(6),
	combout => \fir_top|fir_srg|outputs~80_combout\);

-- Location: FF_X42_Y43_N27
\fir_top|fir_srg|outputs[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~80_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][6]~q\);

-- Location: LCCOMB_X45_Y43_N24
\fir_top|fir_srg|outputs~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~83_combout\ = (\fir_top|fir_srg|acc\(6) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(6),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~83_combout\);

-- Location: FF_X45_Y43_N25
\fir_top|fir_srg|outputs[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~83_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][6]~q\);

-- Location: LCCOMB_X45_Y43_N2
\fir_top|fir_srg|Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux57~1_combout\ = (\fir_top|fir_srg|Mux57~0_combout\ & (((\fir_top|fir_srg|outputs[7][6]~q\) # (!\fir_top|addr\(0))))) # (!\fir_top|fir_srg|Mux57~0_combout\ & (\fir_top|fir_srg|outputs[5][6]~q\ & (\fir_top|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux57~0_combout\,
	datab => \fir_top|fir_srg|outputs[5][6]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[7][6]~q\,
	combout => \fir_top|fir_srg|Mux57~1_combout\);

-- Location: LCCOMB_X45_Y43_N10
\fir_top|fir_srg|Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux57~5_combout\ = (\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|fir_srg|Mux57~4_combout\ & (\fir_top|fir_srg|outputs[9][6]~q\)) # (!\fir_top|fir_srg|Mux57~4_combout\ & ((\fir_top|fir_srg|Mux57~1_combout\))))) # 
-- (!\fir_top|fir_srg|y[0]~0_combout\ & (((\fir_top|fir_srg|Mux57~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[9][6]~q\,
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|Mux57~4_combout\,
	datad => \fir_top|fir_srg|Mux57~1_combout\,
	combout => \fir_top|fir_srg|Mux57~5_combout\);

-- Location: LCCOMB_X49_Y43_N30
\fir_top|fir_srg|Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux57~6_combout\ = (\fir_top|fir_srg|Mux57~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|fir_srg|Mux57~5_combout\,
	datac => \fir_top|addr\(3),
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux57~6_combout\);

-- Location: FF_X49_Y43_N31
\fir_top|fir_srg|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux57~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(6));

-- Location: LCCOMB_X43_Y39_N30
\fir_top|fir_srg|acc[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[7]~31_combout\ = (\fir_top|fir_srg|acc\(7) & ((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT7\ & (\fir_top|fir_srg|acc[6]~30\ & VCC)) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT7\ & 
-- (!\fir_top|fir_srg|acc[6]~30\)))) # (!\fir_top|fir_srg|acc\(7) & ((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\fir_top|fir_srg|acc[6]~30\)) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\fir_top|fir_srg|acc[6]~30\) # 
-- (GND)))))
-- \fir_top|fir_srg|acc[7]~32\ = CARRY((\fir_top|fir_srg|acc\(7) & (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT7\ & !\fir_top|fir_srg|acc[6]~30\)) # (!\fir_top|fir_srg|acc\(7) & ((!\fir_top|fir_srg|acc[6]~30\) # 
-- (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(7),
	datab => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \fir_top|fir_srg|acc[6]~30\,
	combout => \fir_top|fir_srg|acc[7]~31_combout\,
	cout => \fir_top|fir_srg|acc[7]~32\);

-- Location: FF_X43_Y39_N31
\fir_top|fir_srg|acc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[7]~31_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(7));

-- Location: LCCOMB_X43_Y43_N18
\fir_top|fir_srg|outputs~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~99_combout\ = (\fir_top|fir_srg|acc\(7) & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(7),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~99_combout\);

-- Location: FF_X43_Y43_N19
\fir_top|fir_srg|outputs[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~99_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][7]~q\);

-- Location: LCCOMB_X43_Y39_N4
\fir_top|fir_srg|outputs~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~90_combout\ = (\fir_top|fir_srg|acc\(7) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(7),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~90_combout\);

-- Location: FF_X43_Y39_N5
\fir_top|fir_srg|outputs[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~90_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][7]~q\);

-- Location: LCCOMB_X45_Y42_N22
\fir_top|fir_srg|outputs~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~93_combout\ = (\fir_top|fir_srg|acc\(7) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(7),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~93_combout\);

-- Location: FF_X45_Y42_N23
\fir_top|fir_srg|outputs[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~93_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][7]~q\);

-- Location: LCCOMB_X45_Y42_N12
\fir_top|fir_srg|outputs~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~92_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\ & \fir_top|fir_srg|acc\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	datad => \fir_top|fir_srg|acc\(7),
	combout => \fir_top|fir_srg|outputs~92_combout\);

-- Location: FF_X45_Y42_N13
\fir_top|fir_srg|outputs[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~92_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][7]~q\);

-- Location: LCCOMB_X45_Y42_N28
\fir_top|fir_srg|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux56~0_combout\ = (\fir_top|addr\(1) & ((\fir_top|addr\(0)) # ((\fir_top|fir_srg|outputs[6][7]~q\)))) # (!\fir_top|addr\(1) & (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|addr\(0),
	datac => \fir_top|fir_srg|outputs[4][7]~q\,
	datad => \fir_top|fir_srg|outputs[6][7]~q\,
	combout => \fir_top|fir_srg|Mux56~0_combout\);

-- Location: LCCOMB_X46_Y41_N20
\fir_top|fir_srg|outputs~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~94_combout\ = (\fir_top|fir_srg|acc\(7) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(7),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~94_combout\);

-- Location: FF_X46_Y41_N21
\fir_top|fir_srg|outputs[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~94_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][7]~q\);

-- Location: LCCOMB_X43_Y41_N24
\fir_top|fir_srg|outputs~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~91_combout\ = (\fir_top|fir_srg|acc\(7) & !\fir_top|fir_srg|outputs[5][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(7),
	datad => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs~91_combout\);

-- Location: FF_X43_Y41_N25
\fir_top|fir_srg|outputs[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~91_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][7]~q\);

-- Location: LCCOMB_X46_Y41_N26
\fir_top|fir_srg|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux56~1_combout\ = (\fir_top|fir_srg|Mux56~0_combout\ & ((\fir_top|fir_srg|outputs[7][7]~q\) # ((!\fir_top|addr\(0))))) # (!\fir_top|fir_srg|Mux56~0_combout\ & (((\fir_top|fir_srg|outputs[5][7]~q\ & \fir_top|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux56~0_combout\,
	datab => \fir_top|fir_srg|outputs[7][7]~q\,
	datac => \fir_top|fir_srg|outputs[5][7]~q\,
	datad => \fir_top|addr\(0),
	combout => \fir_top|fir_srg|Mux56~1_combout\);

-- Location: LCCOMB_X46_Y43_N10
\fir_top|fir_srg|outputs~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~95_combout\ = (\fir_top|fir_srg|acc\(7) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(7),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~95_combout\);

-- Location: FF_X46_Y43_N11
\fir_top|fir_srg|outputs[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~95_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][7]~q\);

-- Location: LCCOMB_X48_Y42_N6
\fir_top|fir_srg|outputs~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~98_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datac => \fir_top|fir_srg|acc\(7),
	combout => \fir_top|fir_srg|outputs~98_combout\);

-- Location: FF_X48_Y42_N7
\fir_top|fir_srg|outputs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~98_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][7]~q\);

-- Location: LCCOMB_X48_Y43_N24
\fir_top|fir_srg|outputs~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~97_combout\ = (\fir_top|fir_srg|acc\(7) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(7),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~97_combout\);

-- Location: FF_X48_Y43_N25
\fir_top|fir_srg|outputs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~97_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][7]~q\);

-- Location: LCCOMB_X48_Y43_N2
\fir_top|fir_srg|outputs~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~96_combout\ = (\fir_top|fir_srg|acc\(7) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(7),
	datad => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~96_combout\);

-- Location: FF_X48_Y43_N3
\fir_top|fir_srg|outputs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~96_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][7]~q\);

-- Location: LCCOMB_X48_Y43_N6
\fir_top|fir_srg|Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux56~2_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0))))) # (!\fir_top|addr\(1) & ((\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[1][7]~q\))) # (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|outputs[0][7]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[1][7]~q\,
	combout => \fir_top|fir_srg|Mux56~2_combout\);

-- Location: LCCOMB_X47_Y43_N10
\fir_top|fir_srg|Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux56~3_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|Mux56~2_combout\ & ((\fir_top|fir_srg|outputs[3][7]~q\))) # (!\fir_top|fir_srg|Mux56~2_combout\ & (\fir_top|fir_srg|outputs[2][7]~q\)))) # (!\fir_top|addr\(1) & 
-- (((\fir_top|fir_srg|Mux56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[2][7]~q\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|fir_srg|outputs[3][7]~q\,
	datad => \fir_top|fir_srg|Mux56~2_combout\,
	combout => \fir_top|fir_srg|Mux56~3_combout\);

-- Location: LCCOMB_X47_Y43_N24
\fir_top|fir_srg|Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux56~4_combout\ = (\fir_top|addr\(3) & (\fir_top|fir_srg|y[0]~0_combout\)) # (!\fir_top|addr\(3) & ((\fir_top|fir_srg|y[0]~0_combout\ & (\fir_top|fir_srg|Mux56~1_combout\)) # (!\fir_top|fir_srg|y[0]~0_combout\ & 
-- ((\fir_top|fir_srg|Mux56~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|Mux56~1_combout\,
	datad => \fir_top|fir_srg|Mux56~3_combout\,
	combout => \fir_top|fir_srg|Mux56~4_combout\);

-- Location: LCCOMB_X47_Y43_N18
\fir_top|fir_srg|Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux56~5_combout\ = (\fir_top|addr\(3) & ((\fir_top|fir_srg|Mux56~4_combout\ & (\fir_top|fir_srg|outputs[9][7]~q\)) # (!\fir_top|fir_srg|Mux56~4_combout\ & ((\fir_top|fir_srg|outputs[8][7]~q\))))) # (!\fir_top|addr\(3) & 
-- (((\fir_top|fir_srg|Mux56~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|outputs[9][7]~q\,
	datac => \fir_top|fir_srg|outputs[8][7]~q\,
	datad => \fir_top|fir_srg|Mux56~4_combout\,
	combout => \fir_top|fir_srg|Mux56~5_combout\);

-- Location: LCCOMB_X47_Y43_N6
\fir_top|fir_srg|Mux56~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux56~6_combout\ = (\fir_top|fir_srg|Mux56~5_combout\ & (((!\fir_top|addr\(1) & !\fir_top|addr\(2))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|addr\(1),
	datac => \fir_top|addr\(2),
	datad => \fir_top|fir_srg|Mux56~5_combout\,
	combout => \fir_top|fir_srg|Mux56~6_combout\);

-- Location: FF_X47_Y43_N7
\fir_top|fir_srg|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux56~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(7));

-- Location: LCCOMB_X43_Y38_N0
\fir_top|fir_srg|acc[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[8]~33_combout\ = ((\fir_top|fir_srg|acc\(8) $ (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT8\ $ (!\fir_top|fir_srg|acc[7]~32\)))) # (GND)
-- \fir_top|fir_srg|acc[8]~34\ = CARRY((\fir_top|fir_srg|acc\(8) & ((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT8\) # (!\fir_top|fir_srg|acc[7]~32\))) # (!\fir_top|fir_srg|acc\(8) & (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT8\ & 
-- !\fir_top|fir_srg|acc[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(8),
	datab => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \fir_top|fir_srg|acc[7]~32\,
	combout => \fir_top|fir_srg|acc[8]~33_combout\,
	cout => \fir_top|fir_srg|acc[8]~34\);

-- Location: FF_X43_Y38_N1
\fir_top|fir_srg|acc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[8]~33_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(8));

-- Location: LCCOMB_X46_Y42_N30
\fir_top|fir_srg|outputs~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~103_combout\ = (\fir_top|fir_srg|acc\(8) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(8),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~103_combout\);

-- Location: FF_X46_Y42_N31
\fir_top|fir_srg|outputs[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~103_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][8]~q\);

-- Location: LCCOMB_X43_Y41_N10
\fir_top|fir_srg|outputs~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~100_combout\ = (\fir_top|fir_srg|acc\(8) & !\fir_top|fir_srg|outputs[5][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(8),
	datad => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs~100_combout\);

-- Location: FF_X43_Y41_N11
\fir_top|fir_srg|outputs[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~100_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][8]~q\);

-- Location: LCCOMB_X45_Y42_N16
\fir_top|fir_srg|outputs~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~102_combout\ = (\fir_top|fir_srg|acc\(8) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(8),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~102_combout\);

-- Location: FF_X45_Y42_N17
\fir_top|fir_srg|outputs[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~102_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][8]~q\);

-- Location: LCCOMB_X45_Y42_N14
\fir_top|fir_srg|outputs~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~101_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\ & \fir_top|fir_srg|acc\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	datac => \fir_top|fir_srg|acc\(8),
	combout => \fir_top|fir_srg|outputs~101_combout\);

-- Location: FF_X45_Y42_N15
\fir_top|fir_srg|outputs[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~101_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][8]~q\);

-- Location: LCCOMB_X46_Y42_N24
\fir_top|fir_srg|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux55~0_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0)) # (\fir_top|fir_srg|outputs[6][8]~q\)))) # (!\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[4][8]~q\ & (!\fir_top|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[4][8]~q\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[6][8]~q\,
	combout => \fir_top|fir_srg|Mux55~0_combout\);

-- Location: LCCOMB_X47_Y42_N14
\fir_top|fir_srg|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux55~1_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|Mux55~0_combout\ & (\fir_top|fir_srg|outputs[7][8]~q\)) # (!\fir_top|fir_srg|Mux55~0_combout\ & ((\fir_top|fir_srg|outputs[5][8]~q\))))) # (!\fir_top|addr\(0) & 
-- (((\fir_top|fir_srg|Mux55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datab => \fir_top|fir_srg|outputs[7][8]~q\,
	datac => \fir_top|fir_srg|outputs[5][8]~q\,
	datad => \fir_top|fir_srg|Mux55~0_combout\,
	combout => \fir_top|fir_srg|Mux55~1_combout\);

-- Location: LCCOMB_X47_Y42_N18
\fir_top|fir_srg|outputs~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~109_combout\ = (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|acc\(8) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(0),
	datab => \fir_top|fir_srg|acc\(8),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~109_combout\);

-- Location: FF_X47_Y42_N19
\fir_top|fir_srg|outputs[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~109_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][8]~q\);

-- Location: LCCOMB_X45_Y40_N22
\fir_top|fir_srg|outputs~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~104_combout\ = (\fir_top|fir_srg|acc\(8) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|outputs[0][0]~0_combout\ & \fir_top|fir_srg|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(8),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs~104_combout\);

-- Location: FF_X45_Y40_N23
\fir_top|fir_srg|outputs[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~104_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][8]~q\);

-- Location: LCCOMB_X47_Y42_N6
\fir_top|fir_srg|outputs~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~108_combout\ = (\fir_top|fir_srg|acc\(8) & !\fir_top|fir_srg|outputs[3][0]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(8),
	datac => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	combout => \fir_top|fir_srg|outputs~108_combout\);

-- Location: FF_X47_Y42_N7
\fir_top|fir_srg|outputs[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~108_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][8]~q\);

-- Location: LCCOMB_X46_Y43_N16
\fir_top|fir_srg|outputs~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~105_combout\ = (\fir_top|fir_srg|acc\(8) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(8),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~105_combout\);

-- Location: FF_X46_Y43_N17
\fir_top|fir_srg|outputs[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~105_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][8]~q\);

-- Location: LCCOMB_X48_Y43_N8
\fir_top|fir_srg|outputs~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~106_combout\ = (\fir_top|fir_srg|acc\(8) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(8),
	datad => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~106_combout\);

-- Location: FF_X48_Y43_N9
\fir_top|fir_srg|outputs[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~106_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][8]~q\);

-- Location: LCCOMB_X46_Y42_N12
\fir_top|fir_srg|outputs~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~107_combout\ = (\fir_top|fir_srg|acc\(8) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(8),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~107_combout\);

-- Location: FF_X46_Y42_N13
\fir_top|fir_srg|outputs[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~107_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][8]~q\);

-- Location: LCCOMB_X47_Y42_N12
\fir_top|fir_srg|Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux55~2_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[1][8]~q\) # ((\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & (((!\fir_top|addr\(1) & \fir_top|fir_srg|outputs[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datab => \fir_top|fir_srg|outputs[1][8]~q\,
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|outputs[0][8]~q\,
	combout => \fir_top|fir_srg|Mux55~2_combout\);

-- Location: LCCOMB_X47_Y42_N24
\fir_top|fir_srg|Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux55~3_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|Mux55~2_combout\ & (\fir_top|fir_srg|outputs[3][8]~q\)) # (!\fir_top|fir_srg|Mux55~2_combout\ & ((\fir_top|fir_srg|outputs[2][8]~q\))))) # (!\fir_top|addr\(1) & 
-- (((\fir_top|fir_srg|Mux55~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[3][8]~q\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|fir_srg|outputs[2][8]~q\,
	datad => \fir_top|fir_srg|Mux55~2_combout\,
	combout => \fir_top|fir_srg|Mux55~3_combout\);

-- Location: LCCOMB_X48_Y42_N20
\fir_top|fir_srg|Mux55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux55~4_combout\ = (\fir_top|fir_srg|y[0]~0_combout\ & (\fir_top|addr\(3))) # (!\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|addr\(3) & (\fir_top|fir_srg|outputs[8][8]~q\)) # (!\fir_top|addr\(3) & ((\fir_top|fir_srg|Mux55~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|y[0]~0_combout\,
	datab => \fir_top|addr\(3),
	datac => \fir_top|fir_srg|outputs[8][8]~q\,
	datad => \fir_top|fir_srg|Mux55~3_combout\,
	combout => \fir_top|fir_srg|Mux55~4_combout\);

-- Location: LCCOMB_X48_Y42_N2
\fir_top|fir_srg|Mux55~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux55~5_combout\ = (\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|fir_srg|Mux55~4_combout\ & ((\fir_top|fir_srg|outputs[9][8]~q\))) # (!\fir_top|fir_srg|Mux55~4_combout\ & (\fir_top|fir_srg|Mux55~1_combout\)))) # 
-- (!\fir_top|fir_srg|y[0]~0_combout\ & (((\fir_top|fir_srg|Mux55~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux55~1_combout\,
	datab => \fir_top|fir_srg|outputs[9][8]~q\,
	datac => \fir_top|fir_srg|y[0]~0_combout\,
	datad => \fir_top|fir_srg|Mux55~4_combout\,
	combout => \fir_top|fir_srg|Mux55~5_combout\);

-- Location: LCCOMB_X49_Y43_N28
\fir_top|fir_srg|Mux55~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux55~6_combout\ = (\fir_top|fir_srg|Mux55~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|fir_srg|Mux55~5_combout\,
	datac => \fir_top|addr\(3),
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux55~6_combout\);

-- Location: FF_X49_Y43_N29
\fir_top|fir_srg|y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux55~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(8));

-- Location: LCCOMB_X43_Y38_N2
\fir_top|fir_srg|acc[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[9]~35_combout\ = (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\fir_top|fir_srg|acc\(9) & (\fir_top|fir_srg|acc[8]~34\ & VCC)) # (!\fir_top|fir_srg|acc\(9) & (!\fir_top|fir_srg|acc[8]~34\)))) # 
-- (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\fir_top|fir_srg|acc\(9) & (!\fir_top|fir_srg|acc[8]~34\)) # (!\fir_top|fir_srg|acc\(9) & ((\fir_top|fir_srg|acc[8]~34\) # (GND)))))
-- \fir_top|fir_srg|acc[9]~36\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\fir_top|fir_srg|acc\(9) & !\fir_top|fir_srg|acc[8]~34\)) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((!\fir_top|fir_srg|acc[8]~34\) # 
-- (!\fir_top|fir_srg|acc\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \fir_top|fir_srg|acc\(9),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[8]~34\,
	combout => \fir_top|fir_srg|acc[9]~35_combout\,
	cout => \fir_top|fir_srg|acc[9]~36\);

-- Location: FF_X43_Y38_N3
\fir_top|fir_srg|acc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[9]~35_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(9));

-- Location: LCCOMB_X47_Y42_N26
\fir_top|fir_srg|outputs~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~118_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datad => \fir_top|fir_srg|acc\(9),
	combout => \fir_top|fir_srg|outputs~118_combout\);

-- Location: FF_X47_Y42_N27
\fir_top|fir_srg|outputs[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~118_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][9]~q\);

-- Location: LCCOMB_X46_Y43_N14
\fir_top|fir_srg|outputs~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~115_combout\ = (\fir_top|fir_srg|acc\(9) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(9),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~115_combout\);

-- Location: FF_X46_Y43_N15
\fir_top|fir_srg|outputs[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~115_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][9]~q\);

-- Location: LCCOMB_X48_Y43_N30
\fir_top|fir_srg|outputs~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~116_combout\ = (\fir_top|fir_srg|acc\(9) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(9),
	datad => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~116_combout\);

-- Location: FF_X48_Y43_N31
\fir_top|fir_srg|outputs[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~116_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][9]~q\);

-- Location: LCCOMB_X46_Y42_N4
\fir_top|fir_srg|outputs~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~117_combout\ = (\fir_top|fir_srg|acc\(9) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(9),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~117_combout\);

-- Location: FF_X46_Y42_N5
\fir_top|fir_srg|outputs[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~117_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][9]~q\);

-- Location: LCCOMB_X47_Y42_N0
\fir_top|fir_srg|Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux54~2_combout\ = (\fir_top|addr\(0) & ((\fir_top|addr\(1)) # ((\fir_top|fir_srg|outputs[1][9]~q\)))) # (!\fir_top|addr\(0) & (!\fir_top|addr\(1) & ((\fir_top|fir_srg|outputs[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datab => \fir_top|addr\(1),
	datac => \fir_top|fir_srg|outputs[1][9]~q\,
	datad => \fir_top|fir_srg|outputs[0][9]~q\,
	combout => \fir_top|fir_srg|Mux54~2_combout\);

-- Location: LCCOMB_X47_Y42_N16
\fir_top|fir_srg|Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux54~3_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|Mux54~2_combout\ & (\fir_top|fir_srg|outputs[3][9]~q\)) # (!\fir_top|fir_srg|Mux54~2_combout\ & ((\fir_top|fir_srg|outputs[2][9]~q\))))) # (!\fir_top|addr\(1) & 
-- (((\fir_top|fir_srg|Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[3][9]~q\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|fir_srg|outputs[2][9]~q\,
	datad => \fir_top|fir_srg|Mux54~2_combout\,
	combout => \fir_top|fir_srg|Mux54~3_combout\);

-- Location: LCCOMB_X43_Y42_N6
\fir_top|fir_srg|outputs~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~111_combout\ = (!\fir_top|fir_srg|outputs[5][0]~1_combout\ & \fir_top|fir_srg|acc\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	datad => \fir_top|fir_srg|acc\(9),
	combout => \fir_top|fir_srg|outputs~111_combout\);

-- Location: FF_X43_Y42_N7
\fir_top|fir_srg|outputs[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~111_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][9]~q\);

-- Location: LCCOMB_X43_Y42_N16
\fir_top|fir_srg|outputs~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~113_combout\ = (\fir_top|fir_srg|acc\(9) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(9),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~113_combout\);

-- Location: FF_X43_Y42_N17
\fir_top|fir_srg|outputs[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~113_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][9]~q\);

-- Location: LCCOMB_X45_Y42_N2
\fir_top|fir_srg|outputs~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~112_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\ & \fir_top|fir_srg|acc\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	datad => \fir_top|fir_srg|acc\(9),
	combout => \fir_top|fir_srg|outputs~112_combout\);

-- Location: FF_X45_Y42_N3
\fir_top|fir_srg|outputs[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~112_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][9]~q\);

-- Location: LCCOMB_X47_Y42_N8
\fir_top|fir_srg|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux54~0_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0)) # (\fir_top|fir_srg|outputs[6][9]~q\)))) # (!\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[4][9]~q\ & (!\fir_top|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[4][9]~q\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[6][9]~q\,
	combout => \fir_top|fir_srg|Mux54~0_combout\);

-- Location: LCCOMB_X46_Y42_N14
\fir_top|fir_srg|outputs~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~114_combout\ = (\fir_top|fir_srg|acc\(9) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(9),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~114_combout\);

-- Location: FF_X46_Y42_N15
\fir_top|fir_srg|outputs[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~114_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][9]~q\);

-- Location: LCCOMB_X47_Y42_N10
\fir_top|fir_srg|Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux54~1_combout\ = (\fir_top|fir_srg|Mux54~0_combout\ & (((\fir_top|fir_srg|outputs[7][9]~q\) # (!\fir_top|addr\(0))))) # (!\fir_top|fir_srg|Mux54~0_combout\ & (\fir_top|fir_srg|outputs[5][9]~q\ & (\fir_top|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[5][9]~q\,
	datab => \fir_top|fir_srg|Mux54~0_combout\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[7][9]~q\,
	combout => \fir_top|fir_srg|Mux54~1_combout\);

-- Location: LCCOMB_X48_Y42_N12
\fir_top|fir_srg|Mux54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux54~4_combout\ = (\fir_top|addr\(3) & (((\fir_top|fir_srg|y[0]~0_combout\)))) # (!\fir_top|addr\(3) & ((\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|fir_srg|Mux54~1_combout\))) # (!\fir_top|fir_srg|y[0]~0_combout\ & 
-- (\fir_top|fir_srg|Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux54~3_combout\,
	datab => \fir_top|addr\(3),
	datac => \fir_top|fir_srg|y[0]~0_combout\,
	datad => \fir_top|fir_srg|Mux54~1_combout\,
	combout => \fir_top|fir_srg|Mux54~4_combout\);

-- Location: LCCOMB_X45_Y40_N0
\fir_top|fir_srg|outputs~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~110_combout\ = (\fir_top|fir_srg|acc\(9) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|outputs[0][0]~0_combout\ & \fir_top|fir_srg|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(9),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs~110_combout\);

-- Location: FF_X45_Y40_N1
\fir_top|fir_srg|outputs[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~110_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][9]~q\);

-- Location: LCCOMB_X47_Y42_N30
\fir_top|fir_srg|outputs~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~119_combout\ = (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|outputs[0][0]~0_combout\ & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|acc\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|j\(0),
	datab => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|acc\(9),
	combout => \fir_top|fir_srg|outputs~119_combout\);

-- Location: FF_X47_Y42_N31
\fir_top|fir_srg|outputs[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~119_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][9]~q\);

-- Location: LCCOMB_X48_Y42_N18
\fir_top|fir_srg|Mux54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux54~5_combout\ = (\fir_top|fir_srg|Mux54~4_combout\ & (((\fir_top|fir_srg|outputs[9][9]~q\)) # (!\fir_top|addr\(3)))) # (!\fir_top|fir_srg|Mux54~4_combout\ & (\fir_top|addr\(3) & (\fir_top|fir_srg|outputs[8][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux54~4_combout\,
	datab => \fir_top|addr\(3),
	datac => \fir_top|fir_srg|outputs[8][9]~q\,
	datad => \fir_top|fir_srg|outputs[9][9]~q\,
	combout => \fir_top|fir_srg|Mux54~5_combout\);

-- Location: LCCOMB_X49_Y43_N6
\fir_top|fir_srg|Mux54~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux54~6_combout\ = (\fir_top|fir_srg|Mux54~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|fir_srg|Mux54~5_combout\,
	datac => \fir_top|addr\(3),
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux54~6_combout\);

-- Location: FF_X49_Y43_N7
\fir_top|fir_srg|y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux54~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(9));

-- Location: LCCOMB_X43_Y38_N4
\fir_top|fir_srg|acc[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[10]~37_combout\ = ((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ $ (\fir_top|fir_srg|acc\(10) $ (!\fir_top|fir_srg|acc[9]~36\)))) # (GND)
-- \fir_top|fir_srg|acc[10]~38\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\fir_top|fir_srg|acc\(10)) # (!\fir_top|fir_srg|acc[9]~36\))) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & (\fir_top|fir_srg|acc\(10) & 
-- !\fir_top|fir_srg|acc[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \fir_top|fir_srg|acc\(10),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[9]~36\,
	combout => \fir_top|fir_srg|acc[10]~37_combout\,
	cout => \fir_top|fir_srg|acc[10]~38\);

-- Location: FF_X43_Y38_N5
\fir_top|fir_srg|acc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[10]~37_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(10));

-- Location: LCCOMB_X45_Y40_N26
\fir_top|fir_srg|outputs~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~124_combout\ = (\fir_top|fir_srg|acc\(10) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|outputs[0][0]~0_combout\ & \fir_top|fir_srg|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(10),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs~124_combout\);

-- Location: FF_X45_Y40_N27
\fir_top|fir_srg|outputs[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~124_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][10]~q\);

-- Location: LCCOMB_X45_Y43_N0
\fir_top|fir_srg|outputs~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~125_combout\ = (\fir_top|fir_srg|acc\(10) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(10),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~125_combout\);

-- Location: FF_X45_Y43_N1
\fir_top|fir_srg|outputs[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~125_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][10]~q\);

-- Location: LCCOMB_X45_Y41_N18
\fir_top|fir_srg|outputs~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~128_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datac => \fir_top|fir_srg|acc\(10),
	combout => \fir_top|fir_srg|outputs~128_combout\);

-- Location: FF_X45_Y41_N19
\fir_top|fir_srg|outputs[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~128_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][10]~q\);

-- Location: LCCOMB_X42_Y42_N6
\fir_top|fir_srg|outputs~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~126_combout\ = (\fir_top|fir_srg|acc\(10) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(10),
	datad => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~126_combout\);

-- Location: FF_X42_Y42_N7
\fir_top|fir_srg|outputs[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~126_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][10]~q\);

-- Location: LCCOMB_X46_Y42_N26
\fir_top|fir_srg|outputs~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~127_combout\ = (\fir_top|fir_srg|acc\(10) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(10),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~127_combout\);

-- Location: FF_X46_Y42_N27
\fir_top|fir_srg|outputs[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~127_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][10]~q\);

-- Location: LCCOMB_X42_Y42_N4
\fir_top|fir_srg|Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux53~2_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[1][10]~q\) # ((\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & (((!\fir_top|addr\(1) & \fir_top|fir_srg|outputs[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[1][10]~q\,
	datab => \fir_top|addr\(0),
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|outputs[0][10]~q\,
	combout => \fir_top|fir_srg|Mux53~2_combout\);

-- Location: LCCOMB_X45_Y44_N16
\fir_top|fir_srg|Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux53~3_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|Mux53~2_combout\ & ((\fir_top|fir_srg|outputs[3][10]~q\))) # (!\fir_top|fir_srg|Mux53~2_combout\ & (\fir_top|fir_srg|outputs[2][10]~q\)))) # (!\fir_top|addr\(1) & 
-- (((\fir_top|fir_srg|Mux53~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|outputs[2][10]~q\,
	datac => \fir_top|fir_srg|outputs[3][10]~q\,
	datad => \fir_top|fir_srg|Mux53~2_combout\,
	combout => \fir_top|fir_srg|Mux53~3_combout\);

-- Location: LCCOMB_X45_Y44_N26
\fir_top|fir_srg|Mux53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux53~4_combout\ = (\fir_top|addr\(3) & ((\fir_top|fir_srg|y[0]~0_combout\) # ((\fir_top|fir_srg|outputs[8][10]~q\)))) # (!\fir_top|addr\(3) & (!\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|fir_srg|Mux53~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|outputs[8][10]~q\,
	datad => \fir_top|fir_srg|Mux53~3_combout\,
	combout => \fir_top|fir_srg|Mux53~4_combout\);

-- Location: LCCOMB_X43_Y41_N28
\fir_top|fir_srg|outputs~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~120_combout\ = (\fir_top|fir_srg|acc\(10) & !\fir_top|fir_srg|outputs[5][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(10),
	datad => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs~120_combout\);

-- Location: FF_X43_Y41_N29
\fir_top|fir_srg|outputs[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~120_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][10]~q\);

-- Location: LCCOMB_X43_Y41_N30
\fir_top|fir_srg|outputs~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~121_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\ & \fir_top|fir_srg|acc\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	datad => \fir_top|fir_srg|acc\(10),
	combout => \fir_top|fir_srg|outputs~121_combout\);

-- Location: FF_X43_Y41_N31
\fir_top|fir_srg|outputs[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~121_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][10]~q\);

-- Location: LCCOMB_X42_Y42_N8
\fir_top|fir_srg|outputs~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~122_combout\ = (\fir_top|fir_srg|acc\(10) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(10),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~122_combout\);

-- Location: FF_X42_Y42_N9
\fir_top|fir_srg|outputs[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~122_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][10]~q\);

-- Location: LCCOMB_X42_Y41_N20
\fir_top|fir_srg|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux53~0_combout\ = (\fir_top|addr\(0) & (((\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & ((\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[6][10]~q\)) # (!\fir_top|addr\(1) & ((\fir_top|fir_srg|outputs[4][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[6][10]~q\,
	datab => \fir_top|addr\(0),
	datac => \fir_top|fir_srg|outputs[4][10]~q\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux53~0_combout\);

-- Location: LCCOMB_X46_Y41_N4
\fir_top|fir_srg|outputs~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~123_combout\ = (\fir_top|fir_srg|acc\(10) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(10),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~123_combout\);

-- Location: FF_X46_Y41_N5
\fir_top|fir_srg|outputs[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~123_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][10]~q\);

-- Location: LCCOMB_X45_Y44_N22
\fir_top|fir_srg|Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux53~1_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|Mux53~0_combout\ & ((\fir_top|fir_srg|outputs[7][10]~q\))) # (!\fir_top|fir_srg|Mux53~0_combout\ & (\fir_top|fir_srg|outputs[5][10]~q\)))) # (!\fir_top|addr\(0) & 
-- (((\fir_top|fir_srg|Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[5][10]~q\,
	datab => \fir_top|addr\(0),
	datac => \fir_top|fir_srg|Mux53~0_combout\,
	datad => \fir_top|fir_srg|outputs[7][10]~q\,
	combout => \fir_top|fir_srg|Mux53~1_combout\);

-- Location: LCCOMB_X43_Y43_N0
\fir_top|fir_srg|outputs~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~129_combout\ = (\fir_top|fir_srg|acc\(10) & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(10),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~129_combout\);

-- Location: FF_X43_Y43_N1
\fir_top|fir_srg|outputs[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~129_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][10]~q\);

-- Location: LCCOMB_X45_Y44_N24
\fir_top|fir_srg|Mux53~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux53~5_combout\ = (\fir_top|fir_srg|Mux53~4_combout\ & (((\fir_top|fir_srg|outputs[9][10]~q\)) # (!\fir_top|fir_srg|y[0]~0_combout\))) # (!\fir_top|fir_srg|Mux53~4_combout\ & (\fir_top|fir_srg|y[0]~0_combout\ & 
-- (\fir_top|fir_srg|Mux53~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux53~4_combout\,
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|Mux53~1_combout\,
	datad => \fir_top|fir_srg|outputs[9][10]~q\,
	combout => \fir_top|fir_srg|Mux53~5_combout\);

-- Location: LCCOMB_X49_Y43_N20
\fir_top|fir_srg|Mux53~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux53~6_combout\ = (\fir_top|fir_srg|Mux53~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|addr\(3),
	datac => \fir_top|fir_srg|Mux53~5_combout\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux53~6_combout\);

-- Location: FF_X49_Y43_N21
\fir_top|fir_srg|y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux53~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(10));

-- Location: LCCOMB_X43_Y38_N6
\fir_top|fir_srg|acc[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[11]~39_combout\ = (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\fir_top|fir_srg|acc\(11) & (\fir_top|fir_srg|acc[10]~38\ & VCC)) # (!\fir_top|fir_srg|acc\(11) & (!\fir_top|fir_srg|acc[10]~38\)))) # 
-- (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\fir_top|fir_srg|acc\(11) & (!\fir_top|fir_srg|acc[10]~38\)) # (!\fir_top|fir_srg|acc\(11) & ((\fir_top|fir_srg|acc[10]~38\) # (GND)))))
-- \fir_top|fir_srg|acc[11]~40\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\fir_top|fir_srg|acc\(11) & !\fir_top|fir_srg|acc[10]~38\)) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((!\fir_top|fir_srg|acc[10]~38\) 
-- # (!\fir_top|fir_srg|acc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \fir_top|fir_srg|acc\(11),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[10]~38\,
	combout => \fir_top|fir_srg|acc[11]~39_combout\,
	cout => \fir_top|fir_srg|acc[11]~40\);

-- Location: FF_X43_Y38_N7
\fir_top|fir_srg|acc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[11]~39_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(11));

-- Location: LCCOMB_X45_Y40_N24
\fir_top|fir_srg|outputs~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~130_combout\ = (\fir_top|fir_srg|acc\(11) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|outputs[0][0]~0_combout\ & \fir_top|fir_srg|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(11),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs~130_combout\);

-- Location: FF_X45_Y40_N25
\fir_top|fir_srg|outputs[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~130_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][11]~q\);

-- Location: LCCOMB_X43_Y43_N10
\fir_top|fir_srg|outputs~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~139_combout\ = (\fir_top|fir_srg|outputs[0][0]~0_combout\ & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|acc\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|acc\(11),
	combout => \fir_top|fir_srg|outputs~139_combout\);

-- Location: FF_X43_Y43_N11
\fir_top|fir_srg|outputs[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~139_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][11]~q\);

-- Location: LCCOMB_X45_Y43_N18
\fir_top|fir_srg|outputs~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~135_combout\ = (\fir_top|fir_srg|acc\(11) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(11),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~135_combout\);

-- Location: FF_X45_Y43_N19
\fir_top|fir_srg|outputs[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~135_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][11]~q\);

-- Location: LCCOMB_X45_Y41_N12
\fir_top|fir_srg|outputs~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~138_combout\ = (\fir_top|fir_srg|acc\(11) & !\fir_top|fir_srg|outputs[3][0]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(11),
	datac => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	combout => \fir_top|fir_srg|outputs~138_combout\);

-- Location: FF_X45_Y41_N13
\fir_top|fir_srg|outputs[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~138_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][11]~q\);

-- Location: LCCOMB_X46_Y41_N24
\fir_top|fir_srg|outputs~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~137_combout\ = (\fir_top|fir_srg|acc\(11) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(11),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~137_combout\);

-- Location: FF_X46_Y41_N25
\fir_top|fir_srg|outputs[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~137_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][11]~q\);

-- Location: LCCOMB_X42_Y41_N24
\fir_top|fir_srg|outputs~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~136_combout\ = (\fir_top|fir_srg|acc\(11) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(11),
	datac => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~136_combout\);

-- Location: FF_X42_Y41_N25
\fir_top|fir_srg|outputs[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~136_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][11]~q\);

-- Location: LCCOMB_X42_Y41_N30
\fir_top|fir_srg|Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux52~2_combout\ = (\fir_top|addr\(0) & (((\fir_top|fir_srg|outputs[1][11]~q\) # (\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[0][11]~q\ & ((!\fir_top|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[0][11]~q\,
	datab => \fir_top|fir_srg|outputs[1][11]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux52~2_combout\);

-- Location: LCCOMB_X42_Y41_N4
\fir_top|fir_srg|Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux52~3_combout\ = (\fir_top|fir_srg|Mux52~2_combout\ & (((\fir_top|fir_srg|outputs[3][11]~q\) # (!\fir_top|addr\(1))))) # (!\fir_top|fir_srg|Mux52~2_combout\ & (\fir_top|fir_srg|outputs[2][11]~q\ & ((\fir_top|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[2][11]~q\,
	datab => \fir_top|fir_srg|outputs[3][11]~q\,
	datac => \fir_top|fir_srg|Mux52~2_combout\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux52~3_combout\);

-- Location: LCCOMB_X43_Y41_N6
\fir_top|fir_srg|outputs~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~132_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\ & \fir_top|fir_srg|acc\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	datac => \fir_top|fir_srg|acc\(11),
	combout => \fir_top|fir_srg|outputs~132_combout\);

-- Location: FF_X43_Y41_N7
\fir_top|fir_srg|outputs[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~132_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][11]~q\);

-- Location: LCCOMB_X42_Y42_N30
\fir_top|fir_srg|outputs~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~133_combout\ = (\fir_top|fir_srg|acc\(11) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(11),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~133_combout\);

-- Location: FF_X42_Y42_N31
\fir_top|fir_srg|outputs[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~133_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][11]~q\);

-- Location: LCCOMB_X42_Y41_N10
\fir_top|fir_srg|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux52~0_combout\ = (\fir_top|addr\(0) & (((\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & ((\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[6][11]~q\)) # (!\fir_top|addr\(1) & ((\fir_top|fir_srg|outputs[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[6][11]~q\,
	datab => \fir_top|addr\(0),
	datac => \fir_top|fir_srg|outputs[4][11]~q\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux52~0_combout\);

-- Location: LCCOMB_X43_Y41_N8
\fir_top|fir_srg|outputs~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~131_combout\ = (\fir_top|fir_srg|acc\(11) & !\fir_top|fir_srg|outputs[5][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(11),
	datad => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs~131_combout\);

-- Location: FF_X43_Y41_N9
\fir_top|fir_srg|outputs[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~131_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][11]~q\);

-- Location: LCCOMB_X46_Y41_N30
\fir_top|fir_srg|outputs~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~134_combout\ = (\fir_top|fir_srg|acc\(11) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(11),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~134_combout\);

-- Location: FF_X46_Y41_N31
\fir_top|fir_srg|outputs[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~134_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][11]~q\);

-- Location: LCCOMB_X43_Y40_N0
\fir_top|fir_srg|Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux52~1_combout\ = (\fir_top|fir_srg|Mux52~0_combout\ & (((\fir_top|fir_srg|outputs[7][11]~q\) # (!\fir_top|addr\(0))))) # (!\fir_top|fir_srg|Mux52~0_combout\ & (\fir_top|fir_srg|outputs[5][11]~q\ & ((\fir_top|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux52~0_combout\,
	datab => \fir_top|fir_srg|outputs[5][11]~q\,
	datac => \fir_top|fir_srg|outputs[7][11]~q\,
	datad => \fir_top|addr\(0),
	combout => \fir_top|fir_srg|Mux52~1_combout\);

-- Location: LCCOMB_X43_Y40_N2
\fir_top|fir_srg|Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux52~4_combout\ = (\fir_top|fir_srg|y[0]~0_combout\ & (((\fir_top|addr\(3)) # (\fir_top|fir_srg|Mux52~1_combout\)))) # (!\fir_top|fir_srg|y[0]~0_combout\ & (\fir_top|fir_srg|Mux52~3_combout\ & (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|y[0]~0_combout\,
	datab => \fir_top|fir_srg|Mux52~3_combout\,
	datac => \fir_top|addr\(3),
	datad => \fir_top|fir_srg|Mux52~1_combout\,
	combout => \fir_top|fir_srg|Mux52~4_combout\);

-- Location: LCCOMB_X43_Y40_N28
\fir_top|fir_srg|Mux52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux52~5_combout\ = (\fir_top|addr\(3) & ((\fir_top|fir_srg|Mux52~4_combout\ & ((\fir_top|fir_srg|outputs[9][11]~q\))) # (!\fir_top|fir_srg|Mux52~4_combout\ & (\fir_top|fir_srg|outputs[8][11]~q\)))) # (!\fir_top|addr\(3) & 
-- (((\fir_top|fir_srg|Mux52~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|outputs[8][11]~q\,
	datac => \fir_top|fir_srg|outputs[9][11]~q\,
	datad => \fir_top|fir_srg|Mux52~4_combout\,
	combout => \fir_top|fir_srg|Mux52~5_combout\);

-- Location: LCCOMB_X49_Y43_N22
\fir_top|fir_srg|Mux52~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux52~6_combout\ = (\fir_top|fir_srg|Mux52~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|addr\(3),
	datac => \fir_top|fir_srg|Mux52~5_combout\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux52~6_combout\);

-- Location: FF_X49_Y43_N23
\fir_top|fir_srg|y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux52~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(11));

-- Location: LCCOMB_X43_Y38_N8
\fir_top|fir_srg|acc[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[12]~41_combout\ = ((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ $ (\fir_top|fir_srg|acc\(12) $ (!\fir_top|fir_srg|acc[11]~40\)))) # (GND)
-- \fir_top|fir_srg|acc[12]~42\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\fir_top|fir_srg|acc\(12)) # (!\fir_top|fir_srg|acc[11]~40\))) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & (\fir_top|fir_srg|acc\(12) & 
-- !\fir_top|fir_srg|acc[11]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \fir_top|fir_srg|acc\(12),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[11]~40\,
	combout => \fir_top|fir_srg|acc[12]~41_combout\,
	cout => \fir_top|fir_srg|acc[12]~42\);

-- Location: FF_X43_Y38_N9
\fir_top|fir_srg|acc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[12]~41_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(12));

-- Location: LCCOMB_X42_Y43_N8
\fir_top|fir_srg|outputs~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~140_combout\ = (!\fir_top|fir_srg|outputs[5][0]~1_combout\ & \fir_top|fir_srg|acc\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	datac => \fir_top|fir_srg|acc\(12),
	combout => \fir_top|fir_srg|outputs~140_combout\);

-- Location: FF_X42_Y43_N9
\fir_top|fir_srg|outputs[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~140_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][12]~q\);

-- Location: LCCOMB_X46_Y42_N0
\fir_top|fir_srg|outputs~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~143_combout\ = (\fir_top|fir_srg|acc\(12) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(12),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~143_combout\);

-- Location: FF_X46_Y42_N1
\fir_top|fir_srg|outputs[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~143_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][12]~q\);

-- Location: LCCOMB_X42_Y42_N12
\fir_top|fir_srg|outputs~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~142_combout\ = (\fir_top|fir_srg|acc\(12) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(12),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~142_combout\);

-- Location: FF_X42_Y42_N13
\fir_top|fir_srg|outputs[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~142_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][12]~q\);

-- Location: LCCOMB_X42_Y43_N14
\fir_top|fir_srg|outputs~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~141_combout\ = (\fir_top|fir_srg|acc\(12) & !\fir_top|fir_srg|outputs[6][0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(12),
	datad => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	combout => \fir_top|fir_srg|outputs~141_combout\);

-- Location: FF_X42_Y43_N15
\fir_top|fir_srg|outputs[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~141_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][12]~q\);

-- Location: LCCOMB_X42_Y44_N28
\fir_top|fir_srg|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux51~0_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0)) # (\fir_top|fir_srg|outputs[6][12]~q\)))) # (!\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[4][12]~q\ & (!\fir_top|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[4][12]~q\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[6][12]~q\,
	combout => \fir_top|fir_srg|Mux51~0_combout\);

-- Location: LCCOMB_X45_Y44_N30
\fir_top|fir_srg|Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux51~1_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|Mux51~0_combout\ & ((\fir_top|fir_srg|outputs[7][12]~q\))) # (!\fir_top|fir_srg|Mux51~0_combout\ & (\fir_top|fir_srg|outputs[5][12]~q\)))) # (!\fir_top|addr\(0) & 
-- (((\fir_top|fir_srg|Mux51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[5][12]~q\,
	datab => \fir_top|fir_srg|outputs[7][12]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|Mux51~0_combout\,
	combout => \fir_top|fir_srg|Mux51~1_combout\);

-- Location: LCCOMB_X45_Y40_N6
\fir_top|fir_srg|outputs~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~144_combout\ = (\fir_top|fir_srg|acc\(12) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|outputs[0][0]~0_combout\ & \fir_top|fir_srg|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(12),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs~144_combout\);

-- Location: FF_X45_Y40_N7
\fir_top|fir_srg|outputs[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~144_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][12]~q\);

-- Location: LCCOMB_X46_Y43_N12
\fir_top|fir_srg|outputs~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~145_combout\ = (\fir_top|fir_srg|acc\(12) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(12),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~145_combout\);

-- Location: FF_X46_Y43_N13
\fir_top|fir_srg|outputs[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~145_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][12]~q\);

-- Location: LCCOMB_X47_Y42_N2
\fir_top|fir_srg|outputs~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~148_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datac => \fir_top|fir_srg|acc\(12),
	combout => \fir_top|fir_srg|outputs~148_combout\);

-- Location: FF_X47_Y42_N3
\fir_top|fir_srg|outputs[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~148_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][12]~q\);

-- Location: LCCOMB_X48_Y43_N28
\fir_top|fir_srg|outputs~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~146_combout\ = (\fir_top|fir_srg|acc\(12) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(12),
	datad => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~146_combout\);

-- Location: FF_X48_Y43_N29
\fir_top|fir_srg|outputs[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~146_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][12]~q\);

-- Location: LCCOMB_X46_Y42_N10
\fir_top|fir_srg|outputs~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~147_combout\ = (\fir_top|fir_srg|acc\(12) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(12),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~147_combout\);

-- Location: FF_X46_Y42_N11
\fir_top|fir_srg|outputs[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~147_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][12]~q\);

-- Location: LCCOMB_X47_Y42_N20
\fir_top|fir_srg|Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux51~2_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[1][12]~q\) # ((\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & (((!\fir_top|addr\(1) & \fir_top|fir_srg|outputs[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datab => \fir_top|fir_srg|outputs[1][12]~q\,
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|outputs[0][12]~q\,
	combout => \fir_top|fir_srg|Mux51~2_combout\);

-- Location: LCCOMB_X47_Y42_N28
\fir_top|fir_srg|Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux51~3_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|Mux51~2_combout\ & ((\fir_top|fir_srg|outputs[3][12]~q\))) # (!\fir_top|fir_srg|Mux51~2_combout\ & (\fir_top|fir_srg|outputs[2][12]~q\)))) # (!\fir_top|addr\(1) & 
-- (((\fir_top|fir_srg|Mux51~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[2][12]~q\,
	datab => \fir_top|fir_srg|outputs[3][12]~q\,
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|Mux51~2_combout\,
	combout => \fir_top|fir_srg|Mux51~3_combout\);

-- Location: LCCOMB_X45_Y44_N4
\fir_top|fir_srg|Mux51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux51~4_combout\ = (\fir_top|addr\(3) & ((\fir_top|fir_srg|y[0]~0_combout\) # ((\fir_top|fir_srg|outputs[8][12]~q\)))) # (!\fir_top|addr\(3) & (!\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|fir_srg|Mux51~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|outputs[8][12]~q\,
	datad => \fir_top|fir_srg|Mux51~3_combout\,
	combout => \fir_top|fir_srg|Mux51~4_combout\);

-- Location: LCCOMB_X43_Y43_N16
\fir_top|fir_srg|outputs~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~149_combout\ = (\fir_top|fir_srg|acc\(12) & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(12),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~149_combout\);

-- Location: FF_X43_Y43_N17
\fir_top|fir_srg|outputs[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~149_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][12]~q\);

-- Location: LCCOMB_X45_Y44_N18
\fir_top|fir_srg|Mux51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux51~5_combout\ = (\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|fir_srg|Mux51~4_combout\ & ((\fir_top|fir_srg|outputs[9][12]~q\))) # (!\fir_top|fir_srg|Mux51~4_combout\ & (\fir_top|fir_srg|Mux51~1_combout\)))) # 
-- (!\fir_top|fir_srg|y[0]~0_combout\ & (((\fir_top|fir_srg|Mux51~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux51~1_combout\,
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|Mux51~4_combout\,
	datad => \fir_top|fir_srg|outputs[9][12]~q\,
	combout => \fir_top|fir_srg|Mux51~5_combout\);

-- Location: LCCOMB_X49_Y43_N0
\fir_top|fir_srg|Mux51~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux51~6_combout\ = (\fir_top|fir_srg|Mux51~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|addr\(3),
	datac => \fir_top|fir_srg|Mux51~5_combout\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux51~6_combout\);

-- Location: FF_X49_Y43_N1
\fir_top|fir_srg|y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux51~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(12));

-- Location: LCCOMB_X43_Y38_N10
\fir_top|fir_srg|acc[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[13]~43_combout\ = (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\fir_top|fir_srg|acc\(13) & (\fir_top|fir_srg|acc[12]~42\ & VCC)) # (!\fir_top|fir_srg|acc\(13) & (!\fir_top|fir_srg|acc[12]~42\)))) # 
-- (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\fir_top|fir_srg|acc\(13) & (!\fir_top|fir_srg|acc[12]~42\)) # (!\fir_top|fir_srg|acc\(13) & ((\fir_top|fir_srg|acc[12]~42\) # (GND)))))
-- \fir_top|fir_srg|acc[13]~44\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\fir_top|fir_srg|acc\(13) & !\fir_top|fir_srg|acc[12]~42\)) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((!\fir_top|fir_srg|acc[12]~42\) 
-- # (!\fir_top|fir_srg|acc\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \fir_top|fir_srg|acc\(13),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[12]~42\,
	combout => \fir_top|fir_srg|acc[13]~43_combout\,
	cout => \fir_top|fir_srg|acc[13]~44\);

-- Location: FF_X43_Y38_N11
\fir_top|fir_srg|acc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[13]~43_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(13));

-- Location: LCCOMB_X43_Y43_N22
\fir_top|fir_srg|outputs~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~159_combout\ = (\fir_top|fir_srg|outputs[0][0]~0_combout\ & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|acc\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|acc\(13),
	combout => \fir_top|fir_srg|outputs~159_combout\);

-- Location: FF_X43_Y43_N23
\fir_top|fir_srg|outputs[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~159_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][13]~q\);

-- Location: LCCOMB_X45_Y40_N20
\fir_top|fir_srg|outputs~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~150_combout\ = (\fir_top|fir_srg|acc\(13) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|outputs[0][0]~0_combout\ & \fir_top|fir_srg|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(13),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs~150_combout\);

-- Location: FF_X45_Y40_N21
\fir_top|fir_srg|outputs[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~150_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][13]~q\);

-- Location: LCCOMB_X46_Y42_N28
\fir_top|fir_srg|outputs~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~157_combout\ = (\fir_top|fir_srg|acc\(13) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(13),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~157_combout\);

-- Location: FF_X46_Y42_N29
\fir_top|fir_srg|outputs[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~157_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][13]~q\);

-- Location: LCCOMB_X48_Y43_N22
\fir_top|fir_srg|outputs~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~156_combout\ = (\fir_top|fir_srg|acc\(13) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(13),
	datad => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~156_combout\);

-- Location: FF_X48_Y43_N23
\fir_top|fir_srg|outputs[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~156_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][13]~q\);

-- Location: LCCOMB_X47_Y42_N22
\fir_top|fir_srg|Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux50~2_combout\ = (\fir_top|addr\(0) & (((\fir_top|addr\(1)) # (\fir_top|fir_srg|outputs[1][13]~q\)))) # (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[0][13]~q\ & (!\fir_top|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datab => \fir_top|fir_srg|outputs[0][13]~q\,
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|outputs[1][13]~q\,
	combout => \fir_top|fir_srg|Mux50~2_combout\);

-- Location: LCCOMB_X46_Y43_N30
\fir_top|fir_srg|outputs~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~155_combout\ = (\fir_top|fir_srg|acc\(13) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(13),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~155_combout\);

-- Location: FF_X46_Y43_N31
\fir_top|fir_srg|outputs[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~155_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][13]~q\);

-- Location: LCCOMB_X48_Y42_N24
\fir_top|fir_srg|outputs~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~158_combout\ = (\fir_top|fir_srg|acc\(13) & !\fir_top|fir_srg|outputs[3][0]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(13),
	datac => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	combout => \fir_top|fir_srg|outputs~158_combout\);

-- Location: FF_X48_Y42_N25
\fir_top|fir_srg|outputs[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~158_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][13]~q\);

-- Location: LCCOMB_X48_Y42_N10
\fir_top|fir_srg|Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux50~3_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|Mux50~2_combout\ & ((\fir_top|fir_srg|outputs[3][13]~q\))) # (!\fir_top|fir_srg|Mux50~2_combout\ & (\fir_top|fir_srg|outputs[2][13]~q\)))) # (!\fir_top|addr\(1) & 
-- (\fir_top|fir_srg|Mux50~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|Mux50~2_combout\,
	datac => \fir_top|fir_srg|outputs[2][13]~q\,
	datad => \fir_top|fir_srg|outputs[3][13]~q\,
	combout => \fir_top|fir_srg|Mux50~3_combout\);

-- Location: LCCOMB_X45_Y42_N30
\fir_top|fir_srg|outputs~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~153_combout\ = (\fir_top|fir_srg|acc\(13) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(13),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~153_combout\);

-- Location: FF_X45_Y42_N31
\fir_top|fir_srg|outputs[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~153_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][13]~q\);

-- Location: LCCOMB_X45_Y42_N0
\fir_top|fir_srg|outputs~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~152_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\ & \fir_top|fir_srg|acc\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	datac => \fir_top|fir_srg|acc\(13),
	combout => \fir_top|fir_srg|outputs~152_combout\);

-- Location: FF_X45_Y42_N1
\fir_top|fir_srg|outputs[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~152_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][13]~q\);

-- Location: LCCOMB_X45_Y42_N24
\fir_top|fir_srg|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux50~0_combout\ = (\fir_top|addr\(1) & ((\fir_top|addr\(0)) # ((\fir_top|fir_srg|outputs[6][13]~q\)))) # (!\fir_top|addr\(1) & (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[4][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|addr\(0),
	datac => \fir_top|fir_srg|outputs[4][13]~q\,
	datad => \fir_top|fir_srg|outputs[6][13]~q\,
	combout => \fir_top|fir_srg|Mux50~0_combout\);

-- Location: LCCOMB_X43_Y41_N12
\fir_top|fir_srg|outputs~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~151_combout\ = (\fir_top|fir_srg|acc\(13) & !\fir_top|fir_srg|outputs[5][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(13),
	datad => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs~151_combout\);

-- Location: FF_X43_Y41_N13
\fir_top|fir_srg|outputs[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~151_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][13]~q\);

-- Location: LCCOMB_X46_Y42_N20
\fir_top|fir_srg|outputs~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~154_combout\ = (\fir_top|fir_srg|acc\(13) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(13),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~154_combout\);

-- Location: FF_X46_Y42_N21
\fir_top|fir_srg|outputs[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~154_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][13]~q\);

-- Location: LCCOMB_X46_Y42_N22
\fir_top|fir_srg|Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux50~1_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|Mux50~0_combout\ & ((\fir_top|fir_srg|outputs[7][13]~q\))) # (!\fir_top|fir_srg|Mux50~0_combout\ & (\fir_top|fir_srg|outputs[5][13]~q\)))) # (!\fir_top|addr\(0) & 
-- (\fir_top|fir_srg|Mux50~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(0),
	datab => \fir_top|fir_srg|Mux50~0_combout\,
	datac => \fir_top|fir_srg|outputs[5][13]~q\,
	datad => \fir_top|fir_srg|outputs[7][13]~q\,
	combout => \fir_top|fir_srg|Mux50~1_combout\);

-- Location: LCCOMB_X48_Y42_N16
\fir_top|fir_srg|Mux50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux50~4_combout\ = (\fir_top|addr\(3) & (((\fir_top|fir_srg|y[0]~0_combout\)))) # (!\fir_top|addr\(3) & ((\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|fir_srg|Mux50~1_combout\))) # (!\fir_top|fir_srg|y[0]~0_combout\ & 
-- (\fir_top|fir_srg|Mux50~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux50~3_combout\,
	datab => \fir_top|addr\(3),
	datac => \fir_top|fir_srg|y[0]~0_combout\,
	datad => \fir_top|fir_srg|Mux50~1_combout\,
	combout => \fir_top|fir_srg|Mux50~4_combout\);

-- Location: LCCOMB_X49_Y43_N2
\fir_top|fir_srg|Mux50~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux50~5_combout\ = (\fir_top|addr\(3) & ((\fir_top|fir_srg|Mux50~4_combout\ & (\fir_top|fir_srg|outputs[9][13]~q\)) # (!\fir_top|fir_srg|Mux50~4_combout\ & ((\fir_top|fir_srg|outputs[8][13]~q\))))) # (!\fir_top|addr\(3) & 
-- (((\fir_top|fir_srg|Mux50~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|outputs[9][13]~q\,
	datac => \fir_top|fir_srg|outputs[8][13]~q\,
	datad => \fir_top|fir_srg|Mux50~4_combout\,
	combout => \fir_top|fir_srg|Mux50~5_combout\);

-- Location: LCCOMB_X49_Y43_N10
\fir_top|fir_srg|Mux50~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux50~6_combout\ = (\fir_top|fir_srg|Mux50~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|fir_srg|Mux50~5_combout\,
	datac => \fir_top|addr\(3),
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux50~6_combout\);

-- Location: FF_X49_Y43_N11
\fir_top|fir_srg|y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux50~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(13));

-- Location: LCCOMB_X43_Y38_N12
\fir_top|fir_srg|acc[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[14]~45_combout\ = ((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ $ (\fir_top|fir_srg|acc\(14) $ (!\fir_top|fir_srg|acc[13]~44\)))) # (GND)
-- \fir_top|fir_srg|acc[14]~46\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\fir_top|fir_srg|acc\(14)) # (!\fir_top|fir_srg|acc[13]~44\))) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & (\fir_top|fir_srg|acc\(14) & 
-- !\fir_top|fir_srg|acc[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \fir_top|fir_srg|acc\(14),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[13]~44\,
	combout => \fir_top|fir_srg|acc[14]~45_combout\,
	cout => \fir_top|fir_srg|acc[14]~46\);

-- Location: FF_X43_Y38_N13
\fir_top|fir_srg|acc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[14]~45_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(14));

-- Location: LCCOMB_X43_Y43_N4
\fir_top|fir_srg|outputs~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~169_combout\ = (\fir_top|fir_srg|acc\(14) & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(14),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~169_combout\);

-- Location: FF_X43_Y43_N5
\fir_top|fir_srg|outputs[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~169_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][14]~q\);

-- Location: LCCOMB_X46_Y42_N2
\fir_top|fir_srg|outputs~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~163_combout\ = (\fir_top|fir_srg|acc\(14) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(14),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~163_combout\);

-- Location: FF_X46_Y42_N3
\fir_top|fir_srg|outputs[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~163_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][14]~q\);

-- Location: LCCOMB_X43_Y41_N14
\fir_top|fir_srg|outputs~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~160_combout\ = (\fir_top|fir_srg|acc\(14) & !\fir_top|fir_srg|outputs[5][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(14),
	datad => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs~160_combout\);

-- Location: FF_X43_Y41_N15
\fir_top|fir_srg|outputs[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~160_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][14]~q\);

-- Location: LCCOMB_X43_Y42_N30
\fir_top|fir_srg|outputs~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~162_combout\ = (\fir_top|fir_srg|acc\(14) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(14),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~162_combout\);

-- Location: FF_X43_Y42_N31
\fir_top|fir_srg|outputs[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~162_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][14]~q\);

-- Location: LCCOMB_X43_Y41_N0
\fir_top|fir_srg|outputs~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~161_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\ & \fir_top|fir_srg|acc\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	datac => \fir_top|fir_srg|acc\(14),
	combout => \fir_top|fir_srg|outputs~161_combout\);

-- Location: FF_X43_Y41_N1
\fir_top|fir_srg|outputs[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~161_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][14]~q\);

-- Location: LCCOMB_X43_Y42_N20
\fir_top|fir_srg|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux49~0_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0)) # (\fir_top|fir_srg|outputs[6][14]~q\)))) # (!\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[4][14]~q\ & (!\fir_top|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[4][14]~q\,
	datab => \fir_top|addr\(1),
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[6][14]~q\,
	combout => \fir_top|fir_srg|Mux49~0_combout\);

-- Location: LCCOMB_X43_Y42_N2
\fir_top|fir_srg|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux49~1_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|Mux49~0_combout\ & (\fir_top|fir_srg|outputs[7][14]~q\)) # (!\fir_top|fir_srg|Mux49~0_combout\ & ((\fir_top|fir_srg|outputs[5][14]~q\))))) # (!\fir_top|addr\(0) & 
-- (((\fir_top|fir_srg|Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[7][14]~q\,
	datab => \fir_top|fir_srg|outputs[5][14]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|Mux49~0_combout\,
	combout => \fir_top|fir_srg|Mux49~1_combout\);

-- Location: LCCOMB_X45_Y41_N10
\fir_top|fir_srg|outputs~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~168_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datac => \fir_top|fir_srg|acc\(14),
	combout => \fir_top|fir_srg|outputs~168_combout\);

-- Location: FF_X45_Y41_N11
\fir_top|fir_srg|outputs[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~168_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][14]~q\);

-- Location: LCCOMB_X46_Y43_N8
\fir_top|fir_srg|outputs~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~165_combout\ = (\fir_top|fir_srg|acc\(14) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(14),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~165_combout\);

-- Location: FF_X46_Y43_N9
\fir_top|fir_srg|outputs[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~165_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][14]~q\);

-- Location: LCCOMB_X46_Y41_N6
\fir_top|fir_srg|outputs~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~167_combout\ = (\fir_top|fir_srg|acc\(14) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(14),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~167_combout\);

-- Location: FF_X46_Y41_N7
\fir_top|fir_srg|outputs[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~167_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][14]~q\);

-- Location: LCCOMB_X45_Y41_N14
\fir_top|fir_srg|outputs~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~166_combout\ = (\fir_top|fir_srg|acc\(14) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(14),
	datac => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~166_combout\);

-- Location: FF_X45_Y41_N15
\fir_top|fir_srg|outputs[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~166_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][14]~q\);

-- Location: LCCOMB_X45_Y41_N8
\fir_top|fir_srg|Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux49~2_combout\ = (\fir_top|addr\(0) & (((\fir_top|fir_srg|outputs[1][14]~q\) # (\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[0][14]~q\ & ((!\fir_top|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[0][14]~q\,
	datab => \fir_top|addr\(0),
	datac => \fir_top|fir_srg|outputs[1][14]~q\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux49~2_combout\);

-- Location: LCCOMB_X45_Y41_N24
\fir_top|fir_srg|Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux49~3_combout\ = (\fir_top|fir_srg|Mux49~2_combout\ & ((\fir_top|fir_srg|outputs[3][14]~q\) # ((!\fir_top|addr\(1))))) # (!\fir_top|fir_srg|Mux49~2_combout\ & (((\fir_top|fir_srg|outputs[2][14]~q\ & \fir_top|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[3][14]~q\,
	datab => \fir_top|fir_srg|outputs[2][14]~q\,
	datac => \fir_top|fir_srg|Mux49~2_combout\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux49~3_combout\);

-- Location: LCCOMB_X45_Y40_N18
\fir_top|fir_srg|outputs~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~164_combout\ = (\fir_top|fir_srg|acc\(14) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|outputs[0][0]~0_combout\ & \fir_top|fir_srg|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(14),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs~164_combout\);

-- Location: FF_X45_Y40_N19
\fir_top|fir_srg|outputs[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~164_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][14]~q\);

-- Location: LCCOMB_X45_Y40_N4
\fir_top|fir_srg|Mux49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux49~4_combout\ = (\fir_top|fir_srg|y[0]~0_combout\ & (\fir_top|addr\(3))) # (!\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|addr\(3) & ((\fir_top|fir_srg|outputs[8][14]~q\))) # (!\fir_top|addr\(3) & 
-- (\fir_top|fir_srg|Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|y[0]~0_combout\,
	datab => \fir_top|addr\(3),
	datac => \fir_top|fir_srg|Mux49~3_combout\,
	datad => \fir_top|fir_srg|outputs[8][14]~q\,
	combout => \fir_top|fir_srg|Mux49~4_combout\);

-- Location: LCCOMB_X43_Y40_N10
\fir_top|fir_srg|Mux49~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux49~5_combout\ = (\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|fir_srg|Mux49~4_combout\ & (\fir_top|fir_srg|outputs[9][14]~q\)) # (!\fir_top|fir_srg|Mux49~4_combout\ & ((\fir_top|fir_srg|Mux49~1_combout\))))) # 
-- (!\fir_top|fir_srg|y[0]~0_combout\ & (((\fir_top|fir_srg|Mux49~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[9][14]~q\,
	datab => \fir_top|fir_srg|Mux49~1_combout\,
	datac => \fir_top|fir_srg|y[0]~0_combout\,
	datad => \fir_top|fir_srg|Mux49~4_combout\,
	combout => \fir_top|fir_srg|Mux49~5_combout\);

-- Location: LCCOMB_X49_Y43_N12
\fir_top|fir_srg|Mux49~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux49~6_combout\ = (\fir_top|fir_srg|Mux49~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|addr\(3),
	datac => \fir_top|fir_srg|Mux49~5_combout\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux49~6_combout\);

-- Location: FF_X49_Y43_N13
\fir_top|fir_srg|y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux49~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(14));

-- Location: LCCOMB_X43_Y38_N14
\fir_top|fir_srg|acc[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[15]~47_combout\ = (\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\fir_top|fir_srg|acc\(15) & (\fir_top|fir_srg|acc[14]~46\ & VCC)) # (!\fir_top|fir_srg|acc\(15) & (!\fir_top|fir_srg|acc[14]~46\)))) # 
-- (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\fir_top|fir_srg|acc\(15) & (!\fir_top|fir_srg|acc[14]~46\)) # (!\fir_top|fir_srg|acc\(15) & ((\fir_top|fir_srg|acc[14]~46\) # (GND)))))
-- \fir_top|fir_srg|acc[15]~48\ = CARRY((\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\fir_top|fir_srg|acc\(15) & !\fir_top|fir_srg|acc[14]~46\)) # (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((!\fir_top|fir_srg|acc[14]~46\) 
-- # (!\fir_top|fir_srg|acc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \fir_top|fir_srg|acc\(15),
	datad => VCC,
	cin => \fir_top|fir_srg|acc[14]~46\,
	combout => \fir_top|fir_srg|acc[15]~47_combout\,
	cout => \fir_top|fir_srg|acc[15]~48\);

-- Location: FF_X43_Y38_N15
\fir_top|fir_srg|acc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[15]~47_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(15));

-- Location: LCCOMB_X45_Y40_N30
\fir_top|fir_srg|outputs~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~170_combout\ = (\fir_top|fir_srg|outputs[0][0]~0_combout\ & (\fir_top|fir_srg|acc\(15) & (!\fir_top|fir_srg|j\(0) & \fir_top|fir_srg|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	datab => \fir_top|fir_srg|acc\(15),
	datac => \fir_top|fir_srg|j\(0),
	datad => \fir_top|fir_srg|Equal2~9_combout\,
	combout => \fir_top|fir_srg|outputs~170_combout\);

-- Location: FF_X45_Y40_N31
\fir_top|fir_srg|outputs[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~170_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][15]~q\);

-- Location: LCCOMB_X43_Y43_N6
\fir_top|fir_srg|outputs~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~179_combout\ = (\fir_top|fir_srg|acc\(15) & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(15),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~179_combout\);

-- Location: FF_X43_Y43_N7
\fir_top|fir_srg|outputs[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~179_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][15]~q\);

-- Location: LCCOMB_X42_Y42_N22
\fir_top|fir_srg|outputs~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~173_combout\ = (\fir_top|fir_srg|acc\(15) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(15),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~173_combout\);

-- Location: FF_X42_Y42_N23
\fir_top|fir_srg|outputs[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~173_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][15]~q\);

-- Location: LCCOMB_X45_Y42_N6
\fir_top|fir_srg|outputs~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~172_combout\ = (!\fir_top|fir_srg|outputs[6][0]~5_combout\ & \fir_top|fir_srg|acc\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	datac => \fir_top|fir_srg|acc\(15),
	combout => \fir_top|fir_srg|outputs~172_combout\);

-- Location: FF_X45_Y42_N7
\fir_top|fir_srg|outputs[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~172_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][15]~q\);

-- Location: LCCOMB_X42_Y42_N28
\fir_top|fir_srg|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux48~0_combout\ = (\fir_top|addr\(0) & (((\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & ((\fir_top|addr\(1) & ((\fir_top|fir_srg|outputs[6][15]~q\))) # (!\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[4][15]~q\,
	datab => \fir_top|addr\(0),
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|outputs[6][15]~q\,
	combout => \fir_top|fir_srg|Mux48~0_combout\);

-- Location: LCCOMB_X46_Y41_N8
\fir_top|fir_srg|outputs~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~174_combout\ = (\fir_top|fir_srg|acc\(15) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(15),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~174_combout\);

-- Location: FF_X46_Y41_N9
\fir_top|fir_srg|outputs[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~174_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][15]~q\);

-- Location: LCCOMB_X42_Y41_N14
\fir_top|fir_srg|outputs~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~171_combout\ = (\fir_top|fir_srg|acc\(15) & !\fir_top|fir_srg|outputs[5][0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(15),
	datad => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	combout => \fir_top|fir_srg|outputs~171_combout\);

-- Location: LCCOMB_X43_Y41_N18
\fir_top|fir_srg|outputs[5][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs[5][15]~feeder_combout\ = \fir_top|fir_srg|outputs~171_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_top|fir_srg|outputs~171_combout\,
	combout => \fir_top|fir_srg|outputs[5][15]~feeder_combout\);

-- Location: FF_X43_Y41_N19
\fir_top|fir_srg|outputs[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs[5][15]~feeder_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][15]~q\);

-- Location: LCCOMB_X42_Y41_N22
\fir_top|fir_srg|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux48~1_combout\ = (\fir_top|fir_srg|Mux48~0_combout\ & (((\fir_top|fir_srg|outputs[7][15]~q\)) # (!\fir_top|addr\(0)))) # (!\fir_top|fir_srg|Mux48~0_combout\ & (\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[5][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux48~0_combout\,
	datab => \fir_top|addr\(0),
	datac => \fir_top|fir_srg|outputs[7][15]~q\,
	datad => \fir_top|fir_srg|outputs[5][15]~q\,
	combout => \fir_top|fir_srg|Mux48~1_combout\);

-- Location: LCCOMB_X45_Y43_N12
\fir_top|fir_srg|outputs~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~175_combout\ = (\fir_top|fir_srg|acc\(15) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(15),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~175_combout\);

-- Location: FF_X45_Y43_N13
\fir_top|fir_srg|outputs[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~175_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][15]~q\);

-- Location: LCCOMB_X42_Y41_N12
\fir_top|fir_srg|outputs~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~176_combout\ = (!\fir_top|fir_srg|outputs[1][0]~19_combout\ & \fir_top|fir_srg|acc\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	datac => \fir_top|fir_srg|acc\(15),
	combout => \fir_top|fir_srg|outputs~176_combout\);

-- Location: FF_X42_Y41_N13
\fir_top|fir_srg|outputs[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~176_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][15]~q\);

-- Location: LCCOMB_X46_Y41_N14
\fir_top|fir_srg|outputs~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~177_combout\ = (\fir_top|fir_srg|acc\(15) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(15),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~177_combout\);

-- Location: FF_X46_Y41_N15
\fir_top|fir_srg|outputs[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~177_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][15]~q\);

-- Location: LCCOMB_X42_Y41_N2
\fir_top|fir_srg|Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux48~2_combout\ = (\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[1][15]~q\) # ((\fir_top|addr\(1))))) # (!\fir_top|addr\(0) & (((\fir_top|fir_srg|outputs[0][15]~q\ & !\fir_top|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[1][15]~q\,
	datab => \fir_top|addr\(0),
	datac => \fir_top|fir_srg|outputs[0][15]~q\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux48~2_combout\);

-- Location: LCCOMB_X45_Y41_N26
\fir_top|fir_srg|outputs~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~178_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datad => \fir_top|fir_srg|acc\(15),
	combout => \fir_top|fir_srg|outputs~178_combout\);

-- Location: FF_X45_Y41_N27
\fir_top|fir_srg|outputs[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~178_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][15]~q\);

-- Location: LCCOMB_X45_Y44_N20
\fir_top|fir_srg|Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux48~3_combout\ = (\fir_top|fir_srg|Mux48~2_combout\ & (((\fir_top|fir_srg|outputs[3][15]~q\) # (!\fir_top|addr\(1))))) # (!\fir_top|fir_srg|Mux48~2_combout\ & (\fir_top|fir_srg|outputs[2][15]~q\ & (\fir_top|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[2][15]~q\,
	datab => \fir_top|fir_srg|Mux48~2_combout\,
	datac => \fir_top|addr\(1),
	datad => \fir_top|fir_srg|outputs[3][15]~q\,
	combout => \fir_top|fir_srg|Mux48~3_combout\);

-- Location: LCCOMB_X45_Y44_N6
\fir_top|fir_srg|Mux48~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux48~4_combout\ = (\fir_top|addr\(3) & (\fir_top|fir_srg|y[0]~0_combout\)) # (!\fir_top|addr\(3) & ((\fir_top|fir_srg|y[0]~0_combout\ & (\fir_top|fir_srg|Mux48~1_combout\)) # (!\fir_top|fir_srg|y[0]~0_combout\ & 
-- ((\fir_top|fir_srg|Mux48~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|Mux48~1_combout\,
	datad => \fir_top|fir_srg|Mux48~3_combout\,
	combout => \fir_top|fir_srg|Mux48~4_combout\);

-- Location: LCCOMB_X45_Y44_N12
\fir_top|fir_srg|Mux48~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux48~5_combout\ = (\fir_top|addr\(3) & ((\fir_top|fir_srg|Mux48~4_combout\ & ((\fir_top|fir_srg|outputs[9][15]~q\))) # (!\fir_top|fir_srg|Mux48~4_combout\ & (\fir_top|fir_srg|outputs[8][15]~q\)))) # (!\fir_top|addr\(3) & 
-- (((\fir_top|fir_srg|Mux48~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|outputs[8][15]~q\,
	datac => \fir_top|fir_srg|outputs[9][15]~q\,
	datad => \fir_top|fir_srg|Mux48~4_combout\,
	combout => \fir_top|fir_srg|Mux48~5_combout\);

-- Location: LCCOMB_X49_Y43_N14
\fir_top|fir_srg|Mux48~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux48~6_combout\ = (\fir_top|fir_srg|Mux48~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|addr\(3),
	datac => \fir_top|fir_srg|Mux48~5_combout\,
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux48~6_combout\);

-- Location: FF_X49_Y43_N15
\fir_top|fir_srg|y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux48~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(15));

-- Location: LCCOMB_X43_Y38_N16
\fir_top|fir_srg|acc[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|acc[16]~49_combout\ = \fir_top|fir_srg|acc\(16) $ (\fir_top|fir_srg|acc[15]~48\ $ (!\fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|acc\(16),
	datad => \fir_top|fir_srg|Mult0|auto_generated|mac_out2~DATAOUT9\,
	cin => \fir_top|fir_srg|acc[15]~48\,
	combout => \fir_top|fir_srg|acc[16]~49_combout\);

-- Location: FF_X43_Y38_N17
\fir_top|fir_srg|acc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|acc[16]~49_combout\,
	sclr => \fir_top|fir_srg|i[2]~100_combout\,
	ena => \fir_top|fir_srg|i[2]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|acc\(16));

-- Location: LCCOMB_X43_Y39_N10
\fir_top|fir_srg|outputs~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~184_combout\ = (\fir_top|fir_srg|acc\(16) & (!\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(16),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~184_combout\);

-- Location: FF_X43_Y39_N11
\fir_top|fir_srg|outputs[8][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~184_combout\,
	ena => \fir_top|fir_srg|outputs[8][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[8][16]~q\);

-- Location: LCCOMB_X48_Y42_N22
\fir_top|fir_srg|outputs~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~188_combout\ = (!\fir_top|fir_srg|outputs[3][0]~25_combout\ & \fir_top|fir_srg|acc\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|outputs[3][0]~25_combout\,
	datad => \fir_top|fir_srg|acc\(16),
	combout => \fir_top|fir_srg|outputs~188_combout\);

-- Location: FF_X48_Y42_N23
\fir_top|fir_srg|outputs[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~188_combout\,
	ena => \fir_top|fir_srg|outputs[3][0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[3][16]~q\);

-- Location: LCCOMB_X46_Y43_N4
\fir_top|fir_srg|outputs~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~185_combout\ = (\fir_top|fir_srg|acc\(16) & !\fir_top|fir_srg|outputs[2][14]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(16),
	datad => \fir_top|fir_srg|outputs[2][14]~16_combout\,
	combout => \fir_top|fir_srg|outputs~185_combout\);

-- Location: FF_X46_Y43_N5
\fir_top|fir_srg|outputs[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~185_combout\,
	ena => \fir_top|fir_srg|outputs[2][14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[2][16]~q\);

-- Location: LCCOMB_X48_Y43_N18
\fir_top|fir_srg|outputs~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~187_combout\ = (\fir_top|fir_srg|acc\(16) & !\fir_top|fir_srg|outputs[0][0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(16),
	datad => \fir_top|fir_srg|outputs[0][0]~22_combout\,
	combout => \fir_top|fir_srg|outputs~187_combout\);

-- Location: FF_X48_Y43_N19
\fir_top|fir_srg|outputs[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~187_combout\,
	ena => \fir_top|fir_srg|outputs[0][0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[0][16]~q\);

-- Location: LCCOMB_X48_Y43_N12
\fir_top|fir_srg|outputs~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~186_combout\ = (\fir_top|fir_srg|acc\(16) & !\fir_top|fir_srg|outputs[1][0]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(16),
	datad => \fir_top|fir_srg|outputs[1][0]~19_combout\,
	combout => \fir_top|fir_srg|outputs~186_combout\);

-- Location: FF_X48_Y43_N13
\fir_top|fir_srg|outputs[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~186_combout\,
	ena => \fir_top|fir_srg|outputs[1][0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[1][16]~q\);

-- Location: LCCOMB_X48_Y43_N20
\fir_top|fir_srg|Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux47~2_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0))))) # (!\fir_top|addr\(1) & ((\fir_top|addr\(0) & ((\fir_top|fir_srg|outputs[1][16]~q\))) # (!\fir_top|addr\(0) & (\fir_top|fir_srg|outputs[0][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|outputs[0][16]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[1][16]~q\,
	combout => \fir_top|fir_srg|Mux47~2_combout\);

-- Location: LCCOMB_X48_Y43_N26
\fir_top|fir_srg|Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux47~3_combout\ = (\fir_top|addr\(1) & ((\fir_top|fir_srg|Mux47~2_combout\ & (\fir_top|fir_srg|outputs[3][16]~q\)) # (!\fir_top|fir_srg|Mux47~2_combout\ & ((\fir_top|fir_srg|outputs[2][16]~q\))))) # (!\fir_top|addr\(1) & 
-- (((\fir_top|fir_srg|Mux47~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|outputs[3][16]~q\,
	datac => \fir_top|fir_srg|outputs[2][16]~q\,
	datad => \fir_top|fir_srg|Mux47~2_combout\,
	combout => \fir_top|fir_srg|Mux47~3_combout\);

-- Location: LCCOMB_X47_Y43_N12
\fir_top|fir_srg|Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux47~4_combout\ = (\fir_top|addr\(3) & ((\fir_top|fir_srg|y[0]~0_combout\) # ((\fir_top|fir_srg|outputs[8][16]~q\)))) # (!\fir_top|addr\(3) & (!\fir_top|fir_srg|y[0]~0_combout\ & ((\fir_top|fir_srg|Mux47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(3),
	datab => \fir_top|fir_srg|y[0]~0_combout\,
	datac => \fir_top|fir_srg|outputs[8][16]~q\,
	datad => \fir_top|fir_srg|Mux47~3_combout\,
	combout => \fir_top|fir_srg|Mux47~4_combout\);

-- Location: LCCOMB_X42_Y42_N26
\fir_top|fir_srg|outputs~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~182_combout\ = (\fir_top|fir_srg|acc\(16) & !\fir_top|fir_srg|outputs[4][0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(16),
	datad => \fir_top|fir_srg|outputs[4][0]~8_combout\,
	combout => \fir_top|fir_srg|outputs~182_combout\);

-- Location: FF_X42_Y42_N27
\fir_top|fir_srg|outputs[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~182_combout\,
	ena => \fir_top|fir_srg|outputs[4][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[4][16]~q\);

-- Location: LCCOMB_X42_Y43_N2
\fir_top|fir_srg|outputs~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~181_combout\ = (\fir_top|fir_srg|acc\(16) & !\fir_top|fir_srg|outputs[6][0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(16),
	datad => \fir_top|fir_srg|outputs[6][0]~5_combout\,
	combout => \fir_top|fir_srg|outputs~181_combout\);

-- Location: FF_X42_Y43_N3
\fir_top|fir_srg|outputs[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~181_combout\,
	ena => \fir_top|fir_srg|outputs[6][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[6][16]~q\);

-- Location: LCCOMB_X42_Y43_N12
\fir_top|fir_srg|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux47~0_combout\ = (\fir_top|addr\(1) & (((\fir_top|addr\(0)) # (\fir_top|fir_srg|outputs[6][16]~q\)))) # (!\fir_top|addr\(1) & (\fir_top|fir_srg|outputs[4][16]~q\ & (!\fir_top|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(1),
	datab => \fir_top|fir_srg|outputs[4][16]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[6][16]~q\,
	combout => \fir_top|fir_srg|Mux47~0_combout\);

-- Location: LCCOMB_X42_Y43_N28
\fir_top|fir_srg|outputs~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~180_combout\ = (!\fir_top|fir_srg|outputs[5][0]~1_combout\ & \fir_top|fir_srg|acc\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_top|fir_srg|outputs[5][0]~1_combout\,
	datac => \fir_top|fir_srg|acc\(16),
	combout => \fir_top|fir_srg|outputs~180_combout\);

-- Location: FF_X42_Y43_N29
\fir_top|fir_srg|outputs[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~180_combout\,
	ena => \fir_top|fir_srg|outputs[5][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[5][16]~q\);

-- Location: LCCOMB_X46_Y43_N18
\fir_top|fir_srg|outputs~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~183_combout\ = (\fir_top|fir_srg|acc\(16) & !\fir_top|fir_srg|outputs[7][0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_top|fir_srg|acc\(16),
	datad => \fir_top|fir_srg|outputs[7][0]~11_combout\,
	combout => \fir_top|fir_srg|outputs~183_combout\);

-- Location: FF_X46_Y43_N19
\fir_top|fir_srg|outputs[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~183_combout\,
	ena => \fir_top|fir_srg|outputs[7][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[7][16]~q\);

-- Location: LCCOMB_X42_Y43_N22
\fir_top|fir_srg|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux47~1_combout\ = (\fir_top|fir_srg|Mux47~0_combout\ & (((\fir_top|fir_srg|outputs[7][16]~q\) # (!\fir_top|addr\(0))))) # (!\fir_top|fir_srg|Mux47~0_combout\ & (\fir_top|fir_srg|outputs[5][16]~q\ & (\fir_top|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux47~0_combout\,
	datab => \fir_top|fir_srg|outputs[5][16]~q\,
	datac => \fir_top|addr\(0),
	datad => \fir_top|fir_srg|outputs[7][16]~q\,
	combout => \fir_top|fir_srg|Mux47~1_combout\);

-- Location: LCCOMB_X43_Y43_N28
\fir_top|fir_srg|outputs~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|outputs~189_combout\ = (\fir_top|fir_srg|acc\(16) & (\fir_top|fir_srg|j\(0) & (\fir_top|fir_srg|Equal2~9_combout\ & \fir_top|fir_srg|outputs[0][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|acc\(16),
	datab => \fir_top|fir_srg|j\(0),
	datac => \fir_top|fir_srg|Equal2~9_combout\,
	datad => \fir_top|fir_srg|outputs[0][0]~0_combout\,
	combout => \fir_top|fir_srg|outputs~189_combout\);

-- Location: FF_X43_Y43_N29
\fir_top|fir_srg|outputs[9][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|outputs~189_combout\,
	ena => \fir_top|fir_srg|outputs[9][0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|outputs[9][16]~q\);

-- Location: LCCOMB_X47_Y43_N30
\fir_top|fir_srg|Mux47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux47~5_combout\ = (\fir_top|fir_srg|Mux47~4_combout\ & (((\fir_top|fir_srg|outputs[9][16]~q\) # (!\fir_top|fir_srg|y[0]~0_combout\)))) # (!\fir_top|fir_srg|Mux47~4_combout\ & (\fir_top|fir_srg|Mux47~1_combout\ & 
-- ((\fir_top|fir_srg|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|fir_srg|Mux47~4_combout\,
	datab => \fir_top|fir_srg|Mux47~1_combout\,
	datac => \fir_top|fir_srg|outputs[9][16]~q\,
	datad => \fir_top|fir_srg|y[0]~0_combout\,
	combout => \fir_top|fir_srg|Mux47~5_combout\);

-- Location: LCCOMB_X49_Y43_N16
\fir_top|fir_srg|Mux47~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fir_top|fir_srg|Mux47~6_combout\ = (\fir_top|fir_srg|Mux47~5_combout\ & (((!\fir_top|addr\(2) & !\fir_top|addr\(1))) # (!\fir_top|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_top|addr\(2),
	datab => \fir_top|fir_srg|Mux47~5_combout\,
	datac => \fir_top|addr\(3),
	datad => \fir_top|addr\(1),
	combout => \fir_top|fir_srg|Mux47~6_combout\);

-- Location: FF_X49_Y43_N17
\fir_top|fir_srg|y[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fir_top|fir_srg|Mux47~6_combout\,
	ena => \fir_top|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_top|fir_srg|y\(16));

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


