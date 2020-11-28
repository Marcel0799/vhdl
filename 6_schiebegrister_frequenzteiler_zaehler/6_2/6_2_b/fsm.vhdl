library ieee;
use ieee.std_logic_1164.all;

entity divideby8FSM is
  port (clk, reset: in STD_LOGIC;
                 y: out STD_LOGIC);
end;

architecture synth of divideby8FSM is
  type statetype is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
  signal state, nextstate: statetype;
begin
  -- state register
  process (clk, reset) begin
    if reset = '1' then state <= S0;
    elsif clk'event and clk = '1' then
      state <= nextstate;
    end if;
  end process;

  process (state) begin
  	case state is
		when s0 => nextstate <= s1;
 		when s1 => nextstate <= s2;
 		when s2 => nextstate <= s3;
 		when s3 => nextstate <= s4;
 		when s4 => nextstate <= s5;
 		when s5 => nextstate <= s6;
 		when s6 => nextstate <= s7;
 		when s7 => nextstate <= s8;
 		when s8 => nextstate <= s1;
 		when others => nextstate <= s0;
	end case;  
  end process;
  
  process (state) begin
  	case state is
		when s0 => y <= '0';
		when s1 => y <= '0';
		when s2 => y <= '0';
		when s3 => y <= '0';
		when s4 => y <= '0';
		when s5 => y <= '0';
		when s6 => y <= '0';
		when s7 => y <= '0';
		when s8 => y <= '1';
 		when others => y <= '0';
	end case;  
  end process;
end;
