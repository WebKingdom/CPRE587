// custom types package
package types_pkg;
  localparam PE_WIDTH = 5;

  typedef logic [3:0] t_row_out_mux_ctrl [0:PE_WIDTH-1];
  typedef logic [0:PE_WIDTH-1] t_add_mux_ctrl [0:PE_WIDTH-1];
  typedef logic [(PE_WIDTH * 8) - 1:0] t_weights [0:PE_WIDTH-1];

endpackage : types_pkg
