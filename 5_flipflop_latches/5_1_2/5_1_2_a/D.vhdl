library ieee;
use ieee.std_logic_1164.all;

entity D is
  port (
    clk: in std_ulogic;
    dSignal: in std_ulogic;
    q: out std_ulogic;
    nq: out std_ulogic
  );
end D;

architecture rtl of D is
  component rs
  	port(
	    r: in std_ulogic;
	    s: in std_ulogic;
	    q: out std_ulogic;
	    nq: out std_ulogic
	);      
  end component;
  signal r, s : std_ulogic; 
begin

	r <= not (clk and (not dSignal));
	s <= not (clk and dSignal);

	RSFlipFlop : rs port map(r => r, s => s, q => q, nq => nq);

end rtl;
