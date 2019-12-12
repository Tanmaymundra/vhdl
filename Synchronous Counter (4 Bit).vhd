Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_arith.all;
Use ieee.std_logic_unsigned.all

Entity SC is 
Port( CLK,Reset : in std_logic:
          Count : out std_logic_vector(3 downto 0));
 End SC;
 
Architecture Behavioral of SC is 
Begin
Process (CLK,Reset);
Variable temp : std_logic_vector(3 downto 0);
Begin
If (Reset ='1') then 
temp:= "0000"
Elsif (CLK'event and CLK='1') then
temp:= temp + '1';
End if;
Count<=temp;
End process;
End behavioral;
