
library ieee;
use ieee.std_logic_1164.all;

entity notgate is
  port (
    input1 : in std_logic;
    not_result : out std_logic
  );
end notgate;

architecture rtl of notgate is
begin
  not_result <= not input1;
end rtl;
