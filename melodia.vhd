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
           note : out  STD_LOGIC_VECTOR (3 downto 0));
end melodia;

architecture Behavioral of melodia is
	signal count, next_count, count_limit, external_count, next_external_count, external_count_limit, index, next_index : INTEGER RANGE 0 TO 16384;
	subtype note_pitch is std_logic_vector(3 downto 0);
	subtype note_length is INTEGER RANGE 0 to 15;
	signal rcount, next_rcount, rcount_limit : note_length;
	type mel is array(natural range 0 to 3) of note_pitch;
	constant number_of_notes : INTEGER RANGE 0 to 16384 := 3;
	constant melody : mel :=(
				"1000",
				"0000",
				"0000",
				"1000"
	);
	type r is array(natural range 0 to 3) of note_length;
	constant rhythm : r :=(
				2,
				2,
				2,
				2
	);
begin
	process(Clk_50MHz)
	begin
		if(CE = '1') then
			if(rising_edge(Clk_50MHz)) then
				index <= next_index;
				count <= next_count;
				external_count <= next_external_count;
				rcount <= next_rcount;
			end if;
		end if;
	end process;

	process(index)
	begin
		rcount_limit <= rhythm(index);
	end process;
	
	process(count, RESET)
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
		if(RESET = '1') then
			next_count <= 0;
			next_index <= 0;
			next_external_count <= 0;
		end if;
	end process;
	
	count_limit <= 16000;
	external_count_limit <= 1000;
	note <= melody(index);
end Behavioral;

