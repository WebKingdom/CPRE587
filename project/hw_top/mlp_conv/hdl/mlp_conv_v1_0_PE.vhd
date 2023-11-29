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
    generic(
        INPUT_WIDTH : integer := 8;
        OUTPUT_WIDTH: integer := 32
    );
    port (
        ACLK	    : in	std_logic;
		ARESETN	    : in	std_logic;       
        -- AXIS slave data interface
		sready	: out	std_logic;
		sin1	    : in	std_logic_vector(INPUT_WIDTH downto 0); 
		sin2	    : in	std_logic_vector(INPUT_WIDTH downto 0);
		slast	    : in	std_logic;
		svalid	    : in	std_logic;
        -- AXIS master accumulate result out interface
		mvalid	    : out	std_logic;
		moutput 	: out	std_logic_vector(OUTPUT_WIDTH-1 downto 0);
		mlast	    : out	std_logic;
		mready	    : in	std_logic
    );
end mlp_conv_v1_0_PE;

architecture arch_imp of mlp_conv_v1_0_PE is
    -- Internal Signals
	signal input1 : std_logic_vector(INPUT_WIDTH-1 downto 0);
	signal input2 : std_logic_vector(INPUT_WIDTH-1 downto 0);
	signal tlast1 : std_logic;
	signal tlast2 : std_logic;
	signal mult_result: std_logic_vector(INPUT_WIDTH * 2 -1 downto 0);
	signal accumulator: std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
	signal accum_temp: std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
	signal output_reg: std_logic_vector(OUTPUT_WIDTH - 1 downto 0);
	
	-- Mac stages
    type PIPE_STAGES is (WAIT_FOR_INPUT, MULT, ACC);
    type PIPE_STATE is (RUNNING, STOPPED);
    type OUTPUT_STATE_TYPE is (WAITING, OUTPUT);
	signal ostate : OUTPUT_STATE_TYPE;

	-- Debug signals, make sure we aren't going crazy
    signal mac_debug : std_logic_vector(31 downto 0);

begin

    -- Interface signals
    sready <= '1' when ostate = WAITING else '0';
    moutput <= output_reg when ostate = OUTPUT else (others => '0');
    -- Internal signals
	
	accum_temp <= std_logic_vector(signed(accumulator) + signed(mult_result));

	-- Debug Signals
    mac_debug <= x"00000000";  -- Double checking sanity
   
   process (ACLK) is
   begin 
    if rising_edge(ACLK) then  -- Rising Edge

      -- Reset values if reset is low
      if ARESETN = '0' then  -- Reset
		input1 <= (others => '0');
		input2 <= (others => '0');
		mult_result <= (others => '0');
		accumulator <= (others => '0');
		output_reg <= (others => '0');
        tlast1 <= '0';
        tlast2 <= '0';
        ostate <= WAITING;

      else
        case ostate is  -- State
            -- Wait here until we receive values
            when WAITING =>
            when OUTPUT =>
                if mready = '1' then
			         ostate <= WAITING;
			         output_reg <= (others => '0');
                 end if;
             end case;
        for i in PIPE_STAGES'left to PIPE_STAGES'right loop
            case i is  -- Stages
                when WAIT_FOR_INPUT =>
                    if svalid = '1' and ostate = WAITING then
                        input1 <= sin1;
                        input2 <= sin2;
                        tlast1 <= slast;
                    else
                        input1 <= (others => '0');
                        input2 <= (others => '0');
                    end if;
				when MULT =>
				    mult_result <= std_logic_vector("*"(signed(input1), signed(input2)));
				    tlast2 <= tlast1;

				when ACC  =>
				    if tlast2 = '1' then
				        mvalid <= '1';
				        output_reg <= accum_temp;
				        accumulator <= (others => '0');
				        ostate <= OUTPUT;
				    else 
				        accumulator <= std_logic_vector(signed(accumulator) + signed(mult_result));
				    end if;

            end case;  -- Stages
		end loop;  -- Stages
      end if;  -- Reset

    end if;  -- Rising Edge
   end process;

end arch_imp;
