library ieee;
use ieee.std_logic_1164.all;

entity deMux is
  port (
    y0: out std_ulogic_vector (2 downto 0);
    y1: out std_ulogic_vector (2 downto 0);
    y2: out std_ulogic_vector (2 downto 0);
    y3: out std_ulogic_vector (2 downto 0);
    s0: in std_ulogic;
    s1: in std_ulogic;
    iX: in std_ulogic_vector (2 downto 0)
  );
end deMux;

architecture rtl of deMux is
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

process (iX, x0, x1, x2 ,x3 ) is

begin
  if (x0 = '1') then
  	y0(0) <= iX(0);
	y0(1) <= iX(1);
	y0(2) <= iX(2);
 
	y1(2) <= '0';
	y1(1) <= '0';
	y1(0) <= '0';
	
	y2(2) <= '0';
	y2(1) <= '0';
	y2(0) <= '0';

	y3(2) <= '0';
    	y3(1) <= '0';
    	y3(0) <= '0';
  elsif (x1 = '1') then
  	y0(0) <= '0';
	y0(1) <= '0';
	y0(2) <= '0';
 
	y1(0) <= iX(0);
	y1(1) <= iX(1);
	y1(2) <= iX(2);
	
	y2(2) <= '0';
	y2(1) <= '0';
	y2(0) <= '0';

	y3(2) <= '0';
    	y3(1) <= '0';
    	y3(0) <= '0';   	
  elsif (x2 ='1') then
  	y0(0) <= '0';
	y0(1) <= '0';
	y0(2) <= '0';

	y1(2) <= '0';
	y1(1) <= '0';
	y1(0) <= '0';
 
 	y2(0) <= iX(0);
	y2(1) <= iX(1);
	y2(2) <= iX(2);

	y3(2) <= '0';
    	y3(1) <= '0';
    	y3(0) <= '0';
  elsif (x3 ='1') then
  	y0(0) <= '0';
	y0(1) <= '0';
	y0(2) <= '0';
 
 	y1(2) <= '0';
	y1(1) <= '0';
	y1(0) <= '0';

	y2(2) <= '0';
	y2(1) <= '0';
	y2(0) <= '0';

 	y3(0) <= iX(0);
	y3(1) <= iX(1);
	y3(2) <= iX(2);
  end if;
end process;
  
end rtl;
