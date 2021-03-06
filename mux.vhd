library ieee;
use ieee.std_logic_1164.all;
library work;

entity mux is
 	port (
			hex_num1, hex_num0 : in std_logic_vector(3 downto 0);
			mux_select 										: in std_logic; 
			hex_out				 							: out std_logic_vector(3 downto 0)
			);

 end mux;

 architecture mux_logic of mux is
 
 begin
 
 
 -- output corresponding input based on binary values
 with mux_select select
 hex_out <= hex_num0 when '0',
			hex_num1 when '1';
 

 end mux_logic;