library ieee;
use ieee.std_logic_1164.all;

entity sipo is
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
end sipo;

architecture rtl of sipo is
	component dFF
		  port (
    			clk: in std_ulogic;
   			d: in std_ulogic;
    			reset: in std_ulogic;
    			q: out std_ulogic;
    			nq: out std_ulogic
  		);
  	end component;
	signal x1, x2, x3, x4, x5, x6, x7, x8 : std_ulogic;
begin
	FF1 : dFF port map (clk => clock, d => d, reset => clear, q => x1);
	FF2 : dFF port map (clk => clock, d => x1, reset => clear, q => x2);
	FF3 : dFF port map (clk => clock, d => x2, reset => clear, q => x3);
	FF4 : dFF port map (clk => clock, d => x3, reset => clear, q => x4);
	FF5 : dFF port map (clk => clock, d => x4, reset => clear, q => x5);
	FF6 : dFF port map (clk => clock, d => x5, reset => clear, q => x6);
	FF7 : dFF port map (clk => clock, d => x6, reset => clear, q => x7);
	FF8 : dFF port map (clk => clock, d => x7, reset => clear, q => x8);
	
	q1 <= x1;
	q2 <= x2;
	q3 <= x3;
	q4 <= x4;
	q5 <= x5;
	q6 <= x6;
	q7 <= x7;
	q8 <= x8;
end rtl;
