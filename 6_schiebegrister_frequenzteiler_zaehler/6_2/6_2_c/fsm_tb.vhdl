library ieee;
use ieee.std_logic_1164.all;

entity fsm_tb is
end fsm_tb;

architecture test of fsm_tb is 
	component divideby8FSM 
  		port (
  			clk, reset: in STD_LOGIC;
               	y: out STD_LOGIC
                );
	end component;
	  
	signal clk, reset, y : std_ulogic;
	  
	begin 
		frequenzDing : divideby8FSM port map (clk => clk, reset => reset, y => y);
		
		process begin


			reset <= '1';
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			reset <= '0';

			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			
			-- block beginn
			clk <= '0';
			wait for 5 ns;
			
			clk <= '1';
			wait for 5 ns;
			-- block ende
			

			
			wait;
		end process;
	end test;
		
