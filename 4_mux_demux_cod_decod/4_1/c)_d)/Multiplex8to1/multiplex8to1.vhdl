library ieee;
use ieee.std_logic_1164.all;

entity multiplex8to1 is
  port (
    i0: in std_ulogic_vector (2 downto 0);
    i1: in std_ulogic_vector (2 downto 0);
    i2: in std_ulogic_vector (2 downto 0);
    i3: in std_ulogic_vector (2 downto 0);
    i4: in std_ulogic_vector (2 downto 0);
    i5: in std_ulogic_vector (2 downto 0);
    i6: in std_ulogic_vector (2 downto 0);
    i7: in std_ulogic_vector (2 downto 0);
    s0: in std_ulogic;
    s1: in std_ulogic;
    s2: in std_ulogic;
    y: out std_ulogic_vector (2 downto 0)
  );
end multiplex8to1;

architecture rtl of multiplex8to1 is  
  component multiplex4to1
    port (
    i0: in std_ulogic_vector (2 downto 0);
    i1: in std_ulogic_vector (2 downto 0);
    i2: in std_ulogic_vector (2 downto 0);
    i3: in std_ulogic_vector (2 downto 0);
    s0: in std_ulogic;
    s1: in std_ulogic;
    y: out std_ulogic_vector (2 downto 0)
  );
  end component;
  signal y1, y2 : std_ulogic_vector(2 downto 0); 
begin
  mux1 : multiplex4to1 port map(i0 => i0, i1 => i1, i2 => i2, i3 => i3, s0 => s0, s1 => s1, y => y1);
  mux2 : multiplex4to1 port map(i0 => i4, i1 => i5, i2 => i6, i3 => i7, s0 => s0, s1 => s1, y => y2);

process (y1, y2, s2) is
begin
  if (s2 = '0') then
  	y(0) <= y1(0);
	y(1) <= y1(1);
	y(2) <= y1(2);
  else
  	y(0) <= y2(0);
	y(1) <= y2(1);
	y(2) <= y2(2);
  end if;
end process;
  
end rtl;
