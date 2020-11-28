library ieee;
use ieee.std_logic_1164.all;

entity deMux_tb is
end deMux_tb;

architecture test of deMux_tb is
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

  signal s0, s1: std_ulogic;
  signal iX, y0, y1, y2, y3 : std_ulogic_vector(2 downto 0);
  
begin
  VierPortDeMux: deMux port map(y0 => y0, y1 => y1, y2 => y2, y3 => y3, s0 => s0, s1 => s1, iX => iX);

  process begin
    
    ix(2) <= '1';
    iX(1) <= '0';
    iX(0) <= '1';

    s1 <= '0';
    s0 <= '0';
    wait for 10 ns;
    s1 <= '1';
    s0 <= '0';
    wait for 10 ns;
    s1 <= '0';
    s0 <= '1';
    wait for 10 ns;
    s1 <= '1';
    s0 <= '1';
    wait for 10 ns;

    wait;
  end process;
end test;
