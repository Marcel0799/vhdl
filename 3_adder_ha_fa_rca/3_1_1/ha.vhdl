library ieee;
use ieee.std_logic_1164.all;

entity ha is
  port (
    a: in std_ulogic;
    b: in std_ulogic;
    o: out std_ulogic;
    c: out std_ulogic
  );
end ha;

architecture rtl of ha is
begin
	c <= a and b;
	o <= a xor b;
end rtl;
