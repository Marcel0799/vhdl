library ieee;
use ieee.std_logic_1164.all;

entity xfa is
  port (
      x : in std_ulogic;
      y : in std_ulogic;
      s : in std_ulogic;
      cin : in std_ulogic;
      cout : out std_ulogic;
      sum : out std_ulogic
  );
end xfa;

architecture rtl of xfa is
  signal a : std_ulogic;
  signal wire_1 : std_ulogic;
  signal wire_2 : std_ulogic;
  signal wire_3 : std_ulogic;
begin
	a <= x and y; 
	wire_1 <= a and s;
	wire_2 <= a xor s;
	wire_3 <= cin and wire_2;
	cout <= wire_1 or wire_3;
	sum <= cin xor wire_2;
end rtl;
