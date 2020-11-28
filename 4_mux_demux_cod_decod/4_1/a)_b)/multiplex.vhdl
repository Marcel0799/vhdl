library ieee;
use ieee.std_logic_1164.all;

entity multiplex is
  port (
    i0: in std_ulogic_vector (2 downto 0);
    i1: in std_ulogic_vector (2 downto 0);
    i2: in std_ulogic_vector (2 downto 0);
    i3: in std_ulogic_vector (2 downto 0);
    s0: in std_ulogic;
    s1: in std_ulogic;
    y: out std_ulogic_vector (2 downto 0)
  );
end multiplex;

architecture rtl of multiplex is
  component notgate
      port (
    	input1 : in std_logic;
    	not_result : out std_logic
      );
      
  end component;
  
  component andgate
      port (
 	   input1 : in std_logic;
 	   input2 : in std_logic;
 	   and_result : out std_logic
      );
      
  end component;
    signal x0, x1, x2, x3, s1Not, s0Not : std_ulogic; 
begin

  not0 : notgate port map(input1 => s0, not_result => s0Not);
  not1 : notgate port map(input1 => s1, not_result => s1Not);
  
  and0 : andgate port map(input1 => s0Not, input2 => s1Not, and_result => x0);
  and1 : andgate port map(input1 => s0, input2 => s1Not, and_result => x1);
  and2 : andgate port map(input1 => s0Not, input2 => s1, and_result => x2);
  and3 : andgate port map(input1 => s0, input2 => s1, and_result => x3);

process (i0, i1, i2, i3, x0, x1, x2 ,x3 ) is

begin
  if (x0 = '1') then
  	y(0) <= i0(0);
	y(1) <= i0(1);
	y(2) <= i0(2);
  elsif (x1 = '1') then
	y(0) <= i1(0);
	y(1) <= i1(1);
	y(2) <= i1(2);
  elsif (x2 ='1') then
	y(0) <= i2(0);
	y(1) <= i2(1);
	y(2) <= i2(2);
  elsif (x3 ='1') then
	y(0) <= i3(0);
	y(1) <= i3(1);
	y(2) <= i3(2);
  end if;
end process;
  
end rtl;
