LIBRARY ieee ;
USE ieee.std_logic_1164.all;


ENTITY MUX2to1 IS

PORT ( 

    w : IN STD_LOGIC_VECTOR (3 downto 0);
	 z : IN STD_LOGIC_VECTOR (3 downto 0);
	 y : IN STD_LOGIC;
    s: OUT STD_LOGIC_VECTOR (3 downto 0)
    );


END MUX2to1;


ARCHITECTURE LogicFunc OF MUXto21 IS

BEGIN

    WITH Y SELECT
		S <= w WHEN '0',
		     z WHEN OTHERS;
			
END LogicFunc;