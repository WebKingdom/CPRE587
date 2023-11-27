-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Sep 25 15:02:12 2023
-- Host        : linuxvdi-19.ece.iastate.edu running 64-bit Red Hat Enterprise Linux release 8.8 (Ootpa)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/sszabo/github/CPRE587/lab3/hw/staged_mac/vivado/tc_staged_mac/tc_staged_mac.sim/sim_1/synth/func/xsim/staged_mac_func_synth.vhd
-- Design      : staged_mac
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity staged_mac is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    SD_AXIS_TREADY : out STD_LOGIC;
    SD_AXIS_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SD_AXIS_TLAST : in STD_LOGIC;
    SD_AXIS_TUSER : in STD_LOGIC;
    SD_AXIS_TVALID : in STD_LOGIC;
    SD_AXIS_TID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MO_AXIS_TVALID : out STD_LOGIC;
    MO_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MO_AXIS_TLAST : out STD_LOGIC;
    MO_AXIS_TREADY : in STD_LOGIC;
    MO_AXIS_TID : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of staged_mac : entity is true;
  attribute AB_2 : integer;
  attribute AB_2 of staged_mac : entity is 4;
  attribute ACCUM : string;
  attribute ACCUM of staged_mac : entity is "3'b011";
  attribute ACCUM_BITS : integer;
  attribute ACCUM_BITS of staged_mac : entity is 8;
  attribute ACCUM_HI : integer;
  attribute ACCUM_HI of staged_mac : entity is 71;
  attribute DATA_WIDTH : integer;
  attribute DATA_WIDTH of staged_mac : entity is 32;
  attribute DW2_HI : integer;
  attribute DW2_HI of staged_mac : entity is 63;
  attribute DW_2 : integer;
  attribute DW_2 of staged_mac : entity is 16;
  attribute DW_HI : integer;
  attribute DW_HI of staged_mac : entity is 31;
  attribute GET_DATA : string;
  attribute GET_DATA of staged_mac : entity is "3'b001";
  attribute INIT_ACCUM : string;
  attribute INIT_ACCUM of staged_mac : entity is "3'b000";
  attribute MULT : string;
  attribute MULT of staged_mac : entity is "3'b010";
  attribute WR_OUT : string;
  attribute WR_OUT of staged_mac : entity is "3'b100";
end staged_mac;

