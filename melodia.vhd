----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:47:42 05/05/2022 
-- Design Name: 
-- Module Name:    melodia - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity melodia is
    Port ( Clk_50MHz : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
			  melody : IN STD_LOGIC;
           note : out  STD_LOGIC_VECTOR (3 downto 0));
end melodia;

architecture Behavioral of melodia is
	type deriv_state is ('A', 'B', 'C', 'D');
	signal deriv, next_deriv : deriv_state;
	signal count, next_count, count_limit, external_count, next_external_count, external_count_limit, index, next_index : INTEGER RANGE 0 TO 16384;
	subtype note_pitch is std_logic_vector(3 downto 0);
	subtype note_length is INTEGER RANGE 0 to 127;
	signal rcount, next_rcount, rcount_limit : note_length;
	signal number_of_notes : INTEGER RANGE 0 to 16384;
	constant number_of_notes1 : INTEGER RANGE 0 to 16384 := 101;
	type mel1 is array(natural range 0 to 101) of note_pitch;
	constant melody1 : mel1 :=(
	
				"0100", "1111",
				"0100", "1111",
				"0100", "1111",
				
				"0100", "1111",
				"0100", "1111",
				"0100", "1111",
				
				"0100", "1111",
				"0111", "1111",
				"0000", "1111",
				"0010", "1111",
				"0100", "1111",
				
				"0101", "1111",
				"0101", "1111",
				"0101", "1111",
				"0101", "1111",
				
				"0101", "1111",
				"0100", "1111",
				"0100", "1111",
				"0100", "1111",
				"0100", "1111",
				
				"0100", "1111",
				"0010", "1111",
				"0010", "1111",
				"0100", "1111",
				
				"0010", "1111",
				"0111", "1111",
				
				"0100", "1111",
				"0100", "1111",
				"0100", "1111",
				
				"0100", "1111",
				"0100", "1111",
				"0100", "1111",
				
				"0100", "1111",
				"0111", "1111",
				"0000", "1111",
				"0010", "1111",
				"0100", "1111",
				
				"0101", "1111",
				"0101", "1111",
				"0101", "1111",
				"0101", "1111",
				
				"0101", "1111",
				"0100", "1111",
				"0100", "1111",
				"0100", "1111",
				"0100", "1111",
				
				"0111", "1111",
				"0111", "1111",
				"0101", "1111",
				"0010", "1111",
				"0000", "1111"
				
				
			
	);
	type r1 is array(natural range 0 to 101) of note_length;
	constant rhythm1 : r1 :=(
				
				19,1,19,1,39,1,
				19,1,19,1,39,1,
				19,1,19,1,29,1,9,1,79,1,
				19,1,19,1,29,1,9,1,
				19,1,19,1,19,1,9,1,9,1,
				19,1,19,1,19,1,19,1,
				39,1,39,1,
				19,1,19,1,39,1,
				19,1,19,1,39,1,
				19,1,19,1,29,1,9,1,79,1,
				19,1,19,1,19,1,19,1,
				19,1,19,1,19,1,9,1,9,1,
				19,1,19,1,19,1,19,1,79,1
				
	);
	
		type mel2 is array(natural range 0 to 93) of note_pitch;
	constant number_of_notes2 : INTEGER RANGE 0 to 16384 := 93;
	constant melody2 : mel2 :=(
	
				"0000", "1111",
				"0000", "1111",
				"0000", "1111",
				"0000", "1111",
				"0010", "1111",
				"0100", "1111",
				"0100", "1111",
				
				"0100", "1111",
				"0010", "1111",
				"0000", "1111",
				"0010", "1111",
				"0100", "1111",
				"0000", "1111",
				
				"0100", "1111",
				"0100", "1111",
				"0101", "1111",
				"0111", "1111",
				
				"0111", "1111",
				"0101", "1111",
				"0100", "1111",
				"0101", "1111",
				"0111", "1111",
				"0100", "1111",
				
				"0000", "1111",
				"0000", "1111",
				"0010", "1111",
				"0100", "1111",
				
				"0100", "1111",
				"0010", "1111",
				"0000", "1111",
				"0010", "1111",
				"0100", "1111",
				"0000", "1111",
				
				"0000", "1111",
				"0000", "1111",
				"0000", "1111",
				"0000", "1111",
				"0000", "1111",
				"0010", "1111",
				"0100", "1111",
				"0100", "1111",
				
				"0100", "1111",
				"0010", "1111",
				"0000", "1111",
				"0010", "1111",
				"0100", "1111",
				"0000", "1111"
				
			
	);
	type r2 is array(natural range 0 to 93) of note_length;
	constant rhythm2 : r2 :=(
				
				9,1,19,1,9,1,19,1,9,1,29,1,19,1,
				9,1,19,1,9,1,19,1,9,1,59,1,
				29,1,19,1,9,1,29,1,
				29,1,19,1,9,1,19,1,9,1,59,1,
				29,1,19,1,9,1,29,1,
				29,1,19,1,9,1,19,1,9,1,19,1,
				19,1,9,1,19,1,9,1,19,1,9,1,29,1,19,1,
				9,1,19,1,9,1,19,1,9,1,59,1
	);
begin
	process(melody)
	begin
		case melody is
			when '0' => 
				number_of_notes <= number_of_notes1;
			when others => 
				number_of_notes <= number_of_notes2;
		end case;
	end process;
	
	process(deriv, melody)
	BEGIN
		next_deriv <= deriv;
		case deriv is
			when 'A' =>
				if melody = '1' then
					next_deriv <= 'B';
				end if;
			when 'B' =>
				if melody = '1' then
					next_deriv <= 'C';
				else
					next_deriv <= 'D';
				end if;
			when 'C' =>
				if melody = '0' then
					next_deriv <= 'D';
				end if;
			when 'D' =>
				if melody = '0' then
					next_deriv <= 'A';
				else
					next_deriv <= 'B';
				end if;
		end case;
	END PROCESS;

	process(Clk_50MHz, CE)
	begin
		if(CE = '1') then
			if(rising_edge(Clk_50MHz)) then
				deriv <= next_deriv;
				index <= next_index;
				count <= next_count;
				external_count <= next_external_count;
				rcount <= next_rcount;
			end if;
		end if;
	end process;

	process(index, melody)
	begin
		case melody is
			when '0' =>
				rcount_limit <= rhythm1(index);
			when others =>
				rcount_limit <= rhythm2(index);
		end case;
	end process;
	
	process(count, RESET, deriv)
	begin
		next_count <= count + 1;
		next_index <= index;
		next_external_count <= external_count;
		next_rcount <= rcount;
		if(count = count_limit) then
			next_count <= 0;
			next_external_count <= external_count + 1;
			if(external_count = external_count_limit) then
				next_external_count <= 0;
				next_rcount <= rcount + 1;
				if(rcount = rcount_limit) then
					next_index <= index + 1;
					if(index = number_of_notes) then
						next_index <= 0;
					end if;
					next_rcount <= 0;
				end if;
			end if;
		end if;
		if(RESET = '1' or deriv = 'B' or deriv = 'D') then
			next_count <= 0;
			next_index <= 0;
			next_external_count <= 0;
		end if;
	end process;
	
	process(index, melody, CE)
	begin
		if CE = '1' then
			if melody = '0' then
				note <= melody1(index);
			else
				note <= melody2(index);
			end if;
		else
			note <= "1111";
		end if;
	end process;
	
	count_limit <= 16000;
	external_count_limit <= 30;
end Behavioral;

