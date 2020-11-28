library ieee;
use ieee.std_logic_1164.all;

entity xha is
  port (
    y: in std_ulogic;
    x: in std_ulogic;
    b: in std_ulogic;
    s: out std_ulogic;
    c: out std_ulogic
  );
end xha;

architecture rtl of xha is
signal a : std_ulogic;
begin
	a <= x and y;
	s <= a xor b;
	c <= a and b;
end rtl;