architecture STRUCTURE of staged_mac is
  signal ACLK_IBUF : STD_LOGIC;
  signal ACLK_IBUF_BUFG : STD_LOGIC;
  signal ARESETN_IBUF : STD_LOGIC;
  signal MO_AXIS_TDATA_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MO_AXIS_TID_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MO_AXIS_TLAST_OBUF : STD_LOGIC;
  signal MO_AXIS_TREADY_IBUF : STD_LOGIC;
  signal MO_AXIS_TVALID_OBUF : STD_LOGIC;
  signal SD_AXIS_TDATA_IBUF : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal SD_AXIS_TID_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SD_AXIS_TLAST_IBUF : STD_LOGIC;
  signal SD_AXIS_TREADY_OBUF : STD_LOGIC;
  signal SD_AXIS_TUSER_IBUF : STD_LOGIC;
  signal SD_AXIS_TVALID_IBUF : STD_LOGIC;
  signal accum_reg : STD_LOGIC_VECTOR ( 19 downto 3 );
  signal accum_reg0 : STD_LOGIC_VECTOR ( 51 downto 3 );
  signal \accum_reg_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[10]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[10]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[10]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[10]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[10]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[10]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[10]_i_6_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[14]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[14]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[14]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[14]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[14]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[14]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[14]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[14]_i_6_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[18]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[18]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[18]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[18]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[18]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[18]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[18]_i_6_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[22]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[22]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[22]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[22]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[22]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[22]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[22]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[22]_i_6_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[26]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[26]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[26]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[26]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[26]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[26]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[26]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[26]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[26]_i_6_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[30]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[30]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[30]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[30]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[30]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[30]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[30]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[30]_i_6_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[33]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[34]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[34]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[34]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[34]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[34]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[34]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[34]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[34]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[34]_i_6_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[37]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[38]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[38]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[38]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[38]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[38]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[38]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[38]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[38]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[38]_i_6_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[41]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[42]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[42]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[42]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[42]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[42]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[42]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[42]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[42]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[42]_i_6_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[45]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[46]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[46]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[46]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[46]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[46]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[46]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[46]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[46]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[46]_i_6_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[49]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[50]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[50]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[50]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[50]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[50]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[50]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[50]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[50]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[50]_i_6_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[51]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[51]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[6]_i_2_n_4\ : STD_LOGIC;
  signal \accum_reg_reg[6]_i_2_n_5\ : STD_LOGIC;
  signal \accum_reg_reg[6]_i_2_n_6\ : STD_LOGIC;
  signal \accum_reg_reg[6]_i_3_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[6]_i_4_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[6]_i_5_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \accum_reg_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal activation_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \activation_reg_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[26]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \activation_reg_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal mult_reg : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \mult_reg0__0_n_100\ : STD_LOGIC;
  signal \mult_reg0__0_n_101\ : STD_LOGIC;
  signal \mult_reg0__0_n_102\ : STD_LOGIC;
  signal \mult_reg0__0_n_103\ : STD_LOGIC;
  signal \mult_reg0__0_n_104\ : STD_LOGIC;
  signal \mult_reg0__0_n_105\ : STD_LOGIC;
  signal \mult_reg0__0_n_106\ : STD_LOGIC;
  signal \mult_reg0__0_n_107\ : STD_LOGIC;
  signal \mult_reg0__0_n_108\ : STD_LOGIC;
  signal \mult_reg0__0_n_61\ : STD_LOGIC;
  signal \mult_reg0__0_n_62\ : STD_LOGIC;
  signal \mult_reg0__0_n_63\ : STD_LOGIC;
  signal \mult_reg0__0_n_64\ : STD_LOGIC;
  signal \mult_reg0__0_n_65\ : STD_LOGIC;
  signal \mult_reg0__0_n_66\ : STD_LOGIC;
  signal \mult_reg0__0_n_67\ : STD_LOGIC;
  signal \mult_reg0__0_n_68\ : STD_LOGIC;
  signal \mult_reg0__0_n_69\ : STD_LOGIC;
  signal \mult_reg0__0_n_70\ : STD_LOGIC;
  signal \mult_reg0__0_n_71\ : STD_LOGIC;
  signal \mult_reg0__0_n_72\ : STD_LOGIC;
  signal \mult_reg0__0_n_73\ : STD_LOGIC;
  signal \mult_reg0__0_n_74\ : STD_LOGIC;
  signal \mult_reg0__0_n_75\ : STD_LOGIC;
  signal \mult_reg0__0_n_76\ : STD_LOGIC;
  signal \mult_reg0__0_n_77\ : STD_LOGIC;
  signal \mult_reg0__0_n_78\ : STD_LOGIC;
  signal \mult_reg0__0_n_79\ : STD_LOGIC;
  signal \mult_reg0__0_n_80\ : STD_LOGIC;
  signal \mult_reg0__0_n_81\ : STD_LOGIC;
  signal \mult_reg0__0_n_82\ : STD_LOGIC;
  signal \mult_reg0__0_n_83\ : STD_LOGIC;
  signal \mult_reg0__0_n_84\ : STD_LOGIC;
  signal \mult_reg0__0_n_85\ : STD_LOGIC;
  signal \mult_reg0__0_n_86\ : STD_LOGIC;
  signal \mult_reg0__0_n_87\ : STD_LOGIC;
  signal \mult_reg0__0_n_88\ : STD_LOGIC;
  signal \mult_reg0__0_n_89\ : STD_LOGIC;
  signal \mult_reg0__0_n_90\ : STD_LOGIC;
  signal \mult_reg0__0_n_91\ : STD_LOGIC;
  signal \mult_reg0__0_n_92\ : STD_LOGIC;
  signal \mult_reg0__0_n_93\ : STD_LOGIC;
  signal \mult_reg0__0_n_94\ : STD_LOGIC;
  signal \mult_reg0__0_n_95\ : STD_LOGIC;
  signal \mult_reg0__0_n_96\ : STD_LOGIC;
  signal \mult_reg0__0_n_97\ : STD_LOGIC;
  signal \mult_reg0__0_n_98\ : STD_LOGIC;
  signal \mult_reg0__0_n_99\ : STD_LOGIC;
  signal \mult_reg0__1_n_100\ : STD_LOGIC;
  signal \mult_reg0__1_n_101\ : STD_LOGIC;
  signal \mult_reg0__1_n_102\ : STD_LOGIC;
  signal \mult_reg0__1_n_103\ : STD_LOGIC;
  signal \mult_reg0__1_n_104\ : STD_LOGIC;
  signal \mult_reg0__1_n_105\ : STD_LOGIC;
  signal \mult_reg0__1_n_106\ : STD_LOGIC;
  signal \mult_reg0__1_n_107\ : STD_LOGIC;
  signal \mult_reg0__1_n_108\ : STD_LOGIC;
  signal \mult_reg0__1_n_109\ : STD_LOGIC;
  signal \mult_reg0__1_n_110\ : STD_LOGIC;
  signal \mult_reg0__1_n_111\ : STD_LOGIC;
  signal \mult_reg0__1_n_112\ : STD_LOGIC;
  signal \mult_reg0__1_n_113\ : STD_LOGIC;
  signal \mult_reg0__1_n_114\ : STD_LOGIC;
  signal \mult_reg0__1_n_115\ : STD_LOGIC;
  signal \mult_reg0__1_n_116\ : STD_LOGIC;
  signal \mult_reg0__1_n_117\ : STD_LOGIC;
  signal \mult_reg0__1_n_118\ : STD_LOGIC;
  signal \mult_reg0__1_n_119\ : STD_LOGIC;
  signal \mult_reg0__1_n_120\ : STD_LOGIC;
  signal \mult_reg0__1_n_121\ : STD_LOGIC;
  signal \mult_reg0__1_n_122\ : STD_LOGIC;
  signal \mult_reg0__1_n_123\ : STD_LOGIC;
  signal \mult_reg0__1_n_124\ : STD_LOGIC;
  signal \mult_reg0__1_n_125\ : STD_LOGIC;
  signal \mult_reg0__1_n_126\ : STD_LOGIC;
  signal \mult_reg0__1_n_127\ : STD_LOGIC;
  signal \mult_reg0__1_n_128\ : STD_LOGIC;
  signal \mult_reg0__1_n_129\ : STD_LOGIC;
  signal \mult_reg0__1_n_130\ : STD_LOGIC;
  signal \mult_reg0__1_n_131\ : STD_LOGIC;
  signal \mult_reg0__1_n_132\ : STD_LOGIC;
  signal \mult_reg0__1_n_133\ : STD_LOGIC;
  signal \mult_reg0__1_n_134\ : STD_LOGIC;
  signal \mult_reg0__1_n_135\ : STD_LOGIC;
  signal \mult_reg0__1_n_136\ : STD_LOGIC;
  signal \mult_reg0__1_n_137\ : STD_LOGIC;
  signal \mult_reg0__1_n_138\ : STD_LOGIC;
  signal \mult_reg0__1_n_139\ : STD_LOGIC;
  signal \mult_reg0__1_n_140\ : STD_LOGIC;
  signal \mult_reg0__1_n_141\ : STD_LOGIC;
  signal \mult_reg0__1_n_142\ : STD_LOGIC;
  signal \mult_reg0__1_n_143\ : STD_LOGIC;
  signal \mult_reg0__1_n_144\ : STD_LOGIC;
  signal \mult_reg0__1_n_145\ : STD_LOGIC;
  signal \mult_reg0__1_n_146\ : STD_LOGIC;
  signal \mult_reg0__1_n_147\ : STD_LOGIC;
  signal \mult_reg0__1_n_148\ : STD_LOGIC;
  signal \mult_reg0__1_n_149\ : STD_LOGIC;
  signal \mult_reg0__1_n_150\ : STD_LOGIC;
  signal \mult_reg0__1_n_151\ : STD_LOGIC;
  signal \mult_reg0__1_n_152\ : STD_LOGIC;
  signal \mult_reg0__1_n_153\ : STD_LOGIC;
  signal \mult_reg0__1_n_154\ : STD_LOGIC;
  signal \mult_reg0__1_n_155\ : STD_LOGIC;
  signal \mult_reg0__1_n_156\ : STD_LOGIC;
  signal \mult_reg0__1_n_27\ : STD_LOGIC;
  signal \mult_reg0__1_n_28\ : STD_LOGIC;
  signal \mult_reg0__1_n_29\ : STD_LOGIC;
  signal \mult_reg0__1_n_30\ : STD_LOGIC;
  signal \mult_reg0__1_n_31\ : STD_LOGIC;
  signal \mult_reg0__1_n_32\ : STD_LOGIC;
  signal \mult_reg0__1_n_33\ : STD_LOGIC;
  signal \mult_reg0__1_n_34\ : STD_LOGIC;
  signal \mult_reg0__1_n_35\ : STD_LOGIC;
  signal \mult_reg0__1_n_36\ : STD_LOGIC;
  signal \mult_reg0__1_n_37\ : STD_LOGIC;
  signal \mult_reg0__1_n_38\ : STD_LOGIC;
  signal \mult_reg0__1_n_39\ : STD_LOGIC;
  signal \mult_reg0__1_n_40\ : STD_LOGIC;
  signal \mult_reg0__1_n_41\ : STD_LOGIC;
  signal \mult_reg0__1_n_42\ : STD_LOGIC;
  signal \mult_reg0__1_n_43\ : STD_LOGIC;
  signal \mult_reg0__1_n_44\ : STD_LOGIC;
  signal \mult_reg0__1_n_45\ : STD_LOGIC;
  signal \mult_reg0__1_n_46\ : STD_LOGIC;
  signal \mult_reg0__1_n_47\ : STD_LOGIC;
  signal \mult_reg0__1_n_48\ : STD_LOGIC;
  signal \mult_reg0__1_n_49\ : STD_LOGIC;
  signal \mult_reg0__1_n_50\ : STD_LOGIC;
  signal \mult_reg0__1_n_51\ : STD_LOGIC;
  signal \mult_reg0__1_n_52\ : STD_LOGIC;
  signal \mult_reg0__1_n_53\ : STD_LOGIC;
  signal \mult_reg0__1_n_54\ : STD_LOGIC;
  signal \mult_reg0__1_n_55\ : STD_LOGIC;
  signal \mult_reg0__1_n_56\ : STD_LOGIC;
  signal \mult_reg0__1_n_61\ : STD_LOGIC;
  signal \mult_reg0__1_n_62\ : STD_LOGIC;
  signal \mult_reg0__1_n_63\ : STD_LOGIC;
  signal \mult_reg0__1_n_64\ : STD_LOGIC;
  signal \mult_reg0__1_n_65\ : STD_LOGIC;
  signal \mult_reg0__1_n_66\ : STD_LOGIC;
  signal \mult_reg0__1_n_67\ : STD_LOGIC;
  signal \mult_reg0__1_n_68\ : STD_LOGIC;
  signal \mult_reg0__1_n_69\ : STD_LOGIC;
  signal \mult_reg0__1_n_70\ : STD_LOGIC;
  signal \mult_reg0__1_n_71\ : STD_LOGIC;
  signal \mult_reg0__1_n_72\ : STD_LOGIC;
  signal \mult_reg0__1_n_73\ : STD_LOGIC;
  signal \mult_reg0__1_n_74\ : STD_LOGIC;
  signal \mult_reg0__1_n_75\ : STD_LOGIC;
  signal \mult_reg0__1_n_76\ : STD_LOGIC;
  signal \mult_reg0__1_n_77\ : STD_LOGIC;
  signal \mult_reg0__1_n_78\ : STD_LOGIC;
  signal \mult_reg0__1_n_79\ : STD_LOGIC;
  signal \mult_reg0__1_n_80\ : STD_LOGIC;
  signal \mult_reg0__1_n_81\ : STD_LOGIC;
  signal \mult_reg0__1_n_82\ : STD_LOGIC;
  signal \mult_reg0__1_n_83\ : STD_LOGIC;
  signal \mult_reg0__1_n_84\ : STD_LOGIC;
  signal \mult_reg0__1_n_85\ : STD_LOGIC;
  signal \mult_reg0__1_n_86\ : STD_LOGIC;
  signal \mult_reg0__1_n_87\ : STD_LOGIC;
  signal \mult_reg0__1_n_88\ : STD_LOGIC;
  signal \mult_reg0__1_n_89\ : STD_LOGIC;
  signal \mult_reg0__1_n_90\ : STD_LOGIC;
  signal \mult_reg0__1_n_91\ : STD_LOGIC;
  signal \mult_reg0__1_n_92\ : STD_LOGIC;
  signal \mult_reg0__1_n_93\ : STD_LOGIC;
  signal \mult_reg0__1_n_94\ : STD_LOGIC;
  signal \mult_reg0__1_n_95\ : STD_LOGIC;
  signal \mult_reg0__1_n_96\ : STD_LOGIC;
  signal \mult_reg0__1_n_97\ : STD_LOGIC;
  signal \mult_reg0__1_n_98\ : STD_LOGIC;
  signal \mult_reg0__1_n_99\ : STD_LOGIC;
  signal \mult_reg0__2_n_100\ : STD_LOGIC;
  signal \mult_reg0__2_n_101\ : STD_LOGIC;
  signal \mult_reg0__2_n_102\ : STD_LOGIC;
  signal \mult_reg0__2_n_103\ : STD_LOGIC;
  signal \mult_reg0__2_n_104\ : STD_LOGIC;
  signal \mult_reg0__2_n_105\ : STD_LOGIC;
  signal \mult_reg0__2_n_106\ : STD_LOGIC;
  signal \mult_reg0__2_n_107\ : STD_LOGIC;
  signal \mult_reg0__2_n_108\ : STD_LOGIC;
  signal \mult_reg0__2_n_61\ : STD_LOGIC;
  signal \mult_reg0__2_n_62\ : STD_LOGIC;
  signal \mult_reg0__2_n_63\ : STD_LOGIC;
  signal \mult_reg0__2_n_64\ : STD_LOGIC;
  signal \mult_reg0__2_n_65\ : STD_LOGIC;
  signal \mult_reg0__2_n_66\ : STD_LOGIC;
  signal \mult_reg0__2_n_67\ : STD_LOGIC;
  signal \mult_reg0__2_n_68\ : STD_LOGIC;
  signal \mult_reg0__2_n_69\ : STD_LOGIC;
  signal \mult_reg0__2_n_70\ : STD_LOGIC;
  signal \mult_reg0__2_n_71\ : STD_LOGIC;
  signal \mult_reg0__2_n_72\ : STD_LOGIC;
  signal \mult_reg0__2_n_73\ : STD_LOGIC;
  signal \mult_reg0__2_n_74\ : STD_LOGIC;
  signal \mult_reg0__2_n_75\ : STD_LOGIC;
  signal \mult_reg0__2_n_76\ : STD_LOGIC;
  signal \mult_reg0__2_n_77\ : STD_LOGIC;
  signal \mult_reg0__2_n_78\ : STD_LOGIC;
  signal \mult_reg0__2_n_79\ : STD_LOGIC;
  signal \mult_reg0__2_n_80\ : STD_LOGIC;
  signal \mult_reg0__2_n_81\ : STD_LOGIC;
  signal \mult_reg0__2_n_82\ : STD_LOGIC;
  signal \mult_reg0__2_n_83\ : STD_LOGIC;
  signal \mult_reg0__2_n_84\ : STD_LOGIC;
  signal \mult_reg0__2_n_85\ : STD_LOGIC;
  signal \mult_reg0__2_n_86\ : STD_LOGIC;
  signal \mult_reg0__2_n_87\ : STD_LOGIC;
  signal \mult_reg0__2_n_88\ : STD_LOGIC;
  signal \mult_reg0__2_n_89\ : STD_LOGIC;
  signal \mult_reg0__2_n_90\ : STD_LOGIC;
  signal \mult_reg0__2_n_91\ : STD_LOGIC;
  signal \mult_reg0__2_n_92\ : STD_LOGIC;
  signal \mult_reg0__2_n_93\ : STD_LOGIC;
  signal \mult_reg0__2_n_94\ : STD_LOGIC;
  signal \mult_reg0__2_n_95\ : STD_LOGIC;
  signal \mult_reg0__2_n_96\ : STD_LOGIC;
  signal \mult_reg0__2_n_97\ : STD_LOGIC;
  signal \mult_reg0__2_n_98\ : STD_LOGIC;
  signal \mult_reg0__2_n_99\ : STD_LOGIC;
  signal mult_reg0_n_100 : STD_LOGIC;
  signal mult_reg0_n_101 : STD_LOGIC;
  signal mult_reg0_n_102 : STD_LOGIC;
  signal mult_reg0_n_103 : STD_LOGIC;
  signal mult_reg0_n_104 : STD_LOGIC;
  signal mult_reg0_n_105 : STD_LOGIC;
  signal mult_reg0_n_106 : STD_LOGIC;
  signal mult_reg0_n_107 : STD_LOGIC;
  signal mult_reg0_n_108 : STD_LOGIC;
  signal mult_reg0_n_109 : STD_LOGIC;
  signal mult_reg0_n_110 : STD_LOGIC;
  signal mult_reg0_n_111 : STD_LOGIC;
  signal mult_reg0_n_112 : STD_LOGIC;
  signal mult_reg0_n_113 : STD_LOGIC;
  signal mult_reg0_n_114 : STD_LOGIC;
  signal mult_reg0_n_115 : STD_LOGIC;
  signal mult_reg0_n_116 : STD_LOGIC;
  signal mult_reg0_n_117 : STD_LOGIC;
  signal mult_reg0_n_118 : STD_LOGIC;
  signal mult_reg0_n_119 : STD_LOGIC;
  signal mult_reg0_n_120 : STD_LOGIC;
  signal mult_reg0_n_121 : STD_LOGIC;
  signal mult_reg0_n_122 : STD_LOGIC;
  signal mult_reg0_n_123 : STD_LOGIC;
  signal mult_reg0_n_124 : STD_LOGIC;
  signal mult_reg0_n_125 : STD_LOGIC;
  signal mult_reg0_n_126 : STD_LOGIC;
  signal mult_reg0_n_127 : STD_LOGIC;
  signal mult_reg0_n_128 : STD_LOGIC;
  signal mult_reg0_n_129 : STD_LOGIC;
  signal mult_reg0_n_130 : STD_LOGIC;
  signal mult_reg0_n_131 : STD_LOGIC;
  signal mult_reg0_n_132 : STD_LOGIC;
  signal mult_reg0_n_133 : STD_LOGIC;
  signal mult_reg0_n_134 : STD_LOGIC;
  signal mult_reg0_n_135 : STD_LOGIC;
  signal mult_reg0_n_136 : STD_LOGIC;
  signal mult_reg0_n_137 : STD_LOGIC;
  signal mult_reg0_n_138 : STD_LOGIC;
  signal mult_reg0_n_139 : STD_LOGIC;
  signal mult_reg0_n_140 : STD_LOGIC;
  signal mult_reg0_n_141 : STD_LOGIC;
  signal mult_reg0_n_142 : STD_LOGIC;
  signal mult_reg0_n_143 : STD_LOGIC;
  signal mult_reg0_n_144 : STD_LOGIC;
  signal mult_reg0_n_145 : STD_LOGIC;
  signal mult_reg0_n_146 : STD_LOGIC;
  signal mult_reg0_n_147 : STD_LOGIC;
  signal mult_reg0_n_148 : STD_LOGIC;
  signal mult_reg0_n_149 : STD_LOGIC;
  signal mult_reg0_n_150 : STD_LOGIC;
  signal mult_reg0_n_151 : STD_LOGIC;
  signal mult_reg0_n_152 : STD_LOGIC;
  signal mult_reg0_n_153 : STD_LOGIC;
  signal mult_reg0_n_154 : STD_LOGIC;
  signal mult_reg0_n_155 : STD_LOGIC;
  signal mult_reg0_n_156 : STD_LOGIC;
  signal mult_reg0_n_61 : STD_LOGIC;
  signal mult_reg0_n_62 : STD_LOGIC;
  signal mult_reg0_n_63 : STD_LOGIC;
  signal mult_reg0_n_64 : STD_LOGIC;
  signal mult_reg0_n_65 : STD_LOGIC;
  signal mult_reg0_n_66 : STD_LOGIC;
  signal mult_reg0_n_67 : STD_LOGIC;
  signal mult_reg0_n_68 : STD_LOGIC;
  signal mult_reg0_n_69 : STD_LOGIC;
  signal mult_reg0_n_70 : STD_LOGIC;
  signal mult_reg0_n_71 : STD_LOGIC;
  signal mult_reg0_n_72 : STD_LOGIC;
  signal mult_reg0_n_73 : STD_LOGIC;
  signal mult_reg0_n_74 : STD_LOGIC;
  signal mult_reg0_n_75 : STD_LOGIC;
  signal mult_reg0_n_76 : STD_LOGIC;
  signal mult_reg0_n_77 : STD_LOGIC;
  signal mult_reg0_n_78 : STD_LOGIC;
  signal mult_reg0_n_79 : STD_LOGIC;
  signal mult_reg0_n_80 : STD_LOGIC;
  signal mult_reg0_n_81 : STD_LOGIC;
  signal mult_reg0_n_82 : STD_LOGIC;
  signal mult_reg0_n_83 : STD_LOGIC;
  signal mult_reg0_n_84 : STD_LOGIC;
  signal mult_reg0_n_85 : STD_LOGIC;
  signal mult_reg0_n_86 : STD_LOGIC;
  signal mult_reg0_n_87 : STD_LOGIC;
  signal mult_reg0_n_88 : STD_LOGIC;
  signal mult_reg0_n_89 : STD_LOGIC;
  signal mult_reg0_n_90 : STD_LOGIC;
  signal mult_reg0_n_91 : STD_LOGIC;
  signal mult_reg0_n_92 : STD_LOGIC;
  signal mult_reg0_n_93 : STD_LOGIC;
  signal mult_reg0_n_94 : STD_LOGIC;
  signal mult_reg0_n_95 : STD_LOGIC;
  signal mult_reg0_n_96 : STD_LOGIC;
  signal mult_reg0_n_97 : STD_LOGIC;
  signal mult_reg0_n_98 : STD_LOGIC;
  signal mult_reg0_n_99 : STD_LOGIC;
  signal \mult_reg_reg[19]_i_1_n_10\ : STD_LOGIC;
  signal \mult_reg_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \mult_reg_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \mult_reg_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \mult_reg_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \mult_reg_reg[19]_i_1_n_8\ : STD_LOGIC;
  signal \mult_reg_reg[19]_i_1_n_9\ : STD_LOGIC;
  signal \mult_reg_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[19]_i_3_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[19]_i_4_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_3_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_4_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[23]_i_5_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_1_n_10\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_1_n_8\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_1_n_9\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_2_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_3_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_4_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[27]_i_5_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_1_n_10\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_1_n_8\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_1_n_9\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[31]_i_5_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_1_n_10\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_1_n_4\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_1_n_5\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_1_n_6\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_1_n_7\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_1_n_8\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_1_n_9\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_2_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_3_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_4_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[35]_i_5_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_1_n_10\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_1_n_8\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_1_n_9\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_2_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_3_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_4_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[39]_i_5_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_1_n_10\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_1_n_4\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_1_n_5\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_1_n_6\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_1_n_7\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_1_n_8\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_1_n_9\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_2_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_3_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_4_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[43]_i_5_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[47]_i_1_n_10\ : STD_LOGIC;
  signal \mult_reg_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \mult_reg_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \mult_reg_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \mult_reg_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \mult_reg_reg[47]_i_1_n_8\ : STD_LOGIC;
  signal \mult_reg_reg[47]_i_1_n_9\ : STD_LOGIC;
  signal \mult_reg_reg[47]_i_2_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[47]_i_3_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[47]_i_4_n_3\ : STD_LOGIC;
  signal \mult_reg_reg[47]_i_5_n_3\ : STD_LOGIC;
  signal n_0_233_BUFG : STD_LOGIC;
  signal n_0_233_BUFG_inst_n_1 : STD_LOGIC;
  signal n_1_58_BUFG : STD_LOGIC;
  signal n_1_58_BUFG_inst_n_2 : STD_LOGIC;
  signal n_2_59_BUFG : STD_LOGIC;
  signal n_2_59_BUFG_inst_n_3 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state[0]_i_1_n_3\ : STD_LOGIC;
  signal \state[1]_i_1_n_3\ : STD_LOGIC;
  signal \state[2]_i_1_n_3\ : STD_LOGIC;
  signal \state[2]_i_2_n_3\ : STD_LOGIC;
  signal state_next : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state_next1 : STD_LOGIC;
  signal \tid_reg_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \tid_reg_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \tid_reg_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \tid_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \tid_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \tid_reg_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \tid_reg_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \tid_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal tlast_reg_reg_i_1_n_3 : STD_LOGIC;
  signal tlast_reg_reg_i_2_n_3 : STD_LOGIC;
  signal weight_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \weight_reg_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[26]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[2]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \weight_reg_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_accum_reg_reg[51]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_accum_reg_reg[51]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mult_reg0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mult_reg0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mult_reg0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mult_reg0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_reg0__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mult_reg0__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult_reg0__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_reg0__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mult_reg0__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult_reg0__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_reg0__2_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__2_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__2_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__2_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__2_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__2_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mult_reg0__2_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mult_reg0__2_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mult_reg0__2_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mult_reg0__2_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mult_reg_reg[47]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of MO_AXIS_TVALID_OBUF_inst_i_1 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of SD_AXIS_TREADY_OBUF_inst_i_1 : label is "soft_lutpair55";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[10]_i_1\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[11]_i_1\ : label is "soft_lutpair60";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[12]_i_1\ : label is "soft_lutpair61";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[13]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[13]_i_1\ : label is "soft_lutpair61";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[14]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[14]_i_1\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[15]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[15]_i_1\ : label is "soft_lutpair62";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[16]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[16]_i_1\ : label is "soft_lutpair63";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[17]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[17]_i_1\ : label is "soft_lutpair63";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[18]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[18]_i_1\ : label is "soft_lutpair64";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[19]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[19]_i_1\ : label is "soft_lutpair64";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[20]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[20]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[21]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[21]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[22]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[22]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[23]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[23]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[24]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[24]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[25]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[25]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[26]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[26]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[27]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[27]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[28]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[28]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[29]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[29]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[30]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[30]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[31]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[31]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[32]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[32]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[33]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[33]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[34]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[34]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[35]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[35]_i_1\ : label is "soft_lutpair16";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[36]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[36]_i_1\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[37]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[37]_i_1\ : label is "soft_lutpair18";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[38]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[38]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[39]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[39]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[3]_i_1\ : label is "soft_lutpair56";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[40]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[40]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[41]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[41]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[42]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[42]_i_1\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[43]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[43]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[44]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[44]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[45]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[45]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[46]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[46]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[47]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[47]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[48]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[48]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[49]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[49]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[4]_i_1\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[50]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[50]_i_1\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[51]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[51]_i_1\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[5]_i_1\ : label is "soft_lutpair57";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[6]_i_1\ : label is "soft_lutpair58";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[7]_i_1\ : label is "soft_lutpair58";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[8]_i_1\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \accum_reg_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \accum_reg_reg[9]_i_1\ : label is "soft_lutpair59";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[10]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[11]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[12]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[13]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[13]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[14]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[14]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[15]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[15]_i_1\ : label is "soft_lutpair16";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[16]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[16]_i_1\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[17]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[17]_i_1\ : label is "soft_lutpair18";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[18]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[18]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[19]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[19]_i_1\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[1]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[20]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[20]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[21]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[21]_i_1\ : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[22]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[22]_i_1\ : label is "soft_lutpair23";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[23]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[23]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[24]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[24]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[25]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[25]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[26]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[26]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[27]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[27]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[28]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[28]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[29]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[29]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[2]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[30]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[30]_i_1\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[31]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[31]_i_1\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[3]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[4]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[5]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[6]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[7]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[8]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \activation_reg_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \activation_reg_reg[9]_i_1\ : label is "soft_lutpair10";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mult_reg0 : label is "{SYNTH-10 {cell *THIS*} {string 16x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \mult_reg0__0\ : label is "{SYNTH-10 {cell *THIS*} {string 16x16 4}}";
  attribute METHODOLOGY_DRC_VIOS of \mult_reg0__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \mult_reg0__2\ : label is "{SYNTH-10 {cell *THIS*} {string 18x16 4}}";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[20]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[24]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[28]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[31]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[32]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[33]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[34]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[35]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[36]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[37]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[38]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[39]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[40]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[41]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[42]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[43]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[44]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[45]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[46]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[47]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \mult_reg_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of n_0_233_BUFG_inst_i_1 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of n_1_58_BUFG_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of n_2_59_BUFG_inst_i_1 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \state[2]_i_2\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \tid_reg_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \tid_reg_reg[0]_i_1\ : label is "soft_lutpair37";
  attribute XILINX_LEGACY_PRIM of \tid_reg_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \tid_reg_reg[1]_i_1\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of \tid_reg_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \tid_reg_reg[2]_i_1\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of \tid_reg_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \tid_reg_reg[3]_i_1\ : label is "soft_lutpair35";
  attribute XILINX_LEGACY_PRIM of \tid_reg_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \tid_reg_reg[4]_i_1\ : label is "soft_lutpair35";
  attribute XILINX_LEGACY_PRIM of \tid_reg_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \tid_reg_reg[5]_i_1\ : label is "soft_lutpair34";
  attribute XILINX_LEGACY_PRIM of \tid_reg_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \tid_reg_reg[6]_i_1\ : label is "soft_lutpair34";
  attribute XILINX_LEGACY_PRIM of \tid_reg_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \tid_reg_reg[7]_i_1\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of tlast_reg_reg : label is "LD";
  attribute SOFT_HLUTNM of tlast_reg_reg_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of tlast_reg_reg_i_2 : label is "soft_lutpair54";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[0]_i_1\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[10]_i_1\ : label is "soft_lutpair48";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[11]_i_1\ : label is "soft_lutpair47";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[12]_i_1\ : label is "soft_lutpair47";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[13]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[13]_i_1\ : label is "soft_lutpair46";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[14]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[14]_i_1\ : label is "soft_lutpair46";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[15]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[15]_i_1\ : label is "soft_lutpair45";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[16]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[16]_i_1\ : label is "soft_lutpair45";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[17]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[17]_i_1\ : label is "soft_lutpair44";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[18]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[18]_i_1\ : label is "soft_lutpair44";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[19]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[19]_i_1\ : label is "soft_lutpair43";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[1]_i_1\ : label is "soft_lutpair52";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[20]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[20]_i_1\ : label is "soft_lutpair43";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[21]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[21]_i_1\ : label is "soft_lutpair42";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[22]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[22]_i_1\ : label is "soft_lutpair42";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[23]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[23]_i_1\ : label is "soft_lutpair41";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[24]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[24]_i_1\ : label is "soft_lutpair41";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[25]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[25]_i_1\ : label is "soft_lutpair40";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[26]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[26]_i_1\ : label is "soft_lutpair40";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[27]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[27]_i_1\ : label is "soft_lutpair39";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[28]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[28]_i_1\ : label is "soft_lutpair39";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[29]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[29]_i_1\ : label is "soft_lutpair38";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[2]_i_1\ : label is "soft_lutpair52";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[30]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[30]_i_1\ : label is "soft_lutpair38";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[31]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[31]_i_1\ : label is "soft_lutpair37";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[3]_i_1\ : label is "soft_lutpair51";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[4]_i_1\ : label is "soft_lutpair51";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[5]_i_1\ : label is "soft_lutpair50";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[6]_i_1\ : label is "soft_lutpair50";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[7]_i_1\ : label is "soft_lutpair49";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[8]_i_1\ : label is "soft_lutpair49";
  attribute XILINX_LEGACY_PRIM of \weight_reg_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \weight_reg_reg[9]_i_1\ : label is "soft_lutpair48";
