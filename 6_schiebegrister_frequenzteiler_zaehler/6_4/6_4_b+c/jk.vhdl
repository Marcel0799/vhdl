library ieee;
use ieee.std_logic_1164.all;

entity jk is
	port( 
		j: in std_ulogic;
		k: in  std_ulogic;
		reset: in std_ulogic;
		clock: in std_ulogic;
		q: out std_ulogic;
		nq: out std_ulogic
	);
end jk;

architecture rtl of jk is
   signal x, nqReset: std_ulogic;
begin
   process (clock) 
   begin
      if rising_edge(clock) then 
         if reset='1' then   
            x <= '0';
            nqReset <= '1';
         elsif clock ='1' then
            nqReset <= '0';
            if (j='0' and k='0') then
               x <= x;
            elsif (j='0' and k='1') then
               x <= '0';
            elsif (j='1' and k='0') then
               x <= '1';
            elsif (j='1' and k='1') then
            	if (x='1' or x='0') then x <= (not x); else x <= '1'; end if;
            end if;
         end if;
      end if;
   end process;
   q <= x;
   nq <= (not x) xor nqReset;                  
end rtl;
