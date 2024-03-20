LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY fourbitadder IS 
PORT(
	A    : IN  std_logic_vector(3 DOWNTO 0);
	B    : IN  std_logic_vector(3 DOWNTO 0);
	Cin  : IN  std_logic;
	S    : OUT std_logic_vector(3 DOWNTO 0);
	Cout : OUT std_logic
);
END fourbitadder;

ARCHITECTURE behavior OF fourbitadder IS

    COMPONENT fulladder IS 
    PORT(
        a    : IN  std_logic;
        b    : IN  std_logic;
        cin  : IN  std_logic;
        cout : OUT std_logic;
        sum  : OUT std_logic
    );
    END COMPONENT;

    SIGNAL C1,C2,C3 : std_logic;

BEGIN
	FA0 : fulladder PORT MAP(a => A(0), b => B(0), cin => Cin, cout => C1,sum => S(0));  
	FA1 : fulladder PORT MAP(a => A(1), b => B(1), cin => C1, cout => C2,sum => S(1)); 
	FA2 : fulladder PORT MAP(a => A(2), b => B(2), cin => C2, cout => C3,sum => S(2));   
	FA3 : fulladder PORT MAP(a => A(3), b => B(3), cin => C3, cout => Cout,sum => S(3));
END ARCHITECTURE behavior;