begin
ACLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => ACLK_IBUF,
      O => ACLK_IBUF_BUFG
    );
ACLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ACLK,
      O => ACLK_IBUF
    );
ARESETN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ARESETN,
      O => ARESETN_IBUF
    );
\MO_AXIS_TDATA_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(0),
      O => MO_AXIS_TDATA(0)
    );
\MO_AXIS_TDATA_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(10),
      O => MO_AXIS_TDATA(10)
    );
\MO_AXIS_TDATA_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(11),
      O => MO_AXIS_TDATA(11)
    );
\MO_AXIS_TDATA_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(12),
      O => MO_AXIS_TDATA(12)
    );
\MO_AXIS_TDATA_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(13),
      O => MO_AXIS_TDATA(13)
    );
\MO_AXIS_TDATA_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(14),
      O => MO_AXIS_TDATA(14)
    );
\MO_AXIS_TDATA_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(15),
      O => MO_AXIS_TDATA(15)
    );
\MO_AXIS_TDATA_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(16),
      O => MO_AXIS_TDATA(16)
    );
\MO_AXIS_TDATA_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(17),
      O => MO_AXIS_TDATA(17)
    );
\MO_AXIS_TDATA_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(18),
      O => MO_AXIS_TDATA(18)
    );
\MO_AXIS_TDATA_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(19),
      O => MO_AXIS_TDATA(19)
    );
\MO_AXIS_TDATA_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(1),
      O => MO_AXIS_TDATA(1)
    );
\MO_AXIS_TDATA_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(20),
      O => MO_AXIS_TDATA(20)
    );
\MO_AXIS_TDATA_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(21),
      O => MO_AXIS_TDATA(21)
    );
\MO_AXIS_TDATA_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(22),
      O => MO_AXIS_TDATA(22)
    );
\MO_AXIS_TDATA_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(23),
      O => MO_AXIS_TDATA(23)
    );
\MO_AXIS_TDATA_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(24),
      O => MO_AXIS_TDATA(24)
    );
\MO_AXIS_TDATA_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(25),
      O => MO_AXIS_TDATA(25)
    );
\MO_AXIS_TDATA_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(26),
      O => MO_AXIS_TDATA(26)
    );
\MO_AXIS_TDATA_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(27),
      O => MO_AXIS_TDATA(27)
    );
\MO_AXIS_TDATA_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(28),
      O => MO_AXIS_TDATA(28)
    );
\MO_AXIS_TDATA_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(29),
      O => MO_AXIS_TDATA(29)
    );
\MO_AXIS_TDATA_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(2),
      O => MO_AXIS_TDATA(2)
    );
\MO_AXIS_TDATA_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(30),
      O => MO_AXIS_TDATA(30)
    );
\MO_AXIS_TDATA_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(31),
      O => MO_AXIS_TDATA(31)
    );
\MO_AXIS_TDATA_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(3),
      O => MO_AXIS_TDATA(3)
    );
\MO_AXIS_TDATA_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(4),
      O => MO_AXIS_TDATA(4)
    );
\MO_AXIS_TDATA_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(5),
      O => MO_AXIS_TDATA(5)
    );
\MO_AXIS_TDATA_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(6),
      O => MO_AXIS_TDATA(6)
    );
\MO_AXIS_TDATA_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(7),
      O => MO_AXIS_TDATA(7)
    );
\MO_AXIS_TDATA_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(8),
      O => MO_AXIS_TDATA(8)
    );
\MO_AXIS_TDATA_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TDATA_OBUF(9),
      O => MO_AXIS_TDATA(9)
    );
\MO_AXIS_TID_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TID_OBUF(0),
      O => MO_AXIS_TID(0)
    );
\MO_AXIS_TID_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TID_OBUF(1),
      O => MO_AXIS_TID(1)
    );
\MO_AXIS_TID_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TID_OBUF(2),
      O => MO_AXIS_TID(2)
    );
\MO_AXIS_TID_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TID_OBUF(3),
      O => MO_AXIS_TID(3)
    );
\MO_AXIS_TID_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TID_OBUF(4),
      O => MO_AXIS_TID(4)
    );
\MO_AXIS_TID_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TID_OBUF(5),
      O => MO_AXIS_TID(5)
    );
\MO_AXIS_TID_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TID_OBUF(6),
      O => MO_AXIS_TID(6)
    );
\MO_AXIS_TID_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TID_OBUF(7),
      O => MO_AXIS_TID(7)
    );
MO_AXIS_TLAST_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TLAST_OBUF,
      O => MO_AXIS_TLAST
    );
MO_AXIS_TREADY_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => MO_AXIS_TREADY,
      O => MO_AXIS_TREADY_IBUF
    );
MO_AXIS_TVALID_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => MO_AXIS_TVALID_OBUF,
      O => MO_AXIS_TVALID
    );
MO_AXIS_TVALID_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => MO_AXIS_TVALID_OBUF
    );
\SD_AXIS_TDATA_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(0),
      O => SD_AXIS_TDATA_IBUF(0)
    );
\SD_AXIS_TDATA_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(10),
      O => SD_AXIS_TDATA_IBUF(10)
    );
\SD_AXIS_TDATA_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(11),
      O => SD_AXIS_TDATA_IBUF(11)
    );
\SD_AXIS_TDATA_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(12),
      O => SD_AXIS_TDATA_IBUF(12)
    );
\SD_AXIS_TDATA_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(13),
      O => SD_AXIS_TDATA_IBUF(13)
    );
\SD_AXIS_TDATA_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(14),
      O => SD_AXIS_TDATA_IBUF(14)
    );
\SD_AXIS_TDATA_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(15),
      O => SD_AXIS_TDATA_IBUF(15)
    );
\SD_AXIS_TDATA_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(16),
      O => SD_AXIS_TDATA_IBUF(16)
    );
\SD_AXIS_TDATA_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(17),
      O => SD_AXIS_TDATA_IBUF(17)
    );
\SD_AXIS_TDATA_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(18),
      O => SD_AXIS_TDATA_IBUF(18)
    );
\SD_AXIS_TDATA_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(19),
      O => SD_AXIS_TDATA_IBUF(19)
    );
\SD_AXIS_TDATA_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(1),
      O => SD_AXIS_TDATA_IBUF(1)
    );
\SD_AXIS_TDATA_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(20),
      O => SD_AXIS_TDATA_IBUF(20)
    );
\SD_AXIS_TDATA_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(21),
      O => SD_AXIS_TDATA_IBUF(21)
    );
\SD_AXIS_TDATA_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(22),
      O => SD_AXIS_TDATA_IBUF(22)
    );
\SD_AXIS_TDATA_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(23),
      O => SD_AXIS_TDATA_IBUF(23)
    );
\SD_AXIS_TDATA_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(24),
      O => SD_AXIS_TDATA_IBUF(24)
    );
\SD_AXIS_TDATA_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(25),
      O => SD_AXIS_TDATA_IBUF(25)
    );
\SD_AXIS_TDATA_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(26),
      O => SD_AXIS_TDATA_IBUF(26)
    );
\SD_AXIS_TDATA_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(27),
      O => SD_AXIS_TDATA_IBUF(27)
    );
\SD_AXIS_TDATA_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(28),
      O => SD_AXIS_TDATA_IBUF(28)
    );
\SD_AXIS_TDATA_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(29),
      O => SD_AXIS_TDATA_IBUF(29)
    );
\SD_AXIS_TDATA_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(2),
      O => SD_AXIS_TDATA_IBUF(2)
    );
\SD_AXIS_TDATA_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(30),
      O => SD_AXIS_TDATA_IBUF(30)
    );
\SD_AXIS_TDATA_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(31),
      O => SD_AXIS_TDATA_IBUF(31)
    );
\SD_AXIS_TDATA_IBUF[32]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(32),
      O => SD_AXIS_TDATA_IBUF(32)
    );
\SD_AXIS_TDATA_IBUF[33]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(33),
      O => SD_AXIS_TDATA_IBUF(33)
    );
\SD_AXIS_TDATA_IBUF[34]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(34),
      O => SD_AXIS_TDATA_IBUF(34)
    );
\SD_AXIS_TDATA_IBUF[35]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(35),
      O => SD_AXIS_TDATA_IBUF(35)
    );
\SD_AXIS_TDATA_IBUF[36]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(36),
      O => SD_AXIS_TDATA_IBUF(36)
    );
\SD_AXIS_TDATA_IBUF[37]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(37),
      O => SD_AXIS_TDATA_IBUF(37)
    );
\SD_AXIS_TDATA_IBUF[38]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(38),
      O => SD_AXIS_TDATA_IBUF(38)
    );
\SD_AXIS_TDATA_IBUF[39]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(39),
      O => SD_AXIS_TDATA_IBUF(39)
    );
\SD_AXIS_TDATA_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(3),
      O => SD_AXIS_TDATA_IBUF(3)
    );
\SD_AXIS_TDATA_IBUF[40]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(40),
      O => SD_AXIS_TDATA_IBUF(40)
    );
\SD_AXIS_TDATA_IBUF[41]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(41),
      O => SD_AXIS_TDATA_IBUF(41)
    );
\SD_AXIS_TDATA_IBUF[42]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(42),
      O => SD_AXIS_TDATA_IBUF(42)
    );
\SD_AXIS_TDATA_IBUF[43]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(43),
      O => SD_AXIS_TDATA_IBUF(43)
    );
\SD_AXIS_TDATA_IBUF[44]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(44),
      O => SD_AXIS_TDATA_IBUF(44)
    );
\SD_AXIS_TDATA_IBUF[45]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(45),
      O => SD_AXIS_TDATA_IBUF(45)
    );
\SD_AXIS_TDATA_IBUF[46]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(46),
      O => SD_AXIS_TDATA_IBUF(46)
    );
\SD_AXIS_TDATA_IBUF[47]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(47),
      O => SD_AXIS_TDATA_IBUF(47)
    );
\SD_AXIS_TDATA_IBUF[48]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(48),
      O => SD_AXIS_TDATA_IBUF(48)
    );
\SD_AXIS_TDATA_IBUF[49]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(49),
      O => SD_AXIS_TDATA_IBUF(49)
    );
\SD_AXIS_TDATA_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(4),
      O => SD_AXIS_TDATA_IBUF(4)
    );
\SD_AXIS_TDATA_IBUF[50]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(50),
      O => SD_AXIS_TDATA_IBUF(50)
    );
\SD_AXIS_TDATA_IBUF[51]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(51),
      O => SD_AXIS_TDATA_IBUF(51)
    );
\SD_AXIS_TDATA_IBUF[52]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(52),
      O => SD_AXIS_TDATA_IBUF(52)
    );
\SD_AXIS_TDATA_IBUF[53]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(53),
      O => SD_AXIS_TDATA_IBUF(53)
    );
\SD_AXIS_TDATA_IBUF[54]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(54),
      O => SD_AXIS_TDATA_IBUF(54)
    );
\SD_AXIS_TDATA_IBUF[55]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(55),
      O => SD_AXIS_TDATA_IBUF(55)
    );
\SD_AXIS_TDATA_IBUF[56]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(56),
      O => SD_AXIS_TDATA_IBUF(56)
    );
\SD_AXIS_TDATA_IBUF[57]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(57),
      O => SD_AXIS_TDATA_IBUF(57)
    );
\SD_AXIS_TDATA_IBUF[58]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(58),
      O => SD_AXIS_TDATA_IBUF(58)
    );
\SD_AXIS_TDATA_IBUF[59]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(59),
      O => SD_AXIS_TDATA_IBUF(59)
    );
\SD_AXIS_TDATA_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(5),
      O => SD_AXIS_TDATA_IBUF(5)
    );
\SD_AXIS_TDATA_IBUF[60]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(60),
      O => SD_AXIS_TDATA_IBUF(60)
    );
\SD_AXIS_TDATA_IBUF[61]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(61),
      O => SD_AXIS_TDATA_IBUF(61)
    );
\SD_AXIS_TDATA_IBUF[62]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(62),
      O => SD_AXIS_TDATA_IBUF(62)
    );
\SD_AXIS_TDATA_IBUF[63]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(63),
      O => SD_AXIS_TDATA_IBUF(63)
    );
\SD_AXIS_TDATA_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(6),
      O => SD_AXIS_TDATA_IBUF(6)
    );
\SD_AXIS_TDATA_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(7),
      O => SD_AXIS_TDATA_IBUF(7)
    );
\SD_AXIS_TDATA_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(8),
      O => SD_AXIS_TDATA_IBUF(8)
    );
\SD_AXIS_TDATA_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TDATA(9),
      O => SD_AXIS_TDATA_IBUF(9)
    );
\SD_AXIS_TID_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TID(0),
      O => SD_AXIS_TID_IBUF(0)
    );
\SD_AXIS_TID_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TID(1),
      O => SD_AXIS_TID_IBUF(1)
    );
\SD_AXIS_TID_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TID(2),
      O => SD_AXIS_TID_IBUF(2)
    );
\SD_AXIS_TID_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TID(3),
      O => SD_AXIS_TID_IBUF(3)
    );
\SD_AXIS_TID_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TID(4),
      O => SD_AXIS_TID_IBUF(4)
    );
\SD_AXIS_TID_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TID(5),
      O => SD_AXIS_TID_IBUF(5)
    );
\SD_AXIS_TID_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TID(6),
      O => SD_AXIS_TID_IBUF(6)
    );
