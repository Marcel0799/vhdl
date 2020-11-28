library ieee;
use ieee.std_logic_1164.all;

entity deMux1to8_tb is
end deMux1to8_tb;

architecture test of deMux1to8_tb is
  component deMux1to8
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
  end component;

  signal s0, s1, s2: std_ulogic;
  signal iX, y0, y1, y2, y3, y4, y5, y6, y7 : std_ulogic_vector(2 downto 0);
  
begin
  deMux1: deMux1to8 port map(y0 => y0, y1 => y1, y2 => y2, y3 => y3, y4 => y4, y5 => y5, y6 => y6, y7 => y7, s0 => s0, s1 => s1, s2 => s2, iX => iX);

  process begin
    
    iX(2) <= '1';
    iX(1) <= '0';
    iX(0) <= '1';


    s2 <= '0';
    s1 <= '0';
    s0 <= '0';
    wait for 10 ns;
    s2 <= '0';
    s1 <= '1';
    s0 <= '0';
    wait for 10 ns;
    s2 <= '0';
    s1 <= '0';
    s0 <= '1';
    wait for 10 ns;
    s2 <= '0';
    s1 <= '1';
    s0 <= '1';
    wait for 10 ns;
    s2 <= '1';
    s1 <= '0';
    s0 <= '0';
    wait for 10 ns;
    s2 <= '1';
    s1 <= '1';
    s0 <= '0';
    wait for 10 ns;
    s2 <= '1';
    s1 <= '0';
    s0 <= '1';
    wait for 10 ns;
    s2 <= '1';
    s1 <= '1';
    s0 <= '1';
    wait for 10 ns;

    wait;
  end process;
end test;
