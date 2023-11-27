--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Sun Nov 26 23:14:59 2023
--Host        : linuxvdi-28.ece.iastate.edu running 64-bit Red Hat Enterprise Linux release 8.8 (Ootpa)
--Command     : generate_target mlp_system_design.bd
--Design      : mlp_system_design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1L1TY2F is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1L1TY2F;

architecture STRUCTURE of m00_couplers_imp_1L1TY2F is
  component mlp_system_design_auto_ds_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_ds_0;
  component mlp_system_design_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_BREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_BVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_RLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_RREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_RVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_WLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_WREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_WVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m00_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_ds_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(1 downto 0) <= m00_couplers_to_auto_ds_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(63 downto 0) <= m00_couplers_to_auto_ds_RDATA(63 downto 0);
  S_AXI_rid(1 downto 0) <= m00_couplers_to_auto_ds_RID(1 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_ds_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_ds_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m00_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_ds_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m00_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_ds_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m00_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_ds_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m00_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component mlp_system_design_auto_ds_0
     port map (
      m_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      m_axi_bready => auto_ds_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_auto_pc_RLAST,
      m_axi_rready => auto_ds_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_auto_pc_WLAST,
      m_axi_wready => auto_ds_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_auto_pc_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_ds_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => m00_couplers_to_auto_ds_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_ds_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m00_couplers_to_auto_ds_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_ds_AWVALID,
      s_axi_bid(1 downto 0) => m00_couplers_to_auto_ds_BID(1 downto 0),
      s_axi_bready => m00_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_ds_BVALID,
      s_axi_rdata(63 downto 0) => m00_couplers_to_auto_ds_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => m00_couplers_to_auto_ds_RID(1 downto 0),
      s_axi_rlast => m00_couplers_to_auto_ds_RLAST,
      s_axi_rready => m00_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_ds_RVALID,
      s_axi_wdata(63 downto 0) => m00_couplers_to_auto_ds_WDATA(63 downto 0),
      s_axi_wlast => m00_couplers_to_auto_ds_WLAST,
      s_axi_wready => m00_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(7 downto 0) => m00_couplers_to_auto_ds_WSTRB(7 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_ds_WVALID
    );
auto_pc: component mlp_system_design_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_auto_pc_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      s_axi_bready => auto_ds_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => auto_ds_to_auto_pc_RLAST,
      s_axi_rready => auto_ds_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => auto_ds_to_auto_pc_WLAST,
      s_axi_wready => auto_ds_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => auto_ds_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_198UARA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_198UARA;

architecture STRUCTURE of m01_couplers_imp_198UARA is
  component mlp_system_design_auto_ds_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_ds_1;
  component mlp_system_design_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_BREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_BVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_RLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_RREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_RVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_WLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_WREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_WVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m01_couplers_WVALID : STD_LOGIC;
  signal m01_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal m01_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal m01_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal m01_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal m01_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal m01_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal m01_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m01_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal m01_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal m01_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal m01_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m01_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal m01_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal m01_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_ds_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m01_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m01_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m01_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= m01_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(1 downto 0) <= m01_couplers_to_auto_ds_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(63 downto 0) <= m01_couplers_to_auto_ds_RDATA(63 downto 0);
  S_AXI_rid(1 downto 0) <= m01_couplers_to_auto_ds_RID(1 downto 0);
  S_AXI_rlast <= m01_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= m01_couplers_to_auto_ds_WREADY;
  auto_pc_to_m01_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m01_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m01_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m01_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_auto_ds_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m01_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  m01_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m01_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m01_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_auto_ds_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m01_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  m01_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m01_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m01_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  m01_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  m01_couplers_to_auto_ds_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m01_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  m01_couplers_to_auto_ds_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m01_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component mlp_system_design_auto_ds_1
     port map (
      m_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      m_axi_bready => auto_ds_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_auto_pc_RLAST,
      m_axi_rready => auto_ds_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_auto_pc_WLAST,
      m_axi_wready => auto_ds_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_auto_pc_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m01_couplers_to_auto_ds_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m01_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m01_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => m01_couplers_to_auto_ds_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m01_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m01_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m01_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m01_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m01_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m01_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m01_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m01_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(31 downto 0) => m01_couplers_to_auto_ds_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m01_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m01_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m01_couplers_to_auto_ds_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m01_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m01_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m01_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m01_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m01_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m01_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m01_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m01_couplers_to_auto_ds_AWVALID,
      s_axi_bid(1 downto 0) => m01_couplers_to_auto_ds_BID(1 downto 0),
      s_axi_bready => m01_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m01_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m01_couplers_to_auto_ds_BVALID,
      s_axi_rdata(63 downto 0) => m01_couplers_to_auto_ds_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => m01_couplers_to_auto_ds_RID(1 downto 0),
      s_axi_rlast => m01_couplers_to_auto_ds_RLAST,
      s_axi_rready => m01_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m01_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m01_couplers_to_auto_ds_RVALID,
      s_axi_wdata(63 downto 0) => m01_couplers_to_auto_ds_WDATA(63 downto 0),
      s_axi_wlast => m01_couplers_to_auto_ds_WLAST,
      s_axi_wready => m01_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(7 downto 0) => m01_couplers_to_auto_ds_WSTRB(7 downto 0),
      s_axi_wvalid => m01_couplers_to_auto_ds_WVALID
    );
auto_pc: component mlp_system_design_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m01_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m01_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m01_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m01_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m01_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m01_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m01_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m01_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m01_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      s_axi_bready => auto_ds_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => auto_ds_to_auto_pc_RLAST,
      s_axi_rready => auto_ds_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => auto_ds_to_auto_pc_WLAST,
      s_axi_wready => auto_ds_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => auto_ds_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_4L0OC5 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_4L0OC5;

architecture STRUCTURE of m02_couplers_imp_4L0OC5 is
  component mlp_system_design_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_pc_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m02_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m02_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m02_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m02_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m02_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m02_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m02_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m02_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m02_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_pc_to_m02_couplers_WID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m02_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_m02_couplers_WVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m02_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m02_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m02_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_m02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_m02_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(1 downto 0) <= auto_pc_to_m02_couplers_ARID(1 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_m02_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_m02_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_m02_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_m02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_m02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_m02_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(1 downto 0) <= auto_pc_to_m02_couplers_AWID(1 downto 0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_m02_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_m02_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_m02_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_m02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m02_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m02_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m02_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_pc_to_m02_couplers_WDATA(63 downto 0);
  M_AXI_wid(1 downto 0) <= auto_pc_to_m02_couplers_WID(1 downto 0);
  M_AXI_wlast <= auto_pc_to_m02_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_pc_to_m02_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_pc_to_m02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m02_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m02_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(1 downto 0) <= m02_couplers_to_auto_pc_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(63 downto 0) <= m02_couplers_to_auto_pc_RDATA(63 downto 0);
  S_AXI_rid(1 downto 0) <= m02_couplers_to_auto_pc_RID(1 downto 0);
  S_AXI_rlast <= m02_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m02_couplers_to_auto_pc_WREADY;
  auto_pc_to_m02_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m02_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m02_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_pc_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m02_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m02_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_pc_to_m02_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_pc_to_m02_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m02_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m02_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m02_couplers_to_auto_pc_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m02_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m02_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m02_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m02_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m02_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m02_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m02_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m02_couplers_to_auto_pc_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m02_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m02_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m02_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m02_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m02_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m02_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m02_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m02_couplers_to_auto_pc_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m02_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m02_couplers_to_auto_pc_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m02_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component mlp_system_design_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m02_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m02_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m02_couplers_ARCACHE(3 downto 0),
      m_axi_arid(1 downto 0) => auto_pc_to_m02_couplers_ARID(1 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m02_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m02_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m02_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m02_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m02_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m02_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m02_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m02_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m02_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m02_couplers_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => auto_pc_to_m02_couplers_AWID(1 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m02_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m02_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m02_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m02_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m02_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m02_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m02_couplers_AWVALID,
      m_axi_bid(1 downto 0) => auto_pc_to_m02_couplers_BID(1 downto 0),
      m_axi_bready => auto_pc_to_m02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m02_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_pc_to_m02_couplers_RDATA(63 downto 0),
      m_axi_rid(1 downto 0) => auto_pc_to_m02_couplers_RID(1 downto 0),
      m_axi_rlast => auto_pc_to_m02_couplers_RLAST,
      m_axi_rready => auto_pc_to_m02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m02_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_pc_to_m02_couplers_WDATA(63 downto 0),
      m_axi_wid(1 downto 0) => auto_pc_to_m02_couplers_WID(1 downto 0),
      m_axi_wlast => auto_pc_to_m02_couplers_WLAST,
      m_axi_wready => auto_pc_to_m02_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_pc_to_m02_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_pc_to_m02_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m02_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m02_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m02_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => m02_couplers_to_auto_pc_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m02_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m02_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m02_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m02_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m02_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m02_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m02_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m02_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m02_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m02_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m02_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m02_couplers_to_auto_pc_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m02_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m02_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m02_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m02_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m02_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m02_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m02_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m02_couplers_to_auto_pc_AWVALID,
      s_axi_bid(1 downto 0) => m02_couplers_to_auto_pc_BID(1 downto 0),
      s_axi_bready => m02_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m02_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m02_couplers_to_auto_pc_BVALID,
      s_axi_rdata(63 downto 0) => m02_couplers_to_auto_pc_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => m02_couplers_to_auto_pc_RID(1 downto 0),
      s_axi_rlast => m02_couplers_to_auto_pc_RLAST,
      s_axi_rready => m02_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m02_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m02_couplers_to_auto_pc_RVALID,
      s_axi_wdata(63 downto 0) => m02_couplers_to_auto_pc_WDATA(63 downto 0),
      s_axi_wlast => m02_couplers_to_auto_pc_WLAST,
      s_axi_wready => m02_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(7 downto 0) => m02_couplers_to_auto_pc_WSTRB(7 downto 0),
      s_axi_wvalid => m02_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_YYXZEC is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_YYXZEC;

architecture STRUCTURE of m03_couplers_imp_YYXZEC is
  component mlp_system_design_auto_ds_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_ds_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_ds_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m03_couplers_ARREADY : STD_LOGIC;
  signal auto_ds_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m03_couplers_ARVALID : STD_LOGIC;
  signal auto_ds_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_ds_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m03_couplers_AWREADY : STD_LOGIC;
  signal auto_ds_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m03_couplers_AWVALID : STD_LOGIC;
  signal auto_ds_to_m03_couplers_BREADY : STD_LOGIC;
  signal auto_ds_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m03_couplers_BVALID : STD_LOGIC;
  signal auto_ds_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_m03_couplers_RLAST : STD_LOGIC;
  signal auto_ds_to_m03_couplers_RREADY : STD_LOGIC;
  signal auto_ds_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m03_couplers_RVALID : STD_LOGIC;
  signal auto_ds_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_m03_couplers_WLAST : STD_LOGIC;
  signal auto_ds_to_m03_couplers_WREADY : STD_LOGIC;
  signal auto_ds_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m03_couplers_WVALID : STD_LOGIC;
  signal m03_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal m03_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal m03_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal m03_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal m03_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal m03_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal m03_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m03_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal m03_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal m03_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal m03_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m03_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal m03_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal m03_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_ds_WVALID : STD_LOGIC;
  signal NLW_auto_ds_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_ds_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_ds_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_ds_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(15 downto 0) <= auto_ds_to_m03_couplers_ARADDR(15 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_ds_to_m03_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_ds_to_m03_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_ds_to_m03_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_ds_to_m03_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_ds_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_ds_to_m03_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_ds_to_m03_couplers_ARVALID;
  M_AXI_awaddr(15 downto 0) <= auto_ds_to_m03_couplers_AWADDR(15 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_ds_to_m03_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_ds_to_m03_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_ds_to_m03_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_ds_to_m03_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_ds_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_ds_to_m03_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_ds_to_m03_couplers_AWVALID;
  M_AXI_bready <= auto_ds_to_m03_couplers_BREADY;
  M_AXI_rready <= auto_ds_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_ds_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_ds_to_m03_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_ds_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_ds_to_m03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m03_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= m03_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(1 downto 0) <= m03_couplers_to_auto_ds_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(63 downto 0) <= m03_couplers_to_auto_ds_RDATA(63 downto 0);
  S_AXI_rid(1 downto 0) <= m03_couplers_to_auto_ds_RID(1 downto 0);
  S_AXI_rlast <= m03_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= m03_couplers_to_auto_ds_WREADY;
  auto_ds_to_m03_couplers_ARREADY <= M_AXI_arready;
  auto_ds_to_m03_couplers_AWREADY <= M_AXI_awready;
  auto_ds_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_ds_to_m03_couplers_BVALID <= M_AXI_bvalid;
  auto_ds_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_ds_to_m03_couplers_RLAST <= M_AXI_rlast;
  auto_ds_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_ds_to_m03_couplers_RVALID <= M_AXI_rvalid;
  auto_ds_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m03_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m03_couplers_to_auto_ds_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m03_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m03_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  m03_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m03_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m03_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m03_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m03_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m03_couplers_to_auto_ds_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m03_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m03_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  m03_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m03_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m03_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m03_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  m03_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  m03_couplers_to_auto_ds_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m03_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  m03_couplers_to_auto_ds_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m03_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component mlp_system_design_auto_ds_2
     port map (
      m_axi_araddr(15 downto 0) => auto_ds_to_m03_couplers_ARADDR(15 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_m03_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_m03_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_m03_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_m03_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_m03_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_auto_ds_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => auto_ds_to_m03_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_ds_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_m03_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_m03_couplers_ARVALID,
      m_axi_awaddr(15 downto 0) => auto_ds_to_m03_couplers_AWADDR(15 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_m03_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_m03_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_m03_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_m03_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_m03_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_auto_ds_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => auto_ds_to_m03_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_ds_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_m03_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_m03_couplers_AWVALID,
      m_axi_bready => auto_ds_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_m03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_m03_couplers_RLAST,
      m_axi_rready => auto_ds_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_m03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_m03_couplers_WLAST,
      m_axi_wready => auto_ds_to_m03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_m03_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(15 downto 0) => m03_couplers_to_auto_ds_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => m03_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m03_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => m03_couplers_to_auto_ds_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m03_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m03_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m03_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m03_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m03_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m03_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m03_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m03_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(15 downto 0) => m03_couplers_to_auto_ds_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => m03_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m03_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m03_couplers_to_auto_ds_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m03_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m03_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m03_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m03_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m03_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m03_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m03_couplers_to_auto_ds_AWVALID,
      s_axi_bid(1 downto 0) => m03_couplers_to_auto_ds_BID(1 downto 0),
      s_axi_bready => m03_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_auto_ds_BVALID,
      s_axi_rdata(63 downto 0) => m03_couplers_to_auto_ds_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => m03_couplers_to_auto_ds_RID(1 downto 0),
      s_axi_rlast => m03_couplers_to_auto_ds_RLAST,
      s_axi_rready => m03_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_auto_ds_RVALID,
      s_axi_wdata(63 downto 0) => m03_couplers_to_auto_ds_WDATA(63 downto 0),
      s_axi_wlast => m03_couplers_to_auto_ds_WLAST,
      s_axi_wready => m03_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(7 downto 0) => m03_couplers_to_auto_ds_WSTRB(7 downto 0),
      s_axi_wvalid => m03_couplers_to_auto_ds_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_1BYNCOI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_1BYNCOI;

architecture STRUCTURE of m04_couplers_imp_1BYNCOI is
  component mlp_system_design_auto_ds_3 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_ds_3;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_ds_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m04_couplers_ARREADY : STD_LOGIC;
  signal auto_ds_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m04_couplers_ARVALID : STD_LOGIC;
  signal auto_ds_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_ds_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m04_couplers_AWREADY : STD_LOGIC;
  signal auto_ds_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m04_couplers_AWVALID : STD_LOGIC;
  signal auto_ds_to_m04_couplers_BREADY : STD_LOGIC;
  signal auto_ds_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m04_couplers_BVALID : STD_LOGIC;
  signal auto_ds_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_m04_couplers_RLAST : STD_LOGIC;
  signal auto_ds_to_m04_couplers_RREADY : STD_LOGIC;
  signal auto_ds_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m04_couplers_RVALID : STD_LOGIC;
  signal auto_ds_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_m04_couplers_WLAST : STD_LOGIC;
  signal auto_ds_to_m04_couplers_WREADY : STD_LOGIC;
  signal auto_ds_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m04_couplers_WVALID : STD_LOGIC;
  signal m04_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal m04_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal m04_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal m04_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal m04_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal m04_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal m04_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m04_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal m04_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal m04_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal m04_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m04_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal m04_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal m04_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_auto_ds_WVALID : STD_LOGIC;
  signal NLW_auto_ds_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_ds_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_ds_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_ds_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(15 downto 0) <= auto_ds_to_m04_couplers_ARADDR(15 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_ds_to_m04_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_ds_to_m04_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_ds_to_m04_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_ds_to_m04_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_ds_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_ds_to_m04_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_ds_to_m04_couplers_ARVALID;
  M_AXI_awaddr(15 downto 0) <= auto_ds_to_m04_couplers_AWADDR(15 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_ds_to_m04_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_ds_to_m04_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_ds_to_m04_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_ds_to_m04_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_ds_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_ds_to_m04_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_ds_to_m04_couplers_AWVALID;
  M_AXI_bready <= auto_ds_to_m04_couplers_BREADY;
  M_AXI_rready <= auto_ds_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_ds_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_ds_to_m04_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_ds_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_ds_to_m04_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m04_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= m04_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(1 downto 0) <= m04_couplers_to_auto_ds_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(63 downto 0) <= m04_couplers_to_auto_ds_RDATA(63 downto 0);
  S_AXI_rid(1 downto 0) <= m04_couplers_to_auto_ds_RID(1 downto 0);
  S_AXI_rlast <= m04_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= m04_couplers_to_auto_ds_WREADY;
  auto_ds_to_m04_couplers_ARREADY <= M_AXI_arready;
  auto_ds_to_m04_couplers_AWREADY <= M_AXI_awready;
  auto_ds_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_ds_to_m04_couplers_BVALID <= M_AXI_bvalid;
  auto_ds_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_ds_to_m04_couplers_RLAST <= M_AXI_rlast;
  auto_ds_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_ds_to_m04_couplers_RVALID <= M_AXI_rvalid;
  auto_ds_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m04_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m04_couplers_to_auto_ds_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m04_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m04_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  m04_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m04_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m04_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m04_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m04_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m04_couplers_to_auto_ds_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m04_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m04_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  m04_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m04_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m04_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m04_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  m04_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  m04_couplers_to_auto_ds_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m04_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  m04_couplers_to_auto_ds_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m04_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component mlp_system_design_auto_ds_3
     port map (
      m_axi_araddr(15 downto 0) => auto_ds_to_m04_couplers_ARADDR(15 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_m04_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_m04_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_m04_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_m04_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_m04_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_auto_ds_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => auto_ds_to_m04_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_ds_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_m04_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_m04_couplers_ARVALID,
      m_axi_awaddr(15 downto 0) => auto_ds_to_m04_couplers_AWADDR(15 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_m04_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_m04_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_m04_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_m04_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_m04_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_auto_ds_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => auto_ds_to_m04_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_ds_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_m04_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_m04_couplers_AWVALID,
      m_axi_bready => auto_ds_to_m04_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_m04_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_m04_couplers_RLAST,
      m_axi_rready => auto_ds_to_m04_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_m04_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_m04_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_m04_couplers_WLAST,
      m_axi_wready => auto_ds_to_m04_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_m04_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_m04_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(15 downto 0) => m04_couplers_to_auto_ds_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => m04_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m04_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => m04_couplers_to_auto_ds_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m04_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m04_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m04_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m04_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m04_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m04_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m04_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m04_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(15 downto 0) => m04_couplers_to_auto_ds_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => m04_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m04_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m04_couplers_to_auto_ds_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m04_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m04_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m04_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m04_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m04_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m04_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m04_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m04_couplers_to_auto_ds_AWVALID,
      s_axi_bid(1 downto 0) => m04_couplers_to_auto_ds_BID(1 downto 0),
      s_axi_bready => m04_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m04_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m04_couplers_to_auto_ds_BVALID,
      s_axi_rdata(63 downto 0) => m04_couplers_to_auto_ds_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => m04_couplers_to_auto_ds_RID(1 downto 0),
      s_axi_rlast => m04_couplers_to_auto_ds_RLAST,
      s_axi_rready => m04_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m04_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m04_couplers_to_auto_ds_RVALID,
      s_axi_wdata(63 downto 0) => m04_couplers_to_auto_ds_WDATA(63 downto 0),
      s_axi_wlast => m04_couplers_to_auto_ds_WLAST,
      s_axi_wready => m04_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(7 downto 0) => m04_couplers_to_auto_ds_WSTRB(7 downto 0),
      s_axi_wvalid => m04_couplers_to_auto_ds_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1HWXN03 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_1HWXN03;

architecture STRUCTURE of m05_couplers_imp_1HWXN03 is
  component mlp_system_design_auto_ds_4 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_ds_4;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_ds_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m05_couplers_ARREADY : STD_LOGIC;
  signal auto_ds_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m05_couplers_ARVALID : STD_LOGIC;
  signal auto_ds_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_ds_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m05_couplers_AWREADY : STD_LOGIC;
  signal auto_ds_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m05_couplers_AWVALID : STD_LOGIC;
  signal auto_ds_to_m05_couplers_BREADY : STD_LOGIC;
  signal auto_ds_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m05_couplers_BVALID : STD_LOGIC;
  signal auto_ds_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_m05_couplers_RLAST : STD_LOGIC;
  signal auto_ds_to_m05_couplers_RREADY : STD_LOGIC;
  signal auto_ds_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m05_couplers_RVALID : STD_LOGIC;
  signal auto_ds_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_m05_couplers_WLAST : STD_LOGIC;
  signal auto_ds_to_m05_couplers_WREADY : STD_LOGIC;
  signal auto_ds_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m05_couplers_WVALID : STD_LOGIC;
  signal m05_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal m05_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal m05_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal m05_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal m05_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal m05_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal m05_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m05_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal m05_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal m05_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal m05_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m05_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal m05_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal m05_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_ds_WVALID : STD_LOGIC;
  signal NLW_auto_ds_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_ds_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_ds_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_ds_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(15 downto 0) <= auto_ds_to_m05_couplers_ARADDR(15 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_ds_to_m05_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_ds_to_m05_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_ds_to_m05_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= auto_ds_to_m05_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_ds_to_m05_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_ds_to_m05_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_ds_to_m05_couplers_ARVALID;
  M_AXI_awaddr(15 downto 0) <= auto_ds_to_m05_couplers_AWADDR(15 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_ds_to_m05_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_ds_to_m05_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_ds_to_m05_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= auto_ds_to_m05_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_ds_to_m05_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_ds_to_m05_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_ds_to_m05_couplers_AWVALID;
  M_AXI_bready <= auto_ds_to_m05_couplers_BREADY;
  M_AXI_rready <= auto_ds_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_ds_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_ds_to_m05_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_ds_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_ds_to_m05_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m05_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= m05_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(1 downto 0) <= m05_couplers_to_auto_ds_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(63 downto 0) <= m05_couplers_to_auto_ds_RDATA(63 downto 0);
  S_AXI_rid(1 downto 0) <= m05_couplers_to_auto_ds_RID(1 downto 0);
  S_AXI_rlast <= m05_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= m05_couplers_to_auto_ds_WREADY;
  auto_ds_to_m05_couplers_ARREADY <= M_AXI_arready;
  auto_ds_to_m05_couplers_AWREADY <= M_AXI_awready;
  auto_ds_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_ds_to_m05_couplers_BVALID <= M_AXI_bvalid;
  auto_ds_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_ds_to_m05_couplers_RLAST <= M_AXI_rlast;
  auto_ds_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_ds_to_m05_couplers_RVALID <= M_AXI_rvalid;
  auto_ds_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m05_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m05_couplers_to_auto_ds_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m05_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m05_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  m05_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m05_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m05_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m05_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m05_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m05_couplers_to_auto_ds_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m05_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m05_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  m05_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m05_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m05_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m05_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  m05_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  m05_couplers_to_auto_ds_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m05_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  m05_couplers_to_auto_ds_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m05_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component mlp_system_design_auto_ds_4
     port map (
      m_axi_araddr(15 downto 0) => auto_ds_to_m05_couplers_ARADDR(15 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_m05_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_m05_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_m05_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_m05_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_m05_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_auto_ds_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => auto_ds_to_m05_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_ds_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_m05_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_m05_couplers_ARVALID,
      m_axi_awaddr(15 downto 0) => auto_ds_to_m05_couplers_AWADDR(15 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_m05_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_m05_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_m05_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_m05_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_m05_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_auto_ds_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => auto_ds_to_m05_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_ds_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_m05_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_m05_couplers_AWVALID,
      m_axi_bready => auto_ds_to_m05_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_m05_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_m05_couplers_RLAST,
      m_axi_rready => auto_ds_to_m05_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_m05_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_m05_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_m05_couplers_WLAST,
      m_axi_wready => auto_ds_to_m05_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_m05_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_m05_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(15 downto 0) => m05_couplers_to_auto_ds_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => m05_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m05_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => m05_couplers_to_auto_ds_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m05_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m05_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m05_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m05_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m05_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m05_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m05_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m05_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(15 downto 0) => m05_couplers_to_auto_ds_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => m05_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m05_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m05_couplers_to_auto_ds_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m05_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m05_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m05_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m05_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m05_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m05_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m05_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m05_couplers_to_auto_ds_AWVALID,
      s_axi_bid(1 downto 0) => m05_couplers_to_auto_ds_BID(1 downto 0),
      s_axi_bready => m05_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m05_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m05_couplers_to_auto_ds_BVALID,
      s_axi_rdata(63 downto 0) => m05_couplers_to_auto_ds_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => m05_couplers_to_auto_ds_RID(1 downto 0),
      s_axi_rlast => m05_couplers_to_auto_ds_RLAST,
      s_axi_rready => m05_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m05_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m05_couplers_to_auto_ds_RVALID,
      s_axi_wdata(63 downto 0) => m05_couplers_to_auto_ds_WDATA(63 downto 0),
      s_axi_wlast => m05_couplers_to_auto_ds_WLAST,
      s_axi_wready => m05_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(7 downto 0) => m05_couplers_to_auto_ds_WSTRB(7 downto 0),
      s_axi_wvalid => m05_couplers_to_auto_ds_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_VKDO4W is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_VKDO4W;

architecture STRUCTURE of m06_couplers_imp_VKDO4W is
  component mlp_system_design_auto_ds_5 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_ds_5;
  component mlp_system_design_auto_pc_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_pc_3;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_BREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_BVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_RLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_RREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_RVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_WLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_WREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_WVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m06_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m06_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m06_couplers_WVALID : STD_LOGIC;
  signal m06_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal m06_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal m06_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal m06_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal m06_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal m06_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal m06_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m06_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal m06_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal m06_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal m06_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m06_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal m06_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal m06_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_auto_ds_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m06_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m06_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m06_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m06_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m06_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m06_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m06_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= m06_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(1 downto 0) <= m06_couplers_to_auto_ds_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(63 downto 0) <= m06_couplers_to_auto_ds_RDATA(63 downto 0);
  S_AXI_rid(1 downto 0) <= m06_couplers_to_auto_ds_RID(1 downto 0);
  S_AXI_rlast <= m06_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= m06_couplers_to_auto_ds_WREADY;
  auto_pc_to_m06_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m06_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m06_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m06_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m06_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m06_couplers_to_auto_ds_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m06_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m06_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  m06_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m06_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m06_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m06_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m06_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m06_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m06_couplers_to_auto_ds_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m06_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m06_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  m06_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m06_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m06_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m06_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m06_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  m06_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  m06_couplers_to_auto_ds_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m06_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  m06_couplers_to_auto_ds_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m06_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component mlp_system_design_auto_ds_5
     port map (
      m_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      m_axi_bready => auto_ds_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_auto_pc_RLAST,
      m_axi_rready => auto_ds_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_auto_pc_WLAST,
      m_axi_wready => auto_ds_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_auto_pc_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m06_couplers_to_auto_ds_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m06_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m06_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => m06_couplers_to_auto_ds_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m06_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m06_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m06_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m06_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m06_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m06_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m06_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m06_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(31 downto 0) => m06_couplers_to_auto_ds_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m06_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m06_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m06_couplers_to_auto_ds_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m06_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m06_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m06_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m06_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m06_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m06_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m06_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m06_couplers_to_auto_ds_AWVALID,
      s_axi_bid(1 downto 0) => m06_couplers_to_auto_ds_BID(1 downto 0),
      s_axi_bready => m06_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m06_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m06_couplers_to_auto_ds_BVALID,
      s_axi_rdata(63 downto 0) => m06_couplers_to_auto_ds_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => m06_couplers_to_auto_ds_RID(1 downto 0),
      s_axi_rlast => m06_couplers_to_auto_ds_RLAST,
      s_axi_rready => m06_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m06_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m06_couplers_to_auto_ds_RVALID,
      s_axi_wdata(63 downto 0) => m06_couplers_to_auto_ds_WDATA(63 downto 0),
      s_axi_wlast => m06_couplers_to_auto_ds_WLAST,
      s_axi_wready => m06_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(7 downto 0) => m06_couplers_to_auto_ds_WSTRB(7 downto 0),
      s_axi_wvalid => m06_couplers_to_auto_ds_WVALID
    );
auto_pc: component mlp_system_design_auto_pc_3
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m06_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m06_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m06_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m06_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m06_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m06_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m06_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m06_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m06_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m06_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m06_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m06_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m06_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m06_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m06_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m06_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      s_axi_bready => auto_ds_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => auto_ds_to_auto_pc_RLAST,
      s_axi_rready => auto_ds_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => auto_ds_to_auto_pc_WLAST,
      s_axi_wready => auto_ds_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => auto_ds_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_8OGT9T is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m07_couplers_imp_8OGT9T;

architecture STRUCTURE of m07_couplers_imp_8OGT9T is
  component mlp_system_design_auto_ds_6 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_ds_6;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_m07_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m07_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m07_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m07_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m07_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m07_couplers_ARREADY : STD_LOGIC;
  signal auto_ds_to_m07_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m07_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m07_couplers_ARVALID : STD_LOGIC;
  signal auto_ds_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_m07_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m07_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m07_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_m07_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m07_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m07_couplers_AWREADY : STD_LOGIC;
  signal auto_ds_to_m07_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m07_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_m07_couplers_AWVALID : STD_LOGIC;
  signal auto_ds_to_m07_couplers_BREADY : STD_LOGIC;
  signal auto_ds_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m07_couplers_BVALID : STD_LOGIC;
  signal auto_ds_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_m07_couplers_RLAST : STD_LOGIC;
  signal auto_ds_to_m07_couplers_RREADY : STD_LOGIC;
  signal auto_ds_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_m07_couplers_RVALID : STD_LOGIC;
  signal auto_ds_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_m07_couplers_WLAST : STD_LOGIC;
  signal auto_ds_to_m07_couplers_WREADY : STD_LOGIC;
  signal auto_ds_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_m07_couplers_WVALID : STD_LOGIC;
  signal m07_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m07_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal m07_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal m07_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m07_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal m07_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal m07_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal m07_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal m07_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m07_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal m07_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal m07_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal m07_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m07_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal m07_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal m07_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m07_couplers_to_auto_ds_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_ds_to_m07_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_ds_to_m07_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_ds_to_m07_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_ds_to_m07_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_ds_to_m07_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_ds_to_m07_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_ds_to_m07_couplers_ARQOS(3 downto 0);
  M_AXI_arregion(3 downto 0) <= auto_ds_to_m07_couplers_ARREGION(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_ds_to_m07_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_ds_to_m07_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_ds_to_m07_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_ds_to_m07_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_ds_to_m07_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_ds_to_m07_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_ds_to_m07_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_ds_to_m07_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_ds_to_m07_couplers_AWQOS(3 downto 0);
  M_AXI_awregion(3 downto 0) <= auto_ds_to_m07_couplers_AWREGION(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_ds_to_m07_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_ds_to_m07_couplers_AWVALID;
  M_AXI_bready <= auto_ds_to_m07_couplers_BREADY;
  M_AXI_rready <= auto_ds_to_m07_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_ds_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_ds_to_m07_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_ds_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_ds_to_m07_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m07_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= m07_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(1 downto 0) <= m07_couplers_to_auto_ds_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= m07_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(63 downto 0) <= m07_couplers_to_auto_ds_RDATA(63 downto 0);
  S_AXI_rid(1 downto 0) <= m07_couplers_to_auto_ds_RID(1 downto 0);
  S_AXI_rlast <= m07_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= m07_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= m07_couplers_to_auto_ds_WREADY;
  auto_ds_to_m07_couplers_ARREADY <= M_AXI_arready;
  auto_ds_to_m07_couplers_AWREADY <= M_AXI_awready;
  auto_ds_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_ds_to_m07_couplers_BVALID <= M_AXI_bvalid;
  auto_ds_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_ds_to_m07_couplers_RLAST <= M_AXI_rlast;
  auto_ds_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_ds_to_m07_couplers_RVALID <= M_AXI_rvalid;
  auto_ds_to_m07_couplers_WREADY <= M_AXI_wready;
  m07_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m07_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m07_couplers_to_auto_ds_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m07_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m07_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  m07_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m07_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m07_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m07_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m07_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  m07_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m07_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m07_couplers_to_auto_ds_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m07_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m07_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  m07_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m07_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m07_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m07_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m07_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  m07_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  m07_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  m07_couplers_to_auto_ds_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m07_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  m07_couplers_to_auto_ds_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m07_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component mlp_system_design_auto_ds_6
     port map (
      m_axi_araddr(31 downto 0) => auto_ds_to_m07_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_m07_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_m07_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_m07_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_m07_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_m07_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_m07_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_m07_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_m07_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_m07_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_m07_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_ds_to_m07_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_m07_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_m07_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_m07_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_m07_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_m07_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_m07_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_m07_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_m07_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_m07_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_m07_couplers_AWVALID,
      m_axi_bready => auto_ds_to_m07_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_m07_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_m07_couplers_RLAST,
      m_axi_rready => auto_ds_to_m07_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_m07_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_m07_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_m07_couplers_WLAST,
      m_axi_wready => auto_ds_to_m07_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_m07_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_m07_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m07_couplers_to_auto_ds_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m07_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m07_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => m07_couplers_to_auto_ds_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m07_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m07_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m07_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m07_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m07_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m07_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m07_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m07_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(31 downto 0) => m07_couplers_to_auto_ds_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m07_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m07_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m07_couplers_to_auto_ds_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m07_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m07_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m07_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m07_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m07_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m07_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m07_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m07_couplers_to_auto_ds_AWVALID,
      s_axi_bid(1 downto 0) => m07_couplers_to_auto_ds_BID(1 downto 0),
      s_axi_bready => m07_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m07_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m07_couplers_to_auto_ds_BVALID,
      s_axi_rdata(63 downto 0) => m07_couplers_to_auto_ds_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => m07_couplers_to_auto_ds_RID(1 downto 0),
      s_axi_rlast => m07_couplers_to_auto_ds_RLAST,
      s_axi_rready => m07_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m07_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m07_couplers_to_auto_ds_RVALID,
      s_axi_wdata(63 downto 0) => m07_couplers_to_auto_ds_WDATA(63 downto 0),
      s_axi_wlast => m07_couplers_to_auto_ds_WLAST,
      s_axi_wready => m07_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(7 downto 0) => m07_couplers_to_auto_ds_WSTRB(7 downto 0),
      s_axi_wvalid => m07_couplers_to_auto_ds_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_472BZX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m08_couplers_imp_472BZX;

architecture STRUCTURE of m08_couplers_imp_472BZX is
  component mlp_system_design_auto_ds_7 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_ds_7;
  component mlp_system_design_auto_pc_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_pc_4;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_BREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_BVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_RLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_RREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_RVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_WLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_WREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_WVALID : STD_LOGIC;
  signal auto_pc_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m08_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m08_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m08_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m08_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m08_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m08_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m08_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m08_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m08_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m08_couplers_WVALID : STD_LOGIC;
  signal m08_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m08_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal m08_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal m08_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m08_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal m08_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal m08_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal m08_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal m08_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m08_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal m08_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal m08_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal m08_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m08_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal m08_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal m08_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m08_couplers_to_auto_ds_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m08_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m08_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m08_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m08_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m08_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m08_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m08_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m08_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m08_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m08_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m08_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= m08_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(1 downto 0) <= m08_couplers_to_auto_ds_BID(1 downto 0);
  S_AXI_bresp(1 downto 0) <= m08_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= m08_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(63 downto 0) <= m08_couplers_to_auto_ds_RDATA(63 downto 0);
  S_AXI_rid(1 downto 0) <= m08_couplers_to_auto_ds_RID(1 downto 0);
  S_AXI_rlast <= m08_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= m08_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= m08_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= m08_couplers_to_auto_ds_WREADY;
  auto_pc_to_m08_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m08_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m08_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m08_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m08_couplers_WREADY <= M_AXI_wready;
  m08_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m08_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m08_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m08_couplers_to_auto_ds_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m08_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m08_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  m08_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m08_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m08_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m08_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m08_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  m08_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m08_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m08_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m08_couplers_to_auto_ds_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m08_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m08_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  m08_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m08_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m08_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m08_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m08_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  m08_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  m08_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  m08_couplers_to_auto_ds_WDATA(63 downto 0) <= S_AXI_wdata(63 downto 0);
  m08_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  m08_couplers_to_auto_ds_WSTRB(7 downto 0) <= S_AXI_wstrb(7 downto 0);
  m08_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component mlp_system_design_auto_ds_7
     port map (
      m_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      m_axi_bready => auto_ds_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_auto_pc_RLAST,
      m_axi_rready => auto_ds_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_auto_pc_WLAST,
      m_axi_wready => auto_ds_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_auto_pc_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => m08_couplers_to_auto_ds_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m08_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m08_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(1 downto 0) => m08_couplers_to_auto_ds_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => m08_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => m08_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m08_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m08_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => m08_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => m08_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m08_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => m08_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(31 downto 0) => m08_couplers_to_auto_ds_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m08_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m08_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => m08_couplers_to_auto_ds_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => m08_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => m08_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m08_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m08_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => m08_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => m08_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m08_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => m08_couplers_to_auto_ds_AWVALID,
      s_axi_bid(1 downto 0) => m08_couplers_to_auto_ds_BID(1 downto 0),
      s_axi_bready => m08_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => m08_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => m08_couplers_to_auto_ds_BVALID,
      s_axi_rdata(63 downto 0) => m08_couplers_to_auto_ds_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => m08_couplers_to_auto_ds_RID(1 downto 0),
      s_axi_rlast => m08_couplers_to_auto_ds_RLAST,
      s_axi_rready => m08_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => m08_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => m08_couplers_to_auto_ds_RVALID,
      s_axi_wdata(63 downto 0) => m08_couplers_to_auto_ds_WDATA(63 downto 0),
      s_axi_wlast => m08_couplers_to_auto_ds_WLAST,
      s_axi_wready => m08_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(7 downto 0) => m08_couplers_to_auto_ds_WSTRB(7 downto 0),
      s_axi_wvalid => m08_couplers_to_auto_ds_WVALID
    );
auto_pc: component mlp_system_design_auto_pc_4
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m08_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m08_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m08_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m08_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m08_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m08_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m08_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m08_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m08_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m08_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m08_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m08_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m08_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m08_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m08_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m08_couplers_WVALID,
      s_axi_araddr(31 downto 0) => auto_ds_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_ds_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      s_axi_bready => auto_ds_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => auto_ds_to_auto_pc_RLAST,
      s_axi_rready => auto_ds_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => auto_ds_to_auto_pc_WLAST,
      s_axi_wready => auto_ds_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => auto_ds_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_WFS39L is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_WFS39L;

architecture STRUCTURE of s00_couplers_imp_WFS39L is
  component mlp_system_design_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_us_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_us_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_us_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_us_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_us_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_us_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_WVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_us_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_us_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_us_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_us_to_s00_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_us_to_s00_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= auto_us_to_s00_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_us_to_s00_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_us_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_us_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_us_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_us_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_us_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_us_RDATA(31 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_us_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_us_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_us_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_us_WREADY;
  auto_us_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_us_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_us_to_s00_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_us_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_us_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_us_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_us_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_us_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_us_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_us_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_us_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_us_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_us_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_us_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_us_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_us_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_us_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_us_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_us_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_us_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_us_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_us_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_us_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_us_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_us_WVALID <= S_AXI_wvalid;
auto_us: component mlp_system_design_auto_us_0
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_us_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_s00_couplers_AWVALID,
      m_axi_bready => auto_us_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_s00_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_us_to_s00_couplers_RDATA(63 downto 0),
      m_axi_rlast => auto_us_to_s00_couplers_RLAST,
      m_axi_rready => auto_us_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s00_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_us_to_s00_couplers_WDATA(63 downto 0),
      m_axi_wlast => auto_us_to_s00_couplers_WLAST,
      m_axi_wready => auto_us_to_s00_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_us_to_s00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_us_to_s00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s00_couplers_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_us_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s00_couplers_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_us_AWVALID,
      s_axi_bready => s00_couplers_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_us_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_us_RDATA(31 downto 0),
      s_axi_rlast => s00_couplers_to_auto_us_RLAST,
      s_axi_rready => s00_couplers_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_us_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_us_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_us_WLAST,
      s_axi_wready => s00_couplers_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_us_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_7BN9AG is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_7BN9AG;

architecture STRUCTURE of s01_couplers_imp_7BN9AG is
  component mlp_system_design_auto_pc_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_pc_5;
  component mlp_system_design_auto_us_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_us_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_auto_us_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_ARREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_ARVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_auto_us_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_AWREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_auto_us_AWVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_auto_us_BREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_BVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_auto_us_RLAST : STD_LOGIC;
  signal auto_pc_to_auto_us_RREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_auto_us_RVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_WLAST : STD_LOGIC;
  signal auto_pc_to_auto_us_WREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_auto_us_WVALID : STD_LOGIC;
  signal auto_us_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_AWREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_AWVALID : STD_LOGIC;
  signal auto_us_to_s01_couplers_BREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_BVALID : STD_LOGIC;
  signal auto_us_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s01_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s01_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_RVALID : STD_LOGIC;
  signal auto_us_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s01_couplers_WLAST : STD_LOGIC;
  signal auto_us_to_s01_couplers_WREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s01_couplers_WVALID : STD_LOGIC;
  signal s01_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s01_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s01_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s01_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s01_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s01_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s01_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s01_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s01_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s01_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s01_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s01_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s01_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_us_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_to_s01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_us_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_to_s01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_to_s01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_to_s01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_to_s01_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_to_s01_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_to_s01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_to_s01_couplers_AWVALID;
  M_AXI_bready <= auto_us_to_s01_couplers_BREADY;
  M_AXI_rready <= auto_us_to_s01_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_us_to_s01_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= auto_us_to_s01_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_us_to_s01_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_us_to_s01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s01_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s01_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s01_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s01_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s01_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s01_couplers_to_auto_pc_WREADY;
  auto_us_to_s01_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s01_couplers_AWREADY <= M_AXI_awready;
  auto_us_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_to_s01_couplers_BVALID <= M_AXI_bvalid;
  auto_us_to_s01_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_us_to_s01_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s01_couplers_RVALID <= M_AXI_rvalid;
  auto_us_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s01_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s01_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s01_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s01_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s01_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s01_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s01_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s01_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s01_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s01_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s01_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component mlp_system_design_auto_pc_5
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_auto_us_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_auto_us_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_auto_us_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => auto_pc_to_auto_us_ARID(11 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_auto_us_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_auto_us_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_auto_us_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_auto_us_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_auto_us_ARREADY,
      m_axi_arregion(3 downto 0) => auto_pc_to_auto_us_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_auto_us_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_auto_us_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_auto_us_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_auto_us_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_auto_us_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => auto_pc_to_auto_us_AWID(11 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_auto_us_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_auto_us_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_auto_us_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_auto_us_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_auto_us_AWREADY,
      m_axi_awregion(3 downto 0) => auto_pc_to_auto_us_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_auto_us_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_auto_us_AWVALID,
      m_axi_bid(11 downto 0) => auto_pc_to_auto_us_BID(11 downto 0),
      m_axi_bready => auto_pc_to_auto_us_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_auto_us_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_auto_us_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_auto_us_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => auto_pc_to_auto_us_RID(11 downto 0),
      m_axi_rlast => auto_pc_to_auto_us_RLAST,
      m_axi_rready => auto_pc_to_auto_us_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_auto_us_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_auto_us_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_auto_us_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_auto_us_WLAST,
      m_axi_wready => auto_pc_to_auto_us_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_auto_us_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_auto_us_WVALID,
      s_axi_araddr(31 downto 0) => s01_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s01_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s01_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s01_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s01_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s01_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s01_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s01_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s01_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s01_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s01_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s01_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s01_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s01_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s01_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s01_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s01_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s01_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s01_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s01_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s01_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s01_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s01_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s01_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s01_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s01_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s01_couplers_to_auto_pc_RLAST,
      s_axi_rready => s01_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s01_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s01_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s01_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s01_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s01_couplers_to_auto_pc_WLAST,
      s_axi_wready => s01_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s01_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s01_couplers_to_auto_pc_WVALID
    );
auto_us: component mlp_system_design_auto_us_1
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_s01_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s01_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s01_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_s01_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_s01_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_s01_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s01_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s01_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_s01_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s01_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_us_to_s01_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_s01_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_s01_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_s01_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_s01_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_to_s01_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_s01_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_s01_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_s01_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_s01_couplers_AWVALID,
      m_axi_bready => auto_us_to_s01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_s01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_s01_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_us_to_s01_couplers_RDATA(63 downto 0),
      m_axi_rlast => auto_us_to_s01_couplers_RLAST,
      m_axi_rready => auto_us_to_s01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s01_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_us_to_s01_couplers_WDATA(63 downto 0),
      m_axi_wlast => auto_us_to_s01_couplers_WLAST,
      m_axi_wready => auto_us_to_s01_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_us_to_s01_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_us_to_s01_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => auto_pc_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => auto_pc_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_pc_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(11 downto 0) => auto_pc_to_auto_us_ARID(11 downto 0),
      s_axi_arlen(7 downto 0) => auto_pc_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_pc_to_auto_us_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_pc_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_pc_to_auto_us_ARQOS(3 downto 0),
      s_axi_arready => auto_pc_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => auto_pc_to_auto_us_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_pc_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_pc_to_auto_us_ARVALID,
      s_axi_awaddr(31 downto 0) => auto_pc_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => auto_pc_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_pc_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => auto_pc_to_auto_us_AWID(11 downto 0),
      s_axi_awlen(7 downto 0) => auto_pc_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_pc_to_auto_us_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_pc_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_pc_to_auto_us_AWQOS(3 downto 0),
      s_axi_awready => auto_pc_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => auto_pc_to_auto_us_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_pc_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_pc_to_auto_us_AWVALID,
      s_axi_bid(11 downto 0) => auto_pc_to_auto_us_BID(11 downto 0),
      s_axi_bready => auto_pc_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => auto_pc_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => auto_pc_to_auto_us_BVALID,
      s_axi_rdata(31 downto 0) => auto_pc_to_auto_us_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => auto_pc_to_auto_us_RID(11 downto 0),
      s_axi_rlast => auto_pc_to_auto_us_RLAST,
      s_axi_rready => auto_pc_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => auto_pc_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => auto_pc_to_auto_us_RVALID,
      s_axi_wdata(31 downto 0) => auto_pc_to_auto_us_WDATA(31 downto 0),
      s_axi_wlast => auto_pc_to_auto_us_WLAST,
      s_axi_wready => auto_pc_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => auto_pc_to_auto_us_WSTRB(3 downto 0),
      s_axi_wvalid => auto_pc_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_1B5HONF is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s02_couplers_imp_1B5HONF;

architecture STRUCTURE of s02_couplers_imp_1B5HONF is
  component mlp_system_design_auto_us_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component mlp_system_design_auto_us_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s02_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s02_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s02_couplers_AWREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s02_couplers_AWVALID : STD_LOGIC;
  signal auto_us_to_s02_couplers_BREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s02_couplers_BVALID : STD_LOGIC;
  signal auto_us_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s02_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s02_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s02_couplers_RVALID : STD_LOGIC;
  signal auto_us_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_s02_couplers_WLAST : STD_LOGIC;
  signal auto_us_to_s02_couplers_WREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s02_couplers_WVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_auto_us_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_ARREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_ARVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_auto_us_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_AWREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_AWVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_us_BREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_BVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_us_RLAST : STD_LOGIC;
  signal s02_couplers_to_auto_us_RREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_RVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_WLAST : STD_LOGIC;
  signal s02_couplers_to_auto_us_WREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_WVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_us_to_s02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s02_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_to_s02_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_to_s02_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s02_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s02_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_us_to_s02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_to_s02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_to_s02_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_to_s02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_to_s02_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_to_s02_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_to_s02_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_to_s02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_to_s02_couplers_AWVALID;
  M_AXI_bready <= auto_us_to_s02_couplers_BREADY;
  M_AXI_rready <= auto_us_to_s02_couplers_RREADY;
  M_AXI_wdata(63 downto 0) <= auto_us_to_s02_couplers_WDATA(63 downto 0);
  M_AXI_wlast <= auto_us_to_s02_couplers_WLAST;
  M_AXI_wstrb(7 downto 0) <= auto_us_to_s02_couplers_WSTRB(7 downto 0);
  M_AXI_wvalid <= auto_us_to_s02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s02_couplers_to_auto_us_ARREADY;
  S_AXI_awready <= s02_couplers_to_auto_us_AWREADY;
  S_AXI_bid(0) <= s02_couplers_to_auto_us_BID(0);
  S_AXI_bresp(1 downto 0) <= s02_couplers_to_auto_us_BRESP(1 downto 0);
  S_AXI_bvalid <= s02_couplers_to_auto_us_BVALID;
  S_AXI_rdata(31 downto 0) <= s02_couplers_to_auto_us_RDATA(31 downto 0);
  S_AXI_rid(0) <= s02_couplers_to_auto_us_RID(0);
  S_AXI_rlast <= s02_couplers_to_auto_us_RLAST;
  S_AXI_rresp(1 downto 0) <= s02_couplers_to_auto_us_RRESP(1 downto 0);
  S_AXI_rvalid <= s02_couplers_to_auto_us_RVALID;
  S_AXI_wready <= s02_couplers_to_auto_us_WREADY;
  auto_us_to_s02_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s02_couplers_AWREADY <= M_AXI_awready;
  auto_us_to_s02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_to_s02_couplers_BVALID <= M_AXI_bvalid;
  auto_us_to_s02_couplers_RDATA(63 downto 0) <= M_AXI_rdata(63 downto 0);
  auto_us_to_s02_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s02_couplers_RVALID <= M_AXI_rvalid;
  auto_us_to_s02_couplers_WREADY <= M_AXI_wready;
  s02_couplers_to_auto_us_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s02_couplers_to_auto_us_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s02_couplers_to_auto_us_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s02_couplers_to_auto_us_ARID(0) <= S_AXI_arid(0);
  s02_couplers_to_auto_us_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s02_couplers_to_auto_us_ARLOCK(0) <= S_AXI_arlock(0);
  s02_couplers_to_auto_us_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s02_couplers_to_auto_us_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s02_couplers_to_auto_us_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s02_couplers_to_auto_us_ARVALID <= S_AXI_arvalid;
  s02_couplers_to_auto_us_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s02_couplers_to_auto_us_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s02_couplers_to_auto_us_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s02_couplers_to_auto_us_AWID(0) <= S_AXI_awid(0);
  s02_couplers_to_auto_us_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s02_couplers_to_auto_us_AWLOCK(0) <= S_AXI_awlock(0);
  s02_couplers_to_auto_us_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s02_couplers_to_auto_us_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s02_couplers_to_auto_us_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s02_couplers_to_auto_us_AWVALID <= S_AXI_awvalid;
  s02_couplers_to_auto_us_BREADY <= S_AXI_bready;
  s02_couplers_to_auto_us_RREADY <= S_AXI_rready;
  s02_couplers_to_auto_us_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s02_couplers_to_auto_us_WLAST <= S_AXI_wlast;
  s02_couplers_to_auto_us_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s02_couplers_to_auto_us_WVALID <= S_AXI_wvalid;
auto_us: component mlp_system_design_auto_us_2
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_s02_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s02_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s02_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_s02_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_s02_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_s02_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s02_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s02_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_s02_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s02_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_us_to_s02_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_s02_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_s02_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_s02_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_s02_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_to_s02_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_s02_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_s02_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_s02_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_s02_couplers_AWVALID,
      m_axi_bready => auto_us_to_s02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_s02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_s02_couplers_BVALID,
      m_axi_rdata(63 downto 0) => auto_us_to_s02_couplers_RDATA(63 downto 0),
      m_axi_rlast => auto_us_to_s02_couplers_RLAST,
      m_axi_rready => auto_us_to_s02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s02_couplers_RVALID,
      m_axi_wdata(63 downto 0) => auto_us_to_s02_couplers_WDATA(63 downto 0),
      m_axi_wlast => auto_us_to_s02_couplers_WLAST,
      m_axi_wready => auto_us_to_s02_couplers_WREADY,
      m_axi_wstrb(7 downto 0) => auto_us_to_s02_couplers_WSTRB(7 downto 0),
      m_axi_wvalid => auto_us_to_s02_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s02_couplers_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s02_couplers_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s02_couplers_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(0) => s02_couplers_to_auto_us_ARID(0),
      s_axi_arlen(7 downto 0) => s02_couplers_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => s02_couplers_to_auto_us_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s02_couplers_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s02_couplers_to_auto_us_ARQOS(3 downto 0),
      s_axi_arready => s02_couplers_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s02_couplers_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s02_couplers_to_auto_us_ARVALID,
      s_axi_awaddr(31 downto 0) => s02_couplers_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s02_couplers_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s02_couplers_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awid(0) => s02_couplers_to_auto_us_AWID(0),
      s_axi_awlen(7 downto 0) => s02_couplers_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => s02_couplers_to_auto_us_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s02_couplers_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s02_couplers_to_auto_us_AWQOS(3 downto 0),
      s_axi_awready => s02_couplers_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s02_couplers_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => s02_couplers_to_auto_us_AWVALID,
      s_axi_bid(0) => s02_couplers_to_auto_us_BID(0),
      s_axi_bready => s02_couplers_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => s02_couplers_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => s02_couplers_to_auto_us_BVALID,
      s_axi_rdata(31 downto 0) => s02_couplers_to_auto_us_RDATA(31 downto 0),
      s_axi_rid(0) => s02_couplers_to_auto_us_RID(0),
      s_axi_rlast => s02_couplers_to_auto_us_RLAST,
      s_axi_rready => s02_couplers_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s02_couplers_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s02_couplers_to_auto_us_RVALID,
      s_axi_wdata(31 downto 0) => s02_couplers_to_auto_us_WDATA(31 downto 0),
      s_axi_wlast => s02_couplers_to_auto_us_WLAST,
      s_axi_wready => s02_couplers_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => s02_couplers_to_auto_us_WSTRB(3 downto 0),
      s_axi_wvalid => s02_couplers_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mlp_system_design_periph_intercon_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M02_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M02_AXI_rlast : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M02_AXI_wid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_wlast : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M03_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rlast : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wlast : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M04_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M04_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rlast : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wlast : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M05_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M05_AXI_arlock : out STD_LOGIC;
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M05_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M05_AXI_awlock : out STD_LOGIC;
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rlast : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wlast : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M07_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_arready : in STD_LOGIC;
    M07_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_arvalid : out STD_LOGIC;
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M07_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_awready : in STD_LOGIC;
    M07_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M07_AXI_awvalid : out STD_LOGIC;
    M07_AXI_bready : out STD_LOGIC;
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC;
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rlast : in STD_LOGIC;
    M07_AXI_rready : out STD_LOGIC;
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC;
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wlast : out STD_LOGIC;
    M07_AXI_wready : in STD_LOGIC;
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC;
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_arready : in STD_LOGIC;
    M08_AXI_arvalid : out STD_LOGIC;
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M08_AXI_awready : in STD_LOGIC;
    M08_AXI_awvalid : out STD_LOGIC;
    M08_AXI_bready : out STD_LOGIC;
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC;
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC;
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC;
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC;
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC
  );
end mlp_system_design_periph_intercon_0;

architecture STRUCTURE of mlp_system_design_periph_intercon_0 is
  component mlp_system_design_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 191 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 287 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 26 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 26 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 575 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 287 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 26 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 26 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 575 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component mlp_system_design_xbar_0;
  signal m00_couplers_to_periph_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_periph_intercon_ARREADY : STD_LOGIC;
  signal m00_couplers_to_periph_intercon_ARVALID : STD_LOGIC;
  signal m00_couplers_to_periph_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_periph_intercon_AWREADY : STD_LOGIC;
  signal m00_couplers_to_periph_intercon_AWVALID : STD_LOGIC;
  signal m00_couplers_to_periph_intercon_BREADY : STD_LOGIC;
  signal m00_couplers_to_periph_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_periph_intercon_BVALID : STD_LOGIC;
  signal m00_couplers_to_periph_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_periph_intercon_RREADY : STD_LOGIC;
  signal m00_couplers_to_periph_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_periph_intercon_RVALID : STD_LOGIC;
  signal m00_couplers_to_periph_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_periph_intercon_WREADY : STD_LOGIC;
  signal m00_couplers_to_periph_intercon_WVALID : STD_LOGIC;
  signal m01_couplers_to_periph_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_periph_intercon_ARREADY : STD_LOGIC;
  signal m01_couplers_to_periph_intercon_ARVALID : STD_LOGIC;
  signal m01_couplers_to_periph_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_periph_intercon_AWREADY : STD_LOGIC;
  signal m01_couplers_to_periph_intercon_AWVALID : STD_LOGIC;
  signal m01_couplers_to_periph_intercon_BREADY : STD_LOGIC;
  signal m01_couplers_to_periph_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_periph_intercon_BVALID : STD_LOGIC;
  signal m01_couplers_to_periph_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_periph_intercon_RREADY : STD_LOGIC;
  signal m01_couplers_to_periph_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_periph_intercon_RVALID : STD_LOGIC;
  signal m01_couplers_to_periph_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_periph_intercon_WREADY : STD_LOGIC;
  signal m01_couplers_to_periph_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_periph_intercon_WVALID : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_periph_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_periph_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_periph_intercon_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_periph_intercon_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_periph_intercon_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_periph_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_periph_intercon_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_periph_intercon_ARREADY : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_periph_intercon_ARVALID : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_periph_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_periph_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_periph_intercon_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_periph_intercon_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_periph_intercon_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_periph_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_periph_intercon_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_periph_intercon_AWREADY : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_periph_intercon_AWVALID : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m02_couplers_to_periph_intercon_BREADY : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_periph_intercon_BVALID : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m02_couplers_to_periph_intercon_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m02_couplers_to_periph_intercon_RLAST : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_RREADY : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_periph_intercon_RVALID : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal m02_couplers_to_periph_intercon_WID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_periph_intercon_WLAST : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_WREADY : STD_LOGIC;
  signal m02_couplers_to_periph_intercon_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_periph_intercon_WVALID : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m03_couplers_to_periph_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_periph_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_periph_intercon_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_periph_intercon_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_periph_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_periph_intercon_ARREADY : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_periph_intercon_ARVALID : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m03_couplers_to_periph_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_periph_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_periph_intercon_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_periph_intercon_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_periph_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_periph_intercon_AWREADY : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_periph_intercon_AWVALID : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_BREADY : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_periph_intercon_BVALID : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_periph_intercon_RLAST : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_RREADY : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_periph_intercon_RVALID : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_periph_intercon_WLAST : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_WREADY : STD_LOGIC;
  signal m03_couplers_to_periph_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_periph_intercon_WVALID : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m04_couplers_to_periph_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_periph_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_periph_intercon_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_periph_intercon_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_periph_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_periph_intercon_ARREADY : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_periph_intercon_ARVALID : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m04_couplers_to_periph_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_periph_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_periph_intercon_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_periph_intercon_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_periph_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_periph_intercon_AWREADY : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_periph_intercon_AWVALID : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_BREADY : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_periph_intercon_BVALID : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_periph_intercon_RLAST : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_RREADY : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_periph_intercon_RVALID : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_periph_intercon_WLAST : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_WREADY : STD_LOGIC;
  signal m04_couplers_to_periph_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_periph_intercon_WVALID : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m05_couplers_to_periph_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_periph_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_periph_intercon_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_periph_intercon_ARLOCK : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_periph_intercon_ARREADY : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_periph_intercon_ARVALID : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m05_couplers_to_periph_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_periph_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_periph_intercon_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_periph_intercon_AWLOCK : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_periph_intercon_AWREADY : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_periph_intercon_AWVALID : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_BREADY : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_periph_intercon_BVALID : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_periph_intercon_RLAST : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_RREADY : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_periph_intercon_RVALID : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_periph_intercon_WLAST : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_WREADY : STD_LOGIC;
  signal m05_couplers_to_periph_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_periph_intercon_WVALID : STD_LOGIC;
  signal m06_couplers_to_periph_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_periph_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_periph_intercon_ARREADY : STD_LOGIC;
  signal m06_couplers_to_periph_intercon_ARVALID : STD_LOGIC;
  signal m06_couplers_to_periph_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_periph_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_periph_intercon_AWREADY : STD_LOGIC;
  signal m06_couplers_to_periph_intercon_AWVALID : STD_LOGIC;
  signal m06_couplers_to_periph_intercon_BREADY : STD_LOGIC;
  signal m06_couplers_to_periph_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_periph_intercon_BVALID : STD_LOGIC;
  signal m06_couplers_to_periph_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_periph_intercon_RREADY : STD_LOGIC;
  signal m06_couplers_to_periph_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_periph_intercon_RVALID : STD_LOGIC;
  signal m06_couplers_to_periph_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_periph_intercon_WREADY : STD_LOGIC;
  signal m06_couplers_to_periph_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_periph_intercon_WVALID : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_periph_intercon_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_periph_intercon_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_periph_intercon_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m07_couplers_to_periph_intercon_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_periph_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_periph_intercon_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_periph_intercon_ARREADY : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_periph_intercon_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_periph_intercon_ARVALID : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_periph_intercon_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_periph_intercon_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_periph_intercon_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m07_couplers_to_periph_intercon_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_periph_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_periph_intercon_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_periph_intercon_AWREADY : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_periph_intercon_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m07_couplers_to_periph_intercon_AWVALID : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_BREADY : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_periph_intercon_BVALID : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_periph_intercon_RLAST : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_RREADY : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_periph_intercon_RVALID : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_periph_intercon_WLAST : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_WREADY : STD_LOGIC;
  signal m07_couplers_to_periph_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_periph_intercon_WVALID : STD_LOGIC;
  signal m08_couplers_to_periph_intercon_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_periph_intercon_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_periph_intercon_ARREADY : STD_LOGIC;
  signal m08_couplers_to_periph_intercon_ARVALID : STD_LOGIC;
  signal m08_couplers_to_periph_intercon_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_periph_intercon_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m08_couplers_to_periph_intercon_AWREADY : STD_LOGIC;
  signal m08_couplers_to_periph_intercon_AWVALID : STD_LOGIC;
  signal m08_couplers_to_periph_intercon_BREADY : STD_LOGIC;
  signal m08_couplers_to_periph_intercon_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_periph_intercon_BVALID : STD_LOGIC;
  signal m08_couplers_to_periph_intercon_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_periph_intercon_RREADY : STD_LOGIC;
  signal m08_couplers_to_periph_intercon_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_periph_intercon_RVALID : STD_LOGIC;
  signal m08_couplers_to_periph_intercon_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_periph_intercon_WREADY : STD_LOGIC;
  signal m08_couplers_to_periph_intercon_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_periph_intercon_WVALID : STD_LOGIC;
  signal periph_intercon_ACLK_net : STD_LOGIC;
  signal periph_intercon_ARESETN_net : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s00_couplers_ARREADY : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s00_couplers_ARVALID : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s00_couplers_AWREADY : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s00_couplers_AWVALID : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_BREADY : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s00_couplers_BVALID : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s00_couplers_RLAST : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_RREADY : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s00_couplers_RVALID : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s00_couplers_WLAST : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_WREADY : STD_LOGIC;
  signal periph_intercon_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s00_couplers_WVALID : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal periph_intercon_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s01_couplers_ARREADY : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s01_couplers_ARVALID : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal periph_intercon_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s01_couplers_AWREADY : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s01_couplers_AWVALID : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal periph_intercon_to_s01_couplers_BREADY : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s01_couplers_BVALID : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal periph_intercon_to_s01_couplers_RLAST : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_RREADY : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s01_couplers_RVALID : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s01_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal periph_intercon_to_s01_couplers_WLAST : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_WREADY : STD_LOGIC;
  signal periph_intercon_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s01_couplers_WVALID : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s02_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_to_s02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s02_couplers_ARREADY : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s02_couplers_ARVALID : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s02_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_to_s02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s02_couplers_AWREADY : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_to_s02_couplers_AWVALID : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_to_s02_couplers_BREADY : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s02_couplers_BVALID : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s02_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_to_s02_couplers_RLAST : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_RREADY : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_to_s02_couplers_RVALID : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_to_s02_couplers_WLAST : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_WREADY : STD_LOGIC;
  signal periph_intercon_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_to_s02_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 64 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 191 downto 128 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 64 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARID : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWID : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m02_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 128 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARID : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWID : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m03_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 192 );
  signal xbar_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARID : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWID : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m04_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 319 downto 256 );
  signal xbar_to_m04_couplers_WLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m05_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 383 downto 320 );
  signal xbar_to_m05_couplers_WLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_ARCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARID : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_ARLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_ARLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_AWCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWID : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_AWLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_AWLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m06_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 447 downto 384 );
  signal xbar_to_m06_couplers_WLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_ARBURST : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_ARCACHE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_ARLEN : STD_LOGIC_VECTOR ( 63 downto 56 );
  signal xbar_to_m07_couplers_ARLOCK : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_ARPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARQOS : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_ARREGION : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_ARSIZE : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal xbar_to_m07_couplers_AWBURST : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_AWCACHE : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal xbar_to_m07_couplers_AWLEN : STD_LOGIC_VECTOR ( 63 downto 56 );
  signal xbar_to_m07_couplers_AWLOCK : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_AWPROT : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWQOS : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_AWREGION : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal xbar_to_m07_couplers_AWSIZE : STD_LOGIC_VECTOR ( 23 downto 21 );
  signal xbar_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m07_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m07_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 511 downto 448 );
  signal xbar_to_m07_couplers_WLAST : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m07_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 63 downto 56 );
  signal xbar_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal xbar_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_ARBURST : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal xbar_to_m08_couplers_ARCACHE : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_ARID : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal xbar_to_m08_couplers_ARLEN : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal xbar_to_m08_couplers_ARLOCK : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_ARPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARQOS : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_ARREGION : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_ARSIZE : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 287 downto 256 );
  signal xbar_to_m08_couplers_AWBURST : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal xbar_to_m08_couplers_AWCACHE : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_AWID : STD_LOGIC_VECTOR ( 17 downto 16 );
  signal xbar_to_m08_couplers_AWLEN : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal xbar_to_m08_couplers_AWLOCK : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_AWPROT : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWQOS : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_AWREGION : STD_LOGIC_VECTOR ( 35 downto 32 );
  signal xbar_to_m08_couplers_AWSIZE : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal xbar_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m08_couplers_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m08_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 575 downto 512 );
  signal xbar_to_m08_couplers_WLAST : STD_LOGIC_VECTOR ( 8 to 8 );
  signal xbar_to_m08_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal xbar_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 8 to 8 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_periph_intercon_ARADDR(31 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_periph_intercon_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_periph_intercon_AWADDR(31 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_periph_intercon_AWVALID;
  M00_AXI_bready <= m00_couplers_to_periph_intercon_BREADY;
  M00_AXI_rready <= m00_couplers_to_periph_intercon_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_periph_intercon_WDATA(31 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_periph_intercon_WVALID;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_periph_intercon_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_periph_intercon_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_periph_intercon_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_periph_intercon_AWVALID;
  M01_AXI_bready <= m01_couplers_to_periph_intercon_BREADY;
  M01_AXI_rready <= m01_couplers_to_periph_intercon_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_periph_intercon_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_periph_intercon_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_periph_intercon_WVALID;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_periph_intercon_ARADDR(31 downto 0);
  M02_AXI_arburst(1 downto 0) <= m02_couplers_to_periph_intercon_ARBURST(1 downto 0);
  M02_AXI_arcache(3 downto 0) <= m02_couplers_to_periph_intercon_ARCACHE(3 downto 0);
  M02_AXI_arid(1 downto 0) <= m02_couplers_to_periph_intercon_ARID(1 downto 0);
  M02_AXI_arlen(3 downto 0) <= m02_couplers_to_periph_intercon_ARLEN(3 downto 0);
  M02_AXI_arlock(1 downto 0) <= m02_couplers_to_periph_intercon_ARLOCK(1 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_periph_intercon_ARPROT(2 downto 0);
  M02_AXI_arqos(3 downto 0) <= m02_couplers_to_periph_intercon_ARQOS(3 downto 0);
  M02_AXI_arsize(2 downto 0) <= m02_couplers_to_periph_intercon_ARSIZE(2 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_periph_intercon_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_periph_intercon_AWADDR(31 downto 0);
  M02_AXI_awburst(1 downto 0) <= m02_couplers_to_periph_intercon_AWBURST(1 downto 0);
  M02_AXI_awcache(3 downto 0) <= m02_couplers_to_periph_intercon_AWCACHE(3 downto 0);
  M02_AXI_awid(1 downto 0) <= m02_couplers_to_periph_intercon_AWID(1 downto 0);
  M02_AXI_awlen(3 downto 0) <= m02_couplers_to_periph_intercon_AWLEN(3 downto 0);
  M02_AXI_awlock(1 downto 0) <= m02_couplers_to_periph_intercon_AWLOCK(1 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_periph_intercon_AWPROT(2 downto 0);
  M02_AXI_awqos(3 downto 0) <= m02_couplers_to_periph_intercon_AWQOS(3 downto 0);
  M02_AXI_awsize(2 downto 0) <= m02_couplers_to_periph_intercon_AWSIZE(2 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_periph_intercon_AWVALID;
  M02_AXI_bready <= m02_couplers_to_periph_intercon_BREADY;
  M02_AXI_rready <= m02_couplers_to_periph_intercon_RREADY;
  M02_AXI_wdata(63 downto 0) <= m02_couplers_to_periph_intercon_WDATA(63 downto 0);
  M02_AXI_wid(1 downto 0) <= m02_couplers_to_periph_intercon_WID(1 downto 0);
  M02_AXI_wlast <= m02_couplers_to_periph_intercon_WLAST;
  M02_AXI_wstrb(7 downto 0) <= m02_couplers_to_periph_intercon_WSTRB(7 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_periph_intercon_WVALID;
  M03_AXI_araddr(15 downto 0) <= m03_couplers_to_periph_intercon_ARADDR(15 downto 0);
  M03_AXI_arburst(1 downto 0) <= m03_couplers_to_periph_intercon_ARBURST(1 downto 0);
  M03_AXI_arcache(3 downto 0) <= m03_couplers_to_periph_intercon_ARCACHE(3 downto 0);
  M03_AXI_arlen(7 downto 0) <= m03_couplers_to_periph_intercon_ARLEN(7 downto 0);
  M03_AXI_arlock(0) <= m03_couplers_to_periph_intercon_ARLOCK(0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_periph_intercon_ARPROT(2 downto 0);
  M03_AXI_arsize(2 downto 0) <= m03_couplers_to_periph_intercon_ARSIZE(2 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_periph_intercon_ARVALID;
  M03_AXI_awaddr(15 downto 0) <= m03_couplers_to_periph_intercon_AWADDR(15 downto 0);
  M03_AXI_awburst(1 downto 0) <= m03_couplers_to_periph_intercon_AWBURST(1 downto 0);
  M03_AXI_awcache(3 downto 0) <= m03_couplers_to_periph_intercon_AWCACHE(3 downto 0);
  M03_AXI_awlen(7 downto 0) <= m03_couplers_to_periph_intercon_AWLEN(7 downto 0);
  M03_AXI_awlock(0) <= m03_couplers_to_periph_intercon_AWLOCK(0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_periph_intercon_AWPROT(2 downto 0);
  M03_AXI_awsize(2 downto 0) <= m03_couplers_to_periph_intercon_AWSIZE(2 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_periph_intercon_AWVALID;
  M03_AXI_bready <= m03_couplers_to_periph_intercon_BREADY;
  M03_AXI_rready <= m03_couplers_to_periph_intercon_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_periph_intercon_WDATA(31 downto 0);
  M03_AXI_wlast <= m03_couplers_to_periph_intercon_WLAST;
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_periph_intercon_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_periph_intercon_WVALID;
  M04_AXI_araddr(15 downto 0) <= m04_couplers_to_periph_intercon_ARADDR(15 downto 0);
  M04_AXI_arburst(1 downto 0) <= m04_couplers_to_periph_intercon_ARBURST(1 downto 0);
  M04_AXI_arcache(3 downto 0) <= m04_couplers_to_periph_intercon_ARCACHE(3 downto 0);
  M04_AXI_arlen(7 downto 0) <= m04_couplers_to_periph_intercon_ARLEN(7 downto 0);
  M04_AXI_arlock(0) <= m04_couplers_to_periph_intercon_ARLOCK(0);
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_periph_intercon_ARPROT(2 downto 0);
  M04_AXI_arsize(2 downto 0) <= m04_couplers_to_periph_intercon_ARSIZE(2 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_periph_intercon_ARVALID;
  M04_AXI_awaddr(15 downto 0) <= m04_couplers_to_periph_intercon_AWADDR(15 downto 0);
  M04_AXI_awburst(1 downto 0) <= m04_couplers_to_periph_intercon_AWBURST(1 downto 0);
  M04_AXI_awcache(3 downto 0) <= m04_couplers_to_periph_intercon_AWCACHE(3 downto 0);
  M04_AXI_awlen(7 downto 0) <= m04_couplers_to_periph_intercon_AWLEN(7 downto 0);
  M04_AXI_awlock(0) <= m04_couplers_to_periph_intercon_AWLOCK(0);
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_periph_intercon_AWPROT(2 downto 0);
  M04_AXI_awsize(2 downto 0) <= m04_couplers_to_periph_intercon_AWSIZE(2 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_periph_intercon_AWVALID;
  M04_AXI_bready <= m04_couplers_to_periph_intercon_BREADY;
  M04_AXI_rready <= m04_couplers_to_periph_intercon_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_periph_intercon_WDATA(31 downto 0);
  M04_AXI_wlast <= m04_couplers_to_periph_intercon_WLAST;
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_periph_intercon_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_periph_intercon_WVALID;
  M05_AXI_araddr(15 downto 0) <= m05_couplers_to_periph_intercon_ARADDR(15 downto 0);
  M05_AXI_arburst(1 downto 0) <= m05_couplers_to_periph_intercon_ARBURST(1 downto 0);
  M05_AXI_arcache(3 downto 0) <= m05_couplers_to_periph_intercon_ARCACHE(3 downto 0);
  M05_AXI_arlen(7 downto 0) <= m05_couplers_to_periph_intercon_ARLEN(7 downto 0);
  M05_AXI_arlock <= m05_couplers_to_periph_intercon_ARLOCK;
  M05_AXI_arprot(2 downto 0) <= m05_couplers_to_periph_intercon_ARPROT(2 downto 0);
  M05_AXI_arsize(2 downto 0) <= m05_couplers_to_periph_intercon_ARSIZE(2 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_periph_intercon_ARVALID;
  M05_AXI_awaddr(15 downto 0) <= m05_couplers_to_periph_intercon_AWADDR(15 downto 0);
  M05_AXI_awburst(1 downto 0) <= m05_couplers_to_periph_intercon_AWBURST(1 downto 0);
  M05_AXI_awcache(3 downto 0) <= m05_couplers_to_periph_intercon_AWCACHE(3 downto 0);
  M05_AXI_awlen(7 downto 0) <= m05_couplers_to_periph_intercon_AWLEN(7 downto 0);
  M05_AXI_awlock <= m05_couplers_to_periph_intercon_AWLOCK;
  M05_AXI_awprot(2 downto 0) <= m05_couplers_to_periph_intercon_AWPROT(2 downto 0);
  M05_AXI_awsize(2 downto 0) <= m05_couplers_to_periph_intercon_AWSIZE(2 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_periph_intercon_AWVALID;
  M05_AXI_bready <= m05_couplers_to_periph_intercon_BREADY;
  M05_AXI_rready <= m05_couplers_to_periph_intercon_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_periph_intercon_WDATA(31 downto 0);
  M05_AXI_wlast <= m05_couplers_to_periph_intercon_WLAST;
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_periph_intercon_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_periph_intercon_WVALID;
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_periph_intercon_ARADDR(31 downto 0);
  M06_AXI_arprot(2 downto 0) <= m06_couplers_to_periph_intercon_ARPROT(2 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_periph_intercon_ARVALID;
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_periph_intercon_AWADDR(31 downto 0);
  M06_AXI_awprot(2 downto 0) <= m06_couplers_to_periph_intercon_AWPROT(2 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_periph_intercon_AWVALID;
  M06_AXI_bready <= m06_couplers_to_periph_intercon_BREADY;
  M06_AXI_rready <= m06_couplers_to_periph_intercon_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_periph_intercon_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_periph_intercon_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_periph_intercon_WVALID;
  M07_AXI_araddr(31 downto 0) <= m07_couplers_to_periph_intercon_ARADDR(31 downto 0);
  M07_AXI_arburst(1 downto 0) <= m07_couplers_to_periph_intercon_ARBURST(1 downto 0);
  M07_AXI_arcache(3 downto 0) <= m07_couplers_to_periph_intercon_ARCACHE(3 downto 0);
  M07_AXI_arlen(7 downto 0) <= m07_couplers_to_periph_intercon_ARLEN(7 downto 0);
  M07_AXI_arlock(0) <= m07_couplers_to_periph_intercon_ARLOCK(0);
  M07_AXI_arprot(2 downto 0) <= m07_couplers_to_periph_intercon_ARPROT(2 downto 0);
  M07_AXI_arqos(3 downto 0) <= m07_couplers_to_periph_intercon_ARQOS(3 downto 0);
  M07_AXI_arregion(3 downto 0) <= m07_couplers_to_periph_intercon_ARREGION(3 downto 0);
  M07_AXI_arsize(2 downto 0) <= m07_couplers_to_periph_intercon_ARSIZE(2 downto 0);
  M07_AXI_arvalid <= m07_couplers_to_periph_intercon_ARVALID;
  M07_AXI_awaddr(31 downto 0) <= m07_couplers_to_periph_intercon_AWADDR(31 downto 0);
  M07_AXI_awburst(1 downto 0) <= m07_couplers_to_periph_intercon_AWBURST(1 downto 0);
  M07_AXI_awcache(3 downto 0) <= m07_couplers_to_periph_intercon_AWCACHE(3 downto 0);
  M07_AXI_awlen(7 downto 0) <= m07_couplers_to_periph_intercon_AWLEN(7 downto 0);
  M07_AXI_awlock(0) <= m07_couplers_to_periph_intercon_AWLOCK(0);
  M07_AXI_awprot(2 downto 0) <= m07_couplers_to_periph_intercon_AWPROT(2 downto 0);
  M07_AXI_awqos(3 downto 0) <= m07_couplers_to_periph_intercon_AWQOS(3 downto 0);
  M07_AXI_awregion(3 downto 0) <= m07_couplers_to_periph_intercon_AWREGION(3 downto 0);
  M07_AXI_awsize(2 downto 0) <= m07_couplers_to_periph_intercon_AWSIZE(2 downto 0);
  M07_AXI_awvalid <= m07_couplers_to_periph_intercon_AWVALID;
  M07_AXI_bready <= m07_couplers_to_periph_intercon_BREADY;
  M07_AXI_rready <= m07_couplers_to_periph_intercon_RREADY;
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_periph_intercon_WDATA(31 downto 0);
  M07_AXI_wlast <= m07_couplers_to_periph_intercon_WLAST;
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_periph_intercon_WSTRB(3 downto 0);
  M07_AXI_wvalid <= m07_couplers_to_periph_intercon_WVALID;
  M08_AXI_araddr(31 downto 0) <= m08_couplers_to_periph_intercon_ARADDR(31 downto 0);
  M08_AXI_arprot(2 downto 0) <= m08_couplers_to_periph_intercon_ARPROT(2 downto 0);
  M08_AXI_arvalid <= m08_couplers_to_periph_intercon_ARVALID;
  M08_AXI_awaddr(31 downto 0) <= m08_couplers_to_periph_intercon_AWADDR(31 downto 0);
  M08_AXI_awprot(2 downto 0) <= m08_couplers_to_periph_intercon_AWPROT(2 downto 0);
  M08_AXI_awvalid <= m08_couplers_to_periph_intercon_AWVALID;
  M08_AXI_bready <= m08_couplers_to_periph_intercon_BREADY;
  M08_AXI_rready <= m08_couplers_to_periph_intercon_RREADY;
  M08_AXI_wdata(31 downto 0) <= m08_couplers_to_periph_intercon_WDATA(31 downto 0);
  M08_AXI_wstrb(3 downto 0) <= m08_couplers_to_periph_intercon_WSTRB(3 downto 0);
  M08_AXI_wvalid <= m08_couplers_to_periph_intercon_WVALID;
  S00_AXI_arready <= periph_intercon_to_s00_couplers_ARREADY;
  S00_AXI_awready <= periph_intercon_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= periph_intercon_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= periph_intercon_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= periph_intercon_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rlast <= periph_intercon_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= periph_intercon_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= periph_intercon_to_s00_couplers_RVALID;
  S00_AXI_wready <= periph_intercon_to_s00_couplers_WREADY;
  S01_AXI_arready <= periph_intercon_to_s01_couplers_ARREADY;
  S01_AXI_awready <= periph_intercon_to_s01_couplers_AWREADY;
  S01_AXI_bid(11 downto 0) <= periph_intercon_to_s01_couplers_BID(11 downto 0);
  S01_AXI_bresp(1 downto 0) <= periph_intercon_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid <= periph_intercon_to_s01_couplers_BVALID;
  S01_AXI_rdata(31 downto 0) <= periph_intercon_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rid(11 downto 0) <= periph_intercon_to_s01_couplers_RID(11 downto 0);
  S01_AXI_rlast <= periph_intercon_to_s01_couplers_RLAST;
  S01_AXI_rresp(1 downto 0) <= periph_intercon_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= periph_intercon_to_s01_couplers_RVALID;
  S01_AXI_wready <= periph_intercon_to_s01_couplers_WREADY;
  S02_AXI_arready <= periph_intercon_to_s02_couplers_ARREADY;
  S02_AXI_awready <= periph_intercon_to_s02_couplers_AWREADY;
  S02_AXI_bid(0) <= periph_intercon_to_s02_couplers_BID(0);
  S02_AXI_bresp(1 downto 0) <= periph_intercon_to_s02_couplers_BRESP(1 downto 0);
  S02_AXI_bvalid <= periph_intercon_to_s02_couplers_BVALID;
  S02_AXI_rdata(31 downto 0) <= periph_intercon_to_s02_couplers_RDATA(31 downto 0);
  S02_AXI_rid(0) <= periph_intercon_to_s02_couplers_RID(0);
  S02_AXI_rlast <= periph_intercon_to_s02_couplers_RLAST;
  S02_AXI_rresp(1 downto 0) <= periph_intercon_to_s02_couplers_RRESP(1 downto 0);
  S02_AXI_rvalid <= periph_intercon_to_s02_couplers_RVALID;
  S02_AXI_wready <= periph_intercon_to_s02_couplers_WREADY;
  m00_couplers_to_periph_intercon_ARREADY <= M00_AXI_arready;
  m00_couplers_to_periph_intercon_AWREADY <= M00_AXI_awready;
  m00_couplers_to_periph_intercon_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_periph_intercon_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_periph_intercon_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_periph_intercon_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_periph_intercon_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_periph_intercon_WREADY <= M00_AXI_wready;
  m01_couplers_to_periph_intercon_ARREADY <= M01_AXI_arready;
  m01_couplers_to_periph_intercon_AWREADY <= M01_AXI_awready;
  m01_couplers_to_periph_intercon_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_periph_intercon_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_periph_intercon_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_periph_intercon_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_periph_intercon_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_periph_intercon_WREADY <= M01_AXI_wready;
  m02_couplers_to_periph_intercon_ARREADY <= M02_AXI_arready;
  m02_couplers_to_periph_intercon_AWREADY <= M02_AXI_awready;
  m02_couplers_to_periph_intercon_BID(5 downto 0) <= M02_AXI_bid(5 downto 0);
  m02_couplers_to_periph_intercon_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_periph_intercon_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_periph_intercon_RDATA(63 downto 0) <= M02_AXI_rdata(63 downto 0);
  m02_couplers_to_periph_intercon_RID(5 downto 0) <= M02_AXI_rid(5 downto 0);
  m02_couplers_to_periph_intercon_RLAST <= M02_AXI_rlast;
  m02_couplers_to_periph_intercon_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_periph_intercon_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_periph_intercon_WREADY <= M02_AXI_wready;
  m03_couplers_to_periph_intercon_ARREADY <= M03_AXI_arready;
  m03_couplers_to_periph_intercon_AWREADY <= M03_AXI_awready;
  m03_couplers_to_periph_intercon_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_periph_intercon_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_periph_intercon_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_periph_intercon_RLAST <= M03_AXI_rlast;
  m03_couplers_to_periph_intercon_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_periph_intercon_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_periph_intercon_WREADY <= M03_AXI_wready;
  m04_couplers_to_periph_intercon_ARREADY <= M04_AXI_arready;
  m04_couplers_to_periph_intercon_AWREADY <= M04_AXI_awready;
  m04_couplers_to_periph_intercon_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_periph_intercon_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_periph_intercon_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_periph_intercon_RLAST <= M04_AXI_rlast;
  m04_couplers_to_periph_intercon_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_periph_intercon_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_periph_intercon_WREADY <= M04_AXI_wready;
  m05_couplers_to_periph_intercon_ARREADY <= M05_AXI_arready;
  m05_couplers_to_periph_intercon_AWREADY <= M05_AXI_awready;
  m05_couplers_to_periph_intercon_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_periph_intercon_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_periph_intercon_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_periph_intercon_RLAST <= M05_AXI_rlast;
  m05_couplers_to_periph_intercon_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_periph_intercon_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_periph_intercon_WREADY <= M05_AXI_wready;
  m06_couplers_to_periph_intercon_ARREADY <= M06_AXI_arready;
  m06_couplers_to_periph_intercon_AWREADY <= M06_AXI_awready;
  m06_couplers_to_periph_intercon_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_periph_intercon_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_periph_intercon_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_periph_intercon_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_periph_intercon_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_periph_intercon_WREADY <= M06_AXI_wready;
  m07_couplers_to_periph_intercon_ARREADY <= M07_AXI_arready;
  m07_couplers_to_periph_intercon_AWREADY <= M07_AXI_awready;
  m07_couplers_to_periph_intercon_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_periph_intercon_BVALID <= M07_AXI_bvalid;
  m07_couplers_to_periph_intercon_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_periph_intercon_RLAST <= M07_AXI_rlast;
  m07_couplers_to_periph_intercon_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_periph_intercon_RVALID <= M07_AXI_rvalid;
  m07_couplers_to_periph_intercon_WREADY <= M07_AXI_wready;
  m08_couplers_to_periph_intercon_ARREADY <= M08_AXI_arready;
  m08_couplers_to_periph_intercon_AWREADY <= M08_AXI_awready;
  m08_couplers_to_periph_intercon_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_periph_intercon_BVALID <= M08_AXI_bvalid;
  m08_couplers_to_periph_intercon_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_periph_intercon_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_periph_intercon_RVALID <= M08_AXI_rvalid;
  m08_couplers_to_periph_intercon_WREADY <= M08_AXI_wready;
  periph_intercon_ACLK_net <= ACLK;
  periph_intercon_ARESETN_net <= ARESETN;
  periph_intercon_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  periph_intercon_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  periph_intercon_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  periph_intercon_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  periph_intercon_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  periph_intercon_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  periph_intercon_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  periph_intercon_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  periph_intercon_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  periph_intercon_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  periph_intercon_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  periph_intercon_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  periph_intercon_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  periph_intercon_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  periph_intercon_to_s00_couplers_BREADY <= S00_AXI_bready;
  periph_intercon_to_s00_couplers_RREADY <= S00_AXI_rready;
  periph_intercon_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  periph_intercon_to_s00_couplers_WLAST <= S00_AXI_wlast;
  periph_intercon_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  periph_intercon_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  periph_intercon_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  periph_intercon_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  periph_intercon_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  periph_intercon_to_s01_couplers_ARID(11 downto 0) <= S01_AXI_arid(11 downto 0);
  periph_intercon_to_s01_couplers_ARLEN(3 downto 0) <= S01_AXI_arlen(3 downto 0);
  periph_intercon_to_s01_couplers_ARLOCK(1 downto 0) <= S01_AXI_arlock(1 downto 0);
  periph_intercon_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  periph_intercon_to_s01_couplers_ARQOS(3 downto 0) <= S01_AXI_arqos(3 downto 0);
  periph_intercon_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  periph_intercon_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  periph_intercon_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  periph_intercon_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  periph_intercon_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  periph_intercon_to_s01_couplers_AWID(11 downto 0) <= S01_AXI_awid(11 downto 0);
  periph_intercon_to_s01_couplers_AWLEN(3 downto 0) <= S01_AXI_awlen(3 downto 0);
  periph_intercon_to_s01_couplers_AWLOCK(1 downto 0) <= S01_AXI_awlock(1 downto 0);
  periph_intercon_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  periph_intercon_to_s01_couplers_AWQOS(3 downto 0) <= S01_AXI_awqos(3 downto 0);
  periph_intercon_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  periph_intercon_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  periph_intercon_to_s01_couplers_BREADY <= S01_AXI_bready;
  periph_intercon_to_s01_couplers_RREADY <= S01_AXI_rready;
  periph_intercon_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  periph_intercon_to_s01_couplers_WID(11 downto 0) <= S01_AXI_wid(11 downto 0);
  periph_intercon_to_s01_couplers_WLAST <= S01_AXI_wlast;
  periph_intercon_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  periph_intercon_to_s01_couplers_WVALID <= S01_AXI_wvalid;
  periph_intercon_to_s02_couplers_ARADDR(31 downto 0) <= S02_AXI_araddr(31 downto 0);
  periph_intercon_to_s02_couplers_ARBURST(1 downto 0) <= S02_AXI_arburst(1 downto 0);
  periph_intercon_to_s02_couplers_ARCACHE(3 downto 0) <= S02_AXI_arcache(3 downto 0);
  periph_intercon_to_s02_couplers_ARID(0) <= S02_AXI_arid(0);
  periph_intercon_to_s02_couplers_ARLEN(7 downto 0) <= S02_AXI_arlen(7 downto 0);
  periph_intercon_to_s02_couplers_ARLOCK(0) <= S02_AXI_arlock(0);
  periph_intercon_to_s02_couplers_ARPROT(2 downto 0) <= S02_AXI_arprot(2 downto 0);
  periph_intercon_to_s02_couplers_ARQOS(3 downto 0) <= S02_AXI_arqos(3 downto 0);
  periph_intercon_to_s02_couplers_ARSIZE(2 downto 0) <= S02_AXI_arsize(2 downto 0);
  periph_intercon_to_s02_couplers_ARVALID <= S02_AXI_arvalid;
  periph_intercon_to_s02_couplers_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  periph_intercon_to_s02_couplers_AWBURST(1 downto 0) <= S02_AXI_awburst(1 downto 0);
  periph_intercon_to_s02_couplers_AWCACHE(3 downto 0) <= S02_AXI_awcache(3 downto 0);
  periph_intercon_to_s02_couplers_AWID(0) <= S02_AXI_awid(0);
  periph_intercon_to_s02_couplers_AWLEN(7 downto 0) <= S02_AXI_awlen(7 downto 0);
  periph_intercon_to_s02_couplers_AWLOCK(0) <= S02_AXI_awlock(0);
  periph_intercon_to_s02_couplers_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  periph_intercon_to_s02_couplers_AWQOS(3 downto 0) <= S02_AXI_awqos(3 downto 0);
  periph_intercon_to_s02_couplers_AWSIZE(2 downto 0) <= S02_AXI_awsize(2 downto 0);
  periph_intercon_to_s02_couplers_AWVALID <= S02_AXI_awvalid;
  periph_intercon_to_s02_couplers_BREADY <= S02_AXI_bready;
  periph_intercon_to_s02_couplers_RREADY <= S02_AXI_rready;
  periph_intercon_to_s02_couplers_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  periph_intercon_to_s02_couplers_WLAST <= S02_AXI_wlast;
  periph_intercon_to_s02_couplers_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  periph_intercon_to_s02_couplers_WVALID <= S02_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_1L1TY2F
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_periph_intercon_ARADDR(31 downto 0),
      M_AXI_arready => m00_couplers_to_periph_intercon_ARREADY,
      M_AXI_arvalid => m00_couplers_to_periph_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_periph_intercon_AWADDR(31 downto 0),
      M_AXI_awready => m00_couplers_to_periph_intercon_AWREADY,
      M_AXI_awvalid => m00_couplers_to_periph_intercon_AWVALID,
      M_AXI_bready => m00_couplers_to_periph_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_periph_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_periph_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_periph_intercon_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_periph_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_periph_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_periph_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_periph_intercon_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_periph_intercon_WREADY,
      M_AXI_wvalid => m00_couplers_to_periph_intercon_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(1 downto 0) => xbar_to_m00_couplers_ARID(1 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(1 downto 0) => xbar_to_m00_couplers_AWID(1 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(1 downto 0) => xbar_to_m00_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m00_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_198UARA
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_periph_intercon_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_periph_intercon_ARREADY,
      M_AXI_arvalid => m01_couplers_to_periph_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_periph_intercon_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_periph_intercon_AWREADY,
      M_AXI_awvalid => m01_couplers_to_periph_intercon_AWVALID,
      M_AXI_bready => m01_couplers_to_periph_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_periph_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_periph_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_periph_intercon_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_periph_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_periph_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_periph_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_periph_intercon_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_periph_intercon_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_periph_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_periph_intercon_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arid(1 downto 0) => xbar_to_m01_couplers_ARID(3 downto 2),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock(0) => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arqos(3 downto 0) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awid(1 downto 0) => xbar_to_m01_couplers_AWID(3 downto 2),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock(0) => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awqos(3 downto 0) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bid(1 downto 0) => xbar_to_m01_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m01_couplers_RDATA(63 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m01_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m01_couplers_WDATA(127 downto 64),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m01_couplers_WSTRB(15 downto 8),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_4L0OC5
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_periph_intercon_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m02_couplers_to_periph_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m02_couplers_to_periph_intercon_ARCACHE(3 downto 0),
      M_AXI_arid(1 downto 0) => m02_couplers_to_periph_intercon_ARID(1 downto 0),
      M_AXI_arlen(3 downto 0) => m02_couplers_to_periph_intercon_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m02_couplers_to_periph_intercon_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_periph_intercon_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m02_couplers_to_periph_intercon_ARQOS(3 downto 0),
      M_AXI_arready => m02_couplers_to_periph_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => m02_couplers_to_periph_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => m02_couplers_to_periph_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_periph_intercon_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m02_couplers_to_periph_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m02_couplers_to_periph_intercon_AWCACHE(3 downto 0),
      M_AXI_awid(1 downto 0) => m02_couplers_to_periph_intercon_AWID(1 downto 0),
      M_AXI_awlen(3 downto 0) => m02_couplers_to_periph_intercon_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m02_couplers_to_periph_intercon_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_periph_intercon_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m02_couplers_to_periph_intercon_AWQOS(3 downto 0),
      M_AXI_awready => m02_couplers_to_periph_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => m02_couplers_to_periph_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => m02_couplers_to_periph_intercon_AWVALID,
      M_AXI_bid(5 downto 0) => m02_couplers_to_periph_intercon_BID(5 downto 0),
      M_AXI_bready => m02_couplers_to_periph_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_periph_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_periph_intercon_BVALID,
      M_AXI_rdata(63 downto 0) => m02_couplers_to_periph_intercon_RDATA(63 downto 0),
      M_AXI_rid(5 downto 0) => m02_couplers_to_periph_intercon_RID(5 downto 0),
      M_AXI_rlast => m02_couplers_to_periph_intercon_RLAST,
      M_AXI_rready => m02_couplers_to_periph_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_periph_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_periph_intercon_RVALID,
      M_AXI_wdata(63 downto 0) => m02_couplers_to_periph_intercon_WDATA(63 downto 0),
      M_AXI_wid(1 downto 0) => m02_couplers_to_periph_intercon_WID(1 downto 0),
      M_AXI_wlast => m02_couplers_to_periph_intercon_WLAST,
      M_AXI_wready => m02_couplers_to_periph_intercon_WREADY,
      M_AXI_wstrb(7 downto 0) => m02_couplers_to_periph_intercon_WSTRB(7 downto 0),
      M_AXI_wvalid => m02_couplers_to_periph_intercon_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arburst(1 downto 0) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      S_AXI_arcache(3 downto 0) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      S_AXI_arid(1 downto 0) => xbar_to_m02_couplers_ARID(5 downto 4),
      S_AXI_arlen(7 downto 0) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      S_AXI_arlock(0) => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arqos(3 downto 0) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      S_AXI_arsize(2 downto 0) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awburst(1 downto 0) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      S_AXI_awcache(3 downto 0) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      S_AXI_awid(1 downto 0) => xbar_to_m02_couplers_AWID(5 downto 4),
      S_AXI_awlen(7 downto 0) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      S_AXI_awlock(0) => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awqos(3 downto 0) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      S_AXI_awsize(2 downto 0) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bid(1 downto 0) => xbar_to_m02_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m02_couplers_RDATA(63 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m02_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m02_couplers_RLAST,
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m02_couplers_WDATA(191 downto 128),
      S_AXI_wlast => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m02_couplers_WSTRB(23 downto 16),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_YYXZEC
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(15 downto 0) => m03_couplers_to_periph_intercon_ARADDR(15 downto 0),
      M_AXI_arburst(1 downto 0) => m03_couplers_to_periph_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m03_couplers_to_periph_intercon_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m03_couplers_to_periph_intercon_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m03_couplers_to_periph_intercon_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_periph_intercon_ARPROT(2 downto 0),
      M_AXI_arready => m03_couplers_to_periph_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => m03_couplers_to_periph_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => m03_couplers_to_periph_intercon_ARVALID,
      M_AXI_awaddr(15 downto 0) => m03_couplers_to_periph_intercon_AWADDR(15 downto 0),
      M_AXI_awburst(1 downto 0) => m03_couplers_to_periph_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m03_couplers_to_periph_intercon_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m03_couplers_to_periph_intercon_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m03_couplers_to_periph_intercon_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_periph_intercon_AWPROT(2 downto 0),
      M_AXI_awready => m03_couplers_to_periph_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => m03_couplers_to_periph_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => m03_couplers_to_periph_intercon_AWVALID,
      M_AXI_bready => m03_couplers_to_periph_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_periph_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_periph_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_periph_intercon_RDATA(31 downto 0),
      M_AXI_rlast => m03_couplers_to_periph_intercon_RLAST,
      M_AXI_rready => m03_couplers_to_periph_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_periph_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_periph_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_periph_intercon_WDATA(31 downto 0),
      M_AXI_wlast => m03_couplers_to_periph_intercon_WLAST,
      M_AXI_wready => m03_couplers_to_periph_intercon_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_periph_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_periph_intercon_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arburst(1 downto 0) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      S_AXI_arcache(3 downto 0) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      S_AXI_arid(1 downto 0) => xbar_to_m03_couplers_ARID(7 downto 6),
      S_AXI_arlen(7 downto 0) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      S_AXI_arlock(0) => xbar_to_m03_couplers_ARLOCK(3),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arqos(3 downto 0) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      S_AXI_arsize(2 downto 0) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awburst(1 downto 0) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      S_AXI_awcache(3 downto 0) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      S_AXI_awid(1 downto 0) => xbar_to_m03_couplers_AWID(7 downto 6),
      S_AXI_awlen(7 downto 0) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      S_AXI_awlock(0) => xbar_to_m03_couplers_AWLOCK(3),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awqos(3 downto 0) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      S_AXI_awsize(2 downto 0) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bid(1 downto 0) => xbar_to_m03_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m03_couplers_RDATA(63 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m03_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m03_couplers_RLAST,
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m03_couplers_WDATA(255 downto 192),
      S_AXI_wlast => xbar_to_m03_couplers_WLAST(3),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m03_couplers_WSTRB(31 downto 24),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_1BYNCOI
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(15 downto 0) => m04_couplers_to_periph_intercon_ARADDR(15 downto 0),
      M_AXI_arburst(1 downto 0) => m04_couplers_to_periph_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m04_couplers_to_periph_intercon_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m04_couplers_to_periph_intercon_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m04_couplers_to_periph_intercon_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m04_couplers_to_periph_intercon_ARPROT(2 downto 0),
      M_AXI_arready => m04_couplers_to_periph_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => m04_couplers_to_periph_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => m04_couplers_to_periph_intercon_ARVALID,
      M_AXI_awaddr(15 downto 0) => m04_couplers_to_periph_intercon_AWADDR(15 downto 0),
      M_AXI_awburst(1 downto 0) => m04_couplers_to_periph_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m04_couplers_to_periph_intercon_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m04_couplers_to_periph_intercon_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m04_couplers_to_periph_intercon_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m04_couplers_to_periph_intercon_AWPROT(2 downto 0),
      M_AXI_awready => m04_couplers_to_periph_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => m04_couplers_to_periph_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => m04_couplers_to_periph_intercon_AWVALID,
      M_AXI_bready => m04_couplers_to_periph_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_periph_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_periph_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_periph_intercon_RDATA(31 downto 0),
      M_AXI_rlast => m04_couplers_to_periph_intercon_RLAST,
      M_AXI_rready => m04_couplers_to_periph_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_periph_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_periph_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_periph_intercon_WDATA(31 downto 0),
      M_AXI_wlast => m04_couplers_to_periph_intercon_WLAST,
      M_AXI_wready => m04_couplers_to_periph_intercon_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_periph_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_periph_intercon_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arburst(1 downto 0) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      S_AXI_arcache(3 downto 0) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      S_AXI_arid(1 downto 0) => xbar_to_m04_couplers_ARID(9 downto 8),
      S_AXI_arlen(7 downto 0) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      S_AXI_arlock(0) => xbar_to_m04_couplers_ARLOCK(4),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arqos(3 downto 0) => xbar_to_m04_couplers_ARQOS(19 downto 16),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m04_couplers_ARREGION(19 downto 16),
      S_AXI_arsize(2 downto 0) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awburst(1 downto 0) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      S_AXI_awcache(3 downto 0) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      S_AXI_awid(1 downto 0) => xbar_to_m04_couplers_AWID(9 downto 8),
      S_AXI_awlen(7 downto 0) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      S_AXI_awlock(0) => xbar_to_m04_couplers_AWLOCK(4),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awqos(3 downto 0) => xbar_to_m04_couplers_AWQOS(19 downto 16),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m04_couplers_AWREGION(19 downto 16),
      S_AXI_awsize(2 downto 0) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bid(1 downto 0) => xbar_to_m04_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m04_couplers_RDATA(63 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m04_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m04_couplers_RLAST,
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m04_couplers_WDATA(319 downto 256),
      S_AXI_wlast => xbar_to_m04_couplers_WLAST(4),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m04_couplers_WSTRB(39 downto 32),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1HWXN03
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(15 downto 0) => m05_couplers_to_periph_intercon_ARADDR(15 downto 0),
      M_AXI_arburst(1 downto 0) => m05_couplers_to_periph_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m05_couplers_to_periph_intercon_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m05_couplers_to_periph_intercon_ARLEN(7 downto 0),
      M_AXI_arlock => m05_couplers_to_periph_intercon_ARLOCK,
      M_AXI_arprot(2 downto 0) => m05_couplers_to_periph_intercon_ARPROT(2 downto 0),
      M_AXI_arready => m05_couplers_to_periph_intercon_ARREADY,
      M_AXI_arsize(2 downto 0) => m05_couplers_to_periph_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => m05_couplers_to_periph_intercon_ARVALID,
      M_AXI_awaddr(15 downto 0) => m05_couplers_to_periph_intercon_AWADDR(15 downto 0),
      M_AXI_awburst(1 downto 0) => m05_couplers_to_periph_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m05_couplers_to_periph_intercon_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m05_couplers_to_periph_intercon_AWLEN(7 downto 0),
      M_AXI_awlock => m05_couplers_to_periph_intercon_AWLOCK,
      M_AXI_awprot(2 downto 0) => m05_couplers_to_periph_intercon_AWPROT(2 downto 0),
      M_AXI_awready => m05_couplers_to_periph_intercon_AWREADY,
      M_AXI_awsize(2 downto 0) => m05_couplers_to_periph_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => m05_couplers_to_periph_intercon_AWVALID,
      M_AXI_bready => m05_couplers_to_periph_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_periph_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_periph_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_periph_intercon_RDATA(31 downto 0),
      M_AXI_rlast => m05_couplers_to_periph_intercon_RLAST,
      M_AXI_rready => m05_couplers_to_periph_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_periph_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_periph_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_periph_intercon_WDATA(31 downto 0),
      M_AXI_wlast => m05_couplers_to_periph_intercon_WLAST,
      M_AXI_wready => m05_couplers_to_periph_intercon_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_periph_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_periph_intercon_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arburst(1 downto 0) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      S_AXI_arcache(3 downto 0) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      S_AXI_arid(1 downto 0) => xbar_to_m05_couplers_ARID(11 downto 10),
      S_AXI_arlen(7 downto 0) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      S_AXI_arlock(0) => xbar_to_m05_couplers_ARLOCK(5),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arqos(3 downto 0) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      S_AXI_arsize(2 downto 0) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awburst(1 downto 0) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      S_AXI_awcache(3 downto 0) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      S_AXI_awid(1 downto 0) => xbar_to_m05_couplers_AWID(11 downto 10),
      S_AXI_awlen(7 downto 0) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      S_AXI_awlock(0) => xbar_to_m05_couplers_AWLOCK(5),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awqos(3 downto 0) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      S_AXI_awsize(2 downto 0) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bid(1 downto 0) => xbar_to_m05_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m05_couplers_RDATA(63 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m05_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m05_couplers_RLAST,
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m05_couplers_WDATA(383 downto 320),
      S_AXI_wlast => xbar_to_m05_couplers_WLAST(5),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m05_couplers_WSTRB(47 downto 40),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_VKDO4W
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m06_couplers_to_periph_intercon_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m06_couplers_to_periph_intercon_ARPROT(2 downto 0),
      M_AXI_arready => m06_couplers_to_periph_intercon_ARREADY,
      M_AXI_arvalid => m06_couplers_to_periph_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_periph_intercon_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m06_couplers_to_periph_intercon_AWPROT(2 downto 0),
      M_AXI_awready => m06_couplers_to_periph_intercon_AWREADY,
      M_AXI_awvalid => m06_couplers_to_periph_intercon_AWVALID,
      M_AXI_bready => m06_couplers_to_periph_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_periph_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_periph_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_periph_intercon_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_periph_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_periph_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_periph_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_periph_intercon_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_periph_intercon_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_periph_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_periph_intercon_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arburst(1 downto 0) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      S_AXI_arcache(3 downto 0) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      S_AXI_arid(1 downto 0) => xbar_to_m06_couplers_ARID(13 downto 12),
      S_AXI_arlen(7 downto 0) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      S_AXI_arlock(0) => xbar_to_m06_couplers_ARLOCK(6),
      S_AXI_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      S_AXI_arqos(3 downto 0) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      S_AXI_arsize(2 downto 0) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awburst(1 downto 0) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      S_AXI_awcache(3 downto 0) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      S_AXI_awid(1 downto 0) => xbar_to_m06_couplers_AWID(13 downto 12),
      S_AXI_awlen(7 downto 0) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      S_AXI_awlock(0) => xbar_to_m06_couplers_AWLOCK(6),
      S_AXI_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      S_AXI_awqos(3 downto 0) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      S_AXI_awsize(2 downto 0) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bid(1 downto 0) => xbar_to_m06_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m06_couplers_RDATA(63 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m06_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m06_couplers_RLAST,
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m06_couplers_WDATA(447 downto 384),
      S_AXI_wlast => xbar_to_m06_couplers_WLAST(6),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m06_couplers_WSTRB(55 downto 48),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_8OGT9T
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m07_couplers_to_periph_intercon_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m07_couplers_to_periph_intercon_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m07_couplers_to_periph_intercon_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m07_couplers_to_periph_intercon_ARLEN(7 downto 0),
      M_AXI_arlock(0) => m07_couplers_to_periph_intercon_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => m07_couplers_to_periph_intercon_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m07_couplers_to_periph_intercon_ARQOS(3 downto 0),
      M_AXI_arready => m07_couplers_to_periph_intercon_ARREADY,
      M_AXI_arregion(3 downto 0) => m07_couplers_to_periph_intercon_ARREGION(3 downto 0),
      M_AXI_arsize(2 downto 0) => m07_couplers_to_periph_intercon_ARSIZE(2 downto 0),
      M_AXI_arvalid => m07_couplers_to_periph_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => m07_couplers_to_periph_intercon_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m07_couplers_to_periph_intercon_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m07_couplers_to_periph_intercon_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m07_couplers_to_periph_intercon_AWLEN(7 downto 0),
      M_AXI_awlock(0) => m07_couplers_to_periph_intercon_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => m07_couplers_to_periph_intercon_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m07_couplers_to_periph_intercon_AWQOS(3 downto 0),
      M_AXI_awready => m07_couplers_to_periph_intercon_AWREADY,
      M_AXI_awregion(3 downto 0) => m07_couplers_to_periph_intercon_AWREGION(3 downto 0),
      M_AXI_awsize(2 downto 0) => m07_couplers_to_periph_intercon_AWSIZE(2 downto 0),
      M_AXI_awvalid => m07_couplers_to_periph_intercon_AWVALID,
      M_AXI_bready => m07_couplers_to_periph_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m07_couplers_to_periph_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m07_couplers_to_periph_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => m07_couplers_to_periph_intercon_RDATA(31 downto 0),
      M_AXI_rlast => m07_couplers_to_periph_intercon_RLAST,
      M_AXI_rready => m07_couplers_to_periph_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m07_couplers_to_periph_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m07_couplers_to_periph_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => m07_couplers_to_periph_intercon_WDATA(31 downto 0),
      M_AXI_wlast => m07_couplers_to_periph_intercon_WLAST,
      M_AXI_wready => m07_couplers_to_periph_intercon_WREADY,
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_periph_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid => m07_couplers_to_periph_intercon_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arburst(1 downto 0) => xbar_to_m07_couplers_ARBURST(15 downto 14),
      S_AXI_arcache(3 downto 0) => xbar_to_m07_couplers_ARCACHE(31 downto 28),
      S_AXI_arid(1 downto 0) => xbar_to_m07_couplers_ARID(15 downto 14),
      S_AXI_arlen(7 downto 0) => xbar_to_m07_couplers_ARLEN(63 downto 56),
      S_AXI_arlock(0) => xbar_to_m07_couplers_ARLOCK(7),
      S_AXI_arprot(2 downto 0) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      S_AXI_arqos(3 downto 0) => xbar_to_m07_couplers_ARQOS(31 downto 28),
      S_AXI_arready => xbar_to_m07_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m07_couplers_ARREGION(31 downto 28),
      S_AXI_arsize(2 downto 0) => xbar_to_m07_couplers_ARSIZE(23 downto 21),
      S_AXI_arvalid => xbar_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awburst(1 downto 0) => xbar_to_m07_couplers_AWBURST(15 downto 14),
      S_AXI_awcache(3 downto 0) => xbar_to_m07_couplers_AWCACHE(31 downto 28),
      S_AXI_awid(1 downto 0) => xbar_to_m07_couplers_AWID(15 downto 14),
      S_AXI_awlen(7 downto 0) => xbar_to_m07_couplers_AWLEN(63 downto 56),
      S_AXI_awlock(0) => xbar_to_m07_couplers_AWLOCK(7),
      S_AXI_awprot(2 downto 0) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      S_AXI_awqos(3 downto 0) => xbar_to_m07_couplers_AWQOS(31 downto 28),
      S_AXI_awready => xbar_to_m07_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m07_couplers_AWREGION(31 downto 28),
      S_AXI_awsize(2 downto 0) => xbar_to_m07_couplers_AWSIZE(23 downto 21),
      S_AXI_awvalid => xbar_to_m07_couplers_AWVALID(7),
      S_AXI_bid(1 downto 0) => xbar_to_m07_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => xbar_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m07_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m07_couplers_RDATA(63 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m07_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m07_couplers_RLAST,
      S_AXI_rready => xbar_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => xbar_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m07_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m07_couplers_WDATA(511 downto 448),
      S_AXI_wlast => xbar_to_m07_couplers_WLAST(7),
      S_AXI_wready => xbar_to_m07_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m07_couplers_WSTRB(63 downto 56),
      S_AXI_wvalid => xbar_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_472BZX
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m08_couplers_to_periph_intercon_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m08_couplers_to_periph_intercon_ARPROT(2 downto 0),
      M_AXI_arready => m08_couplers_to_periph_intercon_ARREADY,
      M_AXI_arvalid => m08_couplers_to_periph_intercon_ARVALID,
      M_AXI_awaddr(31 downto 0) => m08_couplers_to_periph_intercon_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m08_couplers_to_periph_intercon_AWPROT(2 downto 0),
      M_AXI_awready => m08_couplers_to_periph_intercon_AWREADY,
      M_AXI_awvalid => m08_couplers_to_periph_intercon_AWVALID,
      M_AXI_bready => m08_couplers_to_periph_intercon_BREADY,
      M_AXI_bresp(1 downto 0) => m08_couplers_to_periph_intercon_BRESP(1 downto 0),
      M_AXI_bvalid => m08_couplers_to_periph_intercon_BVALID,
      M_AXI_rdata(31 downto 0) => m08_couplers_to_periph_intercon_RDATA(31 downto 0),
      M_AXI_rready => m08_couplers_to_periph_intercon_RREADY,
      M_AXI_rresp(1 downto 0) => m08_couplers_to_periph_intercon_RRESP(1 downto 0),
      M_AXI_rvalid => m08_couplers_to_periph_intercon_RVALID,
      M_AXI_wdata(31 downto 0) => m08_couplers_to_periph_intercon_WDATA(31 downto 0),
      M_AXI_wready => m08_couplers_to_periph_intercon_WREADY,
      M_AXI_wstrb(3 downto 0) => m08_couplers_to_periph_intercon_WSTRB(3 downto 0),
      M_AXI_wvalid => m08_couplers_to_periph_intercon_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      S_AXI_arburst(1 downto 0) => xbar_to_m08_couplers_ARBURST(17 downto 16),
      S_AXI_arcache(3 downto 0) => xbar_to_m08_couplers_ARCACHE(35 downto 32),
      S_AXI_arid(1 downto 0) => xbar_to_m08_couplers_ARID(17 downto 16),
      S_AXI_arlen(7 downto 0) => xbar_to_m08_couplers_ARLEN(71 downto 64),
      S_AXI_arlock(0) => xbar_to_m08_couplers_ARLOCK(8),
      S_AXI_arprot(2 downto 0) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      S_AXI_arqos(3 downto 0) => xbar_to_m08_couplers_ARQOS(35 downto 32),
      S_AXI_arready => xbar_to_m08_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m08_couplers_ARREGION(35 downto 32),
      S_AXI_arsize(2 downto 0) => xbar_to_m08_couplers_ARSIZE(26 downto 24),
      S_AXI_arvalid => xbar_to_m08_couplers_ARVALID(8),
      S_AXI_awaddr(31 downto 0) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      S_AXI_awburst(1 downto 0) => xbar_to_m08_couplers_AWBURST(17 downto 16),
      S_AXI_awcache(3 downto 0) => xbar_to_m08_couplers_AWCACHE(35 downto 32),
      S_AXI_awid(1 downto 0) => xbar_to_m08_couplers_AWID(17 downto 16),
      S_AXI_awlen(7 downto 0) => xbar_to_m08_couplers_AWLEN(71 downto 64),
      S_AXI_awlock(0) => xbar_to_m08_couplers_AWLOCK(8),
      S_AXI_awprot(2 downto 0) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      S_AXI_awqos(3 downto 0) => xbar_to_m08_couplers_AWQOS(35 downto 32),
      S_AXI_awready => xbar_to_m08_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m08_couplers_AWREGION(35 downto 32),
      S_AXI_awsize(2 downto 0) => xbar_to_m08_couplers_AWSIZE(26 downto 24),
      S_AXI_awvalid => xbar_to_m08_couplers_AWVALID(8),
      S_AXI_bid(1 downto 0) => xbar_to_m08_couplers_BID(1 downto 0),
      S_AXI_bready => xbar_to_m08_couplers_BREADY(8),
      S_AXI_bresp(1 downto 0) => xbar_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m08_couplers_BVALID,
      S_AXI_rdata(63 downto 0) => xbar_to_m08_couplers_RDATA(63 downto 0),
      S_AXI_rid(1 downto 0) => xbar_to_m08_couplers_RID(1 downto 0),
      S_AXI_rlast => xbar_to_m08_couplers_RLAST,
      S_AXI_rready => xbar_to_m08_couplers_RREADY(8),
      S_AXI_rresp(1 downto 0) => xbar_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m08_couplers_RVALID,
      S_AXI_wdata(63 downto 0) => xbar_to_m08_couplers_WDATA(575 downto 512),
      S_AXI_wlast => xbar_to_m08_couplers_WLAST(8),
      S_AXI_wready => xbar_to_m08_couplers_WREADY,
      S_AXI_wstrb(7 downto 0) => xbar_to_m08_couplers_WSTRB(71 downto 64),
      S_AXI_wvalid => xbar_to_m08_couplers_WVALID(8)
    );
s00_couplers: entity work.s00_couplers_imp_WFS39L
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(63 downto 0) => s00_couplers_to_xbar_RDATA(63 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(63 downto 0) => s00_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(7 downto 0) => s00_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => periph_intercon_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => periph_intercon_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => periph_intercon_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => periph_intercon_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => periph_intercon_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => periph_intercon_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => periph_intercon_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => periph_intercon_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => periph_intercon_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => periph_intercon_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => periph_intercon_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => periph_intercon_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => periph_intercon_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => periph_intercon_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => periph_intercon_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => periph_intercon_to_s00_couplers_AWVALID,
      S_AXI_bready => periph_intercon_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => periph_intercon_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => periph_intercon_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => periph_intercon_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => periph_intercon_to_s00_couplers_RLAST,
      S_AXI_rready => periph_intercon_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => periph_intercon_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => periph_intercon_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => periph_intercon_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => periph_intercon_to_s00_couplers_WLAST,
      S_AXI_wready => periph_intercon_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => periph_intercon_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => periph_intercon_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_7BN9AG
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s01_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(63 downto 0) => s01_couplers_to_xbar_RDATA(127 downto 64),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(63 downto 0) => s01_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast => s01_couplers_to_xbar_WLAST,
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(7 downto 0) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => periph_intercon_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => periph_intercon_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => periph_intercon_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => periph_intercon_to_s01_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => periph_intercon_to_s01_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => periph_intercon_to_s01_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => periph_intercon_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => periph_intercon_to_s01_couplers_ARQOS(3 downto 0),
      S_AXI_arready => periph_intercon_to_s01_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => periph_intercon_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => periph_intercon_to_s01_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => periph_intercon_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => periph_intercon_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => periph_intercon_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => periph_intercon_to_s01_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => periph_intercon_to_s01_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => periph_intercon_to_s01_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => periph_intercon_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => periph_intercon_to_s01_couplers_AWQOS(3 downto 0),
      S_AXI_awready => periph_intercon_to_s01_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => periph_intercon_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => periph_intercon_to_s01_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => periph_intercon_to_s01_couplers_BID(11 downto 0),
      S_AXI_bready => periph_intercon_to_s01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => periph_intercon_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => periph_intercon_to_s01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => periph_intercon_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => periph_intercon_to_s01_couplers_RID(11 downto 0),
      S_AXI_rlast => periph_intercon_to_s01_couplers_RLAST,
      S_AXI_rready => periph_intercon_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => periph_intercon_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => periph_intercon_to_s01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => periph_intercon_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => periph_intercon_to_s01_couplers_WID(11 downto 0),
      S_AXI_wlast => periph_intercon_to_s01_couplers_WLAST,
      S_AXI_wready => periph_intercon_to_s01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => periph_intercon_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => periph_intercon_to_s01_couplers_WVALID
    );
s02_couplers: entity work.s02_couplers_imp_1B5HONF
     port map (
      M_ACLK => periph_intercon_ACLK_net,
      M_ARESETN => periph_intercon_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s02_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s02_couplers_to_xbar_ARREADY(2),
      M_AXI_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s02_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s02_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s02_couplers_to_xbar_AWREADY(2),
      M_AXI_awsize(2 downto 0) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s02_couplers_to_xbar_AWVALID,
      M_AXI_bready => s02_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      M_AXI_bvalid => s02_couplers_to_xbar_BVALID(2),
      M_AXI_rdata(63 downto 0) => s02_couplers_to_xbar_RDATA(191 downto 128),
      M_AXI_rlast => s02_couplers_to_xbar_RLAST(2),
      M_AXI_rready => s02_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      M_AXI_rvalid => s02_couplers_to_xbar_RVALID(2),
      M_AXI_wdata(63 downto 0) => s02_couplers_to_xbar_WDATA(63 downto 0),
      M_AXI_wlast => s02_couplers_to_xbar_WLAST,
      M_AXI_wready => s02_couplers_to_xbar_WREADY(2),
      M_AXI_wstrb(7 downto 0) => s02_couplers_to_xbar_WSTRB(7 downto 0),
      M_AXI_wvalid => s02_couplers_to_xbar_WVALID,
      S_ACLK => periph_intercon_ACLK_net,
      S_ARESETN => periph_intercon_ARESETN_net,
      S_AXI_araddr(31 downto 0) => periph_intercon_to_s02_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => periph_intercon_to_s02_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => periph_intercon_to_s02_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => periph_intercon_to_s02_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => periph_intercon_to_s02_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => periph_intercon_to_s02_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => periph_intercon_to_s02_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => periph_intercon_to_s02_couplers_ARQOS(3 downto 0),
      S_AXI_arready => periph_intercon_to_s02_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => periph_intercon_to_s02_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => periph_intercon_to_s02_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => periph_intercon_to_s02_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => periph_intercon_to_s02_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => periph_intercon_to_s02_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => periph_intercon_to_s02_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => periph_intercon_to_s02_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => periph_intercon_to_s02_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => periph_intercon_to_s02_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => periph_intercon_to_s02_couplers_AWQOS(3 downto 0),
      S_AXI_awready => periph_intercon_to_s02_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => periph_intercon_to_s02_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => periph_intercon_to_s02_couplers_AWVALID,
      S_AXI_bid(0) => periph_intercon_to_s02_couplers_BID(0),
      S_AXI_bready => periph_intercon_to_s02_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => periph_intercon_to_s02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => periph_intercon_to_s02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => periph_intercon_to_s02_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => periph_intercon_to_s02_couplers_RID(0),
      S_AXI_rlast => periph_intercon_to_s02_couplers_RLAST,
      S_AXI_rready => periph_intercon_to_s02_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => periph_intercon_to_s02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => periph_intercon_to_s02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => periph_intercon_to_s02_couplers_WDATA(31 downto 0),
      S_AXI_wlast => periph_intercon_to_s02_couplers_WLAST,
      S_AXI_wready => periph_intercon_to_s02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => periph_intercon_to_s02_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => periph_intercon_to_s02_couplers_WVALID
    );
xbar: component mlp_system_design_xbar_0
     port map (
      aclk => periph_intercon_ACLK_net,
      aresetn => periph_intercon_ARESETN_net,
      m_axi_araddr(287 downto 256) => xbar_to_m08_couplers_ARADDR(287 downto 256),
      m_axi_araddr(255 downto 224) => xbar_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(17 downto 16) => xbar_to_m08_couplers_ARBURST(17 downto 16),
      m_axi_arburst(15 downto 14) => xbar_to_m07_couplers_ARBURST(15 downto 14),
      m_axi_arburst(13 downto 12) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      m_axi_arburst(11 downto 10) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      m_axi_arburst(9 downto 8) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      m_axi_arburst(7 downto 6) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(35 downto 32) => xbar_to_m08_couplers_ARCACHE(35 downto 32),
      m_axi_arcache(31 downto 28) => xbar_to_m07_couplers_ARCACHE(31 downto 28),
      m_axi_arcache(27 downto 24) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      m_axi_arcache(23 downto 20) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      m_axi_arcache(19 downto 16) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      m_axi_arcache(15 downto 12) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(17 downto 16) => xbar_to_m08_couplers_ARID(17 downto 16),
      m_axi_arid(15 downto 14) => xbar_to_m07_couplers_ARID(15 downto 14),
      m_axi_arid(13 downto 12) => xbar_to_m06_couplers_ARID(13 downto 12),
      m_axi_arid(11 downto 10) => xbar_to_m05_couplers_ARID(11 downto 10),
      m_axi_arid(9 downto 8) => xbar_to_m04_couplers_ARID(9 downto 8),
      m_axi_arid(7 downto 6) => xbar_to_m03_couplers_ARID(7 downto 6),
      m_axi_arid(5 downto 4) => xbar_to_m02_couplers_ARID(5 downto 4),
      m_axi_arid(3 downto 2) => xbar_to_m01_couplers_ARID(3 downto 2),
      m_axi_arid(1 downto 0) => xbar_to_m00_couplers_ARID(1 downto 0),
      m_axi_arlen(71 downto 64) => xbar_to_m08_couplers_ARLEN(71 downto 64),
      m_axi_arlen(63 downto 56) => xbar_to_m07_couplers_ARLEN(63 downto 56),
      m_axi_arlen(55 downto 48) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      m_axi_arlen(47 downto 40) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      m_axi_arlen(39 downto 32) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      m_axi_arlen(31 downto 24) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(8) => xbar_to_m08_couplers_ARLOCK(8),
      m_axi_arlock(7) => xbar_to_m07_couplers_ARLOCK(7),
      m_axi_arlock(6) => xbar_to_m06_couplers_ARLOCK(6),
      m_axi_arlock(5) => xbar_to_m05_couplers_ARLOCK(5),
      m_axi_arlock(4) => xbar_to_m04_couplers_ARLOCK(4),
      m_axi_arlock(3) => xbar_to_m03_couplers_ARLOCK(3),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(26 downto 24) => xbar_to_m08_couplers_ARPROT(26 downto 24),
      m_axi_arprot(23 downto 21) => xbar_to_m07_couplers_ARPROT(23 downto 21),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(35 downto 32) => xbar_to_m08_couplers_ARQOS(35 downto 32),
      m_axi_arqos(31 downto 28) => xbar_to_m07_couplers_ARQOS(31 downto 28),
      m_axi_arqos(27 downto 24) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      m_axi_arqos(23 downto 20) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      m_axi_arqos(19 downto 16) => xbar_to_m04_couplers_ARQOS(19 downto 16),
      m_axi_arqos(15 downto 12) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      m_axi_arqos(11 downto 8) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(8) => xbar_to_m08_couplers_ARREADY,
      m_axi_arready(7) => xbar_to_m07_couplers_ARREADY,
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(35 downto 32) => xbar_to_m08_couplers_ARREGION(35 downto 32),
      m_axi_arregion(31 downto 28) => xbar_to_m07_couplers_ARREGION(31 downto 28),
      m_axi_arregion(27 downto 24) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      m_axi_arregion(23 downto 20) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      m_axi_arregion(19 downto 16) => xbar_to_m04_couplers_ARREGION(19 downto 16),
      m_axi_arregion(15 downto 12) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      m_axi_arregion(11 downto 8) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(26 downto 24) => xbar_to_m08_couplers_ARSIZE(26 downto 24),
      m_axi_arsize(23 downto 21) => xbar_to_m07_couplers_ARSIZE(23 downto 21),
      m_axi_arsize(20 downto 18) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      m_axi_arsize(17 downto 15) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      m_axi_arsize(14 downto 12) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      m_axi_arsize(11 downto 9) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(8) => xbar_to_m08_couplers_ARVALID(8),
      m_axi_arvalid(7) => xbar_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(287 downto 256) => xbar_to_m08_couplers_AWADDR(287 downto 256),
      m_axi_awaddr(255 downto 224) => xbar_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(17 downto 16) => xbar_to_m08_couplers_AWBURST(17 downto 16),
      m_axi_awburst(15 downto 14) => xbar_to_m07_couplers_AWBURST(15 downto 14),
      m_axi_awburst(13 downto 12) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      m_axi_awburst(11 downto 10) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      m_axi_awburst(9 downto 8) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      m_axi_awburst(7 downto 6) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(35 downto 32) => xbar_to_m08_couplers_AWCACHE(35 downto 32),
      m_axi_awcache(31 downto 28) => xbar_to_m07_couplers_AWCACHE(31 downto 28),
      m_axi_awcache(27 downto 24) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      m_axi_awcache(23 downto 20) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      m_axi_awcache(19 downto 16) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      m_axi_awcache(15 downto 12) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(17 downto 16) => xbar_to_m08_couplers_AWID(17 downto 16),
      m_axi_awid(15 downto 14) => xbar_to_m07_couplers_AWID(15 downto 14),
      m_axi_awid(13 downto 12) => xbar_to_m06_couplers_AWID(13 downto 12),
      m_axi_awid(11 downto 10) => xbar_to_m05_couplers_AWID(11 downto 10),
      m_axi_awid(9 downto 8) => xbar_to_m04_couplers_AWID(9 downto 8),
      m_axi_awid(7 downto 6) => xbar_to_m03_couplers_AWID(7 downto 6),
      m_axi_awid(5 downto 4) => xbar_to_m02_couplers_AWID(5 downto 4),
      m_axi_awid(3 downto 2) => xbar_to_m01_couplers_AWID(3 downto 2),
      m_axi_awid(1 downto 0) => xbar_to_m00_couplers_AWID(1 downto 0),
      m_axi_awlen(71 downto 64) => xbar_to_m08_couplers_AWLEN(71 downto 64),
      m_axi_awlen(63 downto 56) => xbar_to_m07_couplers_AWLEN(63 downto 56),
      m_axi_awlen(55 downto 48) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      m_axi_awlen(47 downto 40) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      m_axi_awlen(39 downto 32) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      m_axi_awlen(31 downto 24) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(8) => xbar_to_m08_couplers_AWLOCK(8),
      m_axi_awlock(7) => xbar_to_m07_couplers_AWLOCK(7),
      m_axi_awlock(6) => xbar_to_m06_couplers_AWLOCK(6),
      m_axi_awlock(5) => xbar_to_m05_couplers_AWLOCK(5),
      m_axi_awlock(4) => xbar_to_m04_couplers_AWLOCK(4),
      m_axi_awlock(3) => xbar_to_m03_couplers_AWLOCK(3),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(26 downto 24) => xbar_to_m08_couplers_AWPROT(26 downto 24),
      m_axi_awprot(23 downto 21) => xbar_to_m07_couplers_AWPROT(23 downto 21),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(35 downto 32) => xbar_to_m08_couplers_AWQOS(35 downto 32),
      m_axi_awqos(31 downto 28) => xbar_to_m07_couplers_AWQOS(31 downto 28),
      m_axi_awqos(27 downto 24) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      m_axi_awqos(23 downto 20) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      m_axi_awqos(19 downto 16) => xbar_to_m04_couplers_AWQOS(19 downto 16),
      m_axi_awqos(15 downto 12) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      m_axi_awqos(11 downto 8) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(8) => xbar_to_m08_couplers_AWREADY,
      m_axi_awready(7) => xbar_to_m07_couplers_AWREADY,
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(35 downto 32) => xbar_to_m08_couplers_AWREGION(35 downto 32),
      m_axi_awregion(31 downto 28) => xbar_to_m07_couplers_AWREGION(31 downto 28),
      m_axi_awregion(27 downto 24) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      m_axi_awregion(23 downto 20) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      m_axi_awregion(19 downto 16) => xbar_to_m04_couplers_AWREGION(19 downto 16),
      m_axi_awregion(15 downto 12) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      m_axi_awregion(11 downto 8) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(26 downto 24) => xbar_to_m08_couplers_AWSIZE(26 downto 24),
      m_axi_awsize(23 downto 21) => xbar_to_m07_couplers_AWSIZE(23 downto 21),
      m_axi_awsize(20 downto 18) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      m_axi_awsize(17 downto 15) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      m_axi_awsize(14 downto 12) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      m_axi_awsize(11 downto 9) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(8) => xbar_to_m08_couplers_AWVALID(8),
      m_axi_awvalid(7) => xbar_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(17 downto 16) => xbar_to_m08_couplers_BID(1 downto 0),
      m_axi_bid(15 downto 14) => xbar_to_m07_couplers_BID(1 downto 0),
      m_axi_bid(13 downto 12) => xbar_to_m06_couplers_BID(1 downto 0),
      m_axi_bid(11 downto 10) => xbar_to_m05_couplers_BID(1 downto 0),
      m_axi_bid(9 downto 8) => xbar_to_m04_couplers_BID(1 downto 0),
      m_axi_bid(7 downto 6) => xbar_to_m03_couplers_BID(1 downto 0),
      m_axi_bid(5 downto 4) => xbar_to_m02_couplers_BID(1 downto 0),
      m_axi_bid(3 downto 2) => xbar_to_m01_couplers_BID(1 downto 0),
      m_axi_bid(1 downto 0) => xbar_to_m00_couplers_BID(1 downto 0),
      m_axi_bready(8) => xbar_to_m08_couplers_BREADY(8),
      m_axi_bready(7) => xbar_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(17 downto 16) => xbar_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bresp(15 downto 14) => xbar_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(8) => xbar_to_m08_couplers_BVALID,
      m_axi_bvalid(7) => xbar_to_m07_couplers_BVALID,
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(575 downto 512) => xbar_to_m08_couplers_RDATA(63 downto 0),
      m_axi_rdata(511 downto 448) => xbar_to_m07_couplers_RDATA(63 downto 0),
      m_axi_rdata(447 downto 384) => xbar_to_m06_couplers_RDATA(63 downto 0),
      m_axi_rdata(383 downto 320) => xbar_to_m05_couplers_RDATA(63 downto 0),
      m_axi_rdata(319 downto 256) => xbar_to_m04_couplers_RDATA(63 downto 0),
      m_axi_rdata(255 downto 192) => xbar_to_m03_couplers_RDATA(63 downto 0),
      m_axi_rdata(191 downto 128) => xbar_to_m02_couplers_RDATA(63 downto 0),
      m_axi_rdata(127 downto 64) => xbar_to_m01_couplers_RDATA(63 downto 0),
      m_axi_rdata(63 downto 0) => xbar_to_m00_couplers_RDATA(63 downto 0),
      m_axi_rid(17 downto 16) => xbar_to_m08_couplers_RID(1 downto 0),
      m_axi_rid(15 downto 14) => xbar_to_m07_couplers_RID(1 downto 0),
      m_axi_rid(13 downto 12) => xbar_to_m06_couplers_RID(1 downto 0),
      m_axi_rid(11 downto 10) => xbar_to_m05_couplers_RID(1 downto 0),
      m_axi_rid(9 downto 8) => xbar_to_m04_couplers_RID(1 downto 0),
      m_axi_rid(7 downto 6) => xbar_to_m03_couplers_RID(1 downto 0),
      m_axi_rid(5 downto 4) => xbar_to_m02_couplers_RID(1 downto 0),
      m_axi_rid(3 downto 2) => xbar_to_m01_couplers_RID(1 downto 0),
      m_axi_rid(1 downto 0) => xbar_to_m00_couplers_RID(1 downto 0),
      m_axi_rlast(8) => xbar_to_m08_couplers_RLAST,
      m_axi_rlast(7) => xbar_to_m07_couplers_RLAST,
      m_axi_rlast(6) => xbar_to_m06_couplers_RLAST,
      m_axi_rlast(5) => xbar_to_m05_couplers_RLAST,
      m_axi_rlast(4) => xbar_to_m04_couplers_RLAST,
      m_axi_rlast(3) => xbar_to_m03_couplers_RLAST,
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST,
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(8) => xbar_to_m08_couplers_RREADY(8),
      m_axi_rready(7) => xbar_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(17 downto 16) => xbar_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rresp(15 downto 14) => xbar_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(8) => xbar_to_m08_couplers_RVALID,
      m_axi_rvalid(7) => xbar_to_m07_couplers_RVALID,
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(575 downto 512) => xbar_to_m08_couplers_WDATA(575 downto 512),
      m_axi_wdata(511 downto 448) => xbar_to_m07_couplers_WDATA(511 downto 448),
      m_axi_wdata(447 downto 384) => xbar_to_m06_couplers_WDATA(447 downto 384),
      m_axi_wdata(383 downto 320) => xbar_to_m05_couplers_WDATA(383 downto 320),
      m_axi_wdata(319 downto 256) => xbar_to_m04_couplers_WDATA(319 downto 256),
      m_axi_wdata(255 downto 192) => xbar_to_m03_couplers_WDATA(255 downto 192),
      m_axi_wdata(191 downto 128) => xbar_to_m02_couplers_WDATA(191 downto 128),
      m_axi_wdata(127 downto 64) => xbar_to_m01_couplers_WDATA(127 downto 64),
      m_axi_wdata(63 downto 0) => xbar_to_m00_couplers_WDATA(63 downto 0),
      m_axi_wlast(8) => xbar_to_m08_couplers_WLAST(8),
      m_axi_wlast(7) => xbar_to_m07_couplers_WLAST(7),
      m_axi_wlast(6) => xbar_to_m06_couplers_WLAST(6),
      m_axi_wlast(5) => xbar_to_m05_couplers_WLAST(5),
      m_axi_wlast(4) => xbar_to_m04_couplers_WLAST(4),
      m_axi_wlast(3) => xbar_to_m03_couplers_WLAST(3),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(8) => xbar_to_m08_couplers_WREADY,
      m_axi_wready(7) => xbar_to_m07_couplers_WREADY,
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(71 downto 64) => xbar_to_m08_couplers_WSTRB(71 downto 64),
      m_axi_wstrb(63 downto 56) => xbar_to_m07_couplers_WSTRB(63 downto 56),
      m_axi_wstrb(55 downto 48) => xbar_to_m06_couplers_WSTRB(55 downto 48),
      m_axi_wstrb(47 downto 40) => xbar_to_m05_couplers_WSTRB(47 downto 40),
      m_axi_wstrb(39 downto 32) => xbar_to_m04_couplers_WSTRB(39 downto 32),
      m_axi_wstrb(31 downto 24) => xbar_to_m03_couplers_WSTRB(31 downto 24),
      m_axi_wstrb(23 downto 16) => xbar_to_m02_couplers_WSTRB(23 downto 16),
      m_axi_wstrb(15 downto 8) => xbar_to_m01_couplers_WSTRB(15 downto 8),
      m_axi_wstrb(7 downto 0) => xbar_to_m00_couplers_WSTRB(7 downto 0),
      m_axi_wvalid(8) => xbar_to_m08_couplers_WVALID(8),
      m_axi_wvalid(7) => xbar_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(2) => s02_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(11 downto 8) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(2) => s02_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(11 downto 8) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY(2),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(5 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID(2),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(191 downto 128) => s02_couplers_to_xbar_RDATA(191 downto 128),
      s_axi_rdata(127 downto 64) => s01_couplers_to_xbar_RDATA(127 downto 64),
      s_axi_rdata(63 downto 0) => s00_couplers_to_xbar_RDATA(63 downto 0),
      s_axi_rid(5 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(191 downto 128) => s02_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wdata(127 downto 64) => s01_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wdata(63 downto 0) => s00_couplers_to_xbar_WDATA(63 downto 0),
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY(2),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(23 downto 16) => s02_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wstrb(15 downto 8) => s01_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wstrb(7 downto 0) => s00_couplers_to_xbar_WSTRB(7 downto 0),
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mlp_system_design is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of mlp_system_design : entity is "mlp_system_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mlp_system_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=42,numReposBlks=29,numNonXlnxBlks=0,numHierBlks=13,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of mlp_system_design : entity is "mlp_system_design.hwdef";
end mlp_system_design;

architecture STRUCTURE of mlp_system_design is
  component mlp_system_design_input_blk_mem_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component mlp_system_design_input_blk_mem_0;
  component mlp_system_design_input_bram_ctrl_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mlp_system_design_input_bram_ctrl_0;
  component mlp_system_design_inter_cont_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 0 to 0 );
    irq : out STD_LOGIC
  );
  end component mlp_system_design_inter_cont_0;
  component mlp_system_design_mlp_conv_0_0 is
  port (
    s_axi_intr_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_intr_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_awvalid : in STD_LOGIC;
    s_axi_intr_awready : out STD_LOGIC;
    s_axi_intr_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_intr_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_intr_wvalid : in STD_LOGIC;
    s_axi_intr_wready : out STD_LOGIC;
    s_axi_intr_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_intr_bvalid : out STD_LOGIC;
    s_axi_intr_bready : in STD_LOGIC;
    s_axi_intr_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_intr_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_intr_arvalid : in STD_LOGIC;
    s_axi_intr_arready : out STD_LOGIC;
    s_axi_intr_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_intr_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_intr_rvalid : out STD_LOGIC;
    s_axi_intr_rready : in STD_LOGIC;
    s_axi_intr_aclk : in STD_LOGIC;
    s_axi_intr_aresetn : in STD_LOGIC;
    irq : out STD_LOGIC;
    s01_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s01_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s01_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_awlock : in STD_LOGIC;
    s01_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_awvalid : in STD_LOGIC;
    s01_axi_awready : out STD_LOGIC;
    s01_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_wlast : in STD_LOGIC;
    s01_axi_wvalid : in STD_LOGIC;
    s01_axi_wready : out STD_LOGIC;
    s01_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_bvalid : out STD_LOGIC;
    s01_axi_bready : in STD_LOGIC;
    s01_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s01_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s01_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_arlock : in STD_LOGIC;
    s01_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_arvalid : in STD_LOGIC;
    s01_axi_arready : out STD_LOGIC;
    s01_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_rlast : out STD_LOGIC;
    s01_axi_rvalid : out STD_LOGIC;
    s01_axi_rready : in STD_LOGIC;
    s01_axi_aclk : in STD_LOGIC;
    s01_axi_aresetn : in STD_LOGIC;
    m00_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_awlock : out STD_LOGIC;
    m00_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wlast : out STD_LOGIC;
    m00_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_arlock : out STD_LOGIC;
    m00_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rlast : in STD_LOGIC;
    m00_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    m00_axi_init_axi_txn : in STD_LOGIC;
    m00_axi_txn_done : out STD_LOGIC;
    m00_axi_error : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component mlp_system_design_mlp_conv_0_0;
  component mlp_system_design_output_blk_mem_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component mlp_system_design_output_blk_mem_0;
  component mlp_system_design_output_bram_ctrl_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mlp_system_design_output_bram_ctrl_0;
  component mlp_system_design_processing_system_0 is
  port (
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 0 to 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    FTMT_F2P_DEBUG : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FTMT_P2F_DEBUG : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component mlp_system_design_processing_system_0;
  component mlp_system_design_rst_ps_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mlp_system_design_rst_ps_100M_0;
  component mlp_system_design_system_dma_0 is
  port (
    m_axi_aclk : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    cdma_introut : out STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component mlp_system_design_system_dma_0;
  component mlp_system_design_weight_blk_mem_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component mlp_system_design_weight_blk_mem_0;
  component mlp_system_design_weight_bram_ctrl_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mlp_system_design_weight_bram_ctrl_0;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTB_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTB_CLK : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTB_EN : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTB_RST : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_2_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_bram_ctrl_2_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_2_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_2_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_2_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_2_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_2_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_2_BRAM_PORTB_ADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_bram_ctrl_2_BRAM_PORTB_CLK : STD_LOGIC;
  signal axi_bram_ctrl_2_BRAM_PORTB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_2_BRAM_PORTB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_2_BRAM_PORTB_EN : STD_LOGIC;
  signal axi_bram_ctrl_2_BRAM_PORTB_RST : STD_LOGIC;
  signal axi_bram_ctrl_2_BRAM_PORTB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cdma_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cdma_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cdma_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cdma_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_cdma_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cdma_0_M_AXI_ARREADY : STD_LOGIC;
  signal axi_cdma_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cdma_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_cdma_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cdma_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cdma_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cdma_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_cdma_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cdma_0_M_AXI_AWREADY : STD_LOGIC;
  signal axi_cdma_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_cdma_0_M_AXI_AWVALID : STD_LOGIC;
  signal axi_cdma_0_M_AXI_BREADY : STD_LOGIC;
  signal axi_cdma_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cdma_0_M_AXI_BVALID : STD_LOGIC;
  signal axi_cdma_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cdma_0_M_AXI_RLAST : STD_LOGIC;
  signal axi_cdma_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_cdma_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_cdma_0_M_AXI_RVALID : STD_LOGIC;
  signal axi_cdma_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_cdma_0_M_AXI_WLAST : STD_LOGIC;
  signal axi_cdma_0_M_AXI_WREADY : STD_LOGIC;
  signal axi_cdma_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_cdma_0_M_AXI_WVALID : STD_LOGIC;
  signal axi_intc_0_irq : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mlp_conv_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mlp_conv_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mlp_conv_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mlp_conv_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mlp_conv_0_M00_AXI_ARLOCK : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mlp_conv_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mlp_conv_0_M00_AXI_ARREADY : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mlp_conv_0_M00_AXI_ARVALID : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mlp_conv_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mlp_conv_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mlp_conv_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mlp_conv_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mlp_conv_0_M00_AXI_AWLOCK : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mlp_conv_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mlp_conv_0_M00_AXI_AWREADY : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mlp_conv_0_M00_AXI_AWVALID : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mlp_conv_0_M00_AXI_BREADY : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mlp_conv_0_M00_AXI_BVALID : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mlp_conv_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mlp_conv_0_M00_AXI_RLAST : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_RREADY : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mlp_conv_0_M00_AXI_RVALID : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mlp_conv_0_M00_AXI_WLAST : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_WREADY : STD_LOGIC;
  signal mlp_conv_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mlp_conv_0_M00_AXI_WVALID : STD_LOGIC;
  signal mlp_conv_0_irq : STD_LOGIC;
  signal periph_intercon_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M01_AXI_ARREADY : STD_LOGIC;
  signal periph_intercon_M01_AXI_ARVALID : STD_LOGIC;
  signal periph_intercon_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M01_AXI_AWREADY : STD_LOGIC;
  signal periph_intercon_M01_AXI_AWVALID : STD_LOGIC;
  signal periph_intercon_M01_AXI_BREADY : STD_LOGIC;
  signal periph_intercon_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M01_AXI_BVALID : STD_LOGIC;
  signal periph_intercon_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M01_AXI_RREADY : STD_LOGIC;
  signal periph_intercon_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M01_AXI_RVALID : STD_LOGIC;
  signal periph_intercon_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M01_AXI_WREADY : STD_LOGIC;
  signal periph_intercon_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M01_AXI_WVALID : STD_LOGIC;
  signal periph_intercon_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M02_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M02_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M02_AXI_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M02_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M02_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M02_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M02_AXI_ARREADY : STD_LOGIC;
  signal periph_intercon_M02_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M02_AXI_ARVALID : STD_LOGIC;
  signal periph_intercon_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M02_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M02_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M02_AXI_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M02_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M02_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M02_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M02_AXI_AWREADY : STD_LOGIC;
  signal periph_intercon_M02_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M02_AXI_AWVALID : STD_LOGIC;
  signal periph_intercon_M02_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal periph_intercon_M02_AXI_BREADY : STD_LOGIC;
  signal periph_intercon_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M02_AXI_BVALID : STD_LOGIC;
  signal periph_intercon_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal periph_intercon_M02_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal periph_intercon_M02_AXI_RLAST : STD_LOGIC;
  signal periph_intercon_M02_AXI_RREADY : STD_LOGIC;
  signal periph_intercon_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M02_AXI_RVALID : STD_LOGIC;
  signal periph_intercon_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal periph_intercon_M02_AXI_WID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M02_AXI_WLAST : STD_LOGIC;
  signal periph_intercon_M02_AXI_WREADY : STD_LOGIC;
  signal periph_intercon_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_M02_AXI_WVALID : STD_LOGIC;
  signal periph_intercon_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal periph_intercon_M03_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M03_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M03_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_M03_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M03_AXI_ARREADY : STD_LOGIC;
  signal periph_intercon_M03_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M03_AXI_ARVALID : STD_LOGIC;
  signal periph_intercon_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal periph_intercon_M03_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M03_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M03_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_M03_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M03_AXI_AWREADY : STD_LOGIC;
  signal periph_intercon_M03_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M03_AXI_AWVALID : STD_LOGIC;
  signal periph_intercon_M03_AXI_BREADY : STD_LOGIC;
  signal periph_intercon_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M03_AXI_BVALID : STD_LOGIC;
  signal periph_intercon_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M03_AXI_RLAST : STD_LOGIC;
  signal periph_intercon_M03_AXI_RREADY : STD_LOGIC;
  signal periph_intercon_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M03_AXI_RVALID : STD_LOGIC;
  signal periph_intercon_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M03_AXI_WLAST : STD_LOGIC;
  signal periph_intercon_M03_AXI_WREADY : STD_LOGIC;
  signal periph_intercon_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M03_AXI_WVALID : STD_LOGIC;
  signal periph_intercon_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal periph_intercon_M04_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M04_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M04_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_M04_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M04_AXI_ARREADY : STD_LOGIC;
  signal periph_intercon_M04_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M04_AXI_ARVALID : STD_LOGIC;
  signal periph_intercon_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal periph_intercon_M04_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M04_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M04_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_M04_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M04_AXI_AWREADY : STD_LOGIC;
  signal periph_intercon_M04_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M04_AXI_AWVALID : STD_LOGIC;
  signal periph_intercon_M04_AXI_BREADY : STD_LOGIC;
  signal periph_intercon_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M04_AXI_BVALID : STD_LOGIC;
  signal periph_intercon_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M04_AXI_RLAST : STD_LOGIC;
  signal periph_intercon_M04_AXI_RREADY : STD_LOGIC;
  signal periph_intercon_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M04_AXI_RVALID : STD_LOGIC;
  signal periph_intercon_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M04_AXI_WLAST : STD_LOGIC;
  signal periph_intercon_M04_AXI_WREADY : STD_LOGIC;
  signal periph_intercon_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M04_AXI_WVALID : STD_LOGIC;
  signal periph_intercon_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal periph_intercon_M05_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M05_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M05_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_M05_AXI_ARLOCK : STD_LOGIC;
  signal periph_intercon_M05_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M05_AXI_ARREADY : STD_LOGIC;
  signal periph_intercon_M05_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M05_AXI_ARVALID : STD_LOGIC;
  signal periph_intercon_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal periph_intercon_M05_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M05_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M05_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_M05_AXI_AWLOCK : STD_LOGIC;
  signal periph_intercon_M05_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M05_AXI_AWREADY : STD_LOGIC;
  signal periph_intercon_M05_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M05_AXI_AWVALID : STD_LOGIC;
  signal periph_intercon_M05_AXI_BREADY : STD_LOGIC;
  signal periph_intercon_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M05_AXI_BVALID : STD_LOGIC;
  signal periph_intercon_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M05_AXI_RLAST : STD_LOGIC;
  signal periph_intercon_M05_AXI_RREADY : STD_LOGIC;
  signal periph_intercon_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M05_AXI_RVALID : STD_LOGIC;
  signal periph_intercon_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M05_AXI_WLAST : STD_LOGIC;
  signal periph_intercon_M05_AXI_WREADY : STD_LOGIC;
  signal periph_intercon_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M05_AXI_WVALID : STD_LOGIC;
  signal periph_intercon_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M06_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M06_AXI_ARREADY : STD_LOGIC;
  signal periph_intercon_M06_AXI_ARVALID : STD_LOGIC;
  signal periph_intercon_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M06_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M06_AXI_AWREADY : STD_LOGIC;
  signal periph_intercon_M06_AXI_AWVALID : STD_LOGIC;
  signal periph_intercon_M06_AXI_BREADY : STD_LOGIC;
  signal periph_intercon_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M06_AXI_BVALID : STD_LOGIC;
  signal periph_intercon_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M06_AXI_RREADY : STD_LOGIC;
  signal periph_intercon_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M06_AXI_RVALID : STD_LOGIC;
  signal periph_intercon_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M06_AXI_WREADY : STD_LOGIC;
  signal periph_intercon_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M06_AXI_WVALID : STD_LOGIC;
  signal periph_intercon_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M07_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M07_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M07_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_M07_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_M07_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M07_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M07_AXI_ARREADY : STD_LOGIC;
  signal periph_intercon_M07_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M07_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M07_AXI_ARVALID : STD_LOGIC;
  signal periph_intercon_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M07_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M07_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M07_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal periph_intercon_M07_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal periph_intercon_M07_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M07_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M07_AXI_AWREADY : STD_LOGIC;
  signal periph_intercon_M07_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M07_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M07_AXI_AWVALID : STD_LOGIC;
  signal periph_intercon_M07_AXI_BREADY : STD_LOGIC;
  signal periph_intercon_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M07_AXI_BVALID : STD_LOGIC;
  signal periph_intercon_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M07_AXI_RLAST : STD_LOGIC;
  signal periph_intercon_M07_AXI_RREADY : STD_LOGIC;
  signal periph_intercon_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M07_AXI_RVALID : STD_LOGIC;
  signal periph_intercon_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M07_AXI_WLAST : STD_LOGIC;
  signal periph_intercon_M07_AXI_WREADY : STD_LOGIC;
  signal periph_intercon_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M07_AXI_WVALID : STD_LOGIC;
  signal periph_intercon_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M08_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M08_AXI_ARREADY : STD_LOGIC;
  signal periph_intercon_M08_AXI_ARVALID : STD_LOGIC;
  signal periph_intercon_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M08_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal periph_intercon_M08_AXI_AWREADY : STD_LOGIC;
  signal periph_intercon_M08_AXI_AWVALID : STD_LOGIC;
  signal periph_intercon_M08_AXI_BREADY : STD_LOGIC;
  signal periph_intercon_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M08_AXI_BVALID : STD_LOGIC;
  signal periph_intercon_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M08_AXI_RREADY : STD_LOGIC;
  signal periph_intercon_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal periph_intercon_M08_AXI_RVALID : STD_LOGIC;
  signal periph_intercon_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal periph_intercon_M08_AXI_WREADY : STD_LOGIC;
  signal periph_intercon_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal periph_intercon_M08_AXI_WVALID : STD_LOGIC;
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_input_blk_mem_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_input_blk_mem_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_mlp_conv_0_m00_axi_error_UNCONNECTED : STD_LOGIC;
  signal NLW_mlp_conv_0_m00_axi_txn_done_UNCONNECTED : STD_LOGIC;
  signal NLW_mlp_conv_0_m00_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_mlp_conv_0_m00_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_mlp_conv_0_m00_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_output_blk_mem_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_output_blk_mem_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system_FTMT_P2F_DEBUG_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rst_ps_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_system_dma_cdma_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_weight_blk_mem_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_weight_blk_mem_rstb_busy_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of input_bram_ctrl : label is "byte  0x42000000 32 > mlp_system_design input_blk_mem";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of input_bram_ctrl : label is "yes";
  attribute BMM_INFO_ADDRESS_SPACE of output_bram_ctrl : label is "byte  0x40000000 32 > mlp_system_design output_blk_mem";
  attribute KEEP_HIERARCHY of output_bram_ctrl : label is "yes";
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of processing_system : label is "arm > mlp_system_design output_bram_ctrl mlp_system_design input_bram_ctrl mlp_system_design weight_bram_ctrl";
  attribute KEEP_HIERARCHY of processing_system : label is "yes";
  attribute BMM_INFO_ADDRESS_SPACE of weight_bram_ctrl : label is "byte  0x44000000 32 > mlp_system_design weight_blk_mem";
  attribute KEEP_HIERARCHY of weight_bram_ctrl : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
input_blk_mem: component mlp_system_design_input_blk_mem_0
     port map (
      addra(31 downto 16) => B"0000000000000000",
      addra(15 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_ADDR(15 downto 0),
      addrb(31 downto 16) => B"0000000000000000",
      addrb(15 downto 0) => axi_bram_ctrl_1_BRAM_PORTB_ADDR(15 downto 0),
      clka => axi_bram_ctrl_1_BRAM_PORTA_CLK,
      clkb => axi_bram_ctrl_1_BRAM_PORTB_CLK,
      dina(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTB_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTB_DOUT(31 downto 0),
      ena => axi_bram_ctrl_1_BRAM_PORTA_EN,
      enb => axi_bram_ctrl_1_BRAM_PORTB_EN,
      rsta => axi_bram_ctrl_1_BRAM_PORTA_RST,
      rsta_busy => NLW_input_blk_mem_rsta_busy_UNCONNECTED,
      rstb => axi_bram_ctrl_1_BRAM_PORTB_RST,
      rstb_busy => NLW_input_blk_mem_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTB_WE(3 downto 0)
    );
input_bram_ctrl: component mlp_system_design_input_bram_ctrl_0
     port map (
      bram_addr_a(15 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_ADDR(15 downto 0),
      bram_addr_b(15 downto 0) => axi_bram_ctrl_1_BRAM_PORTB_ADDR(15 downto 0),
      bram_clk_a => axi_bram_ctrl_1_BRAM_PORTA_CLK,
      bram_clk_b => axi_bram_ctrl_1_BRAM_PORTB_CLK,
      bram_en_a => axi_bram_ctrl_1_BRAM_PORTA_EN,
      bram_en_b => axi_bram_ctrl_1_BRAM_PORTB_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_DOUT(31 downto 0),
      bram_rddata_b(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTB_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_1_BRAM_PORTA_RST,
      bram_rst_b => axi_bram_ctrl_1_BRAM_PORTB_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_WE(3 downto 0),
      bram_we_b(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTB_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA_DIN(31 downto 0),
      bram_wrdata_b(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTB_DIN(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(15 downto 0) => periph_intercon_M04_AXI_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => periph_intercon_M04_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => periph_intercon_M04_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arlen(7 downto 0) => periph_intercon_M04_AXI_ARLEN(7 downto 0),
      s_axi_arlock => periph_intercon_M04_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => periph_intercon_M04_AXI_ARPROT(2 downto 0),
      s_axi_arready => periph_intercon_M04_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => periph_intercon_M04_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => periph_intercon_M04_AXI_ARVALID,
      s_axi_awaddr(15 downto 0) => periph_intercon_M04_AXI_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => periph_intercon_M04_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => periph_intercon_M04_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => periph_intercon_M04_AXI_AWLEN(7 downto 0),
      s_axi_awlock => periph_intercon_M04_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => periph_intercon_M04_AXI_AWPROT(2 downto 0),
      s_axi_awready => periph_intercon_M04_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => periph_intercon_M04_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => periph_intercon_M04_AXI_AWVALID,
      s_axi_bready => periph_intercon_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => periph_intercon_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => periph_intercon_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => periph_intercon_M04_AXI_RDATA(31 downto 0),
      s_axi_rlast => periph_intercon_M04_AXI_RLAST,
      s_axi_rready => periph_intercon_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => periph_intercon_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => periph_intercon_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => periph_intercon_M04_AXI_WDATA(31 downto 0),
      s_axi_wlast => periph_intercon_M04_AXI_WLAST,
      s_axi_wready => periph_intercon_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => periph_intercon_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => periph_intercon_M04_AXI_WVALID
    );
inter_cont: component mlp_system_design_inter_cont_0
     port map (
      intr(0) => mlp_conv_0_irq,
      irq => axi_intc_0_irq,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => periph_intercon_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => periph_intercon_M01_AXI_ARREADY,
      s_axi_arvalid => periph_intercon_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => periph_intercon_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => periph_intercon_M01_AXI_AWREADY,
      s_axi_awvalid => periph_intercon_M01_AXI_AWVALID,
      s_axi_bready => periph_intercon_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => periph_intercon_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => periph_intercon_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => periph_intercon_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => periph_intercon_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => periph_intercon_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => periph_intercon_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => periph_intercon_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => periph_intercon_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => periph_intercon_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => periph_intercon_M01_AXI_WVALID
    );
mlp_conv_0: component mlp_system_design_mlp_conv_0_0
     port map (
      irq => mlp_conv_0_irq,
      m00_axi_aclk => processing_system7_0_FCLK_CLK0,
      m00_axi_araddr(31 downto 0) => mlp_conv_0_M00_AXI_ARADDR(31 downto 0),
      m00_axi_arburst(1 downto 0) => mlp_conv_0_M00_AXI_ARBURST(1 downto 0),
      m00_axi_arcache(3 downto 0) => mlp_conv_0_M00_AXI_ARCACHE(3 downto 0),
      m00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      m00_axi_arid(0) => mlp_conv_0_M00_AXI_ARID(0),
      m00_axi_arlen(7 downto 0) => mlp_conv_0_M00_AXI_ARLEN(7 downto 0),
      m00_axi_arlock => mlp_conv_0_M00_AXI_ARLOCK,
      m00_axi_arprot(2 downto 0) => mlp_conv_0_M00_AXI_ARPROT(2 downto 0),
      m00_axi_arqos(3 downto 0) => mlp_conv_0_M00_AXI_ARQOS(3 downto 0),
      m00_axi_arready => mlp_conv_0_M00_AXI_ARREADY,
      m00_axi_arsize(2 downto 0) => mlp_conv_0_M00_AXI_ARSIZE(2 downto 0),
      m00_axi_aruser(0) => NLW_mlp_conv_0_m00_axi_aruser_UNCONNECTED(0),
      m00_axi_arvalid => mlp_conv_0_M00_AXI_ARVALID,
      m00_axi_awaddr(31 downto 0) => mlp_conv_0_M00_AXI_AWADDR(31 downto 0),
      m00_axi_awburst(1 downto 0) => mlp_conv_0_M00_AXI_AWBURST(1 downto 0),
      m00_axi_awcache(3 downto 0) => mlp_conv_0_M00_AXI_AWCACHE(3 downto 0),
      m00_axi_awid(0) => mlp_conv_0_M00_AXI_AWID(0),
      m00_axi_awlen(7 downto 0) => mlp_conv_0_M00_AXI_AWLEN(7 downto 0),
      m00_axi_awlock => mlp_conv_0_M00_AXI_AWLOCK,
      m00_axi_awprot(2 downto 0) => mlp_conv_0_M00_AXI_AWPROT(2 downto 0),
      m00_axi_awqos(3 downto 0) => mlp_conv_0_M00_AXI_AWQOS(3 downto 0),
      m00_axi_awready => mlp_conv_0_M00_AXI_AWREADY,
      m00_axi_awsize(2 downto 0) => mlp_conv_0_M00_AXI_AWSIZE(2 downto 0),
      m00_axi_awuser(0) => NLW_mlp_conv_0_m00_axi_awuser_UNCONNECTED(0),
      m00_axi_awvalid => mlp_conv_0_M00_AXI_AWVALID,
      m00_axi_bid(0) => mlp_conv_0_M00_AXI_BID(0),
      m00_axi_bready => mlp_conv_0_M00_AXI_BREADY,
      m00_axi_bresp(1 downto 0) => mlp_conv_0_M00_AXI_BRESP(1 downto 0),
      m00_axi_buser(0) => '0',
      m00_axi_bvalid => mlp_conv_0_M00_AXI_BVALID,
      m00_axi_error => NLW_mlp_conv_0_m00_axi_error_UNCONNECTED,
      m00_axi_init_axi_txn => '0',
      m00_axi_rdata(31 downto 0) => mlp_conv_0_M00_AXI_RDATA(31 downto 0),
      m00_axi_rid(0) => mlp_conv_0_M00_AXI_RID(0),
      m00_axi_rlast => mlp_conv_0_M00_AXI_RLAST,
      m00_axi_rready => mlp_conv_0_M00_AXI_RREADY,
      m00_axi_rresp(1 downto 0) => mlp_conv_0_M00_AXI_RRESP(1 downto 0),
      m00_axi_ruser(0) => '0',
      m00_axi_rvalid => mlp_conv_0_M00_AXI_RVALID,
      m00_axi_txn_done => NLW_mlp_conv_0_m00_axi_txn_done_UNCONNECTED,
      m00_axi_wdata(31 downto 0) => mlp_conv_0_M00_AXI_WDATA(31 downto 0),
      m00_axi_wlast => mlp_conv_0_M00_AXI_WLAST,
      m00_axi_wready => mlp_conv_0_M00_AXI_WREADY,
      m00_axi_wstrb(3 downto 0) => mlp_conv_0_M00_AXI_WSTRB(3 downto 0),
      m00_axi_wuser(0) => NLW_mlp_conv_0_m00_axi_wuser_UNCONNECTED(0),
      m00_axi_wvalid => mlp_conv_0_M00_AXI_WVALID,
      s00_axi_aclk => processing_system7_0_FCLK_CLK0,
      s00_axi_araddr(6 downto 0) => periph_intercon_M06_AXI_ARADDR(6 downto 0),
      s00_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => periph_intercon_M06_AXI_ARPROT(2 downto 0),
      s00_axi_arready => periph_intercon_M06_AXI_ARREADY,
      s00_axi_arvalid => periph_intercon_M06_AXI_ARVALID,
      s00_axi_awaddr(6 downto 0) => periph_intercon_M06_AXI_AWADDR(6 downto 0),
      s00_axi_awprot(2 downto 0) => periph_intercon_M06_AXI_AWPROT(2 downto 0),
      s00_axi_awready => periph_intercon_M06_AXI_AWREADY,
      s00_axi_awvalid => periph_intercon_M06_AXI_AWVALID,
      s00_axi_bready => periph_intercon_M06_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => periph_intercon_M06_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => periph_intercon_M06_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => periph_intercon_M06_AXI_RDATA(31 downto 0),
      s00_axi_rready => periph_intercon_M06_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => periph_intercon_M06_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => periph_intercon_M06_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => periph_intercon_M06_AXI_WDATA(31 downto 0),
      s00_axi_wready => periph_intercon_M06_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => periph_intercon_M06_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => periph_intercon_M06_AXI_WVALID,
      s01_axi_aclk => processing_system7_0_FCLK_CLK0,
      s01_axi_araddr(9 downto 0) => periph_intercon_M07_AXI_ARADDR(9 downto 0),
      s01_axi_arburst(1 downto 0) => periph_intercon_M07_AXI_ARBURST(1 downto 0),
      s01_axi_arcache(3 downto 0) => periph_intercon_M07_AXI_ARCACHE(3 downto 0),
      s01_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s01_axi_arlen(7 downto 0) => periph_intercon_M07_AXI_ARLEN(7 downto 0),
      s01_axi_arlock => periph_intercon_M07_AXI_ARLOCK(0),
      s01_axi_arprot(2 downto 0) => periph_intercon_M07_AXI_ARPROT(2 downto 0),
      s01_axi_arqos(3 downto 0) => periph_intercon_M07_AXI_ARQOS(3 downto 0),
      s01_axi_arready => periph_intercon_M07_AXI_ARREADY,
      s01_axi_arregion(3 downto 0) => periph_intercon_M07_AXI_ARREGION(3 downto 0),
      s01_axi_arsize(2 downto 0) => periph_intercon_M07_AXI_ARSIZE(2 downto 0),
      s01_axi_arvalid => periph_intercon_M07_AXI_ARVALID,
      s01_axi_awaddr(9 downto 0) => periph_intercon_M07_AXI_AWADDR(9 downto 0),
      s01_axi_awburst(1 downto 0) => periph_intercon_M07_AXI_AWBURST(1 downto 0),
      s01_axi_awcache(3 downto 0) => periph_intercon_M07_AXI_AWCACHE(3 downto 0),
      s01_axi_awlen(7 downto 0) => periph_intercon_M07_AXI_AWLEN(7 downto 0),
      s01_axi_awlock => periph_intercon_M07_AXI_AWLOCK(0),
      s01_axi_awprot(2 downto 0) => periph_intercon_M07_AXI_AWPROT(2 downto 0),
      s01_axi_awqos(3 downto 0) => periph_intercon_M07_AXI_AWQOS(3 downto 0),
      s01_axi_awready => periph_intercon_M07_AXI_AWREADY,
      s01_axi_awregion(3 downto 0) => periph_intercon_M07_AXI_AWREGION(3 downto 0),
      s01_axi_awsize(2 downto 0) => periph_intercon_M07_AXI_AWSIZE(2 downto 0),
      s01_axi_awvalid => periph_intercon_M07_AXI_AWVALID,
      s01_axi_bready => periph_intercon_M07_AXI_BREADY,
      s01_axi_bresp(1 downto 0) => periph_intercon_M07_AXI_BRESP(1 downto 0),
      s01_axi_bvalid => periph_intercon_M07_AXI_BVALID,
      s01_axi_rdata(31 downto 0) => periph_intercon_M07_AXI_RDATA(31 downto 0),
      s01_axi_rlast => periph_intercon_M07_AXI_RLAST,
      s01_axi_rready => periph_intercon_M07_AXI_RREADY,
      s01_axi_rresp(1 downto 0) => periph_intercon_M07_AXI_RRESP(1 downto 0),
      s01_axi_rvalid => periph_intercon_M07_AXI_RVALID,
      s01_axi_wdata(31 downto 0) => periph_intercon_M07_AXI_WDATA(31 downto 0),
      s01_axi_wlast => periph_intercon_M07_AXI_WLAST,
      s01_axi_wready => periph_intercon_M07_AXI_WREADY,
      s01_axi_wstrb(3 downto 0) => periph_intercon_M07_AXI_WSTRB(3 downto 0),
      s01_axi_wvalid => periph_intercon_M07_AXI_WVALID,
      s_axi_intr_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_intr_araddr(4 downto 0) => periph_intercon_M08_AXI_ARADDR(4 downto 0),
      s_axi_intr_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_intr_arprot(2 downto 0) => periph_intercon_M08_AXI_ARPROT(2 downto 0),
      s_axi_intr_arready => periph_intercon_M08_AXI_ARREADY,
      s_axi_intr_arvalid => periph_intercon_M08_AXI_ARVALID,
      s_axi_intr_awaddr(4 downto 0) => periph_intercon_M08_AXI_AWADDR(4 downto 0),
      s_axi_intr_awprot(2 downto 0) => periph_intercon_M08_AXI_AWPROT(2 downto 0),
      s_axi_intr_awready => periph_intercon_M08_AXI_AWREADY,
      s_axi_intr_awvalid => periph_intercon_M08_AXI_AWVALID,
      s_axi_intr_bready => periph_intercon_M08_AXI_BREADY,
      s_axi_intr_bresp(1 downto 0) => periph_intercon_M08_AXI_BRESP(1 downto 0),
      s_axi_intr_bvalid => periph_intercon_M08_AXI_BVALID,
      s_axi_intr_rdata(31 downto 0) => periph_intercon_M08_AXI_RDATA(31 downto 0),
      s_axi_intr_rready => periph_intercon_M08_AXI_RREADY,
      s_axi_intr_rresp(1 downto 0) => periph_intercon_M08_AXI_RRESP(1 downto 0),
      s_axi_intr_rvalid => periph_intercon_M08_AXI_RVALID,
      s_axi_intr_wdata(31 downto 0) => periph_intercon_M08_AXI_WDATA(31 downto 0),
      s_axi_intr_wready => periph_intercon_M08_AXI_WREADY,
      s_axi_intr_wstrb(3 downto 0) => periph_intercon_M08_AXI_WSTRB(3 downto 0),
      s_axi_intr_wvalid => periph_intercon_M08_AXI_WVALID
    );
output_blk_mem: component mlp_system_design_output_blk_mem_0
     port map (
      addra(31 downto 16) => B"0000000000000000",
      addra(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(15 downto 0),
      addrb(31 downto 16) => B"0000000000000000",
      addrb(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(15 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => axi_bram_ctrl_0_BRAM_PORTB_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rsta_busy => NLW_output_blk_mem_rsta_busy_UNCONNECTED,
      rstb => axi_bram_ctrl_0_BRAM_PORTB_RST,
      rstb_busy => NLW_output_blk_mem_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0)
    );
output_bram_ctrl: component mlp_system_design_output_bram_ctrl_0
     port map (
      bram_addr_a(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(15 downto 0),
      bram_addr_b(15 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(15 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_clk_b => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_en_b => axi_bram_ctrl_0_BRAM_PORTB_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rddata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_rst_b => axi_bram_ctrl_0_BRAM_PORTB_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_we_b(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      bram_wrdata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(15 downto 0) => periph_intercon_M03_AXI_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => periph_intercon_M03_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => periph_intercon_M03_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arlen(7 downto 0) => periph_intercon_M03_AXI_ARLEN(7 downto 0),
      s_axi_arlock => periph_intercon_M03_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => periph_intercon_M03_AXI_ARPROT(2 downto 0),
      s_axi_arready => periph_intercon_M03_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => periph_intercon_M03_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => periph_intercon_M03_AXI_ARVALID,
      s_axi_awaddr(15 downto 0) => periph_intercon_M03_AXI_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => periph_intercon_M03_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => periph_intercon_M03_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => periph_intercon_M03_AXI_AWLEN(7 downto 0),
      s_axi_awlock => periph_intercon_M03_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => periph_intercon_M03_AXI_AWPROT(2 downto 0),
      s_axi_awready => periph_intercon_M03_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => periph_intercon_M03_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => periph_intercon_M03_AXI_AWVALID,
      s_axi_bready => periph_intercon_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => periph_intercon_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => periph_intercon_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => periph_intercon_M03_AXI_RDATA(31 downto 0),
      s_axi_rlast => periph_intercon_M03_AXI_RLAST,
      s_axi_rready => periph_intercon_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => periph_intercon_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => periph_intercon_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => periph_intercon_M03_AXI_WDATA(31 downto 0),
      s_axi_wlast => periph_intercon_M03_AXI_WLAST,
      s_axi_wready => periph_intercon_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => periph_intercon_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => periph_intercon_M03_AXI_WVALID
    );
periph_intercon: entity work.mlp_system_design_periph_intercon_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => periph_intercon_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => periph_intercon_M01_AXI_ARREADY,
      M01_AXI_arvalid => periph_intercon_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => periph_intercon_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => periph_intercon_M01_AXI_AWREADY,
      M01_AXI_awvalid => periph_intercon_M01_AXI_AWVALID,
      M01_AXI_bready => periph_intercon_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => periph_intercon_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => periph_intercon_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => periph_intercon_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => periph_intercon_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => periph_intercon_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => periph_intercon_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => periph_intercon_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => periph_intercon_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => periph_intercon_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => periph_intercon_M01_AXI_WVALID,
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => periph_intercon_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arburst(1 downto 0) => periph_intercon_M02_AXI_ARBURST(1 downto 0),
      M02_AXI_arcache(3 downto 0) => periph_intercon_M02_AXI_ARCACHE(3 downto 0),
      M02_AXI_arid(1 downto 0) => periph_intercon_M02_AXI_ARID(1 downto 0),
      M02_AXI_arlen(3 downto 0) => periph_intercon_M02_AXI_ARLEN(3 downto 0),
      M02_AXI_arlock(1 downto 0) => periph_intercon_M02_AXI_ARLOCK(1 downto 0),
      M02_AXI_arprot(2 downto 0) => periph_intercon_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arqos(3 downto 0) => periph_intercon_M02_AXI_ARQOS(3 downto 0),
      M02_AXI_arready => periph_intercon_M02_AXI_ARREADY,
      M02_AXI_arsize(2 downto 0) => periph_intercon_M02_AXI_ARSIZE(2 downto 0),
      M02_AXI_arvalid => periph_intercon_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => periph_intercon_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awburst(1 downto 0) => periph_intercon_M02_AXI_AWBURST(1 downto 0),
      M02_AXI_awcache(3 downto 0) => periph_intercon_M02_AXI_AWCACHE(3 downto 0),
      M02_AXI_awid(1 downto 0) => periph_intercon_M02_AXI_AWID(1 downto 0),
      M02_AXI_awlen(3 downto 0) => periph_intercon_M02_AXI_AWLEN(3 downto 0),
      M02_AXI_awlock(1 downto 0) => periph_intercon_M02_AXI_AWLOCK(1 downto 0),
      M02_AXI_awprot(2 downto 0) => periph_intercon_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awqos(3 downto 0) => periph_intercon_M02_AXI_AWQOS(3 downto 0),
      M02_AXI_awready => periph_intercon_M02_AXI_AWREADY,
      M02_AXI_awsize(2 downto 0) => periph_intercon_M02_AXI_AWSIZE(2 downto 0),
      M02_AXI_awvalid => periph_intercon_M02_AXI_AWVALID,
      M02_AXI_bid(5 downto 0) => periph_intercon_M02_AXI_BID(5 downto 0),
      M02_AXI_bready => periph_intercon_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => periph_intercon_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => periph_intercon_M02_AXI_BVALID,
      M02_AXI_rdata(63 downto 0) => periph_intercon_M02_AXI_RDATA(63 downto 0),
      M02_AXI_rid(5 downto 0) => periph_intercon_M02_AXI_RID(5 downto 0),
      M02_AXI_rlast => periph_intercon_M02_AXI_RLAST,
      M02_AXI_rready => periph_intercon_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => periph_intercon_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => periph_intercon_M02_AXI_RVALID,
      M02_AXI_wdata(63 downto 0) => periph_intercon_M02_AXI_WDATA(63 downto 0),
      M02_AXI_wid(1 downto 0) => periph_intercon_M02_AXI_WID(1 downto 0),
      M02_AXI_wlast => periph_intercon_M02_AXI_WLAST,
      M02_AXI_wready => periph_intercon_M02_AXI_WREADY,
      M02_AXI_wstrb(7 downto 0) => periph_intercon_M02_AXI_WSTRB(7 downto 0),
      M02_AXI_wvalid => periph_intercon_M02_AXI_WVALID,
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M03_AXI_araddr(15 downto 0) => periph_intercon_M03_AXI_ARADDR(15 downto 0),
      M03_AXI_arburst(1 downto 0) => periph_intercon_M03_AXI_ARBURST(1 downto 0),
      M03_AXI_arcache(3 downto 0) => periph_intercon_M03_AXI_ARCACHE(3 downto 0),
      M03_AXI_arlen(7 downto 0) => periph_intercon_M03_AXI_ARLEN(7 downto 0),
      M03_AXI_arlock(0) => periph_intercon_M03_AXI_ARLOCK(0),
      M03_AXI_arprot(2 downto 0) => periph_intercon_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => periph_intercon_M03_AXI_ARREADY,
      M03_AXI_arsize(2 downto 0) => periph_intercon_M03_AXI_ARSIZE(2 downto 0),
      M03_AXI_arvalid => periph_intercon_M03_AXI_ARVALID,
      M03_AXI_awaddr(15 downto 0) => periph_intercon_M03_AXI_AWADDR(15 downto 0),
      M03_AXI_awburst(1 downto 0) => periph_intercon_M03_AXI_AWBURST(1 downto 0),
      M03_AXI_awcache(3 downto 0) => periph_intercon_M03_AXI_AWCACHE(3 downto 0),
      M03_AXI_awlen(7 downto 0) => periph_intercon_M03_AXI_AWLEN(7 downto 0),
      M03_AXI_awlock(0) => periph_intercon_M03_AXI_AWLOCK(0),
      M03_AXI_awprot(2 downto 0) => periph_intercon_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => periph_intercon_M03_AXI_AWREADY,
      M03_AXI_awsize(2 downto 0) => periph_intercon_M03_AXI_AWSIZE(2 downto 0),
      M03_AXI_awvalid => periph_intercon_M03_AXI_AWVALID,
      M03_AXI_bready => periph_intercon_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => periph_intercon_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => periph_intercon_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => periph_intercon_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rlast => periph_intercon_M03_AXI_RLAST,
      M03_AXI_rready => periph_intercon_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => periph_intercon_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => periph_intercon_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => periph_intercon_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wlast => periph_intercon_M03_AXI_WLAST,
      M03_AXI_wready => periph_intercon_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => periph_intercon_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => periph_intercon_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr(15 downto 0) => periph_intercon_M04_AXI_ARADDR(15 downto 0),
      M04_AXI_arburst(1 downto 0) => periph_intercon_M04_AXI_ARBURST(1 downto 0),
      M04_AXI_arcache(3 downto 0) => periph_intercon_M04_AXI_ARCACHE(3 downto 0),
      M04_AXI_arlen(7 downto 0) => periph_intercon_M04_AXI_ARLEN(7 downto 0),
      M04_AXI_arlock(0) => periph_intercon_M04_AXI_ARLOCK(0),
      M04_AXI_arprot(2 downto 0) => periph_intercon_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready => periph_intercon_M04_AXI_ARREADY,
      M04_AXI_arsize(2 downto 0) => periph_intercon_M04_AXI_ARSIZE(2 downto 0),
      M04_AXI_arvalid => periph_intercon_M04_AXI_ARVALID,
      M04_AXI_awaddr(15 downto 0) => periph_intercon_M04_AXI_AWADDR(15 downto 0),
      M04_AXI_awburst(1 downto 0) => periph_intercon_M04_AXI_AWBURST(1 downto 0),
      M04_AXI_awcache(3 downto 0) => periph_intercon_M04_AXI_AWCACHE(3 downto 0),
      M04_AXI_awlen(7 downto 0) => periph_intercon_M04_AXI_AWLEN(7 downto 0),
      M04_AXI_awlock(0) => periph_intercon_M04_AXI_AWLOCK(0),
      M04_AXI_awprot(2 downto 0) => periph_intercon_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready => periph_intercon_M04_AXI_AWREADY,
      M04_AXI_awsize(2 downto 0) => periph_intercon_M04_AXI_AWSIZE(2 downto 0),
      M04_AXI_awvalid => periph_intercon_M04_AXI_AWVALID,
      M04_AXI_bready => periph_intercon_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => periph_intercon_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => periph_intercon_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => periph_intercon_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rlast => periph_intercon_M04_AXI_RLAST,
      M04_AXI_rready => periph_intercon_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => periph_intercon_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => periph_intercon_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => periph_intercon_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wlast => periph_intercon_M04_AXI_WLAST,
      M04_AXI_wready => periph_intercon_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => periph_intercon_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => periph_intercon_M04_AXI_WVALID,
      M05_ACLK => processing_system7_0_FCLK_CLK0,
      M05_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M05_AXI_araddr(15 downto 0) => periph_intercon_M05_AXI_ARADDR(15 downto 0),
      M05_AXI_arburst(1 downto 0) => periph_intercon_M05_AXI_ARBURST(1 downto 0),
      M05_AXI_arcache(3 downto 0) => periph_intercon_M05_AXI_ARCACHE(3 downto 0),
      M05_AXI_arlen(7 downto 0) => periph_intercon_M05_AXI_ARLEN(7 downto 0),
      M05_AXI_arlock => periph_intercon_M05_AXI_ARLOCK,
      M05_AXI_arprot(2 downto 0) => periph_intercon_M05_AXI_ARPROT(2 downto 0),
      M05_AXI_arready => periph_intercon_M05_AXI_ARREADY,
      M05_AXI_arsize(2 downto 0) => periph_intercon_M05_AXI_ARSIZE(2 downto 0),
      M05_AXI_arvalid => periph_intercon_M05_AXI_ARVALID,
      M05_AXI_awaddr(15 downto 0) => periph_intercon_M05_AXI_AWADDR(15 downto 0),
      M05_AXI_awburst(1 downto 0) => periph_intercon_M05_AXI_AWBURST(1 downto 0),
      M05_AXI_awcache(3 downto 0) => periph_intercon_M05_AXI_AWCACHE(3 downto 0),
      M05_AXI_awlen(7 downto 0) => periph_intercon_M05_AXI_AWLEN(7 downto 0),
      M05_AXI_awlock => periph_intercon_M05_AXI_AWLOCK,
      M05_AXI_awprot(2 downto 0) => periph_intercon_M05_AXI_AWPROT(2 downto 0),
      M05_AXI_awready => periph_intercon_M05_AXI_AWREADY,
      M05_AXI_awsize(2 downto 0) => periph_intercon_M05_AXI_AWSIZE(2 downto 0),
      M05_AXI_awvalid => periph_intercon_M05_AXI_AWVALID,
      M05_AXI_bready => periph_intercon_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => periph_intercon_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => periph_intercon_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => periph_intercon_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rlast => periph_intercon_M05_AXI_RLAST,
      M05_AXI_rready => periph_intercon_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => periph_intercon_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => periph_intercon_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => periph_intercon_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wlast => periph_intercon_M05_AXI_WLAST,
      M05_AXI_wready => periph_intercon_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => periph_intercon_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => periph_intercon_M05_AXI_WVALID,
      M06_ACLK => processing_system7_0_FCLK_CLK0,
      M06_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M06_AXI_araddr(31 downto 0) => periph_intercon_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arprot(2 downto 0) => periph_intercon_M06_AXI_ARPROT(2 downto 0),
      M06_AXI_arready => periph_intercon_M06_AXI_ARREADY,
      M06_AXI_arvalid => periph_intercon_M06_AXI_ARVALID,
      M06_AXI_awaddr(31 downto 0) => periph_intercon_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awprot(2 downto 0) => periph_intercon_M06_AXI_AWPROT(2 downto 0),
      M06_AXI_awready => periph_intercon_M06_AXI_AWREADY,
      M06_AXI_awvalid => periph_intercon_M06_AXI_AWVALID,
      M06_AXI_bready => periph_intercon_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => periph_intercon_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => periph_intercon_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => periph_intercon_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => periph_intercon_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => periph_intercon_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => periph_intercon_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => periph_intercon_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => periph_intercon_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => periph_intercon_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => periph_intercon_M06_AXI_WVALID,
      M07_ACLK => processing_system7_0_FCLK_CLK0,
      M07_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M07_AXI_araddr(31 downto 0) => periph_intercon_M07_AXI_ARADDR(31 downto 0),
      M07_AXI_arburst(1 downto 0) => periph_intercon_M07_AXI_ARBURST(1 downto 0),
      M07_AXI_arcache(3 downto 0) => periph_intercon_M07_AXI_ARCACHE(3 downto 0),
      M07_AXI_arlen(7 downto 0) => periph_intercon_M07_AXI_ARLEN(7 downto 0),
      M07_AXI_arlock(0) => periph_intercon_M07_AXI_ARLOCK(0),
      M07_AXI_arprot(2 downto 0) => periph_intercon_M07_AXI_ARPROT(2 downto 0),
      M07_AXI_arqos(3 downto 0) => periph_intercon_M07_AXI_ARQOS(3 downto 0),
      M07_AXI_arready => periph_intercon_M07_AXI_ARREADY,
      M07_AXI_arregion(3 downto 0) => periph_intercon_M07_AXI_ARREGION(3 downto 0),
      M07_AXI_arsize(2 downto 0) => periph_intercon_M07_AXI_ARSIZE(2 downto 0),
      M07_AXI_arvalid => periph_intercon_M07_AXI_ARVALID,
      M07_AXI_awaddr(31 downto 0) => periph_intercon_M07_AXI_AWADDR(31 downto 0),
      M07_AXI_awburst(1 downto 0) => periph_intercon_M07_AXI_AWBURST(1 downto 0),
      M07_AXI_awcache(3 downto 0) => periph_intercon_M07_AXI_AWCACHE(3 downto 0),
      M07_AXI_awlen(7 downto 0) => periph_intercon_M07_AXI_AWLEN(7 downto 0),
      M07_AXI_awlock(0) => periph_intercon_M07_AXI_AWLOCK(0),
      M07_AXI_awprot(2 downto 0) => periph_intercon_M07_AXI_AWPROT(2 downto 0),
      M07_AXI_awqos(3 downto 0) => periph_intercon_M07_AXI_AWQOS(3 downto 0),
      M07_AXI_awready => periph_intercon_M07_AXI_AWREADY,
      M07_AXI_awregion(3 downto 0) => periph_intercon_M07_AXI_AWREGION(3 downto 0),
      M07_AXI_awsize(2 downto 0) => periph_intercon_M07_AXI_AWSIZE(2 downto 0),
      M07_AXI_awvalid => periph_intercon_M07_AXI_AWVALID,
      M07_AXI_bready => periph_intercon_M07_AXI_BREADY,
      M07_AXI_bresp(1 downto 0) => periph_intercon_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid => periph_intercon_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => periph_intercon_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rlast => periph_intercon_M07_AXI_RLAST,
      M07_AXI_rready => periph_intercon_M07_AXI_RREADY,
      M07_AXI_rresp(1 downto 0) => periph_intercon_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid => periph_intercon_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => periph_intercon_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wlast => periph_intercon_M07_AXI_WLAST,
      M07_AXI_wready => periph_intercon_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => periph_intercon_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid => periph_intercon_M07_AXI_WVALID,
      M08_ACLK => processing_system7_0_FCLK_CLK0,
      M08_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M08_AXI_araddr(31 downto 0) => periph_intercon_M08_AXI_ARADDR(31 downto 0),
      M08_AXI_arprot(2 downto 0) => periph_intercon_M08_AXI_ARPROT(2 downto 0),
      M08_AXI_arready => periph_intercon_M08_AXI_ARREADY,
      M08_AXI_arvalid => periph_intercon_M08_AXI_ARVALID,
      M08_AXI_awaddr(31 downto 0) => periph_intercon_M08_AXI_AWADDR(31 downto 0),
      M08_AXI_awprot(2 downto 0) => periph_intercon_M08_AXI_AWPROT(2 downto 0),
      M08_AXI_awready => periph_intercon_M08_AXI_AWREADY,
      M08_AXI_awvalid => periph_intercon_M08_AXI_AWVALID,
      M08_AXI_bready => periph_intercon_M08_AXI_BREADY,
      M08_AXI_bresp(1 downto 0) => periph_intercon_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid => periph_intercon_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => periph_intercon_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready => periph_intercon_M08_AXI_RREADY,
      M08_AXI_rresp(1 downto 0) => periph_intercon_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid => periph_intercon_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => periph_intercon_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready => periph_intercon_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => periph_intercon_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid => periph_intercon_M08_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => axi_cdma_0_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_cdma_0_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_cdma_0_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_cdma_0_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_cdma_0_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arready => axi_cdma_0_M_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_cdma_0_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_cdma_0_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_cdma_0_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_cdma_0_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_cdma_0_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_cdma_0_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awprot(2 downto 0) => axi_cdma_0_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awready => axi_cdma_0_M_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_cdma_0_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_cdma_0_M_AXI_AWVALID,
      S00_AXI_bready => axi_cdma_0_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_cdma_0_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_cdma_0_M_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_cdma_0_M_AXI_RDATA(31 downto 0),
      S00_AXI_rlast => axi_cdma_0_M_AXI_RLAST,
      S00_AXI_rready => axi_cdma_0_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_cdma_0_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_cdma_0_M_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_cdma_0_M_AXI_WDATA(31 downto 0),
      S00_AXI_wlast => axi_cdma_0_M_AXI_WLAST,
      S00_AXI_wready => axi_cdma_0_M_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_cdma_0_M_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_cdma_0_M_AXI_WVALID,
      S01_ACLK => processing_system7_0_FCLK_CLK0,
      S01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S01_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S01_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S01_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S01_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S01_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S01_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S01_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S01_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S01_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S01_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S01_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S01_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S01_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S01_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S01_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S01_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S01_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S01_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S01_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S01_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S01_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S01_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S01_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S01_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S01_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S01_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S01_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S01_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S01_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S01_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S01_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S01_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID,
      S02_ACLK => processing_system7_0_FCLK_CLK0,
      S02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S02_AXI_araddr(31 downto 0) => mlp_conv_0_M00_AXI_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => mlp_conv_0_M00_AXI_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => mlp_conv_0_M00_AXI_ARCACHE(3 downto 0),
      S02_AXI_arid(0) => mlp_conv_0_M00_AXI_ARID(0),
      S02_AXI_arlen(7 downto 0) => mlp_conv_0_M00_AXI_ARLEN(7 downto 0),
      S02_AXI_arlock(0) => mlp_conv_0_M00_AXI_ARLOCK,
      S02_AXI_arprot(2 downto 0) => mlp_conv_0_M00_AXI_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => mlp_conv_0_M00_AXI_ARQOS(3 downto 0),
      S02_AXI_arready => mlp_conv_0_M00_AXI_ARREADY,
      S02_AXI_arsize(2 downto 0) => mlp_conv_0_M00_AXI_ARSIZE(2 downto 0),
      S02_AXI_arvalid => mlp_conv_0_M00_AXI_ARVALID,
      S02_AXI_awaddr(31 downto 0) => mlp_conv_0_M00_AXI_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => mlp_conv_0_M00_AXI_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => mlp_conv_0_M00_AXI_AWCACHE(3 downto 0),
      S02_AXI_awid(0) => mlp_conv_0_M00_AXI_AWID(0),
      S02_AXI_awlen(7 downto 0) => mlp_conv_0_M00_AXI_AWLEN(7 downto 0),
      S02_AXI_awlock(0) => mlp_conv_0_M00_AXI_AWLOCK,
      S02_AXI_awprot(2 downto 0) => mlp_conv_0_M00_AXI_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => mlp_conv_0_M00_AXI_AWQOS(3 downto 0),
      S02_AXI_awready => mlp_conv_0_M00_AXI_AWREADY,
      S02_AXI_awsize(2 downto 0) => mlp_conv_0_M00_AXI_AWSIZE(2 downto 0),
      S02_AXI_awvalid => mlp_conv_0_M00_AXI_AWVALID,
      S02_AXI_bid(0) => mlp_conv_0_M00_AXI_BID(0),
      S02_AXI_bready => mlp_conv_0_M00_AXI_BREADY,
      S02_AXI_bresp(1 downto 0) => mlp_conv_0_M00_AXI_BRESP(1 downto 0),
      S02_AXI_bvalid => mlp_conv_0_M00_AXI_BVALID,
      S02_AXI_rdata(31 downto 0) => mlp_conv_0_M00_AXI_RDATA(31 downto 0),
      S02_AXI_rid(0) => mlp_conv_0_M00_AXI_RID(0),
      S02_AXI_rlast => mlp_conv_0_M00_AXI_RLAST,
      S02_AXI_rready => mlp_conv_0_M00_AXI_RREADY,
      S02_AXI_rresp(1 downto 0) => mlp_conv_0_M00_AXI_RRESP(1 downto 0),
      S02_AXI_rvalid => mlp_conv_0_M00_AXI_RVALID,
      S02_AXI_wdata(31 downto 0) => mlp_conv_0_M00_AXI_WDATA(31 downto 0),
      S02_AXI_wlast => mlp_conv_0_M00_AXI_WLAST,
      S02_AXI_wready => mlp_conv_0_M00_AXI_WREADY,
      S02_AXI_wstrb(3 downto 0) => mlp_conv_0_M00_AXI_WSTRB(3 downto 0),
      S02_AXI_wvalid => mlp_conv_0_M00_AXI_WVALID
    );
processing_system: component mlp_system_design_processing_system_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      FTMT_F2P_DEBUG(31 downto 0) => B"00000000000000000000000000000000",
      FTMT_P2F_DEBUG(31 downto 0) => NLW_processing_system_FTMT_P2F_DEBUG_UNCONNECTED(31 downto 0),
      IRQ_F2P(0) => axi_intc_0_irq,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => periph_intercon_M02_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => periph_intercon_M02_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => periph_intercon_M02_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 2) => B"0000",
      S_AXI_HP0_ARID(1 downto 0) => periph_intercon_M02_AXI_ARID(1 downto 0),
      S_AXI_HP0_ARLEN(3 downto 0) => periph_intercon_M02_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => periph_intercon_M02_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => periph_intercon_M02_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => periph_intercon_M02_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => periph_intercon_M02_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => periph_intercon_M02_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => periph_intercon_M02_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => periph_intercon_M02_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => periph_intercon_M02_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => periph_intercon_M02_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 2) => B"0000",
      S_AXI_HP0_AWID(1 downto 0) => periph_intercon_M02_AXI_AWID(1 downto 0),
      S_AXI_HP0_AWLEN(3 downto 0) => periph_intercon_M02_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => periph_intercon_M02_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => periph_intercon_M02_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => periph_intercon_M02_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => periph_intercon_M02_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => periph_intercon_M02_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => periph_intercon_M02_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => periph_intercon_M02_AXI_BID(5 downto 0),
      S_AXI_HP0_BREADY => periph_intercon_M02_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => periph_intercon_M02_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => periph_intercon_M02_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => periph_intercon_M02_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => periph_intercon_M02_AXI_RID(5 downto 0),
      S_AXI_HP0_RLAST => periph_intercon_M02_AXI_RLAST,
      S_AXI_HP0_RREADY => periph_intercon_M02_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => periph_intercon_M02_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => periph_intercon_M02_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => periph_intercon_M02_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 2) => B"0000",
      S_AXI_HP0_WID(1 downto 0) => periph_intercon_M02_AXI_WID(1 downto 0),
      S_AXI_HP0_WLAST => periph_intercon_M02_AXI_WLAST,
      S_AXI_HP0_WREADY => periph_intercon_M02_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => periph_intercon_M02_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => periph_intercon_M02_AXI_WVALID,
      TTC0_WAVE0_OUT => NLW_processing_system_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
rst_ps_100M: component mlp_system_design_rst_ps_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_ps_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
system_dma: component mlp_system_design_system_dma_0
     port map (
      cdma_introut => NLW_system_dma_cdma_introut_UNCONNECTED,
      m_axi_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_araddr(31 downto 0) => axi_cdma_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => axi_cdma_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_cdma_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_cdma_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arprot(2 downto 0) => axi_cdma_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_cdma_0_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => axi_cdma_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_cdma_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => axi_cdma_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => axi_cdma_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_cdma_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_cdma_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awprot(2 downto 0) => axi_cdma_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_cdma_0_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => axi_cdma_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_cdma_0_M_AXI_AWVALID,
      m_axi_bready => axi_cdma_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_cdma_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_cdma_0_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => axi_cdma_0_M_AXI_RDATA(31 downto 0),
      m_axi_rlast => axi_cdma_0_M_AXI_RLAST,
      m_axi_rready => axi_cdma_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_cdma_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_cdma_0_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => axi_cdma_0_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => axi_cdma_0_M_AXI_WLAST,
      m_axi_wready => axi_cdma_0_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => axi_cdma_0_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => axi_cdma_0_M_AXI_WVALID,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(5 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(5 downto 0),
      s_axi_lite_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_lite_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_lite_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s_axi_lite_awaddr(5 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(5 downto 0),
      s_axi_lite_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_lite_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s_axi_lite_bready => axi_interconnect_0_M00_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => axi_interconnect_0_M00_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_lite_wvalid => axi_interconnect_0_M00_AXI_WVALID
    );
weight_blk_mem: component mlp_system_design_weight_blk_mem_0
     port map (
      addra(31 downto 16) => B"0000000000000000",
      addra(15 downto 0) => axi_bram_ctrl_2_BRAM_PORTA_ADDR(15 downto 0),
      addrb(31 downto 16) => B"0000000000000000",
      addrb(15 downto 0) => axi_bram_ctrl_2_BRAM_PORTB_ADDR(15 downto 0),
      clka => axi_bram_ctrl_2_BRAM_PORTA_CLK,
      clkb => axi_bram_ctrl_2_BRAM_PORTB_CLK,
      dina(31 downto 0) => axi_bram_ctrl_2_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_2_BRAM_PORTB_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_2_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_2_BRAM_PORTB_DOUT(31 downto 0),
      ena => axi_bram_ctrl_2_BRAM_PORTA_EN,
      enb => axi_bram_ctrl_2_BRAM_PORTB_EN,
      rsta => axi_bram_ctrl_2_BRAM_PORTA_RST,
      rsta_busy => NLW_weight_blk_mem_rsta_busy_UNCONNECTED,
      rstb => axi_bram_ctrl_2_BRAM_PORTB_RST,
      rstb_busy => NLW_weight_blk_mem_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => axi_bram_ctrl_2_BRAM_PORTA_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_2_BRAM_PORTB_WE(3 downto 0)
    );
weight_bram_ctrl: component mlp_system_design_weight_bram_ctrl_0
     port map (
      bram_addr_a(15 downto 0) => axi_bram_ctrl_2_BRAM_PORTA_ADDR(15 downto 0),
      bram_addr_b(15 downto 0) => axi_bram_ctrl_2_BRAM_PORTB_ADDR(15 downto 0),
      bram_clk_a => axi_bram_ctrl_2_BRAM_PORTA_CLK,
      bram_clk_b => axi_bram_ctrl_2_BRAM_PORTB_CLK,
      bram_en_a => axi_bram_ctrl_2_BRAM_PORTA_EN,
      bram_en_b => axi_bram_ctrl_2_BRAM_PORTB_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_2_BRAM_PORTA_DOUT(31 downto 0),
      bram_rddata_b(31 downto 0) => axi_bram_ctrl_2_BRAM_PORTB_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_2_BRAM_PORTA_RST,
      bram_rst_b => axi_bram_ctrl_2_BRAM_PORTB_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_2_BRAM_PORTA_WE(3 downto 0),
      bram_we_b(3 downto 0) => axi_bram_ctrl_2_BRAM_PORTB_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_2_BRAM_PORTA_DIN(31 downto 0),
      bram_wrdata_b(31 downto 0) => axi_bram_ctrl_2_BRAM_PORTB_DIN(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(15 downto 0) => periph_intercon_M05_AXI_ARADDR(15 downto 0),
      s_axi_arburst(1 downto 0) => periph_intercon_M05_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => periph_intercon_M05_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arlen(7 downto 0) => periph_intercon_M05_AXI_ARLEN(7 downto 0),
      s_axi_arlock => periph_intercon_M05_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => periph_intercon_M05_AXI_ARPROT(2 downto 0),
      s_axi_arready => periph_intercon_M05_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => periph_intercon_M05_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => periph_intercon_M05_AXI_ARVALID,
      s_axi_awaddr(15 downto 0) => periph_intercon_M05_AXI_AWADDR(15 downto 0),
      s_axi_awburst(1 downto 0) => periph_intercon_M05_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => periph_intercon_M05_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => periph_intercon_M05_AXI_AWLEN(7 downto 0),
      s_axi_awlock => periph_intercon_M05_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => periph_intercon_M05_AXI_AWPROT(2 downto 0),
      s_axi_awready => periph_intercon_M05_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => periph_intercon_M05_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => periph_intercon_M05_AXI_AWVALID,
      s_axi_bready => periph_intercon_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => periph_intercon_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => periph_intercon_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => periph_intercon_M05_AXI_RDATA(31 downto 0),
      s_axi_rlast => periph_intercon_M05_AXI_RLAST,
      s_axi_rready => periph_intercon_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => periph_intercon_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => periph_intercon_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => periph_intercon_M05_AXI_WDATA(31 downto 0),
      s_axi_wlast => periph_intercon_M05_AXI_WLAST,
      s_axi_wready => periph_intercon_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => periph_intercon_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => periph_intercon_M05_AXI_WVALID
    );
end STRUCTURE;