\SD_AXIS_TID_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TID(7),
      O => SD_AXIS_TID_IBUF(7)
    );
SD_AXIS_TLAST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TLAST,
      O => SD_AXIS_TLAST_IBUF
    );
SD_AXIS_TREADY_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => SD_AXIS_TREADY_OBUF,
      O => SD_AXIS_TREADY
    );
SD_AXIS_TREADY_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => SD_AXIS_TREADY_OBUF
    );
SD_AXIS_TUSER_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TUSER,
      O => SD_AXIS_TUSER_IBUF
    );
SD_AXIS_TVALID_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SD_AXIS_TVALID,
      O => SD_AXIS_TVALID_IBUF
    );
\accum_reg_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[10]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(10)
    );
\accum_reg_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(10),
      O => \accum_reg_reg[10]_i_1_n_3\
    );
\accum_reg_reg[10]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[6]_i_2_n_3\,
      CO(3) => \accum_reg_reg[10]_i_2_n_3\,
      CO(2) => \accum_reg_reg[10]_i_2_n_4\,
      CO(1) => \accum_reg_reg[10]_i_2_n_5\,
      CO(0) => \accum_reg_reg[10]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => accum_reg(10 downto 7),
      O(3 downto 0) => accum_reg0(10 downto 7),
      S(3) => \accum_reg_reg[10]_i_3_n_3\,
      S(2) => \accum_reg_reg[10]_i_4_n_3\,
      S(1) => \accum_reg_reg[10]_i_5_n_3\,
      S(0) => \accum_reg_reg[10]_i_6_n_3\
    );
\accum_reg_reg[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(10),
      I1 => mult_reg(6),
      O => \accum_reg_reg[10]_i_3_n_3\
    );
\accum_reg_reg[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(9),
      I1 => mult_reg(5),
      O => \accum_reg_reg[10]_i_4_n_3\
    );
\accum_reg_reg[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(8),
      I1 => mult_reg(4),
      O => \accum_reg_reg[10]_i_5_n_3\
    );
\accum_reg_reg[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(7),
      I1 => mult_reg(3),
      O => \accum_reg_reg[10]_i_6_n_3\
    );
\accum_reg_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[11]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(11)
    );
\accum_reg_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(11),
      O => \accum_reg_reg[11]_i_1_n_3\
    );
\accum_reg_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[12]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(12)
    );
\accum_reg_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(12),
      O => \accum_reg_reg[12]_i_1_n_3\
    );
\accum_reg_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[13]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(13)
    );
\accum_reg_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(13),
      O => \accum_reg_reg[13]_i_1_n_3\
    );
\accum_reg_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[14]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(14)
    );
\accum_reg_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(14),
      O => \accum_reg_reg[14]_i_1_n_3\
    );
\accum_reg_reg[14]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[10]_i_2_n_3\,
      CO(3) => \accum_reg_reg[14]_i_2_n_3\,
      CO(2) => \accum_reg_reg[14]_i_2_n_4\,
      CO(1) => \accum_reg_reg[14]_i_2_n_5\,
      CO(0) => \accum_reg_reg[14]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => accum_reg(14 downto 11),
      O(3 downto 0) => accum_reg0(14 downto 11),
      S(3) => \accum_reg_reg[14]_i_3_n_3\,
      S(2) => \accum_reg_reg[14]_i_4_n_3\,
      S(1) => \accum_reg_reg[14]_i_5_n_3\,
      S(0) => \accum_reg_reg[14]_i_6_n_3\
    );
\accum_reg_reg[14]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(14),
      I1 => mult_reg(10),
      O => \accum_reg_reg[14]_i_3_n_3\
    );
\accum_reg_reg[14]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(13),
      I1 => mult_reg(9),
      O => \accum_reg_reg[14]_i_4_n_3\
    );
\accum_reg_reg[14]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(12),
      I1 => mult_reg(8),
      O => \accum_reg_reg[14]_i_5_n_3\
    );
\accum_reg_reg[14]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(11),
      I1 => mult_reg(7),
      O => \accum_reg_reg[14]_i_6_n_3\
    );
\accum_reg_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[15]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(15)
    );
\accum_reg_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(15),
      O => \accum_reg_reg[15]_i_1_n_3\
    );
\accum_reg_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[16]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(16)
    );
\accum_reg_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(16),
      O => \accum_reg_reg[16]_i_1_n_3\
    );
\accum_reg_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[17]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(17)
    );
\accum_reg_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(17),
      O => \accum_reg_reg[17]_i_1_n_3\
    );
\accum_reg_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[18]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(18)
    );
\accum_reg_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(18),
      O => \accum_reg_reg[18]_i_1_n_3\
    );
\accum_reg_reg[18]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[14]_i_2_n_3\,
      CO(3) => \accum_reg_reg[18]_i_2_n_3\,
      CO(2) => \accum_reg_reg[18]_i_2_n_4\,
      CO(1) => \accum_reg_reg[18]_i_2_n_5\,
      CO(0) => \accum_reg_reg[18]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => accum_reg(18 downto 15),
      O(3 downto 0) => accum_reg0(18 downto 15),
      S(3) => \accum_reg_reg[18]_i_3_n_3\,
      S(2) => \accum_reg_reg[18]_i_4_n_3\,
      S(1) => \accum_reg_reg[18]_i_5_n_3\,
      S(0) => \accum_reg_reg[18]_i_6_n_3\
    );
\accum_reg_reg[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(18),
      I1 => mult_reg(14),
      O => \accum_reg_reg[18]_i_3_n_3\
    );
\accum_reg_reg[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(17),
      I1 => mult_reg(13),
      O => \accum_reg_reg[18]_i_4_n_3\
    );
\accum_reg_reg[18]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(16),
      I1 => mult_reg(12),
      O => \accum_reg_reg[18]_i_5_n_3\
    );
\accum_reg_reg[18]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(15),
      I1 => mult_reg(11),
      O => \accum_reg_reg[18]_i_6_n_3\
    );
\accum_reg_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[19]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(19)
    );
\accum_reg_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(19),
      O => \accum_reg_reg[19]_i_1_n_3\
    );
\accum_reg_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[20]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(0)
    );
\accum_reg_reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(20),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(0),
      O => \accum_reg_reg[20]_i_1_n_3\
    );
\accum_reg_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[21]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(1)
    );
\accum_reg_reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(21),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(1),
      O => \accum_reg_reg[21]_i_1_n_3\
    );
\accum_reg_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[22]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(2)
    );
\accum_reg_reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(22),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(2),
      O => \accum_reg_reg[22]_i_1_n_3\
    );
\accum_reg_reg[22]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[18]_i_2_n_3\,
      CO(3) => \accum_reg_reg[22]_i_2_n_3\,
      CO(2) => \accum_reg_reg[22]_i_2_n_4\,
      CO(1) => \accum_reg_reg[22]_i_2_n_5\,
      CO(0) => \accum_reg_reg[22]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 1) => MO_AXIS_TDATA_OBUF(2 downto 0),
      DI(0) => accum_reg(19),
      O(3 downto 0) => accum_reg0(22 downto 19),
      S(3) => \accum_reg_reg[22]_i_3_n_3\,
      S(2) => \accum_reg_reg[22]_i_4_n_3\,
      S(1) => \accum_reg_reg[22]_i_5_n_3\,
      S(0) => \accum_reg_reg[22]_i_6_n_3\
    );
\accum_reg_reg[22]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(2),
      I1 => mult_reg(18),
      O => \accum_reg_reg[22]_i_3_n_3\
    );
\accum_reg_reg[22]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(1),
      I1 => mult_reg(17),
      O => \accum_reg_reg[22]_i_4_n_3\
    );
\accum_reg_reg[22]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(0),
      I1 => mult_reg(16),
      O => \accum_reg_reg[22]_i_5_n_3\
    );
\accum_reg_reg[22]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(19),
      I1 => mult_reg(15),
      O => \accum_reg_reg[22]_i_6_n_3\
    );
\accum_reg_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[23]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(3)
    );
\accum_reg_reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(23),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(3),
      O => \accum_reg_reg[23]_i_1_n_3\
    );
\accum_reg_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[24]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(4)
    );
\accum_reg_reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(24),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(4),
      O => \accum_reg_reg[24]_i_1_n_3\
    );
\accum_reg_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[25]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(5)
    );
\accum_reg_reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(25),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(5),
      O => \accum_reg_reg[25]_i_1_n_3\
    );
\accum_reg_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[26]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(6)
    );
\accum_reg_reg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(26),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(6),
      O => \accum_reg_reg[26]_i_1_n_3\
    );
\accum_reg_reg[26]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[22]_i_2_n_3\,
      CO(3) => \accum_reg_reg[26]_i_2_n_3\,
      CO(2) => \accum_reg_reg[26]_i_2_n_4\,
      CO(1) => \accum_reg_reg[26]_i_2_n_5\,
      CO(0) => \accum_reg_reg[26]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => MO_AXIS_TDATA_OBUF(6 downto 3),
      O(3 downto 0) => accum_reg0(26 downto 23),
      S(3) => \accum_reg_reg[26]_i_3_n_3\,
      S(2) => \accum_reg_reg[26]_i_4_n_3\,
      S(1) => \accum_reg_reg[26]_i_5_n_3\,
      S(0) => \accum_reg_reg[26]_i_6_n_3\
    );
\accum_reg_reg[26]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(6),
      I1 => mult_reg(22),
      O => \accum_reg_reg[26]_i_3_n_3\
    );
\accum_reg_reg[26]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(5),
      I1 => mult_reg(21),
      O => \accum_reg_reg[26]_i_4_n_3\
    );
\accum_reg_reg[26]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(4),
      I1 => mult_reg(20),
      O => \accum_reg_reg[26]_i_5_n_3\
    );
\accum_reg_reg[26]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(3),
      I1 => mult_reg(19),
      O => \accum_reg_reg[26]_i_6_n_3\
    );
\accum_reg_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[27]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(7)
    );
\accum_reg_reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(27),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(7),
      O => \accum_reg_reg[27]_i_1_n_3\
    );
\accum_reg_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[28]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(8)
    );
\accum_reg_reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(28),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(8),
      O => \accum_reg_reg[28]_i_1_n_3\
    );
\accum_reg_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[29]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(9)
    );
\accum_reg_reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(29),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(9),
      O => \accum_reg_reg[29]_i_1_n_3\
    );
\accum_reg_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[30]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(10)
    );
\accum_reg_reg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(30),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(10),
      O => \accum_reg_reg[30]_i_1_n_3\
    );
\accum_reg_reg[30]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[26]_i_2_n_3\,
      CO(3) => \accum_reg_reg[30]_i_2_n_3\,
      CO(2) => \accum_reg_reg[30]_i_2_n_4\,
      CO(1) => \accum_reg_reg[30]_i_2_n_5\,
      CO(0) => \accum_reg_reg[30]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => MO_AXIS_TDATA_OBUF(10 downto 7),
      O(3 downto 0) => accum_reg0(30 downto 27),
      S(3) => \accum_reg_reg[30]_i_3_n_3\,
      S(2) => \accum_reg_reg[30]_i_4_n_3\,
      S(1) => \accum_reg_reg[30]_i_5_n_3\,
      S(0) => \accum_reg_reg[30]_i_6_n_3\
    );
\accum_reg_reg[30]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(10),
      I1 => mult_reg(26),
      O => \accum_reg_reg[30]_i_3_n_3\
    );
\accum_reg_reg[30]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(9),
      I1 => mult_reg(25),
      O => \accum_reg_reg[30]_i_4_n_3\
    );
\accum_reg_reg[30]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(8),
      I1 => mult_reg(24),
      O => \accum_reg_reg[30]_i_5_n_3\
    );
\accum_reg_reg[30]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(7),
      I1 => mult_reg(23),
      O => \accum_reg_reg[30]_i_6_n_3\
    );
\accum_reg_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[31]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(11)
    );
\accum_reg_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(31),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(11),
      O => \accum_reg_reg[31]_i_1_n_3\
    );
\accum_reg_reg[32]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[32]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(12)
    );
\accum_reg_reg[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(32),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(12),
      O => \accum_reg_reg[32]_i_1_n_3\
    );
\accum_reg_reg[33]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[33]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(13)
    );
\accum_reg_reg[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(33),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(13),
      O => \accum_reg_reg[33]_i_1_n_3\
    );
\accum_reg_reg[34]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[34]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(14)
    );
\accum_reg_reg[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(34),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(14),
      O => \accum_reg_reg[34]_i_1_n_3\
    );
\accum_reg_reg[34]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[30]_i_2_n_3\,
      CO(3) => \accum_reg_reg[34]_i_2_n_3\,
      CO(2) => \accum_reg_reg[34]_i_2_n_4\,
      CO(1) => \accum_reg_reg[34]_i_2_n_5\,
      CO(0) => \accum_reg_reg[34]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => MO_AXIS_TDATA_OBUF(14 downto 11),
      O(3 downto 0) => accum_reg0(34 downto 31),
      S(3) => \accum_reg_reg[34]_i_3_n_3\,
      S(2) => \accum_reg_reg[34]_i_4_n_3\,
      S(1) => \accum_reg_reg[34]_i_5_n_3\,
      S(0) => \accum_reg_reg[34]_i_6_n_3\
    );
\accum_reg_reg[34]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(14),
      I1 => mult_reg(30),
      O => \accum_reg_reg[34]_i_3_n_3\
    );
\accum_reg_reg[34]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(13),
      I1 => mult_reg(29),
      O => \accum_reg_reg[34]_i_4_n_3\
    );
\accum_reg_reg[34]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(12),
      I1 => mult_reg(28),
      O => \accum_reg_reg[34]_i_5_n_3\
    );
\accum_reg_reg[34]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(11),
      I1 => mult_reg(27),
      O => \accum_reg_reg[34]_i_6_n_3\
    );
\accum_reg_reg[35]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[35]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(15)
    );
\accum_reg_reg[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(35),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(15),
      O => \accum_reg_reg[35]_i_1_n_3\
    );
\accum_reg_reg[36]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[36]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(16)
    );
\accum_reg_reg[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(36),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(16),
      O => \accum_reg_reg[36]_i_1_n_3\
    );
\accum_reg_reg[37]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[37]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(17)
    );
\accum_reg_reg[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(37),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(17),
      O => \accum_reg_reg[37]_i_1_n_3\
    );
\accum_reg_reg[38]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[38]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(18)
    );
\accum_reg_reg[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(38),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(18),
      O => \accum_reg_reg[38]_i_1_n_3\
    );
\accum_reg_reg[38]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[34]_i_2_n_3\,
      CO(3) => \accum_reg_reg[38]_i_2_n_3\,
      CO(2) => \accum_reg_reg[38]_i_2_n_4\,
      CO(1) => \accum_reg_reg[38]_i_2_n_5\,
      CO(0) => \accum_reg_reg[38]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => MO_AXIS_TDATA_OBUF(18 downto 15),
      O(3 downto 0) => accum_reg0(38 downto 35),
      S(3) => \accum_reg_reg[38]_i_3_n_3\,
      S(2) => \accum_reg_reg[38]_i_4_n_3\,
      S(1) => \accum_reg_reg[38]_i_5_n_3\,
      S(0) => \accum_reg_reg[38]_i_6_n_3\
    );
\accum_reg_reg[38]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(18),
      I1 => mult_reg(34),
      O => \accum_reg_reg[38]_i_3_n_3\
    );
\accum_reg_reg[38]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(17),
      I1 => mult_reg(33),
      O => \accum_reg_reg[38]_i_4_n_3\
    );
\accum_reg_reg[38]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(16),
      I1 => mult_reg(32),
      O => \accum_reg_reg[38]_i_5_n_3\
    );
\accum_reg_reg[38]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(15),
      I1 => mult_reg(31),
      O => \accum_reg_reg[38]_i_6_n_3\
    );
\accum_reg_reg[39]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[39]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(19)
    );
\accum_reg_reg[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(39),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(19),
      O => \accum_reg_reg[39]_i_1_n_3\
    );
\accum_reg_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[3]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(3)
    );
\accum_reg_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(3),
      O => \accum_reg_reg[3]_i_1_n_3\
    );
\accum_reg_reg[40]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[40]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(20)
    );
\accum_reg_reg[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(40),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(20),
      O => \accum_reg_reg[40]_i_1_n_3\
    );
\accum_reg_reg[41]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[41]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(21)
    );
\accum_reg_reg[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(41),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(21),
      O => \accum_reg_reg[41]_i_1_n_3\
    );
\accum_reg_reg[42]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[42]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(22)
    );
