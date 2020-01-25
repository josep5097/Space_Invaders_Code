library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

entity nave is
	port(	F8,F7,F6,F5,F4,F3,F2,F1: buffer std_logic_vector(7 downto 0);
	izq, der, disparar, clock1, clock2pp, enable, reset: in std_logic;
	posdisparo: in std_logic_vector(7 downto 0);
	pase: buffer std_logic;

	gano, perdio, pararbala: out std_logic);
end nave;
architecture sol of nave is
signal columna,  movbala, coldisparo: std_logic_vector(7 downto 0);
signal topeizq, topeder, movizq, movder, topesup,habilitardisparo,deshabilitardisparo: std_logic;
begin
	PROCESS(clock1,reset)
			variable I :
			integer range 1 to 9;

		BEGIN
			if reset='0' then--- ponemos el mapa deseado y hacemos cero al resto de las variables

				
				F8<="00000000";
				F7<="00000000";
				F6<="00111000";
				F5<="00111000";
				F4<="00010000";
				F3<="00000000";
				F2<="00000000";
				
				topesup<= '0';
				
				pararbala <= '1';-- para que la bala siga activa
				movbala<="00000000";
				I := 2; 
				perdio <='0';
				gano <= '0';
				topeizq<='0'; topeder<='0';
				movizq<='1'; movder<='0';
				pase<= '0';
				

			elsif (clock1'event and clock1='1') then
					if disparar = '1' and pase<= '1' then
						pase<= '0';
						-- Sección en donde se va chequeando fila a fila si 
						if posdisparo="00000000" then----0
							if f3(0)='1' then
								f3(0)<='0';
							elsif f4(0)='1' then
									f4(0)<='0';
							elsif f5(0)='1' then
									f5(0)<='0';
							elsif f6(0)='1' then
									f6(0)<='0';
							elsif f7(0)='1' then
									f7(0)<='0';
							elsif f8(0)='1' then
									f8(0)<='0';end if;
									
						elsif posdisparo="00000001" then-----1
							if f3(1)='1' then
								f3(1)<='0';
							elsif f4(1)='1' then
									f4(1)<='0';
							elsif f5(1)='1' then
									f5(1)<='0';
							elsif f6(1)='1' then
									f6(1)<='0';
							elsif f7(1)='1' then
									f7(1)<='0';
							elsif f8(1)='1' then
									f8(1)<='0';end if;
								
						elsif posdisparo="00000010" then-----2
							if f3(2)='1' then
								f3(2)<='0';
							elsif f4(2)='1' then
									f4(2)<='0';
							elsif f5(2)='1' then
									f5(2)<='0';
							elsif f6(2)='1' then
									f6(2)<='0';
							elsif f7(2)='1' then
									f7(2)<='0';
							elsif f8(2)='1' then
									f8(2)<='0';end if;
									
						elsif posdisparo="00000011" then-----3
							if f3(3)='1' then
								f3(3)<='0';
							elsif f4(3)='1' then
									f4(3)<='0';
							elsif f5(3)='1' then
									f5(3)<='0';
							elsif f6(3)='1' then
									f6(3)<='0';
							elsif f7(3)='1' then
									f7(3)<='0';
							elsif f8(3)='1' then
									f8(3)<='0';end if;
						
						
						elsif posdisparo="00000100" then-----4
							if f3(4)='1' then
								f3(4)<='0';
							elsif f4(4)='1' then
									f4(4)<='0';
							elsif f5(4)='1' then
									f5(4)<='0';
							elsif f6(4)='1' then
									f6(4)<='0';
							elsif f7(4)='1' then
									f7(4)<='0';
							elsif f8(4)='1' then
									f8(4)<='0';end if;
						elsif posdisparo="00000101" then-----5
							if f3(5)='1' then
								f3(5)<='0';
							elsif f4(5)='1' then
									f4(5)<='0';
							elsif f5(5)='1' then
									f5(5)<='0';
							elsif f6(5)='1' then
									f6(5)<='0';
							elsif f7(5)='1' then
									f7(5)<='0';
							elsif f8(5)='1' then
									f8(5)<='0';end if;
						
						elsif posdisparo="00000110" then-----6
							if f3(6)='1' then
								f3(6)<='0';
							elsif f4(6)='1' then
									f4(6)<='0';
							elsif f5(6)='1' then
									f5(6)<='0';
							elsif f6(6)='1' then
									f6(6)<='0';
							elsif f7(6)='1' then
									f7(6)<='0';
							elsif f8(6)='1' then
									f8(6)<='0';end if;
						elsif posdisparo="0000111" then-----7
							if f3(7)='1' then
								f3(7)<='0';
							elsif f4(7)='1' then
									f4(7)<='0';
							elsif f5(7)='1' then
									f5(7)<='0';
							elsif f6(7)='1' then
									f6(7)<='0';
							elsif f7(7)='1' then
									f7(7)<='0';
							elsif f8(7)='1' then
									f8(7)<='0';end if;

						end if;


				elsif (enable='1') then 
					pase<= '1';
					if (F2(7) or F2(6) or F2(5) or F2(4) or F2(3) or F2(2) or F2(1) or F2(0)) = '1' then-- si llego al ultimo nivel perdio
						perdio <='1';
					elsif (F2="00000000") and (F3="00000000") and (F4="00000000") and (F5="00000000") and (F6="00000000") and (F7="00000000") and (F8="00000000") then
						gano<='1';end if;--si esta vacio el mapa gano
					-------
					if (movizq ='1') and (topeizq ='0') then --mover hacia la izquierda siempre y cuando no llegue al limite
						F8<= F8(6) & F8(5) & F8(4) & F8(3) & F8(2) & F8(1) & F8(0) & '0';
						F7<= F7(6) & F7(5) & F7(4) & F7(3) & F7(2) & F7(1) & F7(0) & '0';
						F6<= F6(6) & F6(5) & F6(4) & F6(3) & F6(2) & F6(1) & F6(0) & '0';
						F5<= F5(6) & F5(5) & F5(4) & F5(3) & F5(2) & F5(1) & F5(0) & '0';
						F4<= F4(6) & F4(5) & F4(4) & F4(3) & F4(2) & F4(1) & F4(0) & '0';
						F3<= F3(6) & F3(5) & F3(4) & F3(3) & F3(2) & F3(1) & F3(0) & '0';
						F2<= F2(6) & F2(5) & F2(4) & F2(3) & F2(2) & F2(1) & F2(0) & '0';
						topeder<='0';
						
						topeizq<= F8(6) or F7(6) or F6(6) or F5(6) or F4(6) or F3(6) or F2(6);
						topeder<= F8(1) or F7(1) or F6(1) or F5(1) or F4(1) or F3(1) or F2(1);

					elsif (movder ='1') and (topeder ='0')  then--mover hacia la derecha siempre y cuando no llegue al limite
						F8<= '0' & F8(7) & F8(6) & F8(5) & F8(4) & F8(3) & F8(2) & F8(1);
						F7<= '0' & F7(7) & F7(6) & F7(5) & F7(4) & F7(3) & F7(2) & F7(1);
						F6<= '0' & F6(7) & F6(6) & F6(5) & F6(4) & F6(3) & F6(2) & F6(1);
						F5<= '0' & F5(7) & F5(6) & F5(5) & F5(4) & F5(3) & F5(2) & F5(1);
						F4<= '0' & F4(7) & F4(6) & F4(5) & F4(4) & F4(3) & F4(2) & F4(1);
						F3<= '0' & F3(7) & F3(6) & F3(5) & F3(4) & F3(3) & F3(2) & F3(1);
						F2<= '0' & F2(7) & F2(6) & F2(5) & F2(4) & F2(3) & F2(2) & F2(1);
						topeizq<='0';

						
						
						topeizq<= F8(6) or F7(6) or F6(6) or F5(6) or F4(6) or F3(6) or F2(6);
						topeder<= F8(1) or F7(1) or F6(1) or F5(1) or F4(1) or F3(1) or F2(1);
					elsif (topeizq = '1') then
						F2<= F3;--salto de una linea de la nave
						F3<= F4; 
						F4<= F5; 
						F5<= F6; 
						F6<= F7; 
						F7<= F8;  
						F8<= "00000000";
						movizq<='0';
						movder<='1';
						F2<= F3;
						F3<= F4; 
						F4<= F5; 
						F5<= F6; 
						F6<= F7; 
						F7<= F8;  
						F8<= "00000000";
						
					elsif (topeder = '1') then
						F2<= F3;--salto de una linea de la nave
						F3<= F4; 
						F4<= F5; 
						F5<= F6; 
						F6<= F7; 
						F7<= F8;  
						F8<= "00000000";
						movizq<='1';
						movder<='0';
						F2<= F3;
						F3<= F4; 
						F4<= F5; 
						F5<= F6; 
						F6<= F7; 
						F7<= F8;  
						F8<= "00000000";
						
					end if;
					---------endif
						topeizq<= F8(6) or F7(6) or F6(6) or F5(6) or F4(6) or F3(6) or F2(6);
						topeder<= F8(1) or F7(1) or F6(1) or F5(1) or F4(1) or F3(1) or F2(1);
				
				

					
												
				
				end if;
				end if;
					

					
						
		end process;
		
		----------------------------------------------
		
		PROCESS(clock2pp, reset)-- movimiento del jugador, el reloj sera el pulso de izquierda o derecha que se hara externamente con una compuerta or
			
			BEGIN
				if reset='0' then
				F1<="00000001";
				
				elsif (clock2pp'event and clock2pp='1') then
					
				 if (izq='1') and (F1(7)='0') then --moverse cuando se apreta la izquierda
					F1<= F1(6) & F1(5) & F1(4) & F1(3) & F1(2) & F1(1) & F1(0) & F1(7);
				 elsif (der='1') and (F1(0)='0') then-- moverse cuando se apreta la derecha
					F1<= F1(0) & F1(7) & F1(6) & F1(5) & F1(4) & F1(3) & F1(2) & F1(1);
					end if;

				end if;
		end process;
		
		----------------------------------------------

	--	PROCESS(disparar,resetfall)-- movimiento del jugador, el reloj sera el pulso de izquierda o derecha que se hara externamente con una compuerta or
			
		--	BEGIN
			--	if resetfall='0' then
--				habilitardisparo<='0';
			
	--			elsif (disparar'event and disparar='1') then
		--			habilitardisparo<='1';

					
			--		end if;

			--end process;
		
		
		--disparo
--		PROCESS 
--			variable I :
--			integer range 1 to 9;
--			BEGIN
				--if reset='0' then
					--I := 2;-- posicion inicial de la bala
				--if (CLOCK1_1'event and CLOCK1_1='1') then
--				WAIT UNTIL CLOCK1_1'EVENT and CLOCK1_1 = '1';	
--					if (mantenerdisparo = '1') then
--							if disparo = '1' then
--								I := 2;
--							else I := 9; end if;
	--						
		--					if (F2(to_integer(signed(posdisparo))-1) = '0') and (I = 2) then-- verificar si el punto es un uno para borrarlo o cero para que el disparo suba.
			--					F2(to_integer(signed(posdisparo))-1) <= '1';
				--				I := I + 1;
					--			pararbala <= '0';
--						--	elsif (F2(to_integer(signed(posdisparo))-1) = '1') and (I = 2) then
	--							F2(to_integer(signed(posdisparo))-1) <= '0';
		--						I := 9;
			--					pararbala <= '1';---
				--			
					--		elsif (F3(to_integer(signed(posdisparo))-1) = '0') and (I = 3) then-- verificar si el punto es un uno para borrarlo o cero para que el disparo suba.
						--		F3(to_integer(signed(posdisparo))-1) <= '1';
							--	I := I + 1;
--								pararbala <= '0';
	--						elsif (F3(to_integer(signed(posdisparo))-1) = '1') and (I = 3) then
		--						F3(to_integer(signed(posdisparo))-1) <= '0';
			--					I := 9;
				----				pararbala <= '1';
					--		
						--	elsif (F4(to_integer(signed(posdisparo))-1) = '0') and (I = 4) then-- verificar si el punto es un uno para borrarlo o cero para que el disparo suba.
--								F4(to_integer(signed(posdisparo))-1) <= '1';
	--							I := I + 1;
		--						pararbala <= '0';
			--				elsif (F4(to_integer(signed(posdisparo))-1) = '1') and (I = 4) then
				--				F4(to_integer(signed(posdisparo))-1) <= '0';
					--			I := 9;
						--		pararbala <= '1';
--							
	--						
	--						elsif (F5(to_integer(signed(posdisparo))-1) = '0') and (I = 5) then-- verificar si el punto es un uno para borrarlo o cero para que el disparo suba.
	--							F5(to_integer(signed(posdisparo))-1) <= '1';
	--							I := I + 1;
	--							pararbala <= '0';
	--						elsif (F5(to_integer(signed(posdisparo))-1) = '1') and (I = 5) then
	--							F5(to_integer(signed(posdisparo))-1) <= '0';
	--							I := 9;
	--							pararbala <= '1';
	--						
	--						elsif (F6(to_integer(signed(posdisparo))-1) = '0') and (I = 6) then-- verificar si el punto es un uno para borrarlo o cero para que el disparo suba.
	--							F6(to_integer(signed(posdisparo))-1) <= '1';
	----							I := I + 1;
	--							pararbala <= '0';
	--						elsif (F6(to_integer(signed(posdisparo))-1) = '1') and (I = 6) then
	--							F6(to_integer(signed(posdisparo))-1) <= '0';
	--							I := 9;
	--							pararbala <= '1';
	--						
	--						elsif (F7(to_integer(signed(posdisparo))-1) = '0') and (I = 7) then-- verificar si el punto es un uno para borrarlo o cero para que el disparo suba.
	--							F7(to_integer(signed(posdisparo))-1) <= '1';
	--							I := I + 1;
	--							pararbala <= '0';
	----						elsif (F7(to_integer(signed(posdisparo))-1) = '1') and (I = 7) then
	--							F7(to_integer(signed(posdisparo))-1) <= '0';
	--							I := 9;
	--							pararbala <= '1';
	--						
	--						elsif (F8(to_integer(signed(posdisparo))-1) = '0') and (I = 8) then-- verificar si el punto es un uno para borrarlo o cero para que el disparo suba.
		--						F8(to_integer(signed(posdisparo))-1) <= '1';
			--					I := I + 1;
				--				pararbala <= '0';
					--		elsif (F8(to_integer(signed(posdisparo))-1) = '1') and (I = 8) then
						--		F8(to_integer(signed(posdisparo))-1) <= '0';
--								I := 9;
	--							pararbala <= '1';
		--					end if;
			--			end if;
		
								--						coldisparo<= coldisparo(7) & coldisparo(6) & coldisparo(5) & coldisparo(4) & coldisparo(3) & coldisparo(2) & '0';
	--		end process;
				
end sol;
						
						
				  