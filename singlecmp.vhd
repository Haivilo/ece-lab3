library ieee;
use ieee.std_logic_1164.all;

entity singlecmp is
 	port (
			A, B : in std_logic;
			AgreaterB, AequalB, AsmallerB  : out std_logic
			);

 end singlecmp;

 architecture singlecmp_logic of singlecmp is
 
 begin
 
 AgreaterB <= A AND (NOT B);
 AsmallerB <= B AND (NOT A);
 AequalB <= A XNOR B;
 
 
 end singlecmp_logic;
 
 