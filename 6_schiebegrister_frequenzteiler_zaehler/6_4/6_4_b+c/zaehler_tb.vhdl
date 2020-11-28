library ieee;
use ieee.std_logic_1164.all;

entity zaehler_tb is
end zaehler_tb;

architecture test of zaehler_tb is 
	component zaehler 
 	 port (
 	   reset: in std_ulogic;
 	   clock: in std_ulogic;
 	   count: in std_ulogic;
 	   down: in std_ulogic;
 	   q0: out std_ulogic;
 	   q1: out std_ulogic
 	 );
	end component;
	  
	signal reset, clock, count, down, q0, q1 : std_ulogic;
	  
	begin 
		VorwaertsRueckwaertsZaehler : zaehler port map (reset => reset, clock => clock, count => count, down => down, q0 => q0, q1 => q1);
		
		process begin


			count <= '1';
			down <= '0';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

-----------------------------------------------warm laufen -----------------------------------------------
			
			count <= '1';
			down <= '0';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

-----------------------------------------------1 runde -----------------------------------------------			

			count <= '1';
			down <= '0';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

-----------------------------------------------nicht zählen -----------------------------------------------			
			
			
			count <= '0';
			down <= '0';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

-----------------------------------------------2 runde -----------------------------------------------

			count <= '1';
			down <= '1';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

-----------------------------------------------1 runde rückwärts -----------------------------------------------			

			count <= '1';
			down <= '1';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

-----------------------------------------------2 runde rückwärts -----------------------------------------------

			count <= '0';
			down <= '1';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

-----------------------------------------------rückwärts halten -----------------------------------------------

			count <= '1';
			down <= '1';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----
			reset <= '1';
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;


			reset <= '1';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;


			reset <= '1';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			count <= '1';
			down <= '0';
			reset <= '0';

----------------------------------------------- mitten in runde 3 RESETTEN  -----------------------------------------------

			
			count <= '1';
			down <= '0';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

-----------------------------------------------3 runde vorwärts -----------------------------------------------


			
			count <= '1';
			down <= '0';
			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			count <= '1';
			down <= '1';

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

			------ Takt beginnt-----		
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;

-----------------------------------------------mitten in der runde runter rechnen -----------------------------------------------


			wait;
		end process;
	end test;
		
