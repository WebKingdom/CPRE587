library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.types.all;

entity mlp_conv_v1_0 is
  generic (
    -- Users to add parameters here

    -- User parameters ends
    -- Do not modify the parameters beyond this line
    -- Parameters of Axi Slave Bus Interface S00_AXI
    C_S00_AXI_DATA_WIDTH : integer := 32;
    C_S00_AXI_ADDR_WIDTH : integer := 7;

    -- Parameters of Axi Master Bus Interface M00_AXI
    C_M00_AXI_TARGET_SLAVE_BASE_ADDR : std_logic_vector := x"40000000";
    C_M00_AXI_BURST_LEN              : integer          := 16;
    C_M00_AXI_ID_WIDTH               : integer          := 1;
    C_M00_AXI_ADDR_WIDTH             : integer          := 32;
    C_M00_AXI_DATA_WIDTH             : integer          := 32;
    C_M00_AXI_AWUSER_WIDTH           : integer          := 0;
    C_M00_AXI_ARUSER_WIDTH           : integer          := 0;
    C_M00_AXI_WUSER_WIDTH            : integer          := 0;
    C_M00_AXI_RUSER_WIDTH            : integer          := 0;
    C_M00_AXI_BUSER_WIDTH            : integer          := 0;

    -- Parameters of Axi Slave Bus Interface S01_AXI
    C_S01_AXI_ID_WIDTH     : integer := 1;
    C_S01_AXI_DATA_WIDTH   : integer := 32;
    C_S01_AXI_ADDR_WIDTH   : integer := 10;
    C_S01_AXI_AWUSER_WIDTH : integer := 0;
    C_S01_AXI_ARUSER_WIDTH : integer := 0;
    C_S01_AXI_WUSER_WIDTH  : integer := 0;
    C_S01_AXI_RUSER_WIDTH  : integer := 0;
    C_S01_AXI_BUSER_WIDTH  : integer := 0;

    -- Parameters of Axi Slave Bus Interface S_AXI_INTR
    C_S_AXI_INTR_DATA_WIDTH : integer          := 32;
    C_S_AXI_INTR_ADDR_WIDTH : integer          := 5;
    C_NUM_OF_INTR           : integer          := 1;
    C_INTR_SENSITIVITY      : std_logic_vector := x"FFFFFFFF";
    C_INTR_ACTIVE_STATE     : std_logic_vector := x"FFFFFFFF";
    C_IRQ_SENSITIVITY       : integer          := 1;
    C_IRQ_ACTIVE_STATE      : integer          := 1
  );
  port (
    -- Users to add ports here

    -- User ports ends
    -- Do not modify the ports beyond this line
    -- Ports of Axi Slave Bus Interface S00_AXI
    s00_axi_aclk    : in std_logic;
    s00_axi_aresetn : in std_logic;
    s00_axi_awaddr  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH - 1 downto 0);
    s00_axi_awprot  : in std_logic_vector(2 downto 0);
    s00_axi_awvalid : in std_logic;
    s00_axi_awready : out std_logic;
    s00_axi_wdata   : in std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
    s00_axi_wstrb   : in std_logic_vector((C_S00_AXI_DATA_WIDTH/8) - 1 downto 0);
    s00_axi_wvalid  : in std_logic;
    s00_axi_wready  : out std_logic;
    s00_axi_bresp   : out std_logic_vector(1 downto 0);
    s00_axi_bvalid  : out std_logic;
    s00_axi_bready  : in std_logic;
    s00_axi_araddr  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH - 1 downto 0);
    s00_axi_arprot  : in std_logic_vector(2 downto 0);
    s00_axi_arvalid : in std_logic;
    s00_axi_arready : out std_logic;
    s00_axi_rdata   : out std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
    s00_axi_rresp   : out std_logic_vector(1 downto 0);
    s00_axi_rvalid  : out std_logic;
    s00_axi_rready  : in std_logic;

    -- Ports of Axi Master Bus Interface M00_AXI
    m00_axi_aclk    : in std_logic;
    m00_axi_aresetn : in std_logic;
    m00_axi_awid    : out std_logic_vector(C_M00_AXI_ID_WIDTH - 1 downto 0);
    m00_axi_awaddr  : out std_logic_vector(C_M00_AXI_ADDR_WIDTH - 1 downto 0);
    m00_axi_awlen   : out std_logic_vector(7 downto 0);
    m00_axi_awsize  : out std_logic_vector(2 downto 0);
    m00_axi_awburst : out std_logic_vector(1 downto 0);
    m00_axi_awlock  : out std_logic;
    m00_axi_awcache : out std_logic_vector(3 downto 0);
    m00_axi_awprot  : out std_logic_vector(2 downto 0);
    m00_axi_awqos   : out std_logic_vector(3 downto 0);
    m00_axi_awuser  : out std_logic_vector(C_M00_AXI_AWUSER_WIDTH - 1 downto 0);
    m00_axi_awvalid : out std_logic;
    m00_axi_awready : in std_logic;
    m00_axi_wdata   : out std_logic_vector(C_M00_AXI_DATA_WIDTH - 1 downto 0);
    m00_axi_wstrb   : out std_logic_vector(C_M00_AXI_DATA_WIDTH/8 - 1 downto 0);
    m00_axi_wlast   : out std_logic;
    m00_axi_wuser   : out std_logic_vector(C_M00_AXI_WUSER_WIDTH - 1 downto 0);
    m00_axi_wvalid  : out std_logic;
    m00_axi_wready  : in std_logic;
    m00_axi_bid     : in std_logic_vector(C_M00_AXI_ID_WIDTH - 1 downto 0);
    m00_axi_bresp   : in std_logic_vector(1 downto 0);
    m00_axi_buser   : in std_logic_vector(C_M00_AXI_BUSER_WIDTH - 1 downto 0);
    m00_axi_bvalid  : in std_logic;
    m00_axi_bready  : out std_logic;
    m00_axi_arid    : out std_logic_vector(C_M00_AXI_ID_WIDTH - 1 downto 0);
    m00_axi_araddr  : out std_logic_vector(C_M00_AXI_ADDR_WIDTH - 1 downto 0);
    m00_axi_arlen   : out std_logic_vector(7 downto 0);
    m00_axi_arsize  : out std_logic_vector(2 downto 0);
    m00_axi_arburst : out std_logic_vector(1 downto 0);
    m00_axi_arlock  : out std_logic;
    m00_axi_arcache : out std_logic_vector(3 downto 0);
    m00_axi_arprot  : out std_logic_vector(2 downto 0);
    m00_axi_arqos   : out std_logic_vector(3 downto 0);
    m00_axi_aruser  : out std_logic_vector(C_M00_AXI_ARUSER_WIDTH - 1 downto 0);
    m00_axi_arvalid : out std_logic;
    m00_axi_arready : in std_logic;
    m00_axi_rid     : in std_logic_vector(C_M00_AXI_ID_WIDTH - 1 downto 0);
    m00_axi_rdata   : in std_logic_vector(C_M00_AXI_DATA_WIDTH - 1 downto 0);
    m00_axi_rresp   : in std_logic_vector(1 downto 0);
    m00_axi_rlast   : in std_logic;
    m00_axi_ruser   : in std_logic_vector(C_M00_AXI_RUSER_WIDTH - 1 downto 0);
    m00_axi_rvalid  : in std_logic;
    m00_axi_rready  : out std_logic;

    -- Ports of Axi Slave Bus Interface S01_AXI
    s01_axi_aclk     : in std_logic;
    s01_axi_aresetn  : in std_logic;
    s01_axi_awid     : in std_logic_vector(C_S01_AXI_ID_WIDTH - 1 downto 0);
    s01_axi_awaddr   : in std_logic_vector(C_S01_AXI_ADDR_WIDTH - 1 downto 0);
    s01_axi_awlen    : in std_logic_vector(7 downto 0);
    s01_axi_awsize   : in std_logic_vector(2 downto 0);
    s01_axi_awburst  : in std_logic_vector(1 downto 0);
    s01_axi_awlock   : in std_logic;
    s01_axi_awcache  : in std_logic_vector(3 downto 0);
    s01_axi_awprot   : in std_logic_vector(2 downto 0);
    s01_axi_awqos    : in std_logic_vector(3 downto 0);
    s01_axi_awregion : in std_logic_vector(3 downto 0);
    s01_axi_awuser   : in std_logic_vector(C_S01_AXI_AWUSER_WIDTH - 1 downto 0);
    s01_axi_awvalid  : in std_logic;
    s01_axi_awready  : out std_logic;
    s01_axi_wdata    : in std_logic_vector(C_S01_AXI_DATA_WIDTH - 1 downto 0);
    s01_axi_wstrb    : in std_logic_vector((C_S01_AXI_DATA_WIDTH/8) - 1 downto 0);
    s01_axi_wlast    : in std_logic;
    s01_axi_wuser    : in std_logic_vector(C_S01_AXI_WUSER_WIDTH - 1 downto 0);
    s01_axi_wvalid   : in std_logic;
    s01_axi_wready   : out std_logic;
    s01_axi_bid      : out std_logic_vector(C_S01_AXI_ID_WIDTH - 1 downto 0);
    s01_axi_bresp    : out std_logic_vector(1 downto 0);
    s01_axi_buser    : out std_logic_vector(C_S01_AXI_BUSER_WIDTH - 1 downto 0);
    s01_axi_bvalid   : out std_logic;
    s01_axi_bready   : in std_logic;
    s01_axi_arid     : in std_logic_vector(C_S01_AXI_ID_WIDTH - 1 downto 0);
    s01_axi_araddr   : in std_logic_vector(C_S01_AXI_ADDR_WIDTH - 1 downto 0);
    s01_axi_arlen    : in std_logic_vector(7 downto 0);
    s01_axi_arsize   : in std_logic_vector(2 downto 0);
    s01_axi_arburst  : in std_logic_vector(1 downto 0);
    s01_axi_arlock   : in std_logic;
    s01_axi_arcache  : in std_logic_vector(3 downto 0);
    s01_axi_arprot   : in std_logic_vector(2 downto 0);
    s01_axi_arqos    : in std_logic_vector(3 downto 0);
    s01_axi_arregion : in std_logic_vector(3 downto 0);
    s01_axi_aruser   : in std_logic_vector(C_S01_AXI_ARUSER_WIDTH - 1 downto 0);
    s01_axi_arvalid  : in std_logic;
    s01_axi_arready  : out std_logic;
    s01_axi_rid      : out std_logic_vector(C_S01_AXI_ID_WIDTH - 1 downto 0);
    s01_axi_rdata    : out std_logic_vector(C_S01_AXI_DATA_WIDTH - 1 downto 0);
    s01_axi_rresp    : out std_logic_vector(1 downto 0);
    s01_axi_rlast    : out std_logic;
    s01_axi_ruser    : out std_logic_vector(C_S01_AXI_RUSER_WIDTH - 1 downto 0);
    s01_axi_rvalid   : out std_logic;
    s01_axi_rready   : in std_logic;

    -- Ports of Axi Slave Bus Interface S_AXI_INTR
    s_axi_intr_aclk    : in std_logic;
    s_axi_intr_aresetn : in std_logic;
    s_axi_intr_awaddr  : in std_logic_vector(C_S_AXI_INTR_ADDR_WIDTH - 1 downto 0);
    s_axi_intr_awprot  : in std_logic_vector(2 downto 0);
    s_axi_intr_awvalid : in std_logic;
    s_axi_intr_awready : out std_logic;
    s_axi_intr_wdata   : in std_logic_vector(C_S_AXI_INTR_DATA_WIDTH - 1 downto 0);
    s_axi_intr_wstrb   : in std_logic_vector((C_S_AXI_INTR_DATA_WIDTH/8) - 1 downto 0);
    s_axi_intr_wvalid  : in std_logic;
    s_axi_intr_wready  : out std_logic;
    s_axi_intr_bresp   : out std_logic_vector(1 downto 0);
    s_axi_intr_bvalid  : out std_logic;
    s_axi_intr_bready  : in std_logic;
    s_axi_intr_araddr  : in std_logic_vector(C_S_AXI_INTR_ADDR_WIDTH - 1 downto 0);
    s_axi_intr_arprot  : in std_logic_vector(2 downto 0);
    s_axi_intr_arvalid : in std_logic;
    s_axi_intr_arready : out std_logic;
    s_axi_intr_rdata   : out std_logic_vector(C_S_AXI_INTR_DATA_WIDTH - 1 downto 0);
    s_axi_intr_rresp   : out std_logic_vector(1 downto 0);
    s_axi_intr_rvalid  : out std_logic;
    s_axi_intr_rready  : in std_logic;
    irq                : out std_logic
  );
