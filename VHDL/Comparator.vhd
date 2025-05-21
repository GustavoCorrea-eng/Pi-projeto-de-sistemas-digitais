LIBRARY ieee ;
use ieee.std_logic_1164.all;


ENTITY Comparator IS

PORT ( 

    a,b : IN STD_LOGIC_vector(3 downto 0);
    Grt,Equ,Lst : OUT STD_LOGIC
    );


END Comparator;


ARCHITECTURE LogicFunc OF comparator IS

    signal i: std_logic_vector(3 downto 0);
    signal eq_bits: std_logic_vector(1 downto 0);

BEGIN

	 i <= a xnor b;

	 eq_bits(0) <= ((a(3) and not b(3)) or (i(3) and a(2) and not b(2)) or (i(3) and i(2) and a(1) and not b(1)) or (i(3) and i(2) and i(1) and a(0) and not b(0)));
	 eq_bits(1) <= i(3) and i(2) and i(1) and i(0);
	 
	 grt <= eq_bits(0);
	 equ <=eq_bits(1);
    lst <= eq_bits(1) nor j(0);


END LogicFunc ;