
library ieee;
use ieee.std_logic_1164.all;

entity orgate is
  -- Ein Entity ist eine Schaltung welche wir in vdhl definieren wollen,
  -- Innerhalb der Entity klammern legen wir das Bild des Entity nach außen fest, 
  -- also welche Anschlüsse es hat, ob diese Eingänge oder AUsgänge sind etc. .
  port (
    input1 : in std_logic;
    input2 : in std_logic;
    or_result : out std_logic
  );
end orgate;

architecture rtl of orgate is
  -- Innerhalb der architecture Klammern legen wir das innere der Shcaltung fest.
  -- Wie die einzelnen Eingänge mit einander Verbunden sind, und wie das oder die Ausgangssignale entstehen.
  signal or_gate : std_logic;
begin
  or_gate <= input1 or input2;
  or_result <= or_gate;
end rtl;
