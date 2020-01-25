LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

	-- Debounce Pushbutton: Filters out mechanical switch bounce for around 40Ms.
ENTITY ANTIREBOTE IS
	PORT(PB_N, CLOCK_100Hz 	: IN	STD_LOGIC;
		 PB_SIN_REBOTE		: OUT	STD_LOGIC);
END ANTIREBOTE;

ARCHITECTURE a OF ANTIREBOTE IS
	SIGNAL SHIFT_PB 		: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

	-- Debounce clock should be approximately 10ms or 100Hz
	PROCESS
	BEGIN
  		WAIT UNTIL (clock_100Hz'EVENT) AND (clock_100Hz = '1');
		-- Use a shift register to filter switch contact bounce
  		SHIFT_PB(2 DOWNTO 0) <= SHIFT_PB(3 DOWNTO 1);
  		SHIFT_PB(3) <= NOT PB_N;
  		IF SHIFT_PB(3 DOWNTO 0)="0000" THEN
   			PB_SIN_REBOTE <= '0';
  		ELSE 
   	 		PB_SIN_REBOTE <= '1';
  		END IF;
	END PROCESS;
END a;