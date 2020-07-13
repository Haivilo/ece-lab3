library ieee;
use ieee.std_logic_1164.all;


entity LogicalStep_Lab3_top is port (
	clk_in		: in 	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 	
   leds			: out std_logic_vector(11 downto 0)		
	
); 
end LogicalStep_Lab3_top;

architecture design of LogicalStep_Lab3_top is
	-- component singlecmp is
		-- port (
			-- A, B : in std_logic;
			-- AgreaterB, AequalB, AsmallerB  : out std_logic
		-- );
	-- end component;
	component fourcmp port (
		inputA: in std_logic_vector(3 downto 0);
		inputB: in std_logic_vector(3 downto 0);
		results: out std_logic_vector(2 downto 0)
		);
	end component;

--
-- Provided Project Components Used
------------------------------------------------------------------- 
	
--	component Tester port (
-- MC_TESTMODE				: in  std_logic;
-- I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
--	input1					: in  std_logic_vector(3 downto 0);
--	input2					: in  std_logic_vector(3 downto 0);
--	TEST_PASS  				: out	std_logic							 
--	); 
--	end component;
--	
--	component HVAC 	port (
--	clk						: in std_logic; 
--	run_n		   			: in std_logic;
--	increase, decrease	: in std_logic;
--	temp						: out std_logic_vector (3 downto 0)
--	);
-- end component;

------------------------------------------------------------------
-- Add Other Components here

------------------------------------------------------------------	
-- Create any signals to be used
signal A4bit,B4bit	: std_logic_vector (3 downto 0);

------------------------------------------------------------------- 
	


-- begin
-- A <= sw(0);
-- B <= sw(1);

-- inst1: singlecmp port map(
-- 	 A,B,
-- 	leds(0),leds(1),leds(2)
-- 	);
	
begin
	A4bit <= sw(3 downto 0);
	B4bit <= sw(7 downto 4);
	
	inst1: fourcmp port map (A4bit, B4bit, leds(2 downto 0));
	 
	
end design;

