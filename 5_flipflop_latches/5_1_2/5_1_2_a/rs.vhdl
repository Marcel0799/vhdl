library ieee;
use ieee.std_logic_1164.all;

entity rs is
  port (
    r: in std_ulogic;
    s: in std_ulogic;
    q: out std_ulogic;
    nq: out std_ulogic
  );
end rs;

architecture rtl of rs is
  component nandgate
      port (
	    input1 : in std_logic;
	    input2 : in std_logic;
	    nand_result : out std_logic
      );
      
  end component;
  signal n1, n2 : std_ulogic; 
begin

  nand1 : nandgate port map(input1 => r, input2 => n2, nand_result => n1);
  nand2 : nandgate port map(input1 => s, input2 => n1, nand_result => n2);
  q <= n1;
  nq <= n2; 

end rtl;
