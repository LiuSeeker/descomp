library IEEE;
use ieee.std_logic_1164.all;

entity conversorHex7Seg is
    port
    (
        -- Input ports
		  enable : in std_Logic;
        dadoHex : in  std_logic_vector(3 downto 0);
        apaga   : in  std_logic := '0';
        -- Output ports
        HEX : out std_logic_vector(6 downto 0) := "1000000" -- := (others => '1')
    );
end entity;

architecture comportamento of conversorHex7Seg is

  signal rascSaida7seg: std_logic_vector(6 downto 0);

begin
    rascSaida7seg <=    "1000000" when dadoHex="0000" else ---0
                            "1111001" when dadoHex="0001" else ---1
                            "0100100" when dadoHex="0010" else ---2
                            "0110000" when dadoHex="0011" else ---3
                            "0011001" when dadoHex="0100" else ---4
                            "0010010" when dadoHex="0101" else ---5
                            "0000010" when dadoHex="0110" else ---6
                            "1111000" when dadoHex="0111" else ---7
                            "0000000" when dadoHex="1000" else ---8
                            "0010000" when dadoHex="1001" else ---9
                            "0001000" when dadoHex="1010" else ---A
                            "0000011" when dadoHex="1011" else ---B
                            "1000110" when dadoHex="1100" else ---C
                            "0100001" when dadoHex="1101" else ---D
                            "0000110" when dadoHex="1110" else ---E
                            "0001110" when dadoHex="1111" else ---F
                            "1111111"; -- Apaga todos segmentos.


     HEX <= rascSaida7seg;
	
	
end architecture;