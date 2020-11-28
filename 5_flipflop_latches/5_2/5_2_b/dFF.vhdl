library ieee;
use ieee.std_logic_1164.all;

entity dFF is
  port (
    clk: in std_ulogic;
    dSignal: in std_ulogic;
    q: out std_ulogic;
    nq: out std_ulogic
  );
end dFF;

architecture rtl of dFF is
signal zwischenQ : std_ulogic;
begin
 process(clk, zwischenQ)
 begin 
    if(rising_edge(clk)) then
     zwischenQ <= (not dSignal);
    end if;       
 end process;
 
 q <= zwischenQ;
 nq <= not zwischenQ; 
     
end rtl;
