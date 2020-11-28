library ieee;
use ieee.std_logic_1164.all;

-- moeglichst vorher die multiplierB.pdf ansehen --
-- dort werden die bezeichnungen der vektoren besser gekennzeichnet --

entity mult is
  port (
    x : in std_ulogic_vector(3 downto 0);
    y : in std_ulogic_vector(3 downto 0);
    z : out std_ulogic_vector(7 downto 0)
  );
end mult;

architecture rtl of mult is

  component xfa
  	port (
  	    x : in std_ulogic;
  	    y : in std_ulogic;
  	    s : in std_ulogic;
  	    cin : in std_ulogic;
  	    cout : out std_ulogic;
  	    sum : out std_ulogic
  	);
  end component;
  
  component xha
	  port (
	    y: in std_ulogic;
	    x: in std_ulogic;
	    b: in std_ulogic;
	    s: out std_ulogic;
	    c: out std_ulogic
	  );
  end component;

	signal r0, r1, r2, r3 : std_ulogic_vector(3 downto 0);
	signal c1, c2, c3 : std_ulogic_vector(3 downto 0);
	signal wire_3 : std_ulogic;
begin

	-- row 0 -- 
	r0(0) <= x(0) and y(0);
	r0(1) <= x(1) and y(0);
	r0(2) <= x(2) and y(0);
	r0(3) <= x(3) and y(0);
	z(0) <= x(0) and y(0);

	-- row 1 --
	xha10 : xha port map(y => y(1), x => x(0), b => r0(1), s => r1(0), c => c1(0));
	xfa11 : xfa port map(y => y(1), x => x(1), s => r0(2), cin => c1(0) , cout => c1(1), sum => r1(1));
	xfa12 : xfa port map(y => y(1), x => x(2), s => r0(3), cin => c1(1) , cout => c1(2), sum => r1(2));
	xha13 : xha port map(y => y(1), x => x(3), b => c1(2), s => r1(3), c => c1(3));
	z(1) <= r1(0);
		
	-- row 2 --	
	xha20 : xha port map(y => y(2), x => x(0), b => r1(1), s => r2(0), c => c2(0));
	xfa21 : xfa port map(y => y(2), x => x(1), s => r1(2), cin => c2(0) , cout => c2(1), sum => r2(1));
	xfa22 : xfa port map(y => y(2), x => x(2), s => r1(3), cin => c2(1) , cout => c2(2), sum => r2(2));
	xfa23 : xfa port map(y => y(2), x => x(3), s => c1(3), cin => c2(2) , cout => c2(3), sum => r2(3));
	z(2) <= r2(0);
	
		-- row 2 --	
	xha30 : xha port map(y => y(3), x => x(0), b => r2(1), s => r3(0), c => c3(0));
	xfa31 : xfa port map(y => y(3), x => x(1), s => r2(2), cin => c3(0) , cout => c3(1), sum => r3(1));
	xfa32 : xfa port map(y => y(3), x => x(2), s => r2(3), cin => c3(1) , cout => c3(2), sum => r3(2));
	xfa33 : xfa port map(y => y(3), x => x(3), s => c2(3), cin => c3(2) , cout => c3(3), sum => r3(3));
	z(3) <= r3(0);
	z(4) <= r3(1);
	z(5) <= r3(2);
	z(6) <= r3(3);
	z(7) <= c3(3);
	
	 
end rtl;
