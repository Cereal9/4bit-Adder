LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY fulladder IS
PORT(
	a   : in std_logic;
	b   : in std_logic;
	cin : in std_logic;
	
	cout : out std_logic;
	sum  : out std_logic
);
END fulladder;

ARCHITECTURE behave OF fulladder IS
BEGIN
	Sum  <= a XOR b XOR cin;
	Cout <= (a AND b) OR (cin AND a) OR (cin AND b);
	
END behave;
