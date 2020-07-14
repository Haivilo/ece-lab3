library ieee;
use ieee.std_logic_1164.all;

entity controllerSteveNingzhi is
 	port (
			vacation, test, window, door : in std_logic;
			cmp : in std_logic_vector (2 downto 0);
			inc, dec, run_n, furnace, at_temp, ac, blower, windowOut, doorOut, vacationOut  : out std_logic
			);
 end controllerSteveNingzhi;

 architecture controllerSteveNingzhi_logic of controllerSteveNingzhi is
 
signal hotter,colder, running	: std_logic;


 begin
 
hotter <= cmp(0);
colder <= cmp(2);
running <= door OR test OR window or cmp(1);
inc <= hotter;
dec <= colder;
run_n <= running;
furnace <= hotter;
at_temp <= cmp(1);
ac <= colder;
blower <= not running;
windowOut <= window;
doorOut <= door;
vacationOut <= vacation;
 end controllerSteveNingzhi_logic;
 
 