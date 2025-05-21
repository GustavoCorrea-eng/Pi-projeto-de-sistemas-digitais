LIBRARY ieee ;
USE ieee.std_logic_1164.all;
use work.componentes.all;

ENTITY MUX81 IS

PORT ( 

    w0,w1,w2,w3,w4,w5,w6,w7 : IN STD_LOGIC_VECTOR (3 downto 0) ;
	 y : IN STD_LOGIC_VECTOR (2 downto 0) ;
	 s: OUT STD_LOGIC_VECTOR (3 downto 0)
    ) ;


END MUX81 ;


ARCHITECTURE LogicFunc OF MUX81 IS

	signal m0,m1,m2,m3,m4,m5: std_logic_vector(3 downto 0);

BEGIN

    Mux0: Mux21 PORT MAP(w0,w1,y(0),m(0);
	 Mux1: Mux21 PORT MAP(w2,w3,y(0),m1);
	 Mux2: Mux21 PORT MAP(w4,w5,y(0),m2);
	 Mux3: Mux21 PORT MAP(w6,w7,y(0),m3);
	 Mux4: Mux21 PORT MAP(m0,m1,y(1),m4);
	 mux5: Mux21 PORT MAP(m2,m3,y(1),m5);
	 mux6: Mux21 PORT MAP(m4,m5,y(2),s);

END LogicFunc;