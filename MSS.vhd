--MSS de la maquina

LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
entity MSS is
	port	( start, resetn, gano, perdio, clock, contmurio, contgano, winnerwinner: in std_logic;
				reset_all, ennave, encontmurio, encontgano, aumentarclk, resetnave, sumaclk, enmatrix: out std_logic);
end MSS;

architecture sol of MSS is
type estado is (ta, tb, tc, td, te, tf, tg);
signal y: estado;
begin
MSS_transiciones:process(resetn,clock)
	begin
		if (resetn='0') then y<=ta;
		elsif(clock'event and clock='1') then
			case y is
				when ta =>if start='1' then y<=tb;--presiono start
										else y<=ta;end if;
						when tb =>if start='0' then y<=tc;--suelto start
										else y<=tb;end if;
						when tc => y<=td;-- se resetea todo
						when td => y<=te;
						when te => if gano = '1' then y<=tf;-- se espera a si gana
										elsif perdio = '1' then y<= ta;-- se espera a si pierde
										else y<= te;END IF;
						when tf => if winnerwinner ='1' then y<= ta;-- winnerwinner es la senal si gano las 4 partidas.
										elsif contgano = '1' then y<=tg;
										else y<= tf;END IF;
						when tg => y<=td;
						
			end case;
		end if;
end process;
MSS_salidas: process (y)
		begin--poner todas las salidas como cero para poder activar cada bloque en el estado que se desea
		reset_all<='1';resetnave<='1'; enmatrix<='0';encontgano<='0';sumaclk<='0';ennave<='0';encontmurio<='0';
		case y is 
				when ta =>
				when tb => 
				when tc => reset_all<='0';resetnave<='0';
				when td => resetnave<='0';
				when te => enmatrix<='1';ennave<='1';
				when tf => encontgano<='1';
				when tg => sumaclk<='1';

		end case;
end process;
end sol;
				