library ieee;
use ieee.std_logic_1164.all;


entity nxorgate_tb is
end nxorgate_tb;

architecture test of nxorgate_tb is
  component nxorgate
      port (
        input1 : in std_logic;
        input2 : in std_logic;
        nxor_result : out std_logic
      );
  end component;
  signal a, b, c : std_logic;
begin
 nxor_g: nxorgate port map(input1 => a, input2 => b, nxor_result => c);

  process begin
    a <= '0';
    b <= '0';
    wait for 10 ns;
    a <= '0';
    b <= '1';
    wait for 10 ns;
    a <= '1';
    b <= '0';
    wait for 10 ns;
    a <= '1';
    b <= '1';
    wait for 10 ns;
    assert false report "End of test";
    wait;
  end process;
end test;