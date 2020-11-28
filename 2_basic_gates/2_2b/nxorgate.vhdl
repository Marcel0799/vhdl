
library ieee;
use ieee.std_logic_1164.all;

entity nxorgate is
  port (
    input1 : in std_logic;
    input2 : in std_logic;
    nxor_result : out std_logic
  );
end nxorgate;

architecture rtl of nxorgate is
  signal nxor_gate : std_logic;
begin
  nxor_gate <= input1 xor input2;
  nxor_result <= not nxor_gate;
end rtl;
