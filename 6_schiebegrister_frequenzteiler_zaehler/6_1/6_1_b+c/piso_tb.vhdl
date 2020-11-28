library ieee;
use ieee.std_logic_1164.all;

entity piso_tb is
end piso_tb;

architecture test of piso_tb is 
	component piso 
	  port (
	    clock: in std_ulogic;
	    clear: in std_ulogic;
	    loadOrShift: in std_ulogic;
	    b0: in std_ulogic;
	    b1: in std_ulogic;
	    b2: in std_ulogic;
	    b3: in std_ulogic;
	    b4: in std_ulogic;
	    b5: in std_ulogic;
	    b6: in std_ulogic;
	    b7: in std_ulogic;
	    q: out std_ulogic
	  );
	end component;
	  
	signal clock, clear, loadOrShift, b0, b1, b2, b3, b4, b5, b6, b7, q : std_ulogic;
	  
	begin 
		SchiebeRegister : piso port map (clock => clock, clear => clear, loadOrShift => loadOrShift , b0 => b0, b1 => b1, b2 => b2, b3 => b3, b4 => b4, b5 => b5, b6 => b6, b7 => b7, q => q);
		
		process begin
			
			
			b0 <= '1';
			b1 <= '1';
			b2 <= '0';
			b3 <= '1';
			b4 <= '0';
			b5 <= '0';
			b6 <= '1';
			b7 <= '1';
			loadOrShift <= '1';
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			b0 <= '0';
			loadOrShift <= '0';
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			b0 <= '0';
			b1 <= '0';
			b2 <= '0';
			b3 <= '0';
			b4 <= '0';
			b5 <= '0';
			b6 <= '0';
			b7 <= '0';
			loadOrShift <= '1';
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			b0 <= '1';
			b1 <= '0';
			b2 <= '1';
			b3 <= '0';
			b4 <= '1';
			b5 <= '0';
			b6 <= '1';
			b7 <= '0';
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			b0 <= '0';
			loadOrShift <= '0';
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			-- block ende
			

			wait;
		end process;
	end test;
		
