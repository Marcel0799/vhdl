library ieee;
use ieee.std_logic_1164.all;

entity deKod is 
  port (
  	i0: out std_ulogic;
  	i1: out std_ulogic;
  	i2: out std_ulogic;
  	i3: out std_ulogic;
  	y1: in std_ulogic;
  	y0: in std_ulogic
  );
  end deKod;
  
architecture rtl of deKod is
begin
	i0 <= (not y1) and (not y0);
	i1 <= (not y1) and y0;
	i2 <= y1 and (not y0);
	i3 <= y1 and y0;
end rtl;    	
