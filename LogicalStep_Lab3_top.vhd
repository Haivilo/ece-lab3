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

	component Compx4 port (
		inputA: in std_logic_vector(3 downto 0);
		inputB: in std_logic_vector(3 downto 0);
		results: out std_logic_vector(2 downto 0)
		);
	end component;

--
-- Provided Project Components Used
------------------------------------------------------------------- 
	
component Tester port (
	MC_TESTMODE				: in  std_logic;
	I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
	input1					: in  std_logic_vector(3 downto 0);
	input2					: in  std_logic_vector(3 downto 0);
	TEST_PASS  				: out	std_logic							 
	); 
end component;
	
component HVAC 	port (
	clk						: in std_logic; 
	run_n		   			: in std_logic;
	increase, decrease	: in std_logic;
	temp						: out std_logic_vector (3 downto 0)
	);
end component;


------------------------------------------------------------------
-- Add Other Components here
component mux port (
	hex_num1, hex_num0 : in std_logic_vector(3 downto 0);
	mux_select 										: in std_logic; 
	hex_out				 							: out std_logic_vector(3 downto 0)
	);
end component;

component controllerSteveNingzhi port (
		   vacation, test, window, door : in std_logic;
		   cmp : in std_logic_vector (2 downto 0);
		   inc, dec, run_n, furnace, at_temp, ac, blower, windowOut, doorOut, vacationOut  : out std_logic
		   );
end component;



------------------------------------------------------------------	
-- Create any signals to be used
signal cur_temp, mux_temp, desired_temp, vaca_temp	: std_logic_vector (3 downto 0);
signal cmpVal : std_logic_vector (2 downto 0);
signal vaca, inc, dec, run_n, test_m, window, door : std_logic;
------------------------------------------------------------------- 
	


	
begin

test_m <= pb(2);
door <= pb(0);
window <= pb(1);
vaca <= pb(3);
vaca_temp <= sw(7 downto 4);
desired_temp <= sw(3 downto 0);

--- get correct desired tmep
mux1: mux port map( vaca_temp, desired_temp, vaca, mux_temp); 
--- process HVAC
hvac1: HVAC port map(clk_in, run_n, inc, dec, cur_temp);
--- compare the temp
cmp1: Compx4 port map(mux_temp, cur_temp, cmpVal);
--- run the tester
tst1: Tester port map(test_m,cmpVal(1),cmpVal(0),cmpVal(2),desired_temp, cur_temp,leds(6) );
--- run logic ctrler
ctrl1: controllerSteveNingzhi port map(vaca, test_m, window, door, cmpVal, 
inc, dec, run_n, 
leds(0),leds(1),leds(2),leds(3),leds(4),leds(5),leds(7));
leds(11 downto 8)<= cur_temp;
end design;

-- begin
-- A <= sw(0);
-- B <= sw(1);

-- inst1: singlecmp port map(
-- 	 A,B,
-- 	leds(0),leds(1),leds(2)
-- 	);
-- A4bit <= sw(3 downto 0);
-- B4bit <= sw(7 downto 4);

-- inst1: Compx4 port map (A4bit, B4bit, leds(2 downto 0));
 