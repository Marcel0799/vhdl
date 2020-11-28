library ieee;
use ieee.std_logic_1164.all;

entity fsm_tb is
end fsm_tb;

architecture test of fsm_tb is 
	component divideby8FSM 
  		port (
  			clock, input, reset: in STD_LOGIC;
               	y: out STD_LOGIC
                );
	end component;
	  
	signal clock, input, reset, y : std_ulogic;
	  
	begin 
		frequenzDing : divideby8FSM port map (clock => clock, input => input, reset => reset, y => y);
		
		process begin


			reset <= '1';
			
			-- block beginn
			clock <= '0';
			wait for 5 ns;
			
			input <= '0';
			
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
		
		-------------------------------------- reset % zahl beginn
		
		
			-- block beginn
			input <= '0';  -- input
			clock <= '0';
			wait for 5 ns;
			
			input <= '1';  -- input
			clock <= '1';
			wait for 5 ns;
			-- block ende

			-- block beginn
			input <= '0';  -- input
			clock <= '0';
			wait for 5 ns;
			
			input <= '1';  -- input
			clock <= '1';
			wait for 5 ns;
			-- block ende

			-- block beginn
			input <= '0';  -- input
			clock <= '0';
			wait for 5 ns;
			
			input <= '1';  -- input
			clock <= '1';
			wait for 5 ns;
			-- block ende

			----------------------------------- zahl ende

			-- block beginn
			input <= '0';  -- input
			clock <= '0';
			wait for 5 ns;
			
			input <= '0';  -- input
			clock <= '1';
			wait for 5 ns;
			-- block ende

			-- block beginn
			input <= '1';  -- input
			clock <= '0';
			wait for 5 ns;
			
			input <= '1';  -- input
			clock <= '1';
			wait for 5 ns;
			-- block ende


			wait;
		end process;
	end test;
		
