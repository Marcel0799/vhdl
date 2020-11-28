library ieee;
use ieee.std_logic_1164.all;

entity jk_tb is
end jk_tb;

architecture test of jk_tb is 
	component jk
		port( 
			j: in std_ulogic;
			k: in  std_ulogic;
			reset: in std_ulogic;
			clock: in std_ulogic;
			q: out std_ulogic;
			nq: out std_ulogic
		);
	end component;
	  
	signal j, k, reset, clock, q, nq : std_ulogic;
	  
	begin 
		jkFF : jk port map (j => j, k => k, reset => reset, clock => clock, q => q, nq => nq);
		
		process begin


			reset <= '1';
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
		
			reset <= '0';
		
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
		
		-------------------------------------- Hard Reset 
			k <= '0';
			j <= '1';
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende

		--------------------------------------- set

			k <= '0';
			j <= '0';
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende

		--------------------------------------- hold

			k <= '1';
			j <= '0';
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende

		--------------------------------------- reset

			k <= '1';
			j <= '1';
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende

		--------------------------------------- toggle
		
		
			k <= '0';
			j <= '0';
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende

		--------------------------------------- hold
		
		
			reset <= '1';
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
		
			reset <= '0';
		
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
		
		-------------------------------------- Hard reset 
		

			wait;
		end process;
	end test;
		
