library ieee;
use ieee.std_logic_1164.all;

entity fa is
  port (
      a : in std_logic;
      b : in std_logic;
      cin : in std_logic;
      cout : out std_logic;
      sum : out std_logic
  );
end fa;

architecture rtl of fa is
  signal wire_1 : std_logic;
  signal wire_2 : std_logic;
  signal wire_3 : std_logic;
begin
	wire_1 <= a and b;
	wire_2 <= a xor b;
	wire_3 <= cin and wire_2;
	cout <= wire_1 or wire_3;
	sum <= cin xor wire_2;
end rtl;
