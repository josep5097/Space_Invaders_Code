LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY cuenta IS
	PORT(clock,enable,reset,izq,der : IN STD_LOGIC;
			F1: in std_logic_vector(7 downto 0);
		 posdisparo: buffer std_logic_vector(7 downto 0));
END cuenta;

ARCHITECTURE sol OF cuenta IS
BEGIN

	PROCESS(clock,reset)
	BEGIN
		if reset='0' then posdisparo<="00000000";
  		elsif (clock'event and clock='1') then
		
				if (izq='1') and (F1(7)='0') then --moverse cuando se apreta la izquierda
					posdisparo <= posdisparo + "00000001";
				 elsif (der='1') and (F1(0)='0') then-- moverse cuando se apreta la derecha
					posdisparo <= posdisparo - "00000001";end if;
		end if;
	end process;
end sol;