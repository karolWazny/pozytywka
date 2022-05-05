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
			  pitch : in STD_LOGIC_VECTOR (3 downto 0);
           Start : out  STD_LOGIC;
           Cmd : out  STD_LOGIC_VECTOR (3 downto 0);
           Addr : out  STD_LOGIC_VECTOR (3 downto 0);
           DATA : out  STD_LOGIC_VECTOR (11 downto 0));
end saw;

architecture Behavioral of saw is
	signal count, next_count, count_limit : INTEGER RANGE 0 TO 16384; --tu zalenie od obsugiwanych czstotliwoci trzeba ustawi zakres
	signal output_value, next_output_value : INTEGER RANGE 0 TO 15;
	type deriv_state is ('A', 'B');
	signal deriv, next_deriv : deriv_state;
	signal play_sound : STD_LOGIC;
	
begin
	PROCESS(pitch)
	BEGIN
		play_sound <= '1';
		CASE pitch IS
			WHEN "0000" =>
				count_limit <= 11946;
			WHEN "0001" =>
				count_limit <= 11275;
			WHEN "0010" =>
				count_limit <= 10642;
			WHEN "0011" =>
				count_limit <= 10045;
			WHEN "0100" =>
				count_limit <= 9481;
			WHEN "0101" =>
				count_limit <= 8949;
			WHEN "0110" =>
				count_limit <= 8447;
			WHEN "0111" =>
				count_limit <= 7973;
			WHEN "1000" =>
				count_limit <= 7525;
			WHEN "1001" =>
				count_limit <= 7103;
			WHEN "1010" =>
				count_limit <= 6704;
			WHEN "1011" =>
				count_limit <= 6328;
			WHEN "1100" =>
				count_limit <= 5973;
			WHEN OTHERS =>
				count_limit <= 3125;
				play_sound <= '0';
		END CASE;
	END PROCESS;

	process (Clk_50MHz)
	BEGIN
		IF (rising_edge(Clk_50MHz)) THEN
			count <= next_count;
			deriv <= next_deriv;
			output_value <= next_output_value;
		END IF;
	END PROCESS;
	
	process(count, output_value, count_limit)
	BEGIN
		next_count <= count + 1;
		next_output_value <= output_value;
		IF (count = count_limit) THEN
			next_count <= 0;
			IF (output_value = 15) THEN
				next_output_value <= 0;
			ELSE
				next_output_value <= output_value + 1;
			END IF;
		END IF;
	END PROCESS;
	
	process(deriv, count)
	BEGIN
		next_deriv <= deriv;
		case deriv is
			when 'A' =>
				next_deriv <= 'B';
			when 'B' =>
				if count = 0 then
					next_deriv <= 'A';
				end if;
		end case;
	END PROCESS;
	
	Start <= '1' when deriv = 'A' and play_sound = '1' else '0';
	Cmd <= "0011";
	Addr <= "1111";
	DATA <= std_logic_vector(to_unsigned(output_value, 4)) & "00000000";
end Behavioral;
