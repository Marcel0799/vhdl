library ieee;
use ieee.std_logic_1164.all;

entity cla_tb is
end cla_tb;

architecture test of cla_tb is
  component cla
    port (
      a : in std_logic_vector(3 downto 0);
      b : in std_logic_vector(3 downto 0);
      cin : in std_logic;
      cout : out std_logic;
      sum : out std_logic_vector(3 downto 0)
    );
  end component;

signal a : std_logic_vector(3 downto 0);
signal b : std_logic_vector(3 downto 0);
signal cin : std_logic;
signal cout : std_logic;
signal sum : std_logic_vector(3 downto 0);
begin
  carryLookaheadAdder: cla port map(a => a, b => b, cout => cout, cin => cin, sum => sum);

  process begin
    a <= "0001";
    b <= "0010";
    cin <= '0';
    wait for 10 ns;
    
    a <= "0001";
    b <= "0011";
    cin <= '0';
    wait for 10 ns;
    
    a <= "0001";
    b <= "0011";
    cin <= '1';
    wait for 10 ns;
    
    a <= "1100";
    b <= "1011";
    cin <= '0';
    wait for 10 ns;
    
    wait;
  end process;
end test;
