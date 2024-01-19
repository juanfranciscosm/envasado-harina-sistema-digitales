
--JARA YUPA ANA BELÉN, SÁNCHEZ MALDONADO JUAN FRANCISCO, Paralelo 101, Enasado de Harina 
--Comparador_de_peso, 21 dic. 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparador_de_peso is
    Port ( SBpeso : in STD_LOGIC_VECTOR (7 downto 0);
           pesoMinimo : in STD_LOGIC_VECTOR (7 downto 0) := "00110000";
           pesoMaximo : in STD_LOGIC_VECTOR (7 downto 0) := "00110100";
			  comp1_1 : out STD_LOGIC;
           Peso_H : out STD_LOGIC);
end comparador_de_peso;

architecture Behavioral of comparador_de_peso is
begin
    -- Comparador 1
    process(SBpeso, pesoMinimo)
    begin
        if SBpeso = pesoMinimo then
            comp1_1 <= '1';
        else
            comp1_1 <= '0';
        end if;
		  if SBpeso > pesoMinimo then
				Peso_H <= '1';
			else 
				Peso_H <= '0';
			end if;
    end process;

end Behavioral;