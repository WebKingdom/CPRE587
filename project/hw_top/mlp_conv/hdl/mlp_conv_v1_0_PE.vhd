----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2023 06:13:08 PM
-- Design Name: 
-- Module Name: mlp_conv_v1_0_PE - Behavioral
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mlp_conv_v1_0_PE is
  generic (
    INPUT_WIDTH  : integer := 8;
    OUTPUT_WIDTH : integer := 32
  );
  port (
    ACLK    : in std_logic;
    ARESETN : in std_logic;
    -- Trimmed down AXIS slave data interface for input and weight
    input        : in std_logic_vector(INPUT_WIDTH - 1 downto 0);
    weight       : in std_logic_vector(INPUT_WIDTH - 1 downto 0);
    add_mux_ctrl : in std_logic;
    input_valid  : in std_logic;
    -- Stalls pipeline (WE DO NOT EVER PROGRESS OUTPUT WHEN STALLED)
    stall_ctl : in std_logic;

    -- Other MAC's output
    add_val : in std_logic_vector(OUTPUT_WIDTH - 1 downto 0);

    -- AXIS master accumulate result out interface
    output : out std_logic_vector(OUTPUT_WIDTH - 1 downto 0)
  );
end mlp_conv_v1_0_PE;

architecture arch_imp of mlp_conv_v1_0_PE is
  -- Internal Signals
  signal product    : unsigned(INPUT_WIDTH * 2 - 1 downto 0);
  signal stalled    : std_logic;
  signal output_reg : std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
  -- Mac stages
  type PIPE_STAGES is (MULT_INPUT, ADD, SET_OUTPUT);
  -- Debug signals, make sure we aren't going crazy
  signal mac_debug : std_logic_vector(31 downto 0);

begin
  stalled <= (not input_valid) or stall_ctl;
  -- Debug Signals
  mac_debug <= x"00000001"; -- Double checking sanity

  process (ACLK) is
  begin
    if rising_edge(ACLK) then -- Rising Edge
      -- Reset values if reset is low
      if ARESETN = '0' then -- Reset
        product <= (others => '0');
        output  <= (others => '0');
      else
        for i in PIPE_STAGES'left to PIPE_STAGES'right loop
          case i is -- Stages
            when MULT_INPUT =>
              if stalled = '0' then
                product <= unsigned(input) * unsigned(weight);
              end if;
            when ADD =>
              if stalled = '0' then
                if add_mux_ctrl = '1' then
                  output_reg <= std_logic_vector(unsigned(add_val) + product);
                else
                  output_reg <= add_val;
                end if;
              end if;
            when SET_OUTPUT =>
              if stalled = '0' then
                output <= output_reg;
              end if;
          end case; -- Stages
        end loop; -- Stages
      end if; -- Reset
    end if; -- Rising Edge
  end process;

end arch_imp;
