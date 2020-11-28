library ieee;
use ieee.std_logic_1164.all;

entity rs_tb is
end rs_tb;

architecture test of rs_tb is 
	component rs 
	  port (
	    r: in std_ulogic;
	    s: in std_ulogic;
	    q: out std_ulogic;
	    nq: out std_ulogic
	  );
	  end component;
	  
	  signal r, s, q, nq : std_ulogic;
	  
	begin 
		FlipFlop : rs port map (r => r, s => s, q => q, nq => nq);
		
		process begin
			r <= '0';
			s <= '0';
			wait for 10 ns;
			
			s <= '0';
			r <= '1';
			wait for 10 ns;

			s <= '1';
			r <= '0';
			wait for 10 ns;

			s <= '1';
			r <= '1';
			wait for 10 ns;

			wait;
		end process;
	end test;
		
	
