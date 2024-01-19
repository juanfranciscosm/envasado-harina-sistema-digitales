--JARA YUPA ANA BELÉN, SÁNCHEZ MALDONADO JUAN FRANCISCO, Paralelo 101, Envasado de Harina 
--Multiplexor de motor, 21 dic. 

library ieee;
use ieee.std_logic_1164.all;


entity multiplexor_motor is
	port(	cerrarCompuerta: in std_logic ;
			abrirCompuerta: in std_logic ;
			Sel: in std_logic;
			motor_paso: out std_logic);
end multiplexor_motor;

architecture solve of multiplexor_motor is
	begin
	process(Sel, cerrarCompuerta, abrirCompuerta)
    begin
        if Sel = '0' then
            motor_paso <= cerrarCompuerta;
        else
            motor_paso <= abrirCompuerta;
        end if;
    end process;
end solve;