library ieee;
use ieee.std_logic_1164.all;

entity mult_tb is
end mult_tb;

architecture test of mult_tb is
  component mult
  port (
    x : in std_ulogic_vector(3 downto 0);
    y : in std_ulogic_vector(3 downto 0);
    z : out std_ulogic_vector(7 downto 0)
  );
  end component;

signal x, y : std_ulogic_vector(3 downto 0);
signal z : std_ulogic_vector(7 downto 0);

begin
  multiplier: mult port map(x => x, y => y, z => z);

  process begin
	x <= "1010";
	y <= "1101";
	-- 10 * 13 = 130 --
	wait for 10 ns;

	x <= "1010";
	y <= "0111";
	-- 10 * 7 = 70 --
	wait for 10 ns;

	x <= "1001";
	y <= "1101";
	-- 9 * 13 = 117 --
	wait for 10 ns;

	x <= "1001";
	y <= "0111";
	-- 9 * 7 = 63 --
	wait for 10 ns;


    wait;
  end process;
end test;
