----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2023 09:44:49 PM
-- Design Name: 
-- Module Name: mlp_conv_v1_0_PE_ROW - Behavioral
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

entity mlp_conv_v1_0_PE_ROW is
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

        row_out_mux_ctrl : in std_logic_vector(ROW_OUT_WIDTH - 1 downto 0);
        
        output_in    : in std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
        
        output       : out std_logic_vector(OUTPUT_WIDTH - 1 downto 0)
    );
end mlp_conv_v1_0_PE_ROW;

architecture arch_imp of mlp_conv_v1_0_PE_ROW is
    component mlp_conv_v1_0_PE is
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
        -- Stalls pipeline (WE DO NOT EVER PROGRESS OUTPUT WHEN STALLED)
        stall_ctl : in std_logic;

        -- Other MAC's output
        add_val : in std_logic_vector(OUTPUT_WIDTH - 1 downto 0);

        -- AXIS master accumulate result out interface
        output : out std_logic_vector(OUTPUT_WIDTH - 1 downto 0)
    );
    end component mlp_conv_v1_0_PE;
    
    type t_output_array is array (-1 to PE_WIDTH - 1) of std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
    type t_ps_array is array (0 to PS_WIDTH - 1) of std_logic_vector(OUTPUT_WIDTH - 1 downto 0);

    signal output_arr : t_output_array;
    signal ps_arr : t_ps_array;
--    signal output_reg: std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
    
begin

output_arr(-1) <= output_in;

-- row_out_mux_ctrl could be larger than output_arr size !-!
output <= output_arr(to_integer(unsigned(row_out_mux_ctrl))) when unsigned(row_out_mux_ctrl) < "0101" else 
          ps_arr(to_integer(unsigned(row_out_mux_ctrl) - "0101"));

PE_ROW : for i in 0 to PE_WIDTH - 1 generate
    PE: mlp_conv_v1_0_PE port map(
        ACLK => ACLK,
        ARESETN => ARESETN,
        input => input,
        weight => weights((PE_WIDTH * INPUT_WIDTH) - (i * INPUT_WIDTH) - 1  downto (PE_WIDTH * INPUT_WIDTH) - (i * INPUT_WIDTH) - INPUT_WIDTH),
        add_mux_ctrl => add_mux_ctrl(i),
        stall_ctl => stall_ctl,
            
        add_val => output_arr(i - 1),
        output => output_arr(i)
    );
end generate;

process (ACLK) is
begin
    if rising_edge(ACLK) then
       if ARESETN = '0' then -- Reset
           ps_arr  <= (others => (others => '0'));
       else
--            if unsigned(row_out_mux_ctrl) < "0101" then
--                output_reg <= output_arr(to_integer(unsigned(row_out_mux_ctrl)));
--            else
--                output_reg <= ps_arr(to_integer(unsigned(row_out_mux_ctrl) - "0101"));
--            end if;
            for i in 0 to PS_WIDTH - 1 loop
                if stall_ctl = '0' then
                    if i = 0 then
                        ps_arr(0) <= output_arr(PE_WIDTH - 1);
                    else
                        ps_arr(i) <= ps_arr(i - 1);
                    end if;
                end if;
            end loop;
       end if;
    end if;
end process;


end arch_imp;
