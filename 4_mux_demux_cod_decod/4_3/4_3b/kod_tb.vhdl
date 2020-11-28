library ieee;
use ieee.std_logic_1164.all;

entity kod_tb is 
end kod_tb;

architecture test of kod_tb is
  component kod
    port (
  	i0: in std_ulogic;
  	i1: in std_ulogic;
  	i2: in std_ulogic;
  	i3: in std_ulogic;
  	y1: out std_ulogic;
  	y0: out std_ulogic
    );
  end component;
  signal i0, i1, i2, i3, y1, y0 : std_logic;
begin
  kodierer: kod port map( i0 => i0, i1 => i1, i2 => i2, i3 => i3, y1 => y1, y0 => y0); 
  process begin
	i0 <= '1';	
	i1 <= '0';
	i2 <= '0';	
	i3 <= '0';
	wait for 10 ns;
	
	i0 <= '0';	
	i1 <= '1';
	i2 <= '0';	
	i3 <= '0';
	wait for 10 ns;
	
	i0 <= '0';	
	i1 <= '0';
	i2 <= '1';	
	i3 <= '0';
	wait for 10 ns;
	
	i0 <= '0';	
	i1 <= '0';
	i2 <= '0';	
	i3 <= '1';
	wait for 10 ns;
	
    wait;
  end process;
end test;
