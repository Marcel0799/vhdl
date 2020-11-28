library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity asm is
  port (
    a : in std_ulogic_vector(3 downto 0);
    b : in std_ulogic_vector(3 downto 0);
    sum : out std_ulogic_vector(7 downto 0)
  );
end asm;

architecture rtl of asm is
  component rca
  	port (
  	  a : in std_ulogic_vector(7 downto 0);
  	  b : in std_ulogic_vector(7 downto 0);
  	  sin : in std_ulogic;
  	  cout : out std_ulogic;
  	  sum : out std_ulogic_vector(7 downto 0)
  	);
  end component;
  signal a0, a1, a2, a3 : std_ulogic_vector(7 downto 0);
  signal p0, p1, p2, p3 : std_ulogic_vector(7 downto 0);
  
begin


	-- Zykle One -- 
	a0(0) <= a(0) and b(0);
	a0(1) <= a(1) and b(0);
	a0(2) <= a(2) and b(0);
	a0(3) <= a(3) and b(0);
	a0(4) <= '0';
	a0(5) <= '0';
	a0(6) <= '0';
	a0(7) <= '0';

	p0(0) <= '0';
	p0(1) <= '0';
	p0(2) <= '0';
	p0(3) <= '0';
	p0(4) <= '0';
	p0(5) <= '0';
	p0(6) <= '0';
	p0(7) <= '0';

	addOne : rca port map(a => a0, b => p0, sin => '0', sum => p1);
	
	-- Zykle Two --
	a1(0) <= '0';
	a1(1) <= a(0) and b(1);
	a1(2) <= a(1) and b(1);
	a1(3) <= a(2) and b(1);
	a1(4) <= a(3) and b(1);
	a1(5) <= '0';
	a1(6) <= '0';
	a1(7) <= '0';
	
	addTwo : rca port map(a => a1, b => p1, sin => '0', sum => p2);
	
	-- Zykle Three --
	a2(0) <= '0';
	a2(1) <= '0';
	a2(2) <= a(0) and b(2);
	a2(3) <= a(1) and b(2);
	a2(4) <= a(2) and b(2);
	a2(5) <= a(3) and b(2);
	a2(6) <= '0';
	a2(7) <= '0';
	
	addThree : rca port map(a => a2, b => p2, sin => '0', sum => p3);
	
		
	-- Zykle Four --
	a3(0) <= '0';
	a3(1) <= '0';
	a3(2) <= '0';
	a3(3) <= a(0) and b(3);
	a3(4) <= a(1) and b(3);
	a3(5) <= a(2) and b(3);
	a3(6) <= a(3) and b(3);
	a3(7) <= '0';
	
	addFour : rca port map(a => a3, b => p3, sin => '0', sum => sum);

	 
end rtl;
