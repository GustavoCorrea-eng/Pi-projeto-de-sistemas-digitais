library ieee;
use ieee.std_logic_1164.all;
use work.componentes.all;

ENTITY adder4 IS


	PORT ( 

		a,b: IN std_logic_vector(3 downto 0);
		Cin: IN std_logic;
		soma: OUT std_logic_vector(3 downto 0);
		Cout: OUT std_logic
		);


	END adder4;

ARCHITECTURE logic OF adder4 IS

    SIGNAL C: std_logic_vector (2 downto 0);

	BEGIN 

		add0: fulladd PORT MAP (a(0), b(0), Cin, soma(0), C(0));
		add1: fulladd PORT MAP (a(1), b(1), C(0), soma(1), C(1));
		add2: fulladd PORT MAP (a(2), b(2), C(1), soma(2), C(2));
		add3: fulladd PORT MAP (a(3), b(3), C(2), soma(3), Cout);

	END logic;