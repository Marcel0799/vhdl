library ieee;
use ieee.std_logic_1164.all;

entity dFF_tb is
end dFF_tb;

architecture test of dFF_tb is 
	component dFF 
	  port (
	    clk: in std_ulogic;
	    dSignal: in std_ulogic;
	    q: out std_ulogic;
	    nq: out std_ulogic
	  );
	  end component;
	  
	  signal clk, dSignal, q, nq : std_ulogic;
	  
	begin 
		DFlipFlop : dFF port map (clk => clk, dSignal => dSignal, q => q, nq => nq);
		
		process begin
			clk <= '0';
			dSignal <= '0';
			wait for 10 ns;
			
			clk <= '0';
			dSignal <= '1';
			wait for 10 ns;

			clk <= '1';
			dSignal <= '0';
			wait for 10 ns;

			clk <= '1';
			dSignal <= '1';
			wait for 10 ns;

			wait;
		end process;
	end test;
		
