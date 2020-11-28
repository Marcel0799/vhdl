library ieee;
use ieee.std_logic_1164.all;

entity kod is 
  port (
  	i0: in std_ulogic;
  	i1: in std_ulogic;
  	i2: in std_ulogic;
  	i3: in std_ulogic;
  	y1: out std_ulogic;
  	y0: out std_ulogic
  );
  end kod;
  
architecture rtl of kod is
  signal I2New, I1New : std_ulogic;
begin
	I2New <= i2 and (not i3);
	I1New <= i1 and (not i2) and (not i3);
	y1 <= i3 or I2New;
	y0 <= i3 or I1New;
end rtl;    	
