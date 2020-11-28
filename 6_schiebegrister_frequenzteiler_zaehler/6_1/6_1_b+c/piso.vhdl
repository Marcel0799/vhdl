library ieee;
use ieee.std_logic_1164.all;

-- es wird zum laden und rausscheiben ein mux simuliert, dieser benutz shiftOrLoad als eingabe
-- danach wird jeweils eine sX variable gesetzt die feststellt ob das ergebnis aus dem ScheibeRegister geschoben werden soll
-- sollte das ScheibeRegster aber im lade modus sein wird die l1 variable aktiv 
-- die xX Variable ist dann das input in den FlipFlop
-- und eX ist das Ergebnis


entity piso is
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
end piso;

architecture rtl of piso is
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
	signal s1, s2, s3, s4, s5, s6, s7, s8 : std_ulogic; 
	signal l1, l2, l3, l4, l5, l6, l7, l8 : std_ulogic; 
	signal e1, e2, e3, e4, e5, e6, e7, e8 : std_ulogic;
	signal shift, load, output : std_ulogic;
begin
	load <= loadOrShift;
	shift <= not loadOrShift;
	
	l1 <= b1 and load;
	l2 <= b2 and load;
	l3 <= b3 and load;
	l4 <= b4 and load;
	l5 <= b5 and load;
	l6 <= b6 and load;
	l7 <= b7 and load;

	s1 <= e1 and shift;
	s2 <= e2 and shift;
	s3 <= e3 and shift;
	s4 <= e4 and shift;
	s5 <= e5 and shift;
	s6 <= e6 and shift;
	s7 <= e7 and shift;

	x1 <= l1 or s1;
	x2 <= l2 or s2;
	x3 <= l3 or s3;
	x4 <= l4 or s4;
	x5 <= l5 or s5;
	x6 <= l6 or s6;
	x7 <= l7 or s7;


	FF1 : dFF port map (clk => clock, d => b0, reset => clear, q => e1);
	FF2 : dFF port map (clk => clock, d => x1, reset => clear, q => e2);
	FF3 : dFF port map (clk => clock, d => x2, reset => clear, q => e3);
	FF4 : dFF port map (clk => clock, d => x3, reset => clear, q => e4);
	FF5 : dFF port map (clk => clock, d => x4, reset => clear, q => e5);
	FF6 : dFF port map (clk => clock, d => x5, reset => clear, q => e6);
	FF7 : dFF port map (clk => clock, d => x6, reset => clear, q => e7);
	FF8 : dFF port map (clk => clock, d => x7, reset => clear, q => output);
	
	q <= output;

end rtl;
