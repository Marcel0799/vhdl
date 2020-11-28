library ieee;
use ieee.std_logic_1164.all;

entity multiplex_tb is
end multiplex_tb;

architecture test of multiplex_tb is
  component multiplex
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

  signal s0, s1: std_ulogic;
  signal y, i0, i1, i2, i3 : std_ulogic_vector(2 downto 0);
  
begin
  VierPortMP: multiplex port map(i0 => i0, i1 => i1, i2 => i2, i3 => i3, s0 => s0, s1 => s1, y => y);

  process begin
    
    i0(2) <= '0';
    i0(1) <= '0';
    i0(0) <= '0';
 
    i1(2) <= '0';
    i1(1) <= '0';
    i1(0) <= '1';
    
    i2(2) <= '0';
    i2(1) <= '1';
    i2(0) <= '0';

    i3(2) <= '0';
    i3(1) <= '1';
    i3(0) <= '1';

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
