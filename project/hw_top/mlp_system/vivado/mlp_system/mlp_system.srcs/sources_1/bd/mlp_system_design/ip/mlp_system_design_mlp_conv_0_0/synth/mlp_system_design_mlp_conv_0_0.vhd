-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:mlp_conv:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY mlp_system_design_mlp_conv_0_0 IS
  PORT (
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC;
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_araddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    m00_axi_init_axi_txn : IN STD_LOGIC;
    m00_axi_txn_done : OUT STD_LOGIC;
    m00_axi_error : OUT STD_LOGIC;
    m00_axi_aclk : IN STD_LOGIC;
    m00_axi_aresetn : IN STD_LOGIC;
    m00_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m00_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_awlock : OUT STD_LOGIC;
    m00_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_awvalid : OUT STD_LOGIC;
    m00_axi_awready : IN STD_LOGIC;
    m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_wlast : OUT STD_LOGIC;
    m00_axi_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_wvalid : OUT STD_LOGIC;
    m00_axi_wready : IN STD_LOGIC;
    m00_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_bvalid : IN STD_LOGIC;
    m00_axi_bready : OUT STD_LOGIC;
    m00_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m00_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_arlock : OUT STD_LOGIC;
    m00_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_arvalid : OUT STD_LOGIC;
    m00_axi_arready : IN STD_LOGIC;
    m00_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_rlast : IN STD_LOGIC;
    m00_axi_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_rvalid : IN STD_LOGIC;
    m00_axi_rready : OUT STD_LOGIC;
    s01_axi_aclk : IN STD_LOGIC;
    s01_axi_aresetn : IN STD_LOGIC;
    s01_axi_awaddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    s01_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s01_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s01_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s01_axi_awlock : IN STD_LOGIC;
    s01_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s01_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s01_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s01_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s01_axi_awvalid : IN STD_LOGIC;
    s01_axi_awready : OUT STD_LOGIC;
    s01_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s01_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s01_axi_wlast : IN STD_LOGIC;
    s01_axi_wvalid : IN STD_LOGIC;
    s01_axi_wready : OUT STD_LOGIC;
    s01_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s01_axi_bvalid : OUT STD_LOGIC;
    s01_axi_bready : IN STD_LOGIC;
    s01_axi_araddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    s01_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s01_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s01_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s01_axi_arlock : IN STD_LOGIC;
    s01_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s01_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s01_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s01_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s01_axi_arvalid : IN STD_LOGIC;
    s01_axi_arready : OUT STD_LOGIC;
    s01_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s01_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s01_axi_rlast : OUT STD_LOGIC;
    s01_axi_rvalid : OUT STD_LOGIC;
    s01_axi_rready : IN STD_LOGIC;
    s_axi_intr_aclk : IN STD_LOGIC;
    s_axi_intr_aresetn : IN STD_LOGIC;
    s_axi_intr_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_intr_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_intr_awvalid : IN STD_LOGIC;
    s_axi_intr_awready : OUT STD_LOGIC;
    s_axi_intr_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_intr_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_intr_wvalid : IN STD_LOGIC;
    s_axi_intr_wready : OUT STD_LOGIC;
    s_axi_intr_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_intr_bvalid : OUT STD_LOGIC;
    s_axi_intr_bready : IN STD_LOGIC;
    s_axi_intr_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_intr_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_intr_arvalid : IN STD_LOGIC;
    s_axi_intr_arready : OUT STD_LOGIC;
    s_axi_intr_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_intr_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_intr_rvalid : OUT STD_LOGIC;
    s_axi_intr_rready : IN STD_LOGIC;
    irq : OUT STD_LOGIC
  );
END mlp_system_design_mlp_conv_0_0;

