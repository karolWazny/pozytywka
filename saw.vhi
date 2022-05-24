
-- VHDL Instantiation Created from source file saw.vhd -- 17:11:53 05/05/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT saw
	PORT(
		Clk_50MHz : IN std_logic;
		pitch : IN std_logic_vector(3 downto 0);          
		Start : OUT std_logic;
		Cmd : OUT std_logic_vector(3 downto 0);
		Addr : OUT std_logic_vector(3 downto 0);
		DATA : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;

	Inst_saw: saw PORT MAP(
		Clk_50MHz => ,
		pitch => ,
		Start => ,
		Cmd => ,
		Addr => ,
		DATA => 
	);


