--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:13:23 03/31/2022
-- Design Name:   
-- Module Name:   C:/Users/lab/Documents/Visual Studio Projects/pozytywka/saw_test.vhd
-- Project Name:  pozytywka
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: saw
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY saw_test IS
END saw_test;
 
ARCHITECTURE behavior OF saw_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT saw
    PORT(
         Clk_50MHz : IN  std_logic;
			pitch : in STD_LOGIC_VECTOR (3 downto 0);
         Start : OUT  std_logic;
         Cmd : OUT  std_logic_vector(3 downto 0);
         Addr : OUT  std_logic_vector(3 downto 0);
         DATA : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_50MHz : std_logic := '0';
	signal pitch : std_logic_vector(3 downto 0) := "0001";

 	--Outputs
   signal Start : std_logic;
   signal Cmd : std_logic_vector(3 downto 0);
   signal Addr : std_logic_vector(3 downto 0);
   signal DATA : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant Clk_50MHz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: saw PORT MAP (
			 pitch => pitch,
          Clk_50MHz => Clk_50MHz,
          Start => Start,
          Cmd => Cmd,
          Addr => Addr,
          DATA => DATA
        );

   -- Clock process definitions
   Clk_50MHz_process :process
   begin
		Clk_50MHz <= '0';
		wait for Clk_50MHz_period/2;
		Clk_50MHz <= '1';
		wait for Clk_50MHz_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_50MHz_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
