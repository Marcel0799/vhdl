library ieee;
use ieee.std_logic_1164.all;

entity asm_tb is
end asm_tb;

architecture test of asm_tb is
  component asm
  port (
    a : in std_ulogic_vector(3 downto 0);
    b : in std_ulogic_vector(3 downto 0);
    sum : out std_ulogic_vector(7 downto 0)
  );
  end component;

signal a : std_ulogic_vector(3 downto 0);
signal b : std_ulogic_vector(3 downto 0);
signal sum : std_ulogic_vector(7 downto 0);
begin
  Multiplier: asm port map(a => a, b => b, sum => sum);

  process begin
    a <= "1010";
    b <= "1101";
    wait for 10 ns;
    
    a <= "1010";
    b <= "0111";
    wait for 10 ns;
    
    a <= "1001";
    b <= "1101";
    wait for 10 ns;
    
    a <= "1001";
    b <= "0111";
    wait for 10 ns;

    wait;
  end process;
end test;
