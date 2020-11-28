library ieee;
use ieee.std_logic_1164.all;

entity deMux1to8 is
  port (
    y0: out std_ulogic_vector (2 downto 0);
    y1: out std_ulogic_vector (2 downto 0);
    y2: out std_ulogic_vector (2 downto 0);
    y3: out std_ulogic_vector (2 downto 0);
    y4: out std_ulogic_vector (2 downto 0);
    y5: out std_ulogic_vector (2 downto 0);
    y6: out std_ulogic_vector (2 downto 0);
    y7: out std_ulogic_vector (2 downto 0);
    s0: in std_ulogic;
    s1: in std_ulogic;
    s2: in std_ulogic;
    iX: in std_ulogic_vector (2 downto 0)
  );
end deMux1to8;

architecture rtl of deMux1to8 is

  signal x0, x1, x2, x3, x4, x5, x6, x7 : std_ulogic_vector (2 downto 0); 
  
  component deMux
    port (
    y0: out std_ulogic_vector (2 downto 0);
    y1: out std_ulogic_vector (2 downto 0);
    y2: out std_ulogic_vector (2 downto 0);
    y3: out std_ulogic_vector (2 downto 0);
    s0: in std_ulogic;
    s1: in std_ulogic;
    iX: in std_ulogic_vector (2 downto 0)
  );
  end component;

begin

  Demultiplex1 : deMux port map(y0 => x0, y1 => x1, y2 => x2, y3 => x3, s0 => s0, s1 => s1, iX => iX);
  Demultiplex2 : deMux port map(y0 => x4, y1 => x5, y2 => x6, y3 => x7, s0 => s0, s1 => s1, iX => iX);

process (x0, x1, x2, x3, x4, x5, x6, x7, s2) is
begin
  if (s2 = '0') then
	y0(0) <= x0(0);
	y0(1) <= x0(1);
	y0(2) <= x0(2);
 
 	y1(2) <= x1(0);
	y1(1) <= x1(1);
	y1(0) <= x1(2);

	y2(0) <= x2(0);
	y2(1) <= x2(1);
	y2(2) <= x2(2);
 
 	y3(2) <= x3(0);
	y3(1) <= x3(1);
	y3(0) <= x3(2);
	
	y4(0) <= '0';
	y4(1) <= '0';
	y4(2) <= '0';
 
 	y5(2) <= '0';
	y5(1) <= '0';
	y5(0) <= '0';

	y6(2) <= '0';
	y6(1) <= '0';
	y6(0) <= '0';

 	y7(0) <= '0';
	y7(1) <= '0';
	y7(2) <= '0';
  else
 	y0(0) <= '0';
	y0(1) <= '0';
	y0(2) <= '0';

  	y1(0) <= '0';
	y1(1) <= '0';
	y1(2) <= '0';
 
 	y2(2) <= '0';
	y2(1) <= '0';
	y2(0) <= '0';

	y3(2) <= '0';
	y3(1) <= '0';
	y3(0) <= '0';
  
	y4(0) <= x4(0);
	y4(1) <= x4(1);
	y4(2) <= x4(2);
 
 	y5(2) <= x5(0);
	y5(1) <= x5(1);
	y5(0) <= x5(2);

	y6(0) <= x6(0);
	y6(1) <= x6(1);
	y6(2) <= x6(2);
 
 	y7(2) <= x7(0);
	y7(1) <= x7(1);
	y7(0) <= x7(2);
  end if;
end process;
  
end rtl;
