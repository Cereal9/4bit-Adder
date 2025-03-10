library IEEE;
use IEEE.std_logic_1164.all;

entity switch_to_led_control is
    port(
        SWA   : in  std_logic;
        SWB   : in  std_logic;
        SWC   : in  std_logic;
        SWD   : in  std_logic;
        SWE   : in  std_logic;
        SWF   : in  std_logic;
        SWG   : in  std_logic;
        SWH   : in  std_logic;
        SWI   : in  std_logic;
        LED0  : out std_logic;
        LED1  : out std_logic;
        LED2  : out std_logic;
        LED3  : out std_logic;
        LED9  : out std_logic
    );
end switch_to_led_control;

architecture behave of switch_to_led_control is

    component fourbitadder is 
        port(
            A    : in  std_logic_vector(3 downto 0);
            B    : in  std_logic_vector(3 downto 0);
            Cin  : in  std_logic;
            S    : out std_logic_vector(3 downto 0);
            Cout : out std_logic
        );
    end component;

    signal S_out : std_logic_vector(3 downto 0);
    signal Cout_out : std_logic;

begin

    FBA : fourbitadder port map(
        A => (SWA, SWB, SWC, SWD),
        B => (SWE, SWF, SWG, SWH),
        Cin => SWI,
        S => S_out,
        Cout => Cout_out
    );

    LED0 <= S_out(0);
    LED1 <= S_out(1);
    LED2 <= S_out(2);
    LED3 <= S_out(3);
    LED9 <= Cout_out;

end architecture behave;