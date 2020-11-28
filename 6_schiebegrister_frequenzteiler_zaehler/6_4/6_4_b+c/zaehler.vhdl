library ieee;
use ieee.std_logic_1164.all;

entity zaehler is
  port (
    reset: in std_ulogic;
    clock: in std_ulogic;
    count: in std_ulogic;
    down: in std_ulogic;
    q0: out std_ulogic;
    q1: out std_ulogic
  );
end zaehler;

architecture rtl of zaehler is
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
	signal toggle, x1, x2: std_ulogic;
begin	
	FF0 : jk port map (j => count, k => count, reset => reset, clock => clock, q => x1);
	x2 <= x1 xor down;
	toggle <= x2 and count;
	FF1 : jk port map (j => toggle, k => toggle, reset => reset, clock => clock, q => q1);
	q0 <= x1;
end rtl;
