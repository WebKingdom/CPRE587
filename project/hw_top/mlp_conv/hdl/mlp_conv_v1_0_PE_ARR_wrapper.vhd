library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

library xil_defaultlib;
use xil_defaultlib.types.all;

entity mlp_conv_v1_0_PE_ARR_wrapper is
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

    input_act : in std_logic_vector(INPUT_WIDTH - 1 downto 0);
    weights_0 : in std_logic_vector((PE_WIDTH * 8) - 1 downto 0);
    weights_1 : in std_logic_vector((PE_WIDTH * 8) - 1 downto 0);
    weights_2 : in std_logic_vector((PE_WIDTH * 8) - 1 downto 0);
    weights_3 : in std_logic_vector((PE_WIDTH * 8) - 1 downto 0);
    weights_4 : in std_logic_vector((PE_WIDTH * 8) - 1 downto 0);

    stall_ctl          : in std_logic;
    row_out_mux_ctrl_0 : in std_logic_vector(ROW_OUT_WIDTH - 1 downto 0);
    row_out_mux_ctrl_1 : in std_logic_vector(ROW_OUT_WIDTH - 1 downto 0);
    row_out_mux_ctrl_2 : in std_logic_vector(ROW_OUT_WIDTH - 1 downto 0);
    row_out_mux_ctrl_3 : in std_logic_vector(ROW_OUT_WIDTH - 1 downto 0);
    row_out_mux_ctrl_4 : in std_logic_vector(ROW_OUT_WIDTH - 1 downto 0);
    add_mux_ctrl_0     : in std_logic_vector(0 to PE_WIDTH - 1);
    add_mux_ctrl_1     : in std_logic_vector(0 to PE_WIDTH - 1);
    add_mux_ctrl_2     : in std_logic_vector(0 to PE_WIDTH - 1);
    add_mux_ctrl_3     : in std_logic_vector(0 to PE_WIDTH - 1);
    add_mux_ctrl_4     : in std_logic_vector(0 to PE_WIDTH - 1);
    psum_out_ctrl      : in std_logic_vector(PSUM_OUT_WIDTH - 1 downto 0);

    psum_in  : in std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
    psum_out : out std_logic_vector(OUTPUT_WIDTH - 1 downto 0)
  );
end mlp_conv_v1_0_PE_ARR;

architecture arch_imp of mlp_conv_v1_0_PE_ARR_wrapper is

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

      input_act : in std_logic_vector(INPUT_WIDTH - 1 downto 0);
      weights   : in t_weights;

      stall_ctl        : in std_logic;
      row_out_mux_ctrl : in t_row_out_mux_ctrl;
      psum_out_ctrl    : in std_logic_vector(PSUM_OUT_WIDTH - 1 downto 0);
      add_mux_ctrl     : in t_add_mux_ctrl;

      psum_in  : in std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
      psum_out : out std_logic_vector(OUTPUT_WIDTH - 1 downto 0)
    );
  end component;

  signal weights          : t_weights;
  signal add_mux_ctrl     : t_add_mux_ctrl;
  signal row_out_mux_ctrl : t_row_out_mux_ctrl;

  weights          <= (weights_0, weights_1, weights_2, weights_3, weights_4);
  add_mux_ctrl     <= (add_mux_ctrl_0, add_mux_ctrl_1, add_mux_ctrl_2, add_mux_ctrl_3, add_mux_ctrl_4);
  row_out_mux_ctrl <= (row_out_mux_ctrl_0, row_out_mux_ctrl_1, row_out_mux_ctrl_2, row_out_mux_ctrl_3, row_out_mux_ctrl_4);

  mlp_conv_v1_0_PE_ARR_inst : mlp_conv_v1_0_PE_ARR
  generic map(
    INPUT_WIDTH    => INPUT_WIDTH,
    OUTPUT_WIDTH   => OUTPUT_WIDTH,
    PE_WIDTH       => PE_WIDTH,
    PS_WIDTH       => PS_WIDTH,
    ROW_OUT_WIDTH  => ROW_OUT_WIDTH,
    PSUM_OUT_WIDTH => PSUM_OUT_WIDTH
  )
  port map(
    ACLK             => ACLK,
    ARESETN          => ARESETN,
    input_act        => input_act,
    weights          => weights,
    stall_ctl        => stall_ctl,
    row_out_mux_ctrl => row_out_mux_ctrl,
    psum_out_ctrl    => psum_out_ctrl,
    add_mux_ctrl     => add_mux_ctrl,
    psum_in          => psum_in,
    psum_out         => psum_out
  );
end arch_imp;