\accum_reg_reg[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(42),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(22),
      O => \accum_reg_reg[42]_i_1_n_3\
    );
\accum_reg_reg[42]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[38]_i_2_n_3\,
      CO(3) => \accum_reg_reg[42]_i_2_n_3\,
      CO(2) => \accum_reg_reg[42]_i_2_n_4\,
      CO(1) => \accum_reg_reg[42]_i_2_n_5\,
      CO(0) => \accum_reg_reg[42]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => MO_AXIS_TDATA_OBUF(22 downto 19),
      O(3 downto 0) => accum_reg0(42 downto 39),
      S(3) => \accum_reg_reg[42]_i_3_n_3\,
      S(2) => \accum_reg_reg[42]_i_4_n_3\,
      S(1) => \accum_reg_reg[42]_i_5_n_3\,
      S(0) => \accum_reg_reg[42]_i_6_n_3\
    );
\accum_reg_reg[42]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(22),
      I1 => mult_reg(38),
      O => \accum_reg_reg[42]_i_3_n_3\
    );
\accum_reg_reg[42]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(21),
      I1 => mult_reg(37),
      O => \accum_reg_reg[42]_i_4_n_3\
    );
\accum_reg_reg[42]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(20),
      I1 => mult_reg(36),
      O => \accum_reg_reg[42]_i_5_n_3\
    );
\accum_reg_reg[42]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(19),
      I1 => mult_reg(35),
      O => \accum_reg_reg[42]_i_6_n_3\
    );
\accum_reg_reg[43]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[43]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(23)
    );
\accum_reg_reg[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(43),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(23),
      O => \accum_reg_reg[43]_i_1_n_3\
    );
\accum_reg_reg[44]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[44]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(24)
    );
\accum_reg_reg[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(44),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(24),
      O => \accum_reg_reg[44]_i_1_n_3\
    );
\accum_reg_reg[45]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[45]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(25)
    );
\accum_reg_reg[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(45),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(25),
      O => \accum_reg_reg[45]_i_1_n_3\
    );
\accum_reg_reg[46]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[46]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(26)
    );
\accum_reg_reg[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(46),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(26),
      O => \accum_reg_reg[46]_i_1_n_3\
    );
\accum_reg_reg[46]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[42]_i_2_n_3\,
      CO(3) => \accum_reg_reg[46]_i_2_n_3\,
      CO(2) => \accum_reg_reg[46]_i_2_n_4\,
      CO(1) => \accum_reg_reg[46]_i_2_n_5\,
      CO(0) => \accum_reg_reg[46]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => MO_AXIS_TDATA_OBUF(26 downto 23),
      O(3 downto 0) => accum_reg0(46 downto 43),
      S(3) => \accum_reg_reg[46]_i_3_n_3\,
      S(2) => \accum_reg_reg[46]_i_4_n_3\,
      S(1) => \accum_reg_reg[46]_i_5_n_3\,
      S(0) => \accum_reg_reg[46]_i_6_n_3\
    );
\accum_reg_reg[46]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(26),
      I1 => mult_reg(42),
      O => \accum_reg_reg[46]_i_3_n_3\
    );
\accum_reg_reg[46]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(25),
      I1 => mult_reg(41),
      O => \accum_reg_reg[46]_i_4_n_3\
    );
\accum_reg_reg[46]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(24),
      I1 => mult_reg(40),
      O => \accum_reg_reg[46]_i_5_n_3\
    );
\accum_reg_reg[46]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(23),
      I1 => mult_reg(39),
      O => \accum_reg_reg[46]_i_6_n_3\
    );
\accum_reg_reg[47]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[47]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(27)
    );
\accum_reg_reg[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(47),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(27),
      O => \accum_reg_reg[47]_i_1_n_3\
    );
\accum_reg_reg[48]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[48]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(28)
    );
\accum_reg_reg[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(48),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(28),
      O => \accum_reg_reg[48]_i_1_n_3\
    );
\accum_reg_reg[49]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[49]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(29)
    );
\accum_reg_reg[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(49),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(29),
      O => \accum_reg_reg[49]_i_1_n_3\
    );
\accum_reg_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[4]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(4)
    );
\accum_reg_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(4),
      O => \accum_reg_reg[4]_i_1_n_3\
    );
\accum_reg_reg[50]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[50]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(30)
    );
\accum_reg_reg[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(50),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(30),
      O => \accum_reg_reg[50]_i_1_n_3\
    );
\accum_reg_reg[50]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[46]_i_2_n_3\,
      CO(3) => \accum_reg_reg[50]_i_2_n_3\,
      CO(2) => \accum_reg_reg[50]_i_2_n_4\,
      CO(1) => \accum_reg_reg[50]_i_2_n_5\,
      CO(0) => \accum_reg_reg[50]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 0) => MO_AXIS_TDATA_OBUF(30 downto 27),
      O(3 downto 0) => accum_reg0(50 downto 47),
      S(3) => \accum_reg_reg[50]_i_3_n_3\,
      S(2) => \accum_reg_reg[50]_i_4_n_3\,
      S(1) => \accum_reg_reg[50]_i_5_n_3\,
      S(0) => \accum_reg_reg[50]_i_6_n_3\
    );
\accum_reg_reg[50]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(30),
      I1 => mult_reg(46),
      O => \accum_reg_reg[50]_i_3_n_3\
    );
\accum_reg_reg[50]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(29),
      I1 => mult_reg(45),
      O => \accum_reg_reg[50]_i_4_n_3\
    );
\accum_reg_reg[50]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(28),
      I1 => mult_reg(44),
      O => \accum_reg_reg[50]_i_5_n_3\
    );
\accum_reg_reg[50]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(27),
      I1 => mult_reg(43),
      O => \accum_reg_reg[50]_i_6_n_3\
    );
\accum_reg_reg[51]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[51]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => MO_AXIS_TDATA_OBUF(31)
    );
\accum_reg_reg[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => accum_reg0(51),
      I1 => state(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => SD_AXIS_TDATA_IBUF(31),
      O => \accum_reg_reg[51]_i_1_n_3\
    );
\accum_reg_reg[51]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accum_reg_reg[50]_i_2_n_3\,
      CO(3 downto 0) => \NLW_accum_reg_reg[51]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_accum_reg_reg[51]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => accum_reg0(51),
      S(3 downto 1) => B"000",
      S(0) => \accum_reg_reg[51]_i_3_n_3\
    );
\accum_reg_reg[51]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => MO_AXIS_TDATA_OBUF(31),
      I1 => mult_reg(47),
      O => \accum_reg_reg[51]_i_3_n_3\
    );
\accum_reg_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[5]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(5)
    );
\accum_reg_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(5),
      O => \accum_reg_reg[5]_i_1_n_3\
    );
\accum_reg_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[6]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(6)
    );
\accum_reg_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(6),
      O => \accum_reg_reg[6]_i_1_n_3\
    );
\accum_reg_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \accum_reg_reg[6]_i_2_n_3\,
      CO(2) => \accum_reg_reg[6]_i_2_n_4\,
      CO(1) => \accum_reg_reg[6]_i_2_n_5\,
      CO(0) => \accum_reg_reg[6]_i_2_n_6\,
      CYINIT => '0',
      DI(3 downto 1) => accum_reg(6 downto 4),
      DI(0) => '0',
      O(3 downto 0) => accum_reg0(6 downto 3),
      S(3) => \accum_reg_reg[6]_i_3_n_3\,
      S(2) => \accum_reg_reg[6]_i_4_n_3\,
      S(1) => \accum_reg_reg[6]_i_5_n_3\,
      S(0) => accum_reg(3)
    );
\accum_reg_reg[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(6),
      I1 => mult_reg(2),
      O => \accum_reg_reg[6]_i_3_n_3\
    );
\accum_reg_reg[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(5),
      I1 => mult_reg(1),
      O => \accum_reg_reg[6]_i_4_n_3\
    );
\accum_reg_reg[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accum_reg(4),
      I1 => mult_reg(0),
      O => \accum_reg_reg[6]_i_5_n_3\
    );
\accum_reg_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[7]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(7)
    );
\accum_reg_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(7),
      O => \accum_reg_reg[7]_i_1_n_3\
    );
\accum_reg_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[8]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(8)
    );
\accum_reg_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(8),
      O => \accum_reg_reg[8]_i_1_n_3\
    );
\accum_reg_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \accum_reg_reg[9]_i_1_n_3\,
      G => n_1_58_BUFG,
      GE => '1',
      Q => accum_reg(9)
    );
\accum_reg_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => accum_reg0(9),
      O => \accum_reg_reg[9]_i_1_n_3\
    );
\activation_reg_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[0]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(0)
    );
\activation_reg_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[0]_i_1_n_3\
    );
\activation_reg_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[10]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(10)
    );
\activation_reg_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(10),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[10]_i_1_n_3\
    );
\activation_reg_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[11]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(11)
    );
\activation_reg_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(11),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[11]_i_1_n_3\
    );
\activation_reg_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[12]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(12)
    );
\activation_reg_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(12),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[12]_i_1_n_3\
    );
\activation_reg_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[13]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(13)
    );
\activation_reg_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(13),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[13]_i_1_n_3\
    );
\activation_reg_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[14]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(14)
    );
\activation_reg_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(14),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[14]_i_1_n_3\
    );
\activation_reg_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[15]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(15)
    );
\activation_reg_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(15),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[15]_i_1_n_3\
    );
\activation_reg_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[16]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(16)
    );
\activation_reg_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(16),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[16]_i_1_n_3\
    );
\activation_reg_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[17]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(17)
    );
\activation_reg_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(17),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[17]_i_1_n_3\
    );
\activation_reg_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[18]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(18)
    );
\activation_reg_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(18),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[18]_i_1_n_3\
    );
\activation_reg_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[19]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(19)
    );
\activation_reg_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(19),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[19]_i_1_n_3\
    );
\activation_reg_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[1]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(1)
    );
\activation_reg_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(1),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[1]_i_1_n_3\
    );
\activation_reg_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[20]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(20)
    );
\activation_reg_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(20),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[20]_i_1_n_3\
    );
\activation_reg_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[21]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(21)
    );
\activation_reg_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(21),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[21]_i_1_n_3\
    );
\activation_reg_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[22]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(22)
    );
\activation_reg_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(22),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[22]_i_1_n_3\
    );
\activation_reg_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[23]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(23)
    );
\activation_reg_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(23),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[23]_i_1_n_3\
    );
\activation_reg_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[24]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(24)
    );
\activation_reg_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(24),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[24]_i_1_n_3\
    );
\activation_reg_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[25]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(25)
    );
\activation_reg_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(25),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[25]_i_1_n_3\
    );
\activation_reg_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[26]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(26)
    );
\activation_reg_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(26),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[26]_i_1_n_3\
    );
\activation_reg_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[27]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(27)
    );
\activation_reg_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(27),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[27]_i_1_n_3\
    );
\activation_reg_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[28]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(28)
    );
\activation_reg_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(28),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[28]_i_1_n_3\
    );
\activation_reg_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[29]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(29)
    );
\activation_reg_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(29),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[29]_i_1_n_3\
    );
\activation_reg_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[2]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(2)
    );
\activation_reg_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(2),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[2]_i_1_n_3\
    );
\activation_reg_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[30]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(30)
    );
\activation_reg_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(30),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[30]_i_1_n_3\
    );
\activation_reg_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[31]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(31)
    );
\activation_reg_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(31),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[31]_i_1_n_3\
    );
\activation_reg_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[3]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(3)
    );
\activation_reg_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(3),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[3]_i_1_n_3\
    );
\activation_reg_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[4]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(4)
    );
\activation_reg_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(4),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[4]_i_1_n_3\
    );
\activation_reg_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[5]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(5)
    );
\activation_reg_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(5),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[5]_i_1_n_3\
    );
\activation_reg_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[6]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(6)
    );
\activation_reg_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(6),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[6]_i_1_n_3\
    );
\activation_reg_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[7]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(7)
    );
\activation_reg_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(7),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[7]_i_1_n_3\
    );
\activation_reg_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[8]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(8)
    );
\activation_reg_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(8),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[8]_i_1_n_3\
    );
\activation_reg_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \activation_reg_reg[9]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => activation_reg(9)
    );
\activation_reg_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(9),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \activation_reg_reg[9]_i_1_n_3\
    );
mult_reg0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => activation_reg(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mult_reg0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 0) => weight_reg(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mult_reg0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mult_reg0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mult_reg0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mult_reg0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mult_reg0_OVERFLOW_UNCONNECTED,
      P(47) => mult_reg0_n_61,
      P(46) => mult_reg0_n_62,
      P(45) => mult_reg0_n_63,
      P(44) => mult_reg0_n_64,
      P(43) => mult_reg0_n_65,
      P(42) => mult_reg0_n_66,
      P(41) => mult_reg0_n_67,
      P(40) => mult_reg0_n_68,
      P(39) => mult_reg0_n_69,
      P(38) => mult_reg0_n_70,
      P(37) => mult_reg0_n_71,
      P(36) => mult_reg0_n_72,
      P(35) => mult_reg0_n_73,
      P(34) => mult_reg0_n_74,
      P(33) => mult_reg0_n_75,
      P(32) => mult_reg0_n_76,
      P(31) => mult_reg0_n_77,
      P(30) => mult_reg0_n_78,
      P(29) => mult_reg0_n_79,
      P(28) => mult_reg0_n_80,
      P(27) => mult_reg0_n_81,
      P(26) => mult_reg0_n_82,
      P(25) => mult_reg0_n_83,
      P(24) => mult_reg0_n_84,
      P(23) => mult_reg0_n_85,
      P(22) => mult_reg0_n_86,
      P(21) => mult_reg0_n_87,
      P(20) => mult_reg0_n_88,
      P(19) => mult_reg0_n_89,
      P(18) => mult_reg0_n_90,
      P(17) => mult_reg0_n_91,
      P(16) => mult_reg0_n_92,
      P(15) => mult_reg0_n_93,
      P(14) => mult_reg0_n_94,
      P(13) => mult_reg0_n_95,
      P(12) => mult_reg0_n_96,
      P(11) => mult_reg0_n_97,
      P(10) => mult_reg0_n_98,
      P(9) => mult_reg0_n_99,
      P(8) => mult_reg0_n_100,
      P(7) => mult_reg0_n_101,
      P(6) => mult_reg0_n_102,
      P(5) => mult_reg0_n_103,
      P(4) => mult_reg0_n_104,
      P(3) => mult_reg0_n_105,
      P(2) => mult_reg0_n_106,
      P(1) => mult_reg0_n_107,
      P(0) => mult_reg0_n_108,
      PATTERNBDETECT => NLW_mult_reg0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mult_reg0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => mult_reg0_n_109,
      PCOUT(46) => mult_reg0_n_110,
      PCOUT(45) => mult_reg0_n_111,
      PCOUT(44) => mult_reg0_n_112,
      PCOUT(43) => mult_reg0_n_113,
      PCOUT(42) => mult_reg0_n_114,
      PCOUT(41) => mult_reg0_n_115,
      PCOUT(40) => mult_reg0_n_116,
      PCOUT(39) => mult_reg0_n_117,
      PCOUT(38) => mult_reg0_n_118,
      PCOUT(37) => mult_reg0_n_119,
      PCOUT(36) => mult_reg0_n_120,
      PCOUT(35) => mult_reg0_n_121,
      PCOUT(34) => mult_reg0_n_122,
      PCOUT(33) => mult_reg0_n_123,
      PCOUT(32) => mult_reg0_n_124,
      PCOUT(31) => mult_reg0_n_125,
      PCOUT(30) => mult_reg0_n_126,
      PCOUT(29) => mult_reg0_n_127,
      PCOUT(28) => mult_reg0_n_128,
      PCOUT(27) => mult_reg0_n_129,
      PCOUT(26) => mult_reg0_n_130,
      PCOUT(25) => mult_reg0_n_131,
      PCOUT(24) => mult_reg0_n_132,
      PCOUT(23) => mult_reg0_n_133,
      PCOUT(22) => mult_reg0_n_134,
      PCOUT(21) => mult_reg0_n_135,
      PCOUT(20) => mult_reg0_n_136,
      PCOUT(19) => mult_reg0_n_137,
      PCOUT(18) => mult_reg0_n_138,
      PCOUT(17) => mult_reg0_n_139,
      PCOUT(16) => mult_reg0_n_140,
      PCOUT(15) => mult_reg0_n_141,
      PCOUT(14) => mult_reg0_n_142,
      PCOUT(13) => mult_reg0_n_143,
      PCOUT(12) => mult_reg0_n_144,
      PCOUT(11) => mult_reg0_n_145,
      PCOUT(10) => mult_reg0_n_146,
      PCOUT(9) => mult_reg0_n_147,
      PCOUT(8) => mult_reg0_n_148,
      PCOUT(7) => mult_reg0_n_149,
      PCOUT(6) => mult_reg0_n_150,
      PCOUT(5) => mult_reg0_n_151,
      PCOUT(4) => mult_reg0_n_152,
      PCOUT(3) => mult_reg0_n_153,
      PCOUT(2) => mult_reg0_n_154,
      PCOUT(1) => mult_reg0_n_155,
      PCOUT(0) => mult_reg0_n_156,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mult_reg0_UNDERFLOW_UNCONNECTED
    );