ARCHITECTURE mlp_system_design_mlp_conv_0_0_arch OF mlp_system_design_mlp_conv_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF mlp_system_design_mlp_conv_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mlp_conv_v1_0 IS
    GENERIC (
      C_S_AXI_INTR_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S_AXI_INTR_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      C_NUM_OF_INTR : INTEGER; -- Number of Interrupts
      C_INTR_SENSITIVITY : STD_LOGIC_VECTOR; -- Each bit corresponds to Sensitivity of interrupt :  0 - EDGE, 1 - LEVEL
      C_INTR_ACTIVE_STATE : STD_LOGIC_VECTOR; -- Each bit corresponds to Sub-type of INTR: [0 - FALLING_EDGE, 1 - RISING_EDGE : if C_INTR_SENSITIVITY is EDGE(0)] and [ 0 - LEVEL_LOW, 1 - LEVEL_LOW : if C_INTR_SENSITIVITY is LEVEL(1) ]
      C_IRQ_SENSITIVITY : INTEGER; -- Sensitivity of IRQ: 0 - EDGE, 1 - LEVEL
      C_IRQ_ACTIVE_STATE : INTEGER; -- Sub-type of IRQ: [0 - FALLING_EDGE, 1 - RISING_EDGE : if C_IRQ_SENSITIVITY is EDGE(0)] and [ 0 - LEVEL_LOW, 1 - LEVEL_LOW : if C_IRQ_SENSITIVITY is LEVEL(1) ]
      C_S01_AXI_ID_WIDTH : INTEGER; -- Width of ID for for write address, write data, read address and read data
      C_S01_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S01_AXI_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      C_S01_AXI_AWUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write address channel
      C_S01_AXI_ARUSER_WIDTH : INTEGER; -- Width of optional user defined signal in read address channel
      C_S01_AXI_WUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write data channel
      C_S01_AXI_RUSER_WIDTH : INTEGER; -- Width of optional user defined signal in read data channel
      C_S01_AXI_BUSER_WIDTH : INTEGER; -- Width of optional user defined signal in write response channel
      C_M00_AXI_TARGET_SLAVE_BASE_ADDR : STD_LOGIC_VECTOR; -- Base address of targeted slave
      C_M00_AXI_BURST_LEN : INTEGER; -- Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
      C_M00_AXI_ID_WIDTH : INTEGER; -- Thread ID Width
      C_M00_AXI_ADDR_WIDTH : INTEGER; -- Width of Address Bus
      C_M00_AXI_DATA_WIDTH : INTEGER; -- Width of Data Bus
      C_M00_AXI_AWUSER_WIDTH : INTEGER; -- Width of User Write Address Bus
      C_M00_AXI_ARUSER_WIDTH : INTEGER; -- Width of User Read Address Bus
      C_M00_AXI_WUSER_WIDTH : INTEGER; -- Width of User Write Data Bus
      C_M00_AXI_RUSER_WIDTH : INTEGER; -- Width of User Read Data Bus
      C_M00_AXI_BUSER_WIDTH : INTEGER; -- Width of User Response Bus
      C_S00_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S00_AXI_ADDR_WIDTH : INTEGER -- Width of S_AXI address bus
    );
    PORT (
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_aresetn : IN STD_LOGIC;
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_araddr : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC;
      m00_axi_init_axi_txn : IN STD_LOGIC;
      m00_axi_txn_done : OUT STD_LOGIC;
      m00_axi_error : OUT STD_LOGIC;
      m00_axi_aclk : IN STD_LOGIC;
      m00_axi_aresetn : IN STD_LOGIC;
      m00_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m00_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_awlock : OUT STD_LOGIC;
      m00_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_awvalid : OUT STD_LOGIC;
      m00_axi_awready : IN STD_LOGIC;
      m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_wlast : OUT STD_LOGIC;
      m00_axi_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_wvalid : OUT STD_LOGIC;
      m00_axi_wready : IN STD_LOGIC;
      m00_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_bvalid : IN STD_LOGIC;
      m00_axi_bready : OUT STD_LOGIC;
      m00_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m00_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_arlock : OUT STD_LOGIC;
      m00_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_arvalid : OUT STD_LOGIC;
      m00_axi_arready : IN STD_LOGIC;
      m00_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_rlast : IN STD_LOGIC;
      m00_axi_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_rvalid : IN STD_LOGIC;
      m00_axi_rready : OUT STD_LOGIC;
      s01_axi_aclk : IN STD_LOGIC;
      s01_axi_aresetn : IN STD_LOGIC;
      s01_axi_awid : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      s01_axi_awaddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      s01_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s01_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s01_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s01_axi_awlock : IN STD_LOGIC;
      s01_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s01_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s01_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s01_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s01_axi_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s01_axi_awvalid : IN STD_LOGIC;
      s01_axi_awready : OUT STD_LOGIC;
      s01_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s01_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s01_axi_wlast : IN STD_LOGIC;
      s01_axi_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s01_axi_wvalid : IN STD_LOGIC;
      s01_axi_wready : OUT STD_LOGIC;
      s01_axi_bid : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      s01_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s01_axi_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s01_axi_bvalid : OUT STD_LOGIC;
      s01_axi_bready : IN STD_LOGIC;
      s01_axi_arid : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      s01_axi_araddr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      s01_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s01_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s01_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s01_axi_arlock : IN STD_LOGIC;
      s01_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s01_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s01_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s01_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s01_axi_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s01_axi_arvalid : IN STD_LOGIC;
      s01_axi_arready : OUT STD_LOGIC;
      s01_axi_rid : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      s01_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s01_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s01_axi_rlast : OUT STD_LOGIC;
      s01_axi_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s01_axi_rvalid : OUT STD_LOGIC;
      s01_axi_rready : IN STD_LOGIC;
      s_axi_intr_aclk : IN STD_LOGIC;
      s_axi_intr_aresetn : IN STD_LOGIC;
      s_axi_intr_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_intr_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_intr_awvalid : IN STD_LOGIC;
      s_axi_intr_awready : OUT STD_LOGIC;
      s_axi_intr_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_intr_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_intr_wvalid : IN STD_LOGIC;
      s_axi_intr_wready : OUT STD_LOGIC;
      s_axi_intr_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_intr_bvalid : OUT STD_LOGIC;
      s_axi_intr_bready : IN STD_LOGIC;
      s_axi_intr_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_intr_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_intr_arvalid : IN STD_LOGIC;
      s_axi_intr_arready : OUT STD_LOGIC;
      s_axi_intr_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_intr_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_intr_rvalid : OUT STD_LOGIC;
      s_axi_intr_rready : IN STD_LOGIC;
      irq : OUT STD_LOGIC
    );
  END COMPONENT mlp_conv_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF mlp_system_design_mlp_conv_0_0_arch: ARCHITECTURE IS "mlp_conv_v1_0,Vivado 2020.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF mlp_system_design_mlp_conv_0_0_arch : ARCHITECTURE IS "mlp_system_design_mlp_conv_0_0,mlp_conv_v1_0,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF mlp_system_design_mlp_conv_0_0_arch: ARCHITECTURE IS "mlp_system_design_mlp_conv_0_0,mlp_conv_v1_0,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=mlp_conv,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_S_AXI_INTR_DATA_WIDTH=32,C_S_AXI_INTR_ADDR_WIDTH=5,C_NUM_OF_INTR=1,C_INTR_SENSITIVITY=0xFFFFFFFF,C_INTR_ACTIVE_STATE=0xFFFFFFFF,C_IRQ_SENSITIVITY=1,C_IRQ_ACTIVE_STATE=1,C_S01_AXI_ID_WIDTH=0,C_S01_AXI_DATA_WIDTH=32,C_S01_AXI_ADDR_WIDTH=10,C_S01_AXI_AWUSER_WIDTH=0,C_S01_AXI_ARUSER_WIDTH=0,C_S01_" & 
