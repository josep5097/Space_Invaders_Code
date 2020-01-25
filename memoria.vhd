library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity memoria is
	port(data: in std_logic_vector(4 downto 0);
	add: in std_logic_vector(3 downto 0);
	modo,clock,reset: in std_logic;
	q: out std_logic_vector(4 downto 0));
end memoria;
architecture sol of memoria is
signal r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,cualquiera: std_logic_vector(4 downto 0);
signal t1,t2,t3,t4,t5,t6,t7,t8,t9,t10: std_logic_vector(4 downto 0);
begin
	PROCESS(clock,reset)
		BEGIN
			if reset='0' then Q<="00000";r0<="00000";r1<="00000";r2<="00000";r3<="00000";
						r4<="00000";r5<="00000";r6<="00000";r7<="00000";r8<="00000";r9<="00000";r10<="00000";
						t1<="00000";t2<="00000";t3<="00000";
						t4<="00000";t5<="00000";t6<="00000";t7<="00000";t8<="00000";t9<="00000";t10<="00000";
			elsif (clock'event and clock='1') then
					if modo='1' then--escritura
						if (data>r1) then r1<=data;r10<=t9;r9<=t8;r8<=t7;r7<=t6;r6<=t5;r5<=t4;r4<=t3;r3<=t2;r2<=t1;
						elsif (data>r2) then r2<=data;r10<=t9;r9<=t8;r8<=t7;r7<=t6;r6<=t5;r5<=t4;r4<=t3;r3<=t2;
						elsif (data>r3) then r3<=data;r10<=t9;r9<=t8;r8<=t7;r7<=t6;r6<=t5;r5<=t4;r4<=t3;
						elsif (data>r4) then r4<=data;r10<=t9;r9<=t8;r8<=t7;r7<=t6;r6<=t5;r5<=t4;
						elsif (data>r5) then r5<=data;r10<=t9;r9<=t8;r8<=t7;r7<=t6;r6<=t5;
						elsif (data>r6) then r6<=data;r10<=t9;r9<=t8;r8<=t7;r7<=t6;
						elsif (data>r7) then r7<=data;r10<=t9;r9<=t8;r8<=t7;
						elsif (data>r8) then r8<=data;r10<=t9;r9<=t8;
						elsif (data>r9) then r9<=data;r10<=t9;
						elsif (data>r10) then r10<=data;end if;

					else 
						if (add="0000") then q<=r1;
						elsif (add="0001") then q<=r2;
						elsif (add="0010") then q<=r3;
						elsif (add="0011") then q<=r4;
						elsif (add="0100") then q<=r5;
						elsif (add="0101") then q<=r6;
						elsif (add="0110") then q<=r7;
						elsif (add="0111") then q<=r8;
						elsif (add="1000") then q<=r9;
						elsif (add="1001") then q<=r10;end if;
						t1<=r1;t2<=r2;t3<=r3;t4<=r4;t5<=r5;
						t6<=r6;t7<=r7;t8<=r8;t9<=r9;t10<=r10;
			end if;end if;
	end process;
end sol;
						
						
