library ieee;
use ieee.std_logic_1164.all;

entity divideby8FSM is
  port (clock, input, reset: in STD_LOGIC;
                 y: out STD_LOGIC);
end;

architecture synth of divideby8FSM is
  type statetype is (s0, s1, s10, s101, s1010, s10101);
  signal state, nextstate: statetype;
begin
  process (state, nextstate, clock, input) begin
    if reset = '1' then state <= S0;
    elsif clock'event and input = '1' then
    	-- report "input: " & std_ulogic'image(input);
    	case state is
		when s0 => nextstate <= s1; report "0 -> 1";
 		when s1 => nextstate <= s1; report "1 -> 1";
 		when s10 => nextstate <= s101; report "10 -> 101";
 		when s101 => nextstate <= s1; report "101 -> 1";
 		when s1010 => nextstate <= s10101; report "1010 -> 10101 jaaa";
 		when s10101 => nextstate <= s1; report "10101 -> 1";
 		when others => nextstate <= s0; report "wort: 0 fehler";
	end case;     
    elsif clock'event and input = '0' then
    	case state is
    		when s0 => nextstate <= s0; report "0 -> 0";
 		when s1 => nextstate <= s10; report "1 -> 10";
 		when s10 => nextstate <= s0; report "10 -> 0";
 		when s101 => nextstate <= s1010; report "101 -> 1010";
 		when s1010 => nextstate <= s0; report "1010 -> 0";
 		when s10101 => nextstate <= s1010; report "10101 -> 1010";
 		when others => nextstate <= s0; report "wort: 0 Fehler";
	end case;
    end if;
    -- report "state: " & statetype'image(state);
    -- report "nextstate: " & statetype'image(nextstate);
    state <= nextstate;
  end process;
  
  
  process (state, nextstate) begin
  	if state = s10101 then 
		y <= '1';
	else 
		y <= '0';
	end if;
  end process;
end;
