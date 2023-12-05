----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/05/2023 05:04:35 PM
-- Design Name: 
-- Module Name: types - Behavioral
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

package types is
    constant PE_WIDTH : integer :=  5;
    constant ROW_OUT_WIDTH : integer := 4;

    type t_row_out_mux_ctrl is array (0 to PE_WIDTH) of std_logic_vector(ROW_OUT_WIDTH - 1 downto 0);
    type t_add_mux_ctrl is array (0 to PE_WIDTH) of std_logic_vector(PE_WIDTH - 1 downto 0);
end package;