\mult_reg0__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 15) => B"000000000000000",
      A(14 downto 0) => weight_reg(31 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_mult_reg0__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 0) => activation_reg(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult_reg0__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult_reg0__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult_reg0__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult_reg0__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_mult_reg0__0_OVERFLOW_UNCONNECTED\,
      P(47) => \mult_reg0__0_n_61\,
      P(46) => \mult_reg0__0_n_62\,
      P(45) => \mult_reg0__0_n_63\,
      P(44) => \mult_reg0__0_n_64\,
      P(43) => \mult_reg0__0_n_65\,
      P(42) => \mult_reg0__0_n_66\,
      P(41) => \mult_reg0__0_n_67\,
      P(40) => \mult_reg0__0_n_68\,
      P(39) => \mult_reg0__0_n_69\,
      P(38) => \mult_reg0__0_n_70\,
      P(37) => \mult_reg0__0_n_71\,
      P(36) => \mult_reg0__0_n_72\,
      P(35) => \mult_reg0__0_n_73\,
      P(34) => \mult_reg0__0_n_74\,
      P(33) => \mult_reg0__0_n_75\,
      P(32) => \mult_reg0__0_n_76\,
      P(31) => \mult_reg0__0_n_77\,
      P(30) => \mult_reg0__0_n_78\,
      P(29) => \mult_reg0__0_n_79\,
      P(28) => \mult_reg0__0_n_80\,
      P(27) => \mult_reg0__0_n_81\,
      P(26) => \mult_reg0__0_n_82\,
      P(25) => \mult_reg0__0_n_83\,
      P(24) => \mult_reg0__0_n_84\,
      P(23) => \mult_reg0__0_n_85\,
      P(22) => \mult_reg0__0_n_86\,
      P(21) => \mult_reg0__0_n_87\,
      P(20) => \mult_reg0__0_n_88\,
      P(19) => \mult_reg0__0_n_89\,
      P(18) => \mult_reg0__0_n_90\,
      P(17) => \mult_reg0__0_n_91\,
      P(16) => \mult_reg0__0_n_92\,
      P(15) => \mult_reg0__0_n_93\,
      P(14) => \mult_reg0__0_n_94\,
      P(13) => \mult_reg0__0_n_95\,
      P(12) => \mult_reg0__0_n_96\,
      P(11) => \mult_reg0__0_n_97\,
      P(10) => \mult_reg0__0_n_98\,
      P(9) => \mult_reg0__0_n_99\,
      P(8) => \mult_reg0__0_n_100\,
      P(7) => \mult_reg0__0_n_101\,
      P(6) => \mult_reg0__0_n_102\,
      P(5) => \mult_reg0__0_n_103\,
      P(4) => \mult_reg0__0_n_104\,
      P(3) => \mult_reg0__0_n_105\,
      P(2) => \mult_reg0__0_n_106\,
      P(1) => \mult_reg0__0_n_107\,
      P(0) => \mult_reg0__0_n_108\,
      PATTERNBDETECT => \NLW_mult_reg0__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult_reg0__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => mult_reg0_n_109,
      PCIN(46) => mult_reg0_n_110,
      PCIN(45) => mult_reg0_n_111,
      PCIN(44) => mult_reg0_n_112,
      PCIN(43) => mult_reg0_n_113,
      PCIN(42) => mult_reg0_n_114,
      PCIN(41) => mult_reg0_n_115,
      PCIN(40) => mult_reg0_n_116,
      PCIN(39) => mult_reg0_n_117,
      PCIN(38) => mult_reg0_n_118,
      PCIN(37) => mult_reg0_n_119,
      PCIN(36) => mult_reg0_n_120,
      PCIN(35) => mult_reg0_n_121,
      PCIN(34) => mult_reg0_n_122,
      PCIN(33) => mult_reg0_n_123,
      PCIN(32) => mult_reg0_n_124,
      PCIN(31) => mult_reg0_n_125,
      PCIN(30) => mult_reg0_n_126,
      PCIN(29) => mult_reg0_n_127,
      PCIN(28) => mult_reg0_n_128,
      PCIN(27) => mult_reg0_n_129,
      PCIN(26) => mult_reg0_n_130,
      PCIN(25) => mult_reg0_n_131,
      PCIN(24) => mult_reg0_n_132,
      PCIN(23) => mult_reg0_n_133,
      PCIN(22) => mult_reg0_n_134,
      PCIN(21) => mult_reg0_n_135,
      PCIN(20) => mult_reg0_n_136,
      PCIN(19) => mult_reg0_n_137,
      PCIN(18) => mult_reg0_n_138,
      PCIN(17) => mult_reg0_n_139,
      PCIN(16) => mult_reg0_n_140,
      PCIN(15) => mult_reg0_n_141,
      PCIN(14) => mult_reg0_n_142,
      PCIN(13) => mult_reg0_n_143,
      PCIN(12) => mult_reg0_n_144,
      PCIN(11) => mult_reg0_n_145,
      PCIN(10) => mult_reg0_n_146,
      PCIN(9) => mult_reg0_n_147,
      PCIN(8) => mult_reg0_n_148,
      PCIN(7) => mult_reg0_n_149,
      PCIN(6) => mult_reg0_n_150,
      PCIN(5) => mult_reg0_n_151,
      PCIN(4) => mult_reg0_n_152,
      PCIN(3) => mult_reg0_n_153,
      PCIN(2) => mult_reg0_n_154,
      PCIN(1) => mult_reg0_n_155,
      PCIN(0) => mult_reg0_n_156,
      PCOUT(47 downto 0) => \NLW_mult_reg0__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mult_reg0__0_UNDERFLOW_UNCONNECTED\
    );
\mult_reg0__1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => weight_reg(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => \mult_reg0__1_n_27\,
      ACOUT(28) => \mult_reg0__1_n_28\,
      ACOUT(27) => \mult_reg0__1_n_29\,
      ACOUT(26) => \mult_reg0__1_n_30\,
      ACOUT(25) => \mult_reg0__1_n_31\,
      ACOUT(24) => \mult_reg0__1_n_32\,
      ACOUT(23) => \mult_reg0__1_n_33\,
      ACOUT(22) => \mult_reg0__1_n_34\,
      ACOUT(21) => \mult_reg0__1_n_35\,
      ACOUT(20) => \mult_reg0__1_n_36\,
      ACOUT(19) => \mult_reg0__1_n_37\,
      ACOUT(18) => \mult_reg0__1_n_38\,
      ACOUT(17) => \mult_reg0__1_n_39\,
      ACOUT(16) => \mult_reg0__1_n_40\,
      ACOUT(15) => \mult_reg0__1_n_41\,
      ACOUT(14) => \mult_reg0__1_n_42\,
      ACOUT(13) => \mult_reg0__1_n_43\,
      ACOUT(12) => \mult_reg0__1_n_44\,
      ACOUT(11) => \mult_reg0__1_n_45\,
      ACOUT(10) => \mult_reg0__1_n_46\,
      ACOUT(9) => \mult_reg0__1_n_47\,
      ACOUT(8) => \mult_reg0__1_n_48\,
      ACOUT(7) => \mult_reg0__1_n_49\,
      ACOUT(6) => \mult_reg0__1_n_50\,
      ACOUT(5) => \mult_reg0__1_n_51\,
      ACOUT(4) => \mult_reg0__1_n_52\,
      ACOUT(3) => \mult_reg0__1_n_53\,
      ACOUT(2) => \mult_reg0__1_n_54\,
      ACOUT(1) => \mult_reg0__1_n_55\,
      ACOUT(0) => \mult_reg0__1_n_56\,
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => activation_reg(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult_reg0__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult_reg0__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult_reg0__1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult_reg0__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_mult_reg0__1_OVERFLOW_UNCONNECTED\,
      P(47) => \mult_reg0__1_n_61\,
      P(46) => \mult_reg0__1_n_62\,
      P(45) => \mult_reg0__1_n_63\,
      P(44) => \mult_reg0__1_n_64\,
      P(43) => \mult_reg0__1_n_65\,
      P(42) => \mult_reg0__1_n_66\,
      P(41) => \mult_reg0__1_n_67\,
      P(40) => \mult_reg0__1_n_68\,
      P(39) => \mult_reg0__1_n_69\,
      P(38) => \mult_reg0__1_n_70\,
      P(37) => \mult_reg0__1_n_71\,
      P(36) => \mult_reg0__1_n_72\,
      P(35) => \mult_reg0__1_n_73\,
      P(34) => \mult_reg0__1_n_74\,
      P(33) => \mult_reg0__1_n_75\,
      P(32) => \mult_reg0__1_n_76\,
      P(31) => \mult_reg0__1_n_77\,
      P(30) => \mult_reg0__1_n_78\,
      P(29) => \mult_reg0__1_n_79\,
      P(28) => \mult_reg0__1_n_80\,
      P(27) => \mult_reg0__1_n_81\,
      P(26) => \mult_reg0__1_n_82\,
      P(25) => \mult_reg0__1_n_83\,
      P(24) => \mult_reg0__1_n_84\,
      P(23) => \mult_reg0__1_n_85\,
      P(22) => \mult_reg0__1_n_86\,
      P(21) => \mult_reg0__1_n_87\,
      P(20) => \mult_reg0__1_n_88\,
      P(19) => \mult_reg0__1_n_89\,
      P(18) => \mult_reg0__1_n_90\,
      P(17) => \mult_reg0__1_n_91\,
      P(16) => \mult_reg0__1_n_92\,
      P(15) => \mult_reg0__1_n_93\,
      P(14) => \mult_reg0__1_n_94\,
      P(13) => \mult_reg0__1_n_95\,
      P(12) => \mult_reg0__1_n_96\,
      P(11) => \mult_reg0__1_n_97\,
      P(10) => \mult_reg0__1_n_98\,
      P(9) => \mult_reg0__1_n_99\,
      P(8) => \mult_reg0__1_n_100\,
      P(7) => \mult_reg0__1_n_101\,
      P(6) => \mult_reg0__1_n_102\,
      P(5) => \mult_reg0__1_n_103\,
      P(4) => \mult_reg0__1_n_104\,
      P(3) => \mult_reg0__1_n_105\,
      P(2) => \mult_reg0__1_n_106\,
      P(1) => \mult_reg0__1_n_107\,
      P(0) => \mult_reg0__1_n_108\,
      PATTERNBDETECT => \NLW_mult_reg0__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult_reg0__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \mult_reg0__1_n_109\,
      PCOUT(46) => \mult_reg0__1_n_110\,
      PCOUT(45) => \mult_reg0__1_n_111\,
      PCOUT(44) => \mult_reg0__1_n_112\,
      PCOUT(43) => \mult_reg0__1_n_113\,
      PCOUT(42) => \mult_reg0__1_n_114\,
      PCOUT(41) => \mult_reg0__1_n_115\,
      PCOUT(40) => \mult_reg0__1_n_116\,
      PCOUT(39) => \mult_reg0__1_n_117\,
      PCOUT(38) => \mult_reg0__1_n_118\,
      PCOUT(37) => \mult_reg0__1_n_119\,
      PCOUT(36) => \mult_reg0__1_n_120\,
      PCOUT(35) => \mult_reg0__1_n_121\,
      PCOUT(34) => \mult_reg0__1_n_122\,
      PCOUT(33) => \mult_reg0__1_n_123\,
      PCOUT(32) => \mult_reg0__1_n_124\,
      PCOUT(31) => \mult_reg0__1_n_125\,
      PCOUT(30) => \mult_reg0__1_n_126\,
      PCOUT(29) => \mult_reg0__1_n_127\,
      PCOUT(28) => \mult_reg0__1_n_128\,
      PCOUT(27) => \mult_reg0__1_n_129\,
      PCOUT(26) => \mult_reg0__1_n_130\,
      PCOUT(25) => \mult_reg0__1_n_131\,
      PCOUT(24) => \mult_reg0__1_n_132\,
      PCOUT(23) => \mult_reg0__1_n_133\,
      PCOUT(22) => \mult_reg0__1_n_134\,
      PCOUT(21) => \mult_reg0__1_n_135\,
      PCOUT(20) => \mult_reg0__1_n_136\,
      PCOUT(19) => \mult_reg0__1_n_137\,
      PCOUT(18) => \mult_reg0__1_n_138\,
      PCOUT(17) => \mult_reg0__1_n_139\,
      PCOUT(16) => \mult_reg0__1_n_140\,
      PCOUT(15) => \mult_reg0__1_n_141\,
      PCOUT(14) => \mult_reg0__1_n_142\,
      PCOUT(13) => \mult_reg0__1_n_143\,
      PCOUT(12) => \mult_reg0__1_n_144\,
      PCOUT(11) => \mult_reg0__1_n_145\,
      PCOUT(10) => \mult_reg0__1_n_146\,
      PCOUT(9) => \mult_reg0__1_n_147\,
      PCOUT(8) => \mult_reg0__1_n_148\,
      PCOUT(7) => \mult_reg0__1_n_149\,
      PCOUT(6) => \mult_reg0__1_n_150\,
      PCOUT(5) => \mult_reg0__1_n_151\,
      PCOUT(4) => \mult_reg0__1_n_152\,
      PCOUT(3) => \mult_reg0__1_n_153\,
      PCOUT(2) => \mult_reg0__1_n_154\,
      PCOUT(1) => \mult_reg0__1_n_155\,
      PCOUT(0) => \mult_reg0__1_n_156\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mult_reg0__1_UNDERFLOW_UNCONNECTED\
    );
\mult_reg0__2\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29) => \mult_reg0__1_n_27\,
      ACIN(28) => \mult_reg0__1_n_28\,
      ACIN(27) => \mult_reg0__1_n_29\,
      ACIN(26) => \mult_reg0__1_n_30\,
      ACIN(25) => \mult_reg0__1_n_31\,
      ACIN(24) => \mult_reg0__1_n_32\,
      ACIN(23) => \mult_reg0__1_n_33\,
      ACIN(22) => \mult_reg0__1_n_34\,
      ACIN(21) => \mult_reg0__1_n_35\,
      ACIN(20) => \mult_reg0__1_n_36\,
      ACIN(19) => \mult_reg0__1_n_37\,
      ACIN(18) => \mult_reg0__1_n_38\,
      ACIN(17) => \mult_reg0__1_n_39\,
      ACIN(16) => \mult_reg0__1_n_40\,
      ACIN(15) => \mult_reg0__1_n_41\,
      ACIN(14) => \mult_reg0__1_n_42\,
      ACIN(13) => \mult_reg0__1_n_43\,
      ACIN(12) => \mult_reg0__1_n_44\,
      ACIN(11) => \mult_reg0__1_n_45\,
      ACIN(10) => \mult_reg0__1_n_46\,
      ACIN(9) => \mult_reg0__1_n_47\,
      ACIN(8) => \mult_reg0__1_n_48\,
      ACIN(7) => \mult_reg0__1_n_49\,
      ACIN(6) => \mult_reg0__1_n_50\,
      ACIN(5) => \mult_reg0__1_n_51\,
      ACIN(4) => \mult_reg0__1_n_52\,
      ACIN(3) => \mult_reg0__1_n_53\,
      ACIN(2) => \mult_reg0__1_n_54\,
      ACIN(1) => \mult_reg0__1_n_55\,
      ACIN(0) => \mult_reg0__1_n_56\,
      ACOUT(29 downto 0) => \NLW_mult_reg0__2_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 15) => B"000",
      B(14 downto 0) => activation_reg(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mult_reg0__2_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mult_reg0__2_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mult_reg0__2_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mult_reg0__2_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_mult_reg0__2_OVERFLOW_UNCONNECTED\,
      P(47) => \mult_reg0__2_n_61\,
      P(46) => \mult_reg0__2_n_62\,
      P(45) => \mult_reg0__2_n_63\,
      P(44) => \mult_reg0__2_n_64\,
      P(43) => \mult_reg0__2_n_65\,
      P(42) => \mult_reg0__2_n_66\,
      P(41) => \mult_reg0__2_n_67\,
      P(40) => \mult_reg0__2_n_68\,
      P(39) => \mult_reg0__2_n_69\,
      P(38) => \mult_reg0__2_n_70\,
      P(37) => \mult_reg0__2_n_71\,
      P(36) => \mult_reg0__2_n_72\,
      P(35) => \mult_reg0__2_n_73\,
      P(34) => \mult_reg0__2_n_74\,
      P(33) => \mult_reg0__2_n_75\,
      P(32) => \mult_reg0__2_n_76\,
      P(31) => \mult_reg0__2_n_77\,
      P(30) => \mult_reg0__2_n_78\,
      P(29) => \mult_reg0__2_n_79\,
      P(28) => \mult_reg0__2_n_80\,
      P(27) => \mult_reg0__2_n_81\,
      P(26) => \mult_reg0__2_n_82\,
      P(25) => \mult_reg0__2_n_83\,
      P(24) => \mult_reg0__2_n_84\,
      P(23) => \mult_reg0__2_n_85\,
      P(22) => \mult_reg0__2_n_86\,
      P(21) => \mult_reg0__2_n_87\,
      P(20) => \mult_reg0__2_n_88\,
      P(19) => \mult_reg0__2_n_89\,
      P(18) => \mult_reg0__2_n_90\,
      P(17) => \mult_reg0__2_n_91\,
      P(16) => \mult_reg0__2_n_92\,
      P(15) => \mult_reg0__2_n_93\,
      P(14) => \mult_reg0__2_n_94\,
      P(13) => \mult_reg0__2_n_95\,
      P(12) => \mult_reg0__2_n_96\,
      P(11) => \mult_reg0__2_n_97\,
      P(10) => \mult_reg0__2_n_98\,
      P(9) => \mult_reg0__2_n_99\,
      P(8) => \mult_reg0__2_n_100\,
      P(7) => \mult_reg0__2_n_101\,
      P(6) => \mult_reg0__2_n_102\,
      P(5) => \mult_reg0__2_n_103\,
      P(4) => \mult_reg0__2_n_104\,
      P(3) => \mult_reg0__2_n_105\,
      P(2) => \mult_reg0__2_n_106\,
      P(1) => \mult_reg0__2_n_107\,
      P(0) => \mult_reg0__2_n_108\,
      PATTERNBDETECT => \NLW_mult_reg0__2_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mult_reg0__2_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \mult_reg0__1_n_109\,
      PCIN(46) => \mult_reg0__1_n_110\,
      PCIN(45) => \mult_reg0__1_n_111\,
      PCIN(44) => \mult_reg0__1_n_112\,
      PCIN(43) => \mult_reg0__1_n_113\,
      PCIN(42) => \mult_reg0__1_n_114\,
      PCIN(41) => \mult_reg0__1_n_115\,
      PCIN(40) => \mult_reg0__1_n_116\,
      PCIN(39) => \mult_reg0__1_n_117\,
      PCIN(38) => \mult_reg0__1_n_118\,
      PCIN(37) => \mult_reg0__1_n_119\,
      PCIN(36) => \mult_reg0__1_n_120\,
      PCIN(35) => \mult_reg0__1_n_121\,
      PCIN(34) => \mult_reg0__1_n_122\,
      PCIN(33) => \mult_reg0__1_n_123\,
      PCIN(32) => \mult_reg0__1_n_124\,
      PCIN(31) => \mult_reg0__1_n_125\,
      PCIN(30) => \mult_reg0__1_n_126\,
      PCIN(29) => \mult_reg0__1_n_127\,
      PCIN(28) => \mult_reg0__1_n_128\,
      PCIN(27) => \mult_reg0__1_n_129\,
      PCIN(26) => \mult_reg0__1_n_130\,
      PCIN(25) => \mult_reg0__1_n_131\,
      PCIN(24) => \mult_reg0__1_n_132\,
      PCIN(23) => \mult_reg0__1_n_133\,
      PCIN(22) => \mult_reg0__1_n_134\,
      PCIN(21) => \mult_reg0__1_n_135\,
      PCIN(20) => \mult_reg0__1_n_136\,
      PCIN(19) => \mult_reg0__1_n_137\,
      PCIN(18) => \mult_reg0__1_n_138\,
      PCIN(17) => \mult_reg0__1_n_139\,
      PCIN(16) => \mult_reg0__1_n_140\,
      PCIN(15) => \mult_reg0__1_n_141\,
      PCIN(14) => \mult_reg0__1_n_142\,
      PCIN(13) => \mult_reg0__1_n_143\,
      PCIN(12) => \mult_reg0__1_n_144\,
      PCIN(11) => \mult_reg0__1_n_145\,
      PCIN(10) => \mult_reg0__1_n_146\,
      PCIN(9) => \mult_reg0__1_n_147\,
      PCIN(8) => \mult_reg0__1_n_148\,
      PCIN(7) => \mult_reg0__1_n_149\,
      PCIN(6) => \mult_reg0__1_n_150\,
      PCIN(5) => \mult_reg0__1_n_151\,
      PCIN(4) => \mult_reg0__1_n_152\,
      PCIN(3) => \mult_reg0__1_n_153\,
      PCIN(2) => \mult_reg0__1_n_154\,
      PCIN(1) => \mult_reg0__1_n_155\,
      PCIN(0) => \mult_reg0__1_n_156\,
      PCOUT(47 downto 0) => \NLW_mult_reg0__2_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mult_reg0__2_UNDERFLOW_UNCONNECTED\
    );
