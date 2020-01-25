LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY frec IS
    PORT(nota: in STD_LOGIC_VECTOR(3 DOWNTO 0);
			clock1MHz, enable,reset: in STD_LOGIC;
			salida: out STD_LOGIC);
end frec;
architecture sol of frec is
signal suma: std_logic_vector(11 downto 0);
signal buf: std_logic;
begin
	PROCESS(clock1MHz,reset)
		BEGIN
		if reset='0' then salida<= '0';suma<="000000000000";buf<='0';
		elsif (clock1MHz'event and clock1MHz='1') then
				if(enable='1') then 
					suma<=suma + 1;
					if (nota="0000") and (suma="000000001111") and (buf='0')then--1.5hz
						salida<='1';buf<='1';suma<="000000000000";
					elsif (nota="0000") and (suma="000000001111") and (buf='1')then--
						salida<='0';buf<='0';suma<="000000000000";
						
					elsif (nota="0001") and (suma="000000001100") and (buf='0')then--1.2hz
						salida<='1';buf<='1';suma<="000000000000";
					elsif (nota="0001") and (suma="000000001100") and (buf='1')then--
						salida<='0';buf<='0';suma<="000000000000";
					
					elsif (nota="0010") and (suma="000000001001") and (buf='0')then--0.9hz
						salida<='1';buf<='1';suma<="000000000000";
					elsif (nota="0010") and (suma="000000001001") and (buf='1')then--
						salida<='0';buf<='0';suma<="000000000000";
						
					elsif (nota="0011") and (suma="000000000001") and (buf='0')then--0.6hz
						salida<='1';buf<='1';suma<="000000000000";
					elsif (nota="0011") and (suma="000000000001") and (buf='1')then--
						salida<='0';buf<='0';suma<="000000000000";
					
					
					else salida<='0';end if;
				end if;
		end if;
	end process;
end sol;
