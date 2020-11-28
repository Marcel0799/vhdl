library ieee;
use ieee.std_logic_1164.all;

entity cla is
  port (
    a : in std_logic_vector(3 downto 0);
    b : in std_logic_vector(3 downto 0);
    cin : in std_logic;
    cout : out std_logic;
    sum : out std_logic_vector(3 downto 0)
  );
end cla;

architecture rtl of cla is
  
  component facla
  	port ( 
	      a : in std_logic;
	      b : in std_logic;
	      cin : in std_logic;
	      g : out std_logic;
	      p : out std_logic;
	      sum : out std_logic
  	);
  end component;
  
  signal g : std_logic_vector( 3 downto 0);
  signal p : std_logic_vector( 3 downto 0);
  signal c : std_logic_vector( 3 downto 0);
  signal useless : std_logic;

begin
  facla0 : facla port map(a => a(0), b => b(0), cin => '0' , g => g(0), p => p(0), sum => useless);
  facla1 : facla port map(a => a(1), b => b(1), cin => '0' , g => g(1), p => p(1), sum => useless);
  facla2 : facla port map(a => a(2), b => b(2), cin => '0' , g => g(2), p => p(2), sum => useless);
  facla3 : facla port map(a => a(3), b => b(3), cin => '0' , g => g(3), p => p(3), sum => useless);
  
  c(0) <= g(0) or (p(0) and cin);
  c(1) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
  c(2) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0)) or (p(2) and p(1) and p(0) and cin);
  c(3) <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0)) or (p(3) and p(2) and p(1) and p(0) and cin);
  
  add0 : facla port map(a => a(0), b => b(0), cin => cin, g => useless, p => useless, sum => sum(0));
  add1 : facla port map(a => a(1), b => b(1), cin => c(0), g => useless, p => useless, sum => sum(1));
  add2 : facla port map(a => a(2), b => b(2), cin => c(1), g => useless, p => useless, sum => sum(2));
  add3 : facla port map(a => a(3), b => b(3), cin => c(2), g => useless, p => useless, sum => sum(3));
  cout <= c(3);

end rtl;
