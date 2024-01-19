--JARA YUPA ANA BELÉN, SÁNCHEZ MALDONADO JUAN FRANCISCO, Paralelo 101, Envasado de Harina 
--Decodificador BCD A 7 segmentos, 21 dic. 

library ieee;
use ieee.std_logic_1164.all;

entity DecoBCD_7seg is
	port(
		BCD: in std_logic_vector(3 downto 0);
		catodo7: out std_logic_vector(6 downto 0));
end DecoBCD_7seg;

architecture solve of DecoBCD_7seg is
	begin
	process(BCD)
		begin
			case BCD is
				when "0000" => catodo7<="0000001";
				when "0001" => catodo7<="1001111";
				when "0010" => catodo7<="0010010";
				when "0011" => catodo7<="0000110";
				when "0100" => catodo7<="1001100";
				when "0101" => catodo7<="0100100";
				when "0110" => catodo7<="1100000";
				when "0111" => catodo7<="0001111";
				when "1000" => catodo7<="0000000";
				when "1001" => catodo7<="0001100";
				when others => catodo7<="1111111";
			end case;
	end process;
end solve;