\mult_reg_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_108\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(0)
    );
\mult_reg_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_98\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(10)
    );
\mult_reg_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_97\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(11)
    );
\mult_reg_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_96\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(12)
    );
\mult_reg_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_95\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(13)
    );
\mult_reg_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_94\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(14)
    );
\mult_reg_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_93\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(15)
    );
\mult_reg_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[19]_i_1_n_10\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(16)
    );
\mult_reg_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[19]_i_1_n_9\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(17)
    );
\mult_reg_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[19]_i_1_n_8\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(18)
    );
\mult_reg_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[19]_i_1_n_7\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(19)
    );
\mult_reg_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mult_reg_reg[19]_i_1_n_3\,
      CO(2) => \mult_reg_reg[19]_i_1_n_4\,
      CO(1) => \mult_reg_reg[19]_i_1_n_5\,
      CO(0) => \mult_reg_reg[19]_i_1_n_6\,
      CYINIT => '0',
      DI(3) => \mult_reg0__2_n_106\,
      DI(2) => \mult_reg0__2_n_107\,
      DI(1) => \mult_reg0__2_n_108\,
      DI(0) => '0',
      O(3) => \mult_reg_reg[19]_i_1_n_7\,
      O(2) => \mult_reg_reg[19]_i_1_n_8\,
      O(1) => \mult_reg_reg[19]_i_1_n_9\,
      O(0) => \mult_reg_reg[19]_i_1_n_10\,
      S(3) => \mult_reg_reg[19]_i_2_n_3\,
      S(2) => \mult_reg_reg[19]_i_3_n_3\,
      S(1) => \mult_reg_reg[19]_i_4_n_3\,
      S(0) => \mult_reg0__1_n_92\
    );
\mult_reg_reg[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_106\,
      I1 => mult_reg0_n_106,
      O => \mult_reg_reg[19]_i_2_n_3\
    );
\mult_reg_reg[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_107\,
      I1 => mult_reg0_n_107,
      O => \mult_reg_reg[19]_i_3_n_3\
    );
\mult_reg_reg[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_108\,
      I1 => mult_reg0_n_108,
      O => \mult_reg_reg[19]_i_4_n_3\
    );
\mult_reg_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_107\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(1)
    );
\mult_reg_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[23]_i_1_n_10\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(20)
    );
\mult_reg_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[23]_i_1_n_9\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(21)
    );
\mult_reg_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[23]_i_1_n_8\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(22)
    );
\mult_reg_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[23]_i_1_n_7\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(23)
    );
\mult_reg_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_reg_reg[19]_i_1_n_3\,
      CO(3) => \mult_reg_reg[23]_i_1_n_3\,
      CO(2) => \mult_reg_reg[23]_i_1_n_4\,
      CO(1) => \mult_reg_reg[23]_i_1_n_5\,
      CO(0) => \mult_reg_reg[23]_i_1_n_6\,
      CYINIT => '0',
      DI(3) => \mult_reg0__2_n_102\,
      DI(2) => \mult_reg0__2_n_103\,
      DI(1) => \mult_reg0__2_n_104\,
      DI(0) => \mult_reg0__2_n_105\,
      O(3) => \mult_reg_reg[23]_i_1_n_7\,
      O(2) => \mult_reg_reg[23]_i_1_n_8\,
      O(1) => \mult_reg_reg[23]_i_1_n_9\,
      O(0) => \mult_reg_reg[23]_i_1_n_10\,
      S(3) => \mult_reg_reg[23]_i_2_n_3\,
      S(2) => \mult_reg_reg[23]_i_3_n_3\,
      S(1) => \mult_reg_reg[23]_i_4_n_3\,
      S(0) => \mult_reg_reg[23]_i_5_n_3\
    );
\mult_reg_reg[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_102\,
      I1 => mult_reg0_n_102,
      O => \mult_reg_reg[23]_i_2_n_3\
    );
\mult_reg_reg[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_103\,
      I1 => mult_reg0_n_103,
      O => \mult_reg_reg[23]_i_3_n_3\
    );
\mult_reg_reg[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_104\,
      I1 => mult_reg0_n_104,
      O => \mult_reg_reg[23]_i_4_n_3\
    );
\mult_reg_reg[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_105\,
      I1 => mult_reg0_n_105,
      O => \mult_reg_reg[23]_i_5_n_3\
    );
\mult_reg_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[27]_i_1_n_10\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(24)
    );
\mult_reg_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[27]_i_1_n_9\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(25)
    );
\mult_reg_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[27]_i_1_n_8\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(26)
    );
\mult_reg_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[27]_i_1_n_7\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(27)
    );
\mult_reg_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_reg_reg[23]_i_1_n_3\,
      CO(3) => \mult_reg_reg[27]_i_1_n_3\,
      CO(2) => \mult_reg_reg[27]_i_1_n_4\,
      CO(1) => \mult_reg_reg[27]_i_1_n_5\,
      CO(0) => \mult_reg_reg[27]_i_1_n_6\,
      CYINIT => '0',
      DI(3) => \mult_reg0__2_n_98\,
      DI(2) => \mult_reg0__2_n_99\,
      DI(1) => \mult_reg0__2_n_100\,
      DI(0) => \mult_reg0__2_n_101\,
      O(3) => \mult_reg_reg[27]_i_1_n_7\,
      O(2) => \mult_reg_reg[27]_i_1_n_8\,
      O(1) => \mult_reg_reg[27]_i_1_n_9\,
      O(0) => \mult_reg_reg[27]_i_1_n_10\,
      S(3) => \mult_reg_reg[27]_i_2_n_3\,
      S(2) => \mult_reg_reg[27]_i_3_n_3\,
      S(1) => \mult_reg_reg[27]_i_4_n_3\,
      S(0) => \mult_reg_reg[27]_i_5_n_3\
    );
\mult_reg_reg[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_98\,
      I1 => mult_reg0_n_98,
      O => \mult_reg_reg[27]_i_2_n_3\
    );
\mult_reg_reg[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_99\,
      I1 => mult_reg0_n_99,
      O => \mult_reg_reg[27]_i_3_n_3\
    );
\mult_reg_reg[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_100\,
      I1 => mult_reg0_n_100,
      O => \mult_reg_reg[27]_i_4_n_3\
    );
\mult_reg_reg[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_101\,
      I1 => mult_reg0_n_101,
      O => \mult_reg_reg[27]_i_5_n_3\
    );
\mult_reg_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[31]_i_1_n_10\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(28)
    );
\mult_reg_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[31]_i_1_n_9\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(29)
    );
\mult_reg_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_106\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(2)
    );
\mult_reg_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[31]_i_1_n_8\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(30)
    );
\mult_reg_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[31]_i_1_n_7\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(31)
    );
\mult_reg_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_reg_reg[27]_i_1_n_3\,
      CO(3) => \mult_reg_reg[31]_i_1_n_3\,
      CO(2) => \mult_reg_reg[31]_i_1_n_4\,
      CO(1) => \mult_reg_reg[31]_i_1_n_5\,
      CO(0) => \mult_reg_reg[31]_i_1_n_6\,
      CYINIT => '0',
      DI(3) => \mult_reg0__2_n_94\,
      DI(2) => \mult_reg0__2_n_95\,
      DI(1) => \mult_reg0__2_n_96\,
      DI(0) => \mult_reg0__2_n_97\,
      O(3) => \mult_reg_reg[31]_i_1_n_7\,
      O(2) => \mult_reg_reg[31]_i_1_n_8\,
      O(1) => \mult_reg_reg[31]_i_1_n_9\,
      O(0) => \mult_reg_reg[31]_i_1_n_10\,
      S(3) => \mult_reg_reg[31]_i_2_n_3\,
      S(2) => \mult_reg_reg[31]_i_3_n_3\,
      S(1) => \mult_reg_reg[31]_i_4_n_3\,
      S(0) => \mult_reg_reg[31]_i_5_n_3\
    );
\mult_reg_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_94\,
      I1 => mult_reg0_n_94,
      O => \mult_reg_reg[31]_i_2_n_3\
    );
\mult_reg_reg[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_95\,
      I1 => mult_reg0_n_95,
      O => \mult_reg_reg[31]_i_3_n_3\
    );
\mult_reg_reg[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_96\,
      I1 => mult_reg0_n_96,
      O => \mult_reg_reg[31]_i_4_n_3\
    );
\mult_reg_reg[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_97\,
      I1 => mult_reg0_n_97,
      O => \mult_reg_reg[31]_i_5_n_3\
    );
\mult_reg_reg[32]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[35]_i_1_n_10\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(32)
    );
\mult_reg_reg[33]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[35]_i_1_n_9\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(33)
    );
\mult_reg_reg[34]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[35]_i_1_n_8\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(34)
    );
\mult_reg_reg[35]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[35]_i_1_n_7\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(35)
    );
\mult_reg_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_reg_reg[31]_i_1_n_3\,
      CO(3) => \mult_reg_reg[35]_i_1_n_3\,
      CO(2) => \mult_reg_reg[35]_i_1_n_4\,
      CO(1) => \mult_reg_reg[35]_i_1_n_5\,
      CO(0) => \mult_reg_reg[35]_i_1_n_6\,
      CYINIT => '0',
      DI(3) => \mult_reg0__2_n_90\,
      DI(2) => \mult_reg0__2_n_91\,
      DI(1) => \mult_reg0__2_n_92\,
      DI(0) => \mult_reg0__2_n_93\,
      O(3) => \mult_reg_reg[35]_i_1_n_7\,
      O(2) => \mult_reg_reg[35]_i_1_n_8\,
      O(1) => \mult_reg_reg[35]_i_1_n_9\,
      O(0) => \mult_reg_reg[35]_i_1_n_10\,
      S(3) => \mult_reg_reg[35]_i_2_n_3\,
      S(2) => \mult_reg_reg[35]_i_3_n_3\,
      S(1) => \mult_reg_reg[35]_i_4_n_3\,
      S(0) => \mult_reg_reg[35]_i_5_n_3\
    );
\mult_reg_reg[35]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_90\,
      I1 => \mult_reg0__0_n_107\,
      O => \mult_reg_reg[35]_i_2_n_3\
    );
\mult_reg_reg[35]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_91\,
      I1 => \mult_reg0__0_n_108\,
      O => \mult_reg_reg[35]_i_3_n_3\
    );
\mult_reg_reg[35]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_92\,
      I1 => mult_reg0_n_92,
      O => \mult_reg_reg[35]_i_4_n_3\
    );
\mult_reg_reg[35]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_93\,
      I1 => mult_reg0_n_93,
      O => \mult_reg_reg[35]_i_5_n_3\
    );
\mult_reg_reg[36]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[39]_i_1_n_10\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(36)
    );
\mult_reg_reg[37]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[39]_i_1_n_9\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(37)
    );
\mult_reg_reg[38]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[39]_i_1_n_8\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(38)
    );
\mult_reg_reg[39]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[39]_i_1_n_7\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(39)
    );
