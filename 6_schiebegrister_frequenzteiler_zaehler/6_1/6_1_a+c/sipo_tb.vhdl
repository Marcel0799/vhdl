library ieee;
use ieee.std_logic_1164.all;

entity sipo_tb is
end sipo_tb;

architecture test of sipo_tb is 
	component sipo 
	  port (
	    clock: in std_ulogic;
	    d: in std_ulogic;
	    clear: in std_ulogic;
	    q1: out std_ulogic;
	    q2: out std_ulogic;
	    q3: out std_ulogic;
	    q4: out std_ulogic;
	    q5: out std_ulogic;
	    q6: out std_ulogic;
	    q7: out std_ulogic;
	    q8: out std_ulogic
	  );
	end component;
	  
	signal clock, d, clear, q1, q2, q3, q4, q5, q6, q7, q8 : std_ulogic;
	  
	begin 
		SchiebeRegister : sipo port map (clock => clock, d => d, clear => clear, q1 => q1, q2 => q2, q3 => q3, q4 => q4, q5 => q5, q6 => q6, q7 => q7, q8 => q8);
		
		process begin
			d <= '1';
			
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			d <= '0';
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			d <= '1';
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
			
			clear <= '1';
			clock <= '0';
			wait for 5 ns;
			
			clock <= '1';
			wait for 5 ns;
		
			wait;
		end process;
	end test;
		
