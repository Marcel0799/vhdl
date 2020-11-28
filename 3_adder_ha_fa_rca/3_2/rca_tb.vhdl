library ieee;
use ieee.std_logic_1164.all;

entity rca_tb is
end rca_tb;

	-- WICHTIG BITTE LESEN
	-- Das Sin steht für Subtraktion in
	-- sin = 0 beteutet die gewuenschte operation lautet sum = a + b
	-- sin = 1 beteutet die gewuenschte operation lautet sum = a - b

architecture test of rca_tb is
  component rca
    port (
      a : in std_logic_vector(7 downto 0);
      b : in std_logic_vector(7 downto 0);
      -- subtrakt in 
      sin : in std_logic;
      cout : out std_logic;
      sum : out std_logic_vector(7 downto 0)
    );
  end component;

signal a : std_logic_vector(7 downto 0);
signal b : std_logic_vector(7 downto 0);
signal sin : std_logic;
signal cout : std_logic;
signal sum : std_logic_vector(7 downto 0);
begin
  rippleCarryAdder: rca port map(a => a, b => b, cout => cout, sin => sin, sum => sum);

  process begin
    a <= "11000011";
    b <= "00110011";
    sin <= '0';
    wait for 10 ns;
    
    a <= "00001000";
    b <= "00000100";
    sin <= '1';
    wait for 10 ns;
    wait;
  end process;
end test;
