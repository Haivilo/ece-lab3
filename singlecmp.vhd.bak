library ieee;
use ieee.std_logic_1164.all;

entity singlecmp is
 	port (
			A, B : in std_logic;
			sout  : out std_logic_vector(2 downto 0)
			);

 end singlecmp;

 architecture singlecmp_logic of singlecmp is
 
 begin
 
	sout(0) <= A AND (NOT B);
	sout(1) <= A XNOR B;
	sout(2) <= B AND (NOT A);
 
 
 end singlecmp_logic;
 
 