"AXI_WUSER_WIDTH=0,C_S01_AXI_RUSER_WIDTH=0,C_S01_AXI_BUSER_WIDTH=0,C_M00_AXI_TARGET_SLAVE_BASE_ADDR=0x40000000,C_M00_AXI_BURST_LEN=16,C_M00_AXI_ID_WIDTH=1,C_M00_AXI_ADDR_WIDTH=32,C_M00_AXI_DATA_WIDTH=32,C_M00_AXI_AWUSER_WIDTH=1,C_M00_AXI_ARUSER_WIDTH=1,C_M00_AXI_WUSER_WIDTH=1,C_M00_AXI_RUSER_WIDTH=1,C_M00_AXI_BUSER_WIDTH=1,C_S00_AXI_DATA_WIDTH=32,C_S00_AXI_ADDR_WIDTH=7}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF irq: SIGNAL IS "XIL_INTERFACENAME IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_intr_awaddr: SIGNAL IS "XIL_INTERFACENAME S_AXI_INTR, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN mlp_system_design_pr" & 
"ocessing_system_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_intr_aresetn: SIGNAL IS "XIL_INTERFACENAME S_AXI_INTR_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S_AXI_INTR_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_intr_aclk: SIGNAL IS "XIL_INTERFACENAME S_AXI_INTR_CLK, ASSOCIATED_BUSIF S_AXI_INTR, ASSOCIATED_RESET s_axi_intr_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN mlp_system_design_processing_system_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_intr_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S_AXI_INTR_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_arregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_awregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s01_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME S01_AXI, WIZ_DATA_WIDTH 32, WIZ_MEMORY_SIZE 1024, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN mlp_system_design" & 
"_processing_system_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s01_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME S01_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S01_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s01_axi_aclk: SIGNAL IS "XIL_INTERFACENAME S01_AXI_CLK, ASSOCIATED_BUSIF S01_AXI, ASSOCIATED_RESET s01_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN mlp_system_design_processing_system_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s01_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S01_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_ruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_buser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_awid: SIGNAL IS "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN mlp_system_design_processing_system_0_F" & 
"CLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M00_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN mlp_system_design_processing_system_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN mlp_system_design_proc" & 
"essing_system_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN mlp_system_design_processing_system_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
BEGIN
  U0 : mlp_conv_v1_0
    GENERIC MAP (
      C_S_AXI_INTR_DATA_WIDTH => 32,
      C_S_AXI_INTR_ADDR_WIDTH => 5,
      C_NUM_OF_INTR => 1,
      C_INTR_SENSITIVITY => X"FFFFFFFF",
      C_INTR_ACTIVE_STATE => X"FFFFFFFF",
      C_IRQ_SENSITIVITY => 1,
      C_IRQ_ACTIVE_STATE => 1,
      C_S01_AXI_ID_WIDTH => 0,
      C_S01_AXI_DATA_WIDTH => 32,
      C_S01_AXI_ADDR_WIDTH => 10,
      C_S01_AXI_AWUSER_WIDTH => 0,
      C_S01_AXI_ARUSER_WIDTH => 0,
      C_S01_AXI_WUSER_WIDTH => 0,
      C_S01_AXI_RUSER_WIDTH => 0,
      C_S01_AXI_BUSER_WIDTH => 0,
      C_M00_AXI_TARGET_SLAVE_BASE_ADDR => X"40000000",
      C_M00_AXI_BURST_LEN => 16,
      C_M00_AXI_ID_WIDTH => 1,
      C_M00_AXI_ADDR_WIDTH => 32,
      C_M00_AXI_DATA_WIDTH => 32,
      C_M00_AXI_AWUSER_WIDTH => 1,
      C_M00_AXI_ARUSER_WIDTH => 1,
      C_M00_AXI_WUSER_WIDTH => 1,
      C_M00_AXI_RUSER_WIDTH => 1,
      C_M00_AXI_BUSER_WIDTH => 1,
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 7
    )
    PORT MAP (
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awprot => s00_axi_awprot,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wstrb => s00_axi_wstrb,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_bresp => s00_axi_bresp,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arprot => s00_axi_arprot,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arready => s00_axi_arready,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rready => s00_axi_rready,
      m00_axi_init_axi_txn => m00_axi_init_axi_txn,
      m00_axi_txn_done => m00_axi_txn_done,
      m00_axi_error => m00_axi_error,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_awid => m00_axi_awid,
      m00_axi_awaddr => m00_axi_awaddr,
      m00_axi_awlen => m00_axi_awlen,
      m00_axi_awsize => m00_axi_awsize,
      m00_axi_awburst => m00_axi_awburst,
      m00_axi_awlock => m00_axi_awlock,
      m00_axi_awcache => m00_axi_awcache,
      m00_axi_awprot => m00_axi_awprot,
      m00_axi_awqos => m00_axi_awqos,
      m00_axi_awuser => m00_axi_awuser,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_awready => m00_axi_awready,
      m00_axi_wdata => m00_axi_wdata,
      m00_axi_wstrb => m00_axi_wstrb,
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_wuser => m00_axi_wuser,
      m00_axi_wvalid => m00_axi_wvalid,
      m00_axi_wready => m00_axi_wready,
      m00_axi_bid => m00_axi_bid,
      m00_axi_bresp => m00_axi_bresp,
      m00_axi_buser => m00_axi_buser,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_arid => m00_axi_arid,
      m00_axi_araddr => m00_axi_araddr,
      m00_axi_arlen => m00_axi_arlen,
      m00_axi_arsize => m00_axi_arsize,
      m00_axi_arburst => m00_axi_arburst,
      m00_axi_arlock => m00_axi_arlock,
      m00_axi_arcache => m00_axi_arcache,
      m00_axi_arprot => m00_axi_arprot,
      m00_axi_arqos => m00_axi_arqos,
      m00_axi_aruser => m00_axi_aruser,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_arready => m00_axi_arready,
      m00_axi_rid => m00_axi_rid,
      m00_axi_rdata => m00_axi_rdata,
      m00_axi_rresp => m00_axi_rresp,
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_ruser => m00_axi_ruser,
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_rready => m00_axi_rready,
      s01_axi_aclk => s01_axi_aclk,
      s01_axi_aresetn => s01_axi_aresetn,
      s01_axi_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 14)),
      s01_axi_awaddr => s01_axi_awaddr,
      s01_axi_awlen => s01_axi_awlen,
      s01_axi_awsize => s01_axi_awsize,
      s01_axi_awburst => s01_axi_awburst,
      s01_axi_awlock => s01_axi_awlock,
      s01_axi_awcache => s01_axi_awcache,
      s01_axi_awprot => s01_axi_awprot,
      s01_axi_awqos => s01_axi_awqos,
      s01_axi_awregion => s01_axi_awregion,
      s01_axi_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      s01_axi_awvalid => s01_axi_awvalid,
      s01_axi_awready => s01_axi_awready,
      s01_axi_wdata => s01_axi_wdata,
      s01_axi_wstrb => s01_axi_wstrb,
      s01_axi_wlast => s01_axi_wlast,
      s01_axi_wuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      s01_axi_wvalid => s01_axi_wvalid,
      s01_axi_wready => s01_axi_wready,
      s01_axi_bresp => s01_axi_bresp,
      s01_axi_bvalid => s01_axi_bvalid,
      s01_axi_bready => s01_axi_bready,
      s01_axi_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 14)),
      s01_axi_araddr => s01_axi_araddr,
      s01_axi_arlen => s01_axi_arlen,
      s01_axi_arsize => s01_axi_arsize,
      s01_axi_arburst => s01_axi_arburst,
      s01_axi_arlock => s01_axi_arlock,
      s01_axi_arcache => s01_axi_arcache,
      s01_axi_arprot => s01_axi_arprot,
      s01_axi_arqos => s01_axi_arqos,
      s01_axi_arregion => s01_axi_arregion,
      s01_axi_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      s01_axi_arvalid => s01_axi_arvalid,
      s01_axi_arready => s01_axi_arready,
      s01_axi_rdata => s01_axi_rdata,
      s01_axi_rresp => s01_axi_rresp,
      s01_axi_rlast => s01_axi_rlast,
      s01_axi_rvalid => s01_axi_rvalid,
      s01_axi_rready => s01_axi_rready,
      s_axi_intr_aclk => s_axi_intr_aclk,
      s_axi_intr_aresetn => s_axi_intr_aresetn,
      s_axi_intr_awaddr => s_axi_intr_awaddr,
      s_axi_intr_awprot => s_axi_intr_awprot,
      s_axi_intr_awvalid => s_axi_intr_awvalid,
      s_axi_intr_awready => s_axi_intr_awready,
      s_axi_intr_wdata => s_axi_intr_wdata,
      s_axi_intr_wstrb => s_axi_intr_wstrb,
      s_axi_intr_wvalid => s_axi_intr_wvalid,
      s_axi_intr_wready => s_axi_intr_wready,
      s_axi_intr_bresp => s_axi_intr_bresp,
      s_axi_intr_bvalid => s_axi_intr_bvalid,
      s_axi_intr_bready => s_axi_intr_bready,
      s_axi_intr_araddr => s_axi_intr_araddr,
      s_axi_intr_arprot => s_axi_intr_arprot,
      s_axi_intr_arvalid => s_axi_intr_arvalid,
      s_axi_intr_arready => s_axi_intr_arready,
      s_axi_intr_rdata => s_axi_intr_rdata,
      s_axi_intr_rresp => s_axi_intr_rresp,
      s_axi_intr_rvalid => s_axi_intr_rvalid,
      s_axi_intr_rready => s_axi_intr_rready,
      irq => irq
    );
END mlp_system_design_mlp_conv_0_0_arch;