end mlp_conv_v1_0;

architecture arch_imp of mlp_conv_v1_0 is

  constant PE_ROWS        : integer := 5;
  constant PE_COLS        : integer := 5;
  constant MAC_PIPE_DEPTH : integer := 2;
  constant BYTE_LEN       : integer := 8;

  -- component declaration
  component mlp_conv_v1_0_S00_AXI is
    generic (
      C_S_AXI_DATA_WIDTH : integer := 32;
      C_S_AXI_ADDR_WIDTH : integer := 7
    );
    port (
      MLP_AXI_FILTER_PARAMS    : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
      MLP_AXI_PE_STATUS        : in std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
      MLP_AXI_WEIGHT_BASE_ADDR : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
      MLP_AXI_INPUT_BASE_ADDR  : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
      MLP_AXI_OUTPUT_BASE_ADDR : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
      MLP_AXI_MEM_CTRL         : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);

      S_AXI_ACLK    : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
      S_AXI_AWPROT  : in std_logic_vector(2 downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_AWREADY : out std_logic;
      S_AXI_WDATA   : in std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
      S_AXI_WSTRB   : in std_logic_vector((C_S_AXI_DATA_WIDTH/8) - 1 downto 0);
      S_AXI_WVALID  : in std_logic;
      S_AXI_WREADY  : out std_logic;
      S_AXI_BRESP   : out std_logic_vector(1 downto 0);
      S_AXI_BVALID  : out std_logic;
      S_AXI_BREADY  : in std_logic;
      S_AXI_ARADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
      S_AXI_ARPROT  : in std_logic_vector(2 downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
      S_AXI_RRESP   : out std_logic_vector(1 downto 0);
      S_AXI_RVALID  : out std_logic;
      S_AXI_RREADY  : in std_logic
    );
  end component mlp_conv_v1_0_S00_AXI;

  component mlp_conv_v1_0_M00_AXI is
    generic (
      C_M_AXI_BURST_LEN    : integer := 16;
      C_M_AXI_ID_WIDTH     : integer := 1;
      C_M_AXI_ADDR_WIDTH   : integer := 32;
      C_M_AXI_DATA_WIDTH   : integer := 32;
      C_M_AXI_AWUSER_WIDTH : integer := 0;
      C_M_AXI_ARUSER_WIDTH : integer := 0;
      C_M_AXI_WUSER_WIDTH  : integer := 0;
      C_M_AXI_RUSER_WIDTH  : integer := 0;
      C_M_AXI_BUSER_WIDTH  : integer := 0
    );
    port (
      -- * Custom ports
      M_TARGET_SLAVE_BASE_AR_ADDR : in std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
      M_TARGET_SLAVE_BASE_AW_ADDR : in std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
      M_AXI_RDATA_OUT             : out std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
      M_AXI_RVALID_RREADY         : out std_logic;
      M_AXI_WDATA_IN              : in std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
      M_AXI_WVALID_WREADY         : out std_logic;
      M_AXI_AWVALID_AWREADY       : out std_logic;
      -- * End custom ports
      INIT_AXI_RD_TXN : in std_logic;
      INIT_AXI_WR_TXN : in std_logic;
      TXN_DONE        : out std_logic;
      ERROR           : out std_logic;
      -- * End PE control unit ports
      M_AXI_ACLK    : in std_logic;
      M_AXI_ARESETN : in std_logic;
      M_AXI_AWID    : out std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);
      M_AXI_AWADDR  : out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
      M_AXI_AWLEN   : out std_logic_vector(7 downto 0);
      M_AXI_AWSIZE  : out std_logic_vector(2 downto 0);
      M_AXI_AWBURST : out std_logic_vector(1 downto 0);
      M_AXI_AWLOCK  : out std_logic;
      M_AXI_AWCACHE : out std_logic_vector(3 downto 0);
      M_AXI_AWPROT  : out std_logic_vector(2 downto 0);
      M_AXI_AWQOS   : out std_logic_vector(3 downto 0);
      M_AXI_AWUSER  : out std_logic_vector(C_M_AXI_AWUSER_WIDTH - 1 downto 0);
      M_AXI_AWVALID : out std_logic;
      M_AXI_AWREADY : in std_logic;
      M_AXI_WDATA   : out std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
      M_AXI_WSTRB   : out std_logic_vector(C_M_AXI_DATA_WIDTH/8 - 1 downto 0);
      M_AXI_WLAST   : out std_logic;
      M_AXI_WUSER   : out std_logic_vector(C_M_AXI_WUSER_WIDTH - 1 downto 0);
      M_AXI_WVALID  : out std_logic;
      M_AXI_WREADY  : in std_logic;
      M_AXI_BID     : in std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);
      M_AXI_BRESP   : in std_logic_vector(1 downto 0);
      M_AXI_BUSER   : in std_logic_vector(C_M_AXI_BUSER_WIDTH - 1 downto 0);
      M_AXI_BVALID  : in std_logic;
      M_AXI_BREADY  : out std_logic;
      M_AXI_ARID    : out std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);
      M_AXI_ARADDR  : out std_logic_vector(C_M_AXI_ADDR_WIDTH - 1 downto 0);
      M_AXI_ARLEN   : out std_logic_vector(7 downto 0);
      M_AXI_ARSIZE  : out std_logic_vector(2 downto 0);
      M_AXI_ARBURST : out std_logic_vector(1 downto 0);
      M_AXI_ARLOCK  : out std_logic;
      M_AXI_ARCACHE : out std_logic_vector(3 downto 0);
      M_AXI_ARPROT  : out std_logic_vector(2 downto 0);
      M_AXI_ARQOS   : out std_logic_vector(3 downto 0);
      M_AXI_ARUSER  : out std_logic_vector(C_M_AXI_ARUSER_WIDTH - 1 downto 0);
      M_AXI_ARVALID : out std_logic;
      M_AXI_ARREADY : in std_logic;
      M_AXI_RID     : in std_logic_vector(C_M_AXI_ID_WIDTH - 1 downto 0);
      M_AXI_RDATA   : in std_logic_vector(C_M_AXI_DATA_WIDTH - 1 downto 0);
      M_AXI_RRESP   : in std_logic_vector(1 downto 0);
      M_AXI_RLAST   : in std_logic;
      M_AXI_RUSER   : in std_logic_vector(C_M_AXI_RUSER_WIDTH - 1 downto 0);
      M_AXI_RVALID  : in std_logic;
      M_AXI_RREADY  : out std_logic
    );
  end component mlp_conv_v1_0_M00_AXI;

  component mlp_conv_v1_0_S01_AXI is
    generic (
      C_S_AXI_ID_WIDTH     : integer := 1;
      C_S_AXI_DATA_WIDTH   : integer := 32;
      C_S_AXI_ADDR_WIDTH   : integer := 10;
      C_S_AXI_AWUSER_WIDTH : integer := 0;
      C_S_AXI_ARUSER_WIDTH : integer := 0;
      C_S_AXI_WUSER_WIDTH  : integer := 0;
      C_S_AXI_RUSER_WIDTH  : integer := 0;
      C_S_AXI_BUSER_WIDTH  : integer := 0
    );
    port (
      S_AXI_ACLK     : in std_logic;
      S_AXI_ARESETN  : in std_logic;
      S_AXI_AWID     : in std_logic_vector(C_S_AXI_ID_WIDTH - 1 downto 0);
      S_AXI_AWADDR   : in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
      S_AXI_AWLEN    : in std_logic_vector(7 downto 0);
      S_AXI_AWSIZE   : in std_logic_vector(2 downto 0);
      S_AXI_AWBURST  : in std_logic_vector(1 downto 0);
      S_AXI_AWLOCK   : in std_logic;
      S_AXI_AWCACHE  : in std_logic_vector(3 downto 0);
      S_AXI_AWPROT   : in std_logic_vector(2 downto 0);
      S_AXI_AWQOS    : in std_logic_vector(3 downto 0);
      S_AXI_AWREGION : in std_logic_vector(3 downto 0);
      S_AXI_AWUSER   : in std_logic_vector(C_S_AXI_AWUSER_WIDTH - 1 downto 0);
      S_AXI_AWVALID  : in std_logic;
      S_AXI_AWREADY  : out std_logic;
      S_AXI_WDATA    : in std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
      S_AXI_WSTRB    : in std_logic_vector((C_S_AXI_DATA_WIDTH/8) - 1 downto 0);
      S_AXI_WLAST    : in std_logic;
      S_AXI_WUSER    : in std_logic_vector(C_S_AXI_WUSER_WIDTH - 1 downto 0);
      S_AXI_WVALID   : in std_logic;
      S_AXI_WREADY   : out std_logic;
      S_AXI_BID      : out std_logic_vector(C_S_AXI_ID_WIDTH - 1 downto 0);
      S_AXI_BRESP    : out std_logic_vector(1 downto 0);
      S_AXI_BUSER    : out std_logic_vector(C_S_AXI_BUSER_WIDTH - 1 downto 0);
      S_AXI_BVALID   : out std_logic;
      S_AXI_BREADY   : in std_logic;
      S_AXI_ARID     : in std_logic_vector(C_S_AXI_ID_WIDTH - 1 downto 0);
      S_AXI_ARADDR   : in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
      S_AXI_ARLEN    : in std_logic_vector(7 downto 0);
      S_AXI_ARSIZE   : in std_logic_vector(2 downto 0);
      S_AXI_ARBURST  : in std_logic_vector(1 downto 0);
      S_AXI_ARLOCK   : in std_logic;
      S_AXI_ARCACHE  : in std_logic_vector(3 downto 0);
      S_AXI_ARPROT   : in std_logic_vector(2 downto 0);
      S_AXI_ARQOS    : in std_logic_vector(3 downto 0);
      S_AXI_ARREGION : in std_logic_vector(3 downto 0);
      S_AXI_ARUSER   : in std_logic_vector(C_S_AXI_ARUSER_WIDTH - 1 downto 0);
      S_AXI_ARVALID  : in std_logic;
      S_AXI_ARREADY  : out std_logic;
      S_AXI_RID      : out std_logic_vector(C_S_AXI_ID_WIDTH - 1 downto 0);
      S_AXI_RDATA    : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
      S_AXI_RRESP    : out std_logic_vector(1 downto 0);
      S_AXI_RLAST    : out std_logic;
      S_AXI_RUSER    : out std_logic_vector(C_S_AXI_RUSER_WIDTH - 1 downto 0);
      S_AXI_RVALID   : out std_logic;
      S_AXI_RREADY   : in std_logic
    );
  end component mlp_conv_v1_0_S01_AXI;

  component mlp_conv_v1_0_S_AXI_INTR is
    generic (
      C_S_AXI_DATA_WIDTH  : integer          := 32;
      C_S_AXI_ADDR_WIDTH  : integer          := 5;
      C_NUM_OF_INTR       : integer          := 1;
      C_INTR_SENSITIVITY  : std_logic_vector := x"FFFFFFFF";
      C_INTR_ACTIVE_STATE : std_logic_vector := x"FFFFFFFF";
      C_IRQ_SENSITIVITY   : integer          := 1;
      C_IRQ_ACTIVE_STATE  : integer          := 1
    );
    port (
      S_AXI_ACLK    : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
      S_AXI_AWPROT  : in std_logic_vector(2 downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_AWREADY : out std_logic;
      S_AXI_WDATA   : in std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
      S_AXI_WSTRB   : in std_logic_vector((C_S_AXI_DATA_WIDTH/8) - 1 downto 0);
      S_AXI_WVALID  : in std_logic;
      S_AXI_WREADY  : out std_logic;
      S_AXI_BRESP   : out std_logic_vector(1 downto 0);
      S_AXI_BVALID  : out std_logic;
      S_AXI_BREADY  : in std_logic;
      S_AXI_ARADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH - 1 downto 0);
      S_AXI_ARPROT  : in std_logic_vector(2 downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH - 1 downto 0);
      S_AXI_RRESP   : out std_logic_vector(1 downto 0);
      S_AXI_RVALID  : out std_logic;
      S_AXI_RREADY  : in std_logic;
      irq           : out std_logic
    );
  end component mlp_conv_v1_0_S_AXI_INTR;

  -- instantiate PE control unit
  component pe_control_unit is
    generic (
      C_S00_AXI_DATA_WIDTH             : integer          := 32;
      C_M00_AXI_DATA_WIDTH             : integer          := 32;
      C_M00_AXI_BURST_LEN              : integer          := 16;
      C_M00_AXI_TARGET_SLAVE_BASE_ADDR : std_logic_vector := x"40000000";
      PE_ROWS                          : integer          := 5;
      PE_COLS                          : integer          := 5;
      MAC_PIPE_DEPTH                   : integer          := 2;
      BYTE_LEN                         : integer          := 8
    );
    port (
      CLK    : in std_logic;
      RESETN : in std_logic;
      -- PE registers
      ACC_PARAMS       : in std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
      WEIGHT_BASE_ADDR : in std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
      INPUT_BASE_ADDR  : in std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
      OUTPUT_BASE_ADDR : in std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
      MEM_CTRL         : in std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
      PE_STATUS        : out std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
      -- PE array interface
      RESETN_MAC_CTRL   : out std_logic;
      IN_ACT_DATA_OUT   : out std_logic_vector(BYTE_LEN - 1 downto 0);
      WEIGHTS_OUT       : out std_logic_vector(PE_ROWS * PE_COLS * BYTE_LEN - 1 downto 0);
      STALL_CTRL        : out std_logic;
      ADD_MUX_CTRL      : out t_add_mux_ctrl;
      ROW_OUT_MUX_CTRL  : out t_row_out_mux_ctrl;
      PSUM_OUT_MUX_CTRL : out std_logic_vector(2 downto 0);
      IN_PSUM_OUT       : out std_logic_vector(C_M00_AXI_DATA_WIDTH - 1 downto 0);
      OUT_PSUM_IN       : in std_logic_vector(C_M00_AXI_DATA_WIDTH - 1 downto 0);
      -- AXI Master interface
      M_TARGET_SLAVE_BASE_AR_ADDR : out std_logic_vector(C_M00_AXI_ADDR_WIDTH - 1 downto 0);
      M_TARGET_SLAVE_BASE_AW_ADDR : out std_logic_vector(C_M00_AXI_ADDR_WIDTH - 1 downto 0);
      M_AXI_RDATA                 : in std_logic_vector(C_M00_AXI_DATA_WIDTH - 1 downto 0);
      M_AXI_RVALID_RREADY         : in std_logic;
      M_AXI_WDATA                 : out std_logic_vector(C_M00_AXI_DATA_WIDTH - 1 downto 0);
      M_AXI_WVALID_WREADY         : in std_logic;
      M_AXI_AWVALID_AWREADY       : in std_logic;
      INIT_AXI_WR_TXN             : out std_logic;
      INIT_AXI_RD_TXN             : out std_logic;
      TXN_DONE                    : in std_logic;
      AXI_ERROR                   : in std_logic
    );
  end component pe_control_unit;

  -- instantiate PE array
  component mlp_conv_v1_0_PE_ARR is
    generic (
      INPUT_WIDTH    : integer := 8;
      OUTPUT_WIDTH   : integer := 32;
      PE_WIDTH       : integer := 5;
      PS_WIDTH       : integer := 4;
      ROW_OUT_WIDTH  : integer := 4;
      PSUM_OUT_WIDTH : integer := 3
    );
    port (
      ACLK    : in std_logic;
      ARESETN : in std_logic;

      input   : in std_logic_vector(INPUT_WIDTH - 1 downto 0);
      weights : in std_logic_vector(PE_WIDTH * PE_WIDTH * INPUT_WIDTH - 1 downto 0);

      stall_ctl        : in std_logic;
      row_out_mux_ctrl : in t_row_out_mux_ctrl;
      psum_out_ctrl    : in std_logic_vector(PSUM_OUT_WIDTH - 1 downto 0);
      add_mux_ctrl     : in t_add_mux_ctrl;

      psum_in : in std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
      output  : out std_logic_vector(OUTPUT_WIDTH - 1 downto 0)
    );
  end component;

  -- S00 (register bank) signals
  signal filter_params    : std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
  signal weight_base_addr : std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
  signal input_base_addr  : std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
  signal output_base_addr : std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);
  signal mem_ctrl         : std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);

  signal pe_status : std_logic_vector(C_S00_AXI_DATA_WIDTH - 1 downto 0);

  -- PE array signals
  signal resetn_mac_ctrl  : std_logic;
  signal in_act_data_out  : std_logic_vector(BYTE_LEN - 1 downto 0);
  signal weights_out      : std_logic_vector(PE_ROWS * PE_COLS * BYTE_LEN - 1 downto 0);
  signal stall_ctrl       : std_logic;
  signal add_mux_ctrl     : t_add_mux_ctrl;
  signal row_out_mux_ctrl : t_row_out_mux_ctrl;
  signal psum_out_ctrl    : std_logic_vector(2 downto 0);
  signal in_psum_out      : std_logic_vector(C_M00_AXI_DATA_WIDTH - 1 downto 0);
  signal out_psum_in      : std_logic_vector(C_M00_AXI_DATA_WIDTH - 1 downto 0);

  -- M00 (Master AXI interface) signals
  signal m00_axi_init_axi_wr_txn       : std_logic;
  signal m00_axi_init_axi_rd_txn       : std_logic;
  signal m00_axi_txn_done              : std_logic;
  signal m00_axi_error                 : std_logic;
  signal m00_target_slave_base_ar_addr : std_logic_vector(C_M00_AXI_ADDR_WIDTH - 1 downto 0);
  signal m00_target_slave_base_aw_addr : std_logic_vector(C_M00_AXI_ADDR_WIDTH - 1 downto 0);
  signal m00_axi_rdata_out             : std_logic_vector(C_M00_AXI_DATA_WIDTH - 1 downto 0);
  signal m00_axi_rvalid_rready         : std_logic;
  signal m00_axi_wdata_in              : std_logic_vector(C_M00_AXI_DATA_WIDTH - 1 downto 0);
  signal m00_axi_wvalid_wready         : std_logic;
  signal m00_axi_awvalid_awready       : std_logic;

