library ieee;
use ieee.std_logic_1164.all;

entity deKod_tb is 
end deKod_tb;

architecture test of deKod_tb is
  component deKod
    port (
  	i0: out std_ulogic;
  	i1: out std_ulogic;
  	i2: out std_ulogic;
  	i3: out std_ulogic;
  	y1: in std_ulogic;
  	y0: in std_ulogic
    );
  end component;
  signal i0, i1, i2, i3, y1, y0 : std_logic;
begin
  deKodierer: deKod port map( i0 => i0, i1 => i1, i2 => i2, i3 => i3, y1 => y1, y0 => y0); 
  process begin
	y1 <= '0';	
	y0 <= '0';
	wait for 10 ns;

	y1 <= '0';	
	y0 <= '1';
	wait for 10 ns;

	y1 <= '1';	
	y0 <= '0';
	wait for 10 ns;

	y1 <= '1';	
	y0 <= '1';
	wait for 10 ns;	
	
    wait;
  end process;
end test;
