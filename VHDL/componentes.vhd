library ieee;
use ieee.std_logic_1164.all;

PACKAGE componentes IS 
	
	COMPONENT fulladd
		PORT (
			Cin, x, y : IN STD_LOGIC ;
			s, Cout : OUT STD_LOGIC
		);
	END COMPONENT ;
	
	COMPONENT adder4
		PORT ( 
			a,b: IN std_logic_vector(3 downto 0);
			cin: IN std_logic;
			soma: OUT std_logic_vector(3 downto 0);
			cout: OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Multiplier
		PORT ( 
			m0,m1,q0,q1: in std_logic;
			prod: OUT std_logic_vector (3 downto 0)
		);
	 END COMPONENT;
	
	COMPONENT Comparator
		PORT ( 
			 a,b : IN STD_LOGIC_vector(3 downto 0);
			 grt,equ,lst : OUT STD_LOGIC
		 );
	 
	 END COMPONENT;
	
	COMPONENT MUX2to1
		PORT ( 
			x : IN STD_LOGIC_VECTOR (3 downto 0);
			z : IN STD_LOGIC_VECTOR (3 downto 0);
			y : IN STD_LOGIC;
			s: OUT STD_LOGIC_VECTOR (3 downto 0)
		 );
	 
	END COMPONENT;
	
	COMPONENT MUX8to1
		PORT ( 
			a,b,c,d,e,f,g,h : IN STD_LOGIC_VECTOR (3 downto 0);
			y : IN STD_LOGIC_VECTOR (2 downto 0);
			s: OUT STD_LOGIC_VECTOR (3 downto 0)
			 );
	END COMPONENT;
	
	
END pacoteGeral;