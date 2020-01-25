LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY cont3 IS
	PORT(clock,enable,reset : IN STD_LOGIC;
		 tress : OUT STD_LOGIC;
		 Q : Buffer STD_LOGIC_VECTOR (3 downto 0));
END cont3;

ARCHITECTURE sol OF cont3 IS
BEGIN

	PROCESS(clock,reset)
	BEGIN
		if reset='0' then Q<="0000";tress<='0';
  		elsif (clock'event and clock='1') then
			if enable='1' then
				if (Q="0011") then Q<="0000";tress<='1';
				else Q<=Q+1;tress<='0';
				end if;
			end if;
		end if;
	END PROCESS;
END sol;