library ieee;
use ieee.std_logic_1164.all;

-- create testbench for and_gate
-- can be left empty, since test bench (this file) has no inputs or outputs
entity andgate_tb is
end andgate_tb;

architecture test of andgate_tb is
  -- component declaration, so that it can be instantiated later
  -- must have same name and port list as the entity
-- define the signals that will be used in test
  signal a, b, c : std_logic;
-- begin test code
begin
  -- creates an instance of andgate
  process begin
    a <= 'X';
    b <= '0';
    wait for 10 ns;

    c <= a and b;
    wait for 10 ns;
    c <= a or b;
    wait for 10 ns;

    a <= 'X';
    b <= '1';
    wait for 10 ns;

    c <= a and b;
    wait for 10 ns;
    c <= a or b;
    wait for 10 ns;

    a <= '1';
    b <= '0';
    wait for 10 ns;

    c <= a and b;
    wait for 10 ns;
    c <= a or b;
    wait for 10 ns;

    a <= '0';
    b <= 'W';
    wait for 10 ns;

    c <= a and b;
    wait for 10 ns;
    c <= a or b;
    wait for 10 ns;

    a <= '1';
    b <= 'W';
    wait for 10 ns;

    c <= a and b;
    wait for 10 ns;
    c <= a or b;
    wait for 10 ns;

    a <= 'W';
    b <= 'L';
    wait for 10 ns;

    c <= a and b;
    wait for 10 ns;
    c <= a or b;
    wait for 10 ns;

    a <= 'W';
    b <= 'H';
    wait for 10 ns;

    c <= a and b;
    wait for 10 ns;
    c <= a or b;
    wait for 10 ns;

    a <= 'L';
    b <= 'H';

    c <= a and b;
    wait for 10 ns;
    c <= a or b;
    wait for 10 ns;

    assert false report "End of test";
    wait;
  end process;
end test;