begin

  -- Instantiation of Axi Bus Interface S00_AXI
  mlp_conv_v1_0_S00_AXI_inst : mlp_conv_v1_0_S00_AXI
  generic map(
    C_S_AXI_DATA_WIDTH => C_S00_AXI_DATA_WIDTH,
    C_S_AXI_ADDR_WIDTH => C_S00_AXI_ADDR_WIDTH
  )
  port map(
    MLP_AXI_FILTER_PARAMS    => filter_params,
    MLP_AXI_WEIGHT_BASE_ADDR => weight_base_addr,
    MLP_AXI_INPUT_BASE_ADDR  => input_base_addr,
    MLP_AXI_OUTPUT_BASE_ADDR => output_base_addr,
    MLP_AXI_MEM_CTRL         => mem_ctrl,
    MLP_AXI_PE_STATUS        => pe_status,
    S_AXI_ACLK               => s00_axi_aclk,
    S_AXI_ARESETN            => s00_axi_aresetn,
    S_AXI_AWADDR             => s00_axi_awaddr,
    S_AXI_AWPROT             => s00_axi_awprot,
    S_AXI_AWVALID            => s00_axi_awvalid,
    S_AXI_AWREADY            => s00_axi_awready,
    S_AXI_WDATA              => s00_axi_wdata,
    S_AXI_WSTRB              => s00_axi_wstrb,
    S_AXI_WVALID             => s00_axi_wvalid,
    S_AXI_WREADY             => s00_axi_wready,
    S_AXI_BRESP              => s00_axi_bresp,
    S_AXI_BVALID             => s00_axi_bvalid,
    S_AXI_BREADY             => s00_axi_bready,
    S_AXI_ARADDR             => s00_axi_araddr,
    S_AXI_ARPROT             => s00_axi_arprot,
    S_AXI_ARVALID            => s00_axi_arvalid,
    S_AXI_ARREADY            => s00_axi_arready,
    S_AXI_RDATA              => s00_axi_rdata,
    S_AXI_RRESP              => s00_axi_rresp,
    S_AXI_RVALID             => s00_axi_rvalid,
    S_AXI_RREADY             => s00_axi_rready
  );

  -- Instantiation of Axi Bus Interface M00_AXI
  mlp_conv_v1_0_M00_AXI_inst : mlp_conv_v1_0_M00_AXI
  generic map(
    C_M_AXI_BURST_LEN    => C_M00_AXI_BURST_LEN,
    C_M_AXI_ID_WIDTH     => C_M00_AXI_ID_WIDTH,
    C_M_AXI_ADDR_WIDTH   => C_M00_AXI_ADDR_WIDTH,
    C_M_AXI_DATA_WIDTH   => C_M00_AXI_DATA_WIDTH,
    C_M_AXI_AWUSER_WIDTH => C_M00_AXI_AWUSER_WIDTH,
    C_M_AXI_ARUSER_WIDTH => C_M00_AXI_ARUSER_WIDTH,
    C_M_AXI_WUSER_WIDTH  => C_M00_AXI_WUSER_WIDTH,
    C_M_AXI_RUSER_WIDTH  => C_M00_AXI_RUSER_WIDTH,
    C_M_AXI_BUSER_WIDTH  => C_M00_AXI_BUSER_WIDTH
  )
  port map(
    -- * Custom ports
    M_TARGET_SLAVE_BASE_AR_ADDR => m00_target_slave_base_ar_addr,
    M_TARGET_SLAVE_BASE_AW_ADDR => m00_target_slave_base_aw_addr,
    M_AXI_RDATA_OUT             => m00_axi_rdata_out,
    M_AXI_RVALID_RREADY         => m00_axi_rvalid_rready,
    M_AXI_WDATA_IN              => m00_axi_wdata_in,
    M_AXI_WVALID_WREADY         => m00_axi_wvalid_wready,
    M_AXI_AWVALID_AWREADY       => m00_axi_awvalid_awready,
    -- * End custom ports
    INIT_AXI_WR_TXN => m00_axi_init_axi_wr_txn,
    INIT_AXI_RD_TXN => m00_axi_init_axi_rd_txn,
    TXN_DONE        => m00_axi_txn_done,
    ERROR           => m00_axi_error,
    -- * End PE control unit ports
    M_AXI_ACLK    => m00_axi_aclk,
    M_AXI_ARESETN => m00_axi_aresetn,
    M_AXI_AWID    => m00_axi_awid,
    M_AXI_AWADDR  => m00_axi_awaddr,
    M_AXI_AWLEN   => m00_axi_awlen,
    M_AXI_AWSIZE  => m00_axi_awsize,
    M_AXI_AWBURST => m00_axi_awburst,
    M_AXI_AWLOCK  => m00_axi_awlock,
    M_AXI_AWCACHE => m00_axi_awcache,
    M_AXI_AWPROT  => m00_axi_awprot,
    M_AXI_AWQOS   => m00_axi_awqos,
    M_AXI_AWUSER  => m00_axi_awuser,
    M_AXI_AWVALID => m00_axi_awvalid,
    M_AXI_AWREADY => m00_axi_awready,
    M_AXI_WDATA   => m00_axi_wdata,
    M_AXI_WSTRB   => m00_axi_wstrb,
    M_AXI_WLAST   => m00_axi_wlast,
    M_AXI_WUSER   => m00_axi_wuser,
    M_AXI_WVALID  => m00_axi_wvalid,
    M_AXI_WREADY  => m00_axi_wready,
    M_AXI_BID     => m00_axi_bid,
    M_AXI_BRESP   => m00_axi_bresp,
    M_AXI_BUSER   => m00_axi_buser,
    M_AXI_BVALID  => m00_axi_bvalid,
    M_AXI_BREADY  => m00_axi_bready,
    M_AXI_ARID    => m00_axi_arid,
    M_AXI_ARADDR  => m00_axi_araddr,
    M_AXI_ARLEN   => m00_axi_arlen,
    M_AXI_ARSIZE  => m00_axi_arsize,
    M_AXI_ARBURST => m00_axi_arburst,
    M_AXI_ARLOCK  => m00_axi_arlock,
    M_AXI_ARCACHE => m00_axi_arcache,
    M_AXI_ARPROT  => m00_axi_arprot,
    M_AXI_ARQOS   => m00_axi_arqos,
    M_AXI_ARUSER  => m00_axi_aruser,
    M_AXI_ARVALID => m00_axi_arvalid,
    M_AXI_ARREADY => m00_axi_arready,
    M_AXI_RID     => m00_axi_rid,
    M_AXI_RDATA   => m00_axi_rdata,
    M_AXI_RRESP   => m00_axi_rresp,
    M_AXI_RLAST   => m00_axi_rlast,
    M_AXI_RUSER   => m00_axi_ruser,
    M_AXI_RVALID  => m00_axi_rvalid,
    M_AXI_RREADY  => m00_axi_rready
  );

  -- Instantiation of Axi Bus Interface S01_AXI
  mlp_conv_v1_0_S01_AXI_inst : mlp_conv_v1_0_S01_AXI
  generic map(
    C_S_AXI_ID_WIDTH     => C_S01_AXI_ID_WIDTH,
    C_S_AXI_DATA_WIDTH   => C_S01_AXI_DATA_WIDTH,
    C_S_AXI_ADDR_WIDTH   => C_S01_AXI_ADDR_WIDTH,
    C_S_AXI_AWUSER_WIDTH => C_S01_AXI_AWUSER_WIDTH,
    C_S_AXI_ARUSER_WIDTH => C_S01_AXI_ARUSER_WIDTH,
    C_S_AXI_WUSER_WIDTH  => C_S01_AXI_WUSER_WIDTH,
    C_S_AXI_RUSER_WIDTH  => C_S01_AXI_RUSER_WIDTH,
    C_S_AXI_BUSER_WIDTH  => C_S01_AXI_BUSER_WIDTH
  )
  port map(
    S_AXI_ACLK     => s01_axi_aclk,
    S_AXI_ARESETN  => s01_axi_aresetn,
    S_AXI_AWID     => s01_axi_awid,
    S_AXI_AWADDR   => s01_axi_awaddr,
    S_AXI_AWLEN    => s01_axi_awlen,
    S_AXI_AWSIZE   => s01_axi_awsize,
    S_AXI_AWBURST  => s01_axi_awburst,
    S_AXI_AWLOCK   => s01_axi_awlock,
    S_AXI_AWCACHE  => s01_axi_awcache,
    S_AXI_AWPROT   => s01_axi_awprot,
    S_AXI_AWQOS    => s01_axi_awqos,
    S_AXI_AWREGION => s01_axi_awregion,
    S_AXI_AWUSER   => s01_axi_awuser,
    S_AXI_AWVALID  => s01_axi_awvalid,
    S_AXI_AWREADY  => s01_axi_awready,
    S_AXI_WDATA    => s01_axi_wdata,
    S_AXI_WSTRB    => s01_axi_wstrb,
    S_AXI_WLAST    => s01_axi_wlast,
    S_AXI_WUSER    => s01_axi_wuser,
    S_AXI_WVALID   => s01_axi_wvalid,
    S_AXI_WREADY   => s01_axi_wready,
    S_AXI_BID      => s01_axi_bid,
    S_AXI_BRESP    => s01_axi_bresp,
    S_AXI_BUSER    => s01_axi_buser,
    S_AXI_BVALID   => s01_axi_bvalid,
    S_AXI_BREADY   => s01_axi_bready,
    S_AXI_ARID     => s01_axi_arid,
    S_AXI_ARADDR   => s01_axi_araddr,
    S_AXI_ARLEN    => s01_axi_arlen,
    S_AXI_ARSIZE   => s01_axi_arsize,
    S_AXI_ARBURST  => s01_axi_arburst,
    S_AXI_ARLOCK   => s01_axi_arlock,
    S_AXI_ARCACHE  => s01_axi_arcache,
    S_AXI_ARPROT   => s01_axi_arprot,
    S_AXI_ARQOS    => s01_axi_arqos,
    S_AXI_ARREGION => s01_axi_arregion,
    S_AXI_ARUSER   => s01_axi_aruser,
    S_AXI_ARVALID  => s01_axi_arvalid,
    S_AXI_ARREADY  => s01_axi_arready,
    S_AXI_RID      => s01_axi_rid,
    S_AXI_RDATA    => s01_axi_rdata,
    S_AXI_RRESP    => s01_axi_rresp,
    S_AXI_RLAST    => s01_axi_rlast,
    S_AXI_RUSER    => s01_axi_ruser,
    S_AXI_RVALID   => s01_axi_rvalid,
    S_AXI_RREADY   => s01_axi_rready
  );

  -- Instantiation of Axi Bus Interface S_AXI_INTR
  mlp_conv_v1_0_S_AXI_INTR_inst : mlp_conv_v1_0_S_AXI_INTR
  generic map(
    C_S_AXI_DATA_WIDTH  => C_S_AXI_INTR_DATA_WIDTH,
    C_S_AXI_ADDR_WIDTH  => C_S_AXI_INTR_ADDR_WIDTH,
    C_NUM_OF_INTR       => C_NUM_OF_INTR,
    C_INTR_SENSITIVITY  => C_INTR_SENSITIVITY,
    C_INTR_ACTIVE_STATE => C_INTR_ACTIVE_STATE,
    C_IRQ_SENSITIVITY   => C_IRQ_SENSITIVITY,
    C_IRQ_ACTIVE_STATE  => C_IRQ_ACTIVE_STATE
  )
  port map(
    S_AXI_ACLK    => s_axi_intr_aclk,
    S_AXI_ARESETN => s_axi_intr_aresetn,
    S_AXI_AWADDR  => s_axi_intr_awaddr,
    S_AXI_AWPROT  => s_axi_intr_awprot,
    S_AXI_AWVALID => s_axi_intr_awvalid,
    S_AXI_AWREADY => s_axi_intr_awready,
    S_AXI_WDATA   => s_axi_intr_wdata,
    S_AXI_WSTRB   => s_axi_intr_wstrb,
    S_AXI_WVALID  => s_axi_intr_wvalid,
    S_AXI_WREADY  => s_axi_intr_wready,
    S_AXI_BRESP   => s_axi_intr_bresp,
    S_AXI_BVALID  => s_axi_intr_bvalid,
    S_AXI_BREADY  => s_axi_intr_bready,
    S_AXI_ARADDR  => s_axi_intr_araddr,
    S_AXI_ARPROT  => s_axi_intr_arprot,
    S_AXI_ARVALID => s_axi_intr_arvalid,
    S_AXI_ARREADY => s_axi_intr_arready,
    S_AXI_RDATA   => s_axi_intr_rdata,
    S_AXI_RRESP   => s_axi_intr_rresp,
    S_AXI_RVALID  => s_axi_intr_rvalid,
    S_AXI_RREADY  => s_axi_intr_rready,
    irq           => irq
  );

  -- Add user logic here

  -- PE control unit
  pe_control_unit_inst : pe_control_unit
  generic map(
    C_S00_AXI_DATA_WIDTH             => C_S00_AXI_DATA_WIDTH,
    C_M00_AXI_DATA_WIDTH             => C_M00_AXI_DATA_WIDTH,
    C_M00_AXI_BURST_LEN              => C_M00_AXI_BURST_LEN,
    C_M00_AXI_TARGET_SLAVE_BASE_ADDR => C_M00_AXI_TARGET_SLAVE_BASE_ADDR,
    PE_ROWS                          => PE_ROWS,
    PE_COLS                          => PE_COLS,
    MAC_PIPE_DEPTH                   => MAC_PIPE_DEPTH,
    BYTE_LEN                         => BYTE_LEN
  )
  port map(
    CLK    => m00_axi_aclk,
    RESETN => m00_axi_aresetn,
    -- PE registers
    ACC_PARAMS       => filter_params,
    WEIGHT_BASE_ADDR => weight_base_addr,
    INPUT_BASE_ADDR  => input_base_addr,
    OUTPUT_BASE_ADDR => output_base_addr,
    MEM_CTRL         => mem_ctrl,
    PE_STATUS        => pe_status,
    -- PE array interface
    RESETN_MAC_CTRL   => resetn_mac_ctrl,
    IN_ACT_DATA_OUT   => in_act_data_out,
    WEIGHTS_OUT       => weights_out,
    STALL_CTRL        => stall_ctrl,
    ADD_MUX_CTRL      => add_mux_ctrl,
    ROW_OUT_MUX_CTRL  => row_out_mux_ctrl,
    PSUM_OUT_MUX_CTRL => psum_out_ctrl,
    IN_PSUM_OUT       => in_psum_out,
    OUT_PSUM_IN       => out_psum_in,
    -- AXI Master interface
    M_TARGET_SLAVE_BASE_AR_ADDR => m00_target_slave_base_ar_addr,
    M_TARGET_SLAVE_BASE_AW_ADDR => m00_target_slave_base_aw_addr,
    M_AXI_RDATA                 => m00_axi_rdata_out,
    M_AXI_RVALID_RREADY         => m00_axi_rvalid_rready,
    M_AXI_WDATA                 => m00_axi_wdata_in,
    M_AXI_WVALID_WREADY         => m00_axi_wvalid_wready,
    M_AXI_AWVALID_AWREADY       => m00_axi_awvalid_awready,
    INIT_AXI_WR_TXN             => m00_axi_init_axi_wr_txn,
    INIT_AXI_RD_TXN             => m00_axi_init_axi_rd_txn,
    TXN_DONE                    => m00_axi_txn_done,
    AXI_ERROR                   => m00_axi_error
  );

  -- PE array
  pe_arr_inst : mlp_conv_v1_0_PE_ARR
  generic map(
    INPUT_WIDTH    => BYTE_LEN,
    OUTPUT_WIDTH   => C_M00_AXI_DATA_WIDTH,
    PE_WIDTH       => PE_WIDTH,
    PS_WIDTH       => 4,
    ROW_OUT_WIDTH  => ROW_OUT_WIDTH,
    PSUM_OUT_WIDTH => 3
  )
  port map(
    ACLK    => m00_axi_aclk,
    ARESETN => resetn_mac_ctrl,

    input   => in_act_data_out,
    weights => weights_out,

    stall_ctl        => stall_ctrl,
    row_out_mux_ctrl => row_out_mux_ctrl,
    psum_out_ctrl    => psum_out_ctrl,
    add_mux_ctrl     => add_mux_ctrl,

    psum_in => in_psum_out,
    output  => out_psum_in
  );

  -- User logic ends

end arch_imp;