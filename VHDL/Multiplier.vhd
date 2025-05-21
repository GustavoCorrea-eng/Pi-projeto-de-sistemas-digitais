library ieee;
use ieee.std_logic_1164.all;
use work.componentes.all;

ENTITY Multiplier IS


	PORT ( 
		
		m0,m1,q0,q1: IN std_logic;
		P: OUT std_logic_vector (3 downto 0)
		);


	END Multiplier;

ARCHITECTURE logic OF Multiplier IS

    SIGNAL C: std_logic;
    SIGNAL PP: std_logic_vector (2 downto 0);

	BEGIN
		P(0) <= q0 AND m0;

		PP(0) <= q0 AND m1;
		PP(1) <= q1 AND m0;

		soma0: fulladd PORT MAP (PP(1), PP(0), '0' , P(1),C);

		PP(2) <= q1 AND m1;

		soma1: fulladd PORT MAP (C, PP(2), '0' ,P(2),P(3));

	END logic;