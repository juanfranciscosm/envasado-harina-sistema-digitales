--JARA YUPA ANA BELÉN, SÁNCHEZ MALDONADO JUAN FRANCISCO, Paralelo 101, Envasado de Harina 
--MSI, 21 dic.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MSI is
    Port ( start : in STD_LOGIC;
           peso : in STD_LOGIC;
           distancia_bolsa : in STD_LOGIC;
           Motor_Compuerta : out STD_LOGIC;
           led_sistemaOn : out STD_LOGIC;
           led_bolsa : out STD_LOGIC;
           led_mal : out STD_LOGIC);
end MSI;

architecture Behavioral of MSI is
begin
        -- Motor_Compuerta es 1 solo cuando start es 1, peso es 0, y distancia_bolsa es 1
        Motor_Compuerta <= '1' when (start = '1' and peso = '0' and distancia_bolsa = '1') else '0';
        
        -- led_sistemaOn tiene el mismo valor que start
        led_sistemaOn <= start;
        
        -- led_bolsa tiene el mismo valor que distancia_bolsa
        led_bolsa <= distancia_bolsa;
        
        -- led_mal es 0 solo cuando las tres entradas son 1, caso contrario es 1
        led_mal <= '0' when (start = '1' and peso = '1' and distancia_bolsa = '1') else '1';
end Behavioral;