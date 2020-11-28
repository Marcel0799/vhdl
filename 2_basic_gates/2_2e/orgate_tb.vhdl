library ieee;
use ieee.std_logic_1164.all;


entity orgate_tb is
end orgate_tb;

architecture test of orgate_tb is
  component orgate
    -- ein component wird genutzt wenn man ein bereits bestehendes Bauteil (a Component) einbindet. 
	-- um dies nutzen zu können müssen vorher die Ports des Bauteils definiert werden.
      port (
        input1 : in std_logic;
        input2 : in std_logic;
        or_result : out std_logic
      );
  end component;
  signal a, b, c : std_logic;
begin

  -- Innerhalb der Portmap legt man die Verbindung fest wie die Signale der Testbench mit den Ein- und Ausgängen der Schaltung zusammenhängen
  or_g: orgate port map(input1 => a, input2 => b, or_result => c);

  process begin
  -- bei Processbegin wird erstmals die Schaltung simuliert und "Strom" an den Eingängen angelegt.
    a <= '0';
    b <= '0';
    wait for 10 ns;
    a <= '0';
    b <= '1';
    wait for 10 ns;
    a <= '1';
    b <= '0';
    wait for 10 ns;
    a <= '1';
    b <= '1';
    wait for 10 ns;
    assert false report "End of test";
    wait;
  end process;
end test;