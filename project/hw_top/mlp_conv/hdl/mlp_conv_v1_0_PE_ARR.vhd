----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2023 09:44:49 PM
-- Design Name: 
-- Module Name: mlp_conv_v1_0_PE_ARR - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

library xil_defaultlib;
use xil_defaultlib.types.all;

entity mlp_conv_v1_0_PE_ARR is
    generic (
        INPUT_WIDTH    : integer := 8;
        OUTPUT_WIDTH   : integer := 32;
        PE_WIDTH       : integer := 5;
        PS_WIDTH       : integer := 4;
        ROW_OUT_WIDTH  : integer := 4;
        PSUM_OUT_WIDTH : integer := 3
    );
    port (
        ACLK         : in std_logic;
        ARESETN      : in std_logic;
        
        input_act    : in std_logic_vector(INPUT_WIDTH - 1 downto 0);
        weights      : in t_weights;
        
        stall_ctl    : in std_logic;
        row_out_mux_ctrl : in t_row_out_mux_ctrl;
        psum_out_ctrl: in std_logic_vector(PSUM_OUT_WIDTH - 1 downto 0);
        add_mux_ctrl : in t_add_mux_ctrl;
        
        psum_in      : in std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
        psum_out     : out std_logic_vector(OUTPUT_WIDTH - 1 downto 0)
        
    );
end mlp_conv_v1_0_PE_ARR;

architecture arch_imp of mlp_conv_v1_0_PE_ARR is
    component mlp_conv_v1_0_PE_ROW is
        generic (
            INPUT_WIDTH    : integer := 8;
            OUTPUT_WIDTH   : integer := 32;
            PE_WIDTH       : integer := 5;
            PS_WIDTH       : integer := 4;
            ROW_OUT_WIDTH  : integer := 4
        );
        port (
            ACLK         : in std_logic;
            ARESETN      : in std_logic;
        
            input        : in std_logic_vector(INPUT_WIDTH - 1 downto 0);
            weights      : in std_logic_vector(PE_WIDTH * INPUT_WIDTH - 1 downto 0);
        
            stall_ctl    : in std_logic;
            add_mux_ctrl : in std_logic_vector(0 to PE_WIDTH - 1);

            row_out_mux_ctrl : in std_logic_vector(ROW_OUT_WIDTH  - 1 downto 0);
        
            output_in    : in std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
            output       : out std_logic_vector(OUTPUT_WIDTH - 1 downto 0)
        );
    end component mlp_conv_v1_0_PE_ROW;
    
    type t_output_array is array (-1 to PE_WIDTH - 1) of std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
    signal output_array : t_output_array;
    

begin
output_array(-1) <= psum_in;

psum_out <= output_array(to_integer(unsigned(psum_out_ctrl)));

-- generate rows
PE_ROWS: for i in 0 to PE_WIDTH - 1 generate
    A_ROW: mlp_conv_v1_0_PE_ROW port map(
            ACLK => ACLK,
            ARESETN => ARESETN,
            
            input => input_act,
            weights => weights(i),
            
            stall_ctl => stall_ctl,
            add_mux_ctrl => add_mux_ctrl(i),
            
            row_out_mux_ctrl => row_out_mux_ctrl(i),
            
            output_in => output_array(i-1),
            
            output => output_array(i)
    );
end generate;

end arch_imp;
