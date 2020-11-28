library ieee;
use ieee.std_logic_1164.all;

	-- WICHTIG BITTE LESEN
	-- Das Sin steht für Subtraktion in
	-- sin = 0 beteutet die gewuenschte operation lautet sum = a + b
	-- sin = 1 beteutet die gewuenschte operation lautet sum = a - b

entity rca is
  port (
    a : in std_ulogic_vector(7 downto 0);
    b : in std_ulogic_vector(7 downto 0);
    -- subtrakt in 
    sin : in std_ulogic;
    cout : out std_ulogic;
    sum : out std_ulogic_vector(7 downto 0)
  );
end rca;

architecture rtl of rca is
  component fa
      port (
        a : in std_ulogic;
        b : in std_ulogic;
        cin : in std_ulogic;
        cout : out std_ulogic;
        sum : out std_ulogic
      );
  end component;
  signal wire_1 : std_ulogic;
  signal wire_2 : std_ulogic;
  signal wire_3 : std_ulogic;
  signal wire_4 : std_ulogic;
  signal wire_5 : std_ulogic;
  signal wire_6 : std_ulogic;
  signal wire_7 : std_ulogic;
  signal wire_8 : std_ulogic;
  signal bTwo : std_ulogic_vector( 7 downto 0);

begin
  
  bTwo(0) <= b(0) xor sin;
  bTwo(1) <= b(1) xor sin;
  bTwo(2) <= b(2) xor sin;
  bTwo(3) <= b(3) xor sin;
  bTwo(4) <= b(4) xor sin;
  bTwo(5) <= b(5) xor sin;
  bTwo(6) <= b(6) xor sin;
  bTwo(7) <= b(7) xor sin;
	

  add0 : fa port map(a => a(0), b => bTwo(0), cin => sin, cout => wire_1, sum => sum(0));
  add1 : fa port map(a => a(1), b => bTwo(1), cin => wire_1, cout => wire_2, sum => sum(1));
  add2 : fa port map(a => a(2), b => bTwo(2), cin => wire_2, cout => wire_3, sum => sum(2));
  add3 : fa port map(a => a(3), b => bTwo(3), cin => wire_3, cout => wire_4, sum => sum(3));
  add4 : fa port map(a => a(4), b => bTwo(4), cin => wire_4, cout => wire_5, sum => sum(4));
  add5 : fa port map(a => a(5), b => bTwo(5), cin => wire_5, cout => wire_6, sum => sum(5));
  add6 : fa port map(a => a(6), b => bTwo(6), cin => wire_6, cout => wire_7, sum => sum(6));
  add7 : fa port map(a => a(7), b => bTwo(7), cin => wire_7, cout => cout, sum => sum(7));

end rtl;
