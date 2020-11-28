library ieee;
use ieee.std_logic_1164.all;

entity multiplex8to1_tb is
end multiplex8to1_tb;

architecture test of multiplex8to1_tb is
  component multiplex8to1
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
  end component;

  signal s0, s1, s2: std_ulogic;
  signal y, i0, i1, i2, i3, i4, i5, i6, i7 : std_ulogic_vector(2 downto 0);
  
begin
  VierPortMP: multiplex8to1 port map(i0 => i0, i1 => i1, i2 => i2, i3 => i3, i4 => i4, i5 => i5, i6 => i6, i7 => i7, s0 => s0, s1 => s1, s2 => s2, y => y);

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
    
    i4(2) <= '1';
    i4(1) <= '0';
    i4(0) <= '0';
 
    i5(2) <= '1';
    i5(1) <= '0';
    i5(0) <= '1';
    
    i6(2) <= '1';
    i6(1) <= '1';
    i6(0) <= '0';

    i7(2) <= '1';
    i7(1) <= '1';
    i7(0) <= '1';


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