\mult_reg_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_reg_reg[35]_i_1_n_3\,
      CO(3) => \mult_reg_reg[39]_i_1_n_3\,
      CO(2) => \mult_reg_reg[39]_i_1_n_4\,
      CO(1) => \mult_reg_reg[39]_i_1_n_5\,
      CO(0) => \mult_reg_reg[39]_i_1_n_6\,
      CYINIT => '0',
      DI(3) => \mult_reg0__2_n_86\,
      DI(2) => \mult_reg0__2_n_87\,
      DI(1) => \mult_reg0__2_n_88\,
      DI(0) => \mult_reg0__2_n_89\,
      O(3) => \mult_reg_reg[39]_i_1_n_7\,
      O(2) => \mult_reg_reg[39]_i_1_n_8\,
      O(1) => \mult_reg_reg[39]_i_1_n_9\,
      O(0) => \mult_reg_reg[39]_i_1_n_10\,
      S(3) => \mult_reg_reg[39]_i_2_n_3\,
      S(2) => \mult_reg_reg[39]_i_3_n_3\,
      S(1) => \mult_reg_reg[39]_i_4_n_3\,
      S(0) => \mult_reg_reg[39]_i_5_n_3\
    );
\mult_reg_reg[39]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_86\,
      I1 => \mult_reg0__0_n_103\,
      O => \mult_reg_reg[39]_i_2_n_3\
    );
\mult_reg_reg[39]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_87\,
      I1 => \mult_reg0__0_n_104\,
      O => \mult_reg_reg[39]_i_3_n_3\
    );
\mult_reg_reg[39]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_88\,
      I1 => \mult_reg0__0_n_105\,
      O => \mult_reg_reg[39]_i_4_n_3\
    );
\mult_reg_reg[39]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_89\,
      I1 => \mult_reg0__0_n_106\,
      O => \mult_reg_reg[39]_i_5_n_3\
    );
\mult_reg_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_105\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(3)
    );
\mult_reg_reg[40]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[43]_i_1_n_10\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(40)
    );
\mult_reg_reg[41]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[43]_i_1_n_9\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(41)
    );
\mult_reg_reg[42]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[43]_i_1_n_8\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(42)
    );
\mult_reg_reg[43]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[43]_i_1_n_7\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(43)
    );
\mult_reg_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_reg_reg[39]_i_1_n_3\,
      CO(3) => \mult_reg_reg[43]_i_1_n_3\,
      CO(2) => \mult_reg_reg[43]_i_1_n_4\,
      CO(1) => \mult_reg_reg[43]_i_1_n_5\,
      CO(0) => \mult_reg_reg[43]_i_1_n_6\,
      CYINIT => '0',
      DI(3) => \mult_reg0__2_n_82\,
      DI(2) => \mult_reg0__2_n_83\,
      DI(1) => \mult_reg0__2_n_84\,
      DI(0) => \mult_reg0__2_n_85\,
      O(3) => \mult_reg_reg[43]_i_1_n_7\,
      O(2) => \mult_reg_reg[43]_i_1_n_8\,
      O(1) => \mult_reg_reg[43]_i_1_n_9\,
      O(0) => \mult_reg_reg[43]_i_1_n_10\,
      S(3) => \mult_reg_reg[43]_i_2_n_3\,
      S(2) => \mult_reg_reg[43]_i_3_n_3\,
      S(1) => \mult_reg_reg[43]_i_4_n_3\,
      S(0) => \mult_reg_reg[43]_i_5_n_3\
    );
\mult_reg_reg[43]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_82\,
      I1 => \mult_reg0__0_n_99\,
      O => \mult_reg_reg[43]_i_2_n_3\
    );
\mult_reg_reg[43]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_83\,
      I1 => \mult_reg0__0_n_100\,
      O => \mult_reg_reg[43]_i_3_n_3\
    );
\mult_reg_reg[43]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_84\,
      I1 => \mult_reg0__0_n_101\,
      O => \mult_reg_reg[43]_i_4_n_3\
    );
\mult_reg_reg[43]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_85\,
      I1 => \mult_reg0__0_n_102\,
      O => \mult_reg_reg[43]_i_5_n_3\
    );
\mult_reg_reg[44]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[47]_i_1_n_10\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(44)
    );
\mult_reg_reg[45]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[47]_i_1_n_9\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(45)
    );
\mult_reg_reg[46]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[47]_i_1_n_8\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(46)
    );
\mult_reg_reg[47]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg_reg[47]_i_1_n_7\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(47)
    );
\mult_reg_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mult_reg_reg[43]_i_1_n_3\,
      CO(3) => \NLW_mult_reg_reg[47]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \mult_reg_reg[47]_i_1_n_4\,
      CO(1) => \mult_reg_reg[47]_i_1_n_5\,
      CO(0) => \mult_reg_reg[47]_i_1_n_6\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \mult_reg0__2_n_79\,
      DI(1) => \mult_reg0__2_n_80\,
      DI(0) => \mult_reg0__2_n_81\,
      O(3) => \mult_reg_reg[47]_i_1_n_7\,
      O(2) => \mult_reg_reg[47]_i_1_n_8\,
      O(1) => \mult_reg_reg[47]_i_1_n_9\,
      O(0) => \mult_reg_reg[47]_i_1_n_10\,
      S(3) => \mult_reg_reg[47]_i_2_n_3\,
      S(2) => \mult_reg_reg[47]_i_3_n_3\,
      S(1) => \mult_reg_reg[47]_i_4_n_3\,
      S(0) => \mult_reg_reg[47]_i_5_n_3\
    );
\mult_reg_reg[47]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_78\,
      I1 => \mult_reg0__0_n_95\,
      O => \mult_reg_reg[47]_i_2_n_3\
    );
\mult_reg_reg[47]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_79\,
      I1 => \mult_reg0__0_n_96\,
      O => \mult_reg_reg[47]_i_3_n_3\
    );
\mult_reg_reg[47]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_80\,
      I1 => \mult_reg0__0_n_97\,
      O => \mult_reg_reg[47]_i_4_n_3\
    );
\mult_reg_reg[47]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mult_reg0__2_n_81\,
      I1 => \mult_reg0__0_n_98\,
      O => \mult_reg_reg[47]_i_5_n_3\
    );
\mult_reg_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_104\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(4)
    );
\mult_reg_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_103\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(5)
    );
\mult_reg_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_102\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(6)
    );
\mult_reg_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_101\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(7)
    );
\mult_reg_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_100\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(8)
    );
\mult_reg_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \mult_reg0__1_n_99\,
      G => n_2_59_BUFG,
      GE => '1',
      Q => mult_reg(9)
    );
n_0_233_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => n_0_233_BUFG_inst_n_1,
      O => n_0_233_BUFG
    );
n_0_233_BUFG_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => SD_AXIS_TVALID_IBUF,
      I1 => state(2),
      I2 => state(1),
      O => n_0_233_BUFG_inst_n_1
    );
n_1_58_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => n_1_58_BUFG_inst_n_2,
      O => n_1_58_BUFG
    );
n_1_58_BUFG_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A4"
    )
        port map (
      I0 => state(1),
      I1 => SD_AXIS_TVALID_IBUF,
      I2 => state(0),
      I3 => state(2),
      O => n_1_58_BUFG_inst_n_2
    );
n_2_59_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => n_2_59_BUFG_inst_n_3,
      O => n_2_59_BUFG
    );
n_2_59_BUFG_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      O => n_2_59_BUFG_inst_n_3
    );
\state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => state(0),
      I1 => \state[2]_i_2_n_3\,
      I2 => state_next(0),
      I3 => ARESETN_IBUF,
      O => \state[0]_i_1_n_3\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FF55FF000000C0"
    )
        port map (
      I0 => MO_AXIS_TLAST_OBUF,
      I1 => SD_AXIS_TUSER_IBUF,
      I2 => SD_AXIS_TVALID_IBUF,
      I3 => state(0),
      I4 => state(2),
      I5 => state(1),
      O => state_next(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222266AE00000000"
    )
        port map (
      I0 => state(1),
      I1 => \state[2]_i_2_n_3\,
      I2 => state_next1,
      I3 => state(0),
      I4 => state(2),
      I5 => ARESETN_IBUF,
      O => \state[1]_i_1_n_3\
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SD_AXIS_TVALID_IBUF,
      I1 => SD_AXIS_TUSER_IBUF,
      O => state_next1
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E222222200000000"
    )
        port map (
      I0 => state(2),
      I1 => \state[2]_i_2_n_3\,
      I2 => state(1),
      I3 => MO_AXIS_TLAST_OBUF,
      I4 => state(0),
      I5 => ARESETN_IBUF,
      O => \state[2]_i_1_n_3\
    );
\state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33303B38"
    )
        port map (
      I0 => MO_AXIS_TREADY_IBUF,
      I1 => state(2),
      I2 => state(1),
      I3 => SD_AXIS_TVALID_IBUF,
      I4 => state(0),
      O => \state[2]_i_2_n_3\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK_IBUF_BUFG,
      CE => '1',
      D => \state[0]_i_1_n_3\,
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK_IBUF_BUFG,
      CE => '1',
      D => \state[1]_i_1_n_3\,
      Q => state(1),
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK_IBUF_BUFG,
      CE => '1',
      D => \state[2]_i_1_n_3\,
      Q => state(2),
      R => '0'
    );
\tid_reg_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \tid_reg_reg[0]_i_1_n_3\,
      G => tlast_reg_reg_i_2_n_3,
      GE => '1',
      Q => MO_AXIS_TID_OBUF(0)
    );
\tid_reg_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TID_IBUF(0),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \tid_reg_reg[0]_i_1_n_3\
    );
\tid_reg_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \tid_reg_reg[1]_i_1_n_3\,
      G => tlast_reg_reg_i_2_n_3,
      GE => '1',
      Q => MO_AXIS_TID_OBUF(1)
    );
\tid_reg_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TID_IBUF(1),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \tid_reg_reg[1]_i_1_n_3\
    );
\tid_reg_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \tid_reg_reg[2]_i_1_n_3\,
      G => tlast_reg_reg_i_2_n_3,
      GE => '1',
      Q => MO_AXIS_TID_OBUF(2)
    );
\tid_reg_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TID_IBUF(2),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \tid_reg_reg[2]_i_1_n_3\
    );
\tid_reg_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \tid_reg_reg[3]_i_1_n_3\,
      G => tlast_reg_reg_i_2_n_3,
      GE => '1',
      Q => MO_AXIS_TID_OBUF(3)
    );
\tid_reg_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TID_IBUF(3),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \tid_reg_reg[3]_i_1_n_3\
    );
\tid_reg_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \tid_reg_reg[4]_i_1_n_3\,
      G => tlast_reg_reg_i_2_n_3,
      GE => '1',
      Q => MO_AXIS_TID_OBUF(4)
    );
\tid_reg_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TID_IBUF(4),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \tid_reg_reg[4]_i_1_n_3\
    );
\tid_reg_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \tid_reg_reg[5]_i_1_n_3\,
      G => tlast_reg_reg_i_2_n_3,
      GE => '1',
      Q => MO_AXIS_TID_OBUF(5)
    );
\tid_reg_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TID_IBUF(5),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \tid_reg_reg[5]_i_1_n_3\
    );
\tid_reg_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \tid_reg_reg[6]_i_1_n_3\,
      G => tlast_reg_reg_i_2_n_3,
      GE => '1',
      Q => MO_AXIS_TID_OBUF(6)
    );
\tid_reg_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TID_IBUF(6),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \tid_reg_reg[6]_i_1_n_3\
    );
\tid_reg_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \tid_reg_reg[7]_i_1_n_3\,
      G => tlast_reg_reg_i_2_n_3,
      GE => '1',
      Q => MO_AXIS_TID_OBUF(7)
    );
\tid_reg_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TID_IBUF(7),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \tid_reg_reg[7]_i_1_n_3\
    );
tlast_reg_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => tlast_reg_reg_i_1_n_3,
      G => tlast_reg_reg_i_2_n_3,
      GE => '1',
      Q => MO_AXIS_TLAST_OBUF
    );
tlast_reg_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA20"
    )
        port map (
      I0 => SD_AXIS_TLAST_IBUF,
      I1 => SD_AXIS_TUSER_IBUF,
      I2 => SD_AXIS_TVALID_IBUF,
      I3 => state(0),
      O => tlast_reg_reg_i_1_n_3
    );
tlast_reg_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0045"
    )
        port map (
      I0 => state(2),
      I1 => SD_AXIS_TVALID_IBUF,
      I2 => state(0),
      I3 => state(1),
      O => tlast_reg_reg_i_2_n_3
    );
\weight_reg_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[0]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(0)
    );
\weight_reg_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(32),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[0]_i_1_n_3\
    );
\weight_reg_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[10]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(10)
    );
\weight_reg_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(42),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[10]_i_1_n_3\
    );
\weight_reg_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[11]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(11)
    );
\weight_reg_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(43),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[11]_i_1_n_3\
    );
\weight_reg_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[12]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(12)
    );
\weight_reg_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(44),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[12]_i_1_n_3\
    );
\weight_reg_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[13]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(13)
    );
\weight_reg_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(45),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[13]_i_1_n_3\
    );
\weight_reg_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[14]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(14)
    );
\weight_reg_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(46),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[14]_i_1_n_3\
    );
\weight_reg_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[15]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(15)
    );
\weight_reg_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(47),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[15]_i_1_n_3\
    );
\weight_reg_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[16]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(16)
    );
\weight_reg_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(48),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[16]_i_1_n_3\
    );
\weight_reg_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[17]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(17)
    );
\weight_reg_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(49),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[17]_i_1_n_3\
    );
\weight_reg_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[18]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(18)
    );
\weight_reg_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(50),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[18]_i_1_n_3\
    );
\weight_reg_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[19]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(19)
    );
\weight_reg_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(51),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[19]_i_1_n_3\
    );
\weight_reg_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[1]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(1)
    );
\weight_reg_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(33),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[1]_i_1_n_3\
    );
\weight_reg_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[20]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(20)
    );
\weight_reg_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(52),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[20]_i_1_n_3\
    );
\weight_reg_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[21]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(21)
    );
\weight_reg_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(53),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[21]_i_1_n_3\
    );
\weight_reg_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[22]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(22)
    );
\weight_reg_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(54),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[22]_i_1_n_3\
    );
\weight_reg_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[23]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(23)
    );
\weight_reg_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(55),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[23]_i_1_n_3\
    );
\weight_reg_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[24]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(24)
    );
\weight_reg_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(56),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[24]_i_1_n_3\
    );
\weight_reg_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[25]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(25)
    );
\weight_reg_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(57),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[25]_i_1_n_3\
    );
\weight_reg_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[26]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(26)
    );
\weight_reg_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(58),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[26]_i_1_n_3\
    );
\weight_reg_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[27]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(27)
    );
\weight_reg_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(59),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[27]_i_1_n_3\
    );
\weight_reg_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[28]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(28)
    );
\weight_reg_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(60),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[28]_i_1_n_3\
    );
\weight_reg_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[29]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(29)
    );
\weight_reg_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(61),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[29]_i_1_n_3\
    );
\weight_reg_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[2]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(2)
    );
\weight_reg_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(34),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[2]_i_1_n_3\
    );
\weight_reg_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[30]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(30)
    );
\weight_reg_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(62),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[30]_i_1_n_3\
    );
\weight_reg_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[31]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(31)
    );
\weight_reg_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(63),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[31]_i_1_n_3\
    );
\weight_reg_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[3]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(3)
    );
\weight_reg_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(35),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[3]_i_1_n_3\
    );
\weight_reg_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[4]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(4)
    );
\weight_reg_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(36),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[4]_i_1_n_3\
    );
\weight_reg_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[5]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(5)
    );
\weight_reg_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(37),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[5]_i_1_n_3\
    );
\weight_reg_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[6]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(6)
    );
\weight_reg_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(38),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[6]_i_1_n_3\
    );
\weight_reg_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[7]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(7)
    );
\weight_reg_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(39),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[7]_i_1_n_3\
    );
\weight_reg_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[8]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(8)
    );
\weight_reg_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(40),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[8]_i_1_n_3\
    );
\weight_reg_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \weight_reg_reg[9]_i_1_n_3\,
      G => n_0_233_BUFG,
      GE => '1',
      Q => weight_reg(9)
    );
\weight_reg_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => state(0),
      I1 => SD_AXIS_TDATA_IBUF(41),
      I2 => SD_AXIS_TUSER_IBUF,
      I3 => SD_AXIS_TVALID_IBUF,
      O => \weight_reg_reg[9]_i_1_n_3\
    );
end STRUCTURE;
