----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:49:39 03/31/2022 
-- Design Name: 
-- Module Name:    saw - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity saw is
    Port ( Clk_50MHz : in  STD_LOGIC;
           Start : out  STD_LOGIC;
           Cmd : out  STD_LOGIC_VECTOR (3 downto 0);
           Addr : out  STD_LOGIC_VECTOR (3 downto 0);
           DATA : out  STD_LOGIC_VECTOR (11 downto 0));
end saw;

architecture Behavioral of saw is
	signal count : INTEGER RANGE 0 TO 16384; --tu zale�nie od obs�ugiwanych cz�stotliwo�ci trzeba ustawi� zakres
	signal output_value : INTEGER RANGE 0 TO 15;
	type deriv_state is ('A', 'B', 'C');
	signal deriv, next_deriv : deriv_state;
	
begin
	process (Clk_50MHz)
	BEGIN
		count <= count;
		IF (rising_edge(Clk_50MHz)) THEN
			count <= count + 1;
		END IF;
		IF (count = 4167) THEN
			count <= 0;
			IF (output_value = 15) THEN
				output_value <= 0;
			ELSE
				output_value <= output_value + 1;
			END IF;
		END IF;
		DATA <= std_logic_vector(to_unsigned(output_value, 4)) & "00000000";
	END PROCESS;
	
	process(deriv, count)
	BEGIN
		next_deriv <= deriv;
		case deriv is
			when 'A' =>
				next_deriv <= 'B';
			when 'B' =>
				next_deriv <= 'C';
			when 'C' =>
				if count = 0 then
					next_deriv <= 'A';
				end if;
		end case;
	END PROCESS;
	
	process(Clk_50MHz)
	BEGIN
		deriv <= next_deriv;
	END PROCESS;
	
	Start <= '1' when deriv = 'B' or deriv = 'A' else '0';
	Cmd <= "0000";
	Addr <= "0000";
end Behavioral;
 