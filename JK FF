----------------------------JK FF BEHAVIOURAL----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all

entity JKFF is 
port( J,K,CLK : in Std_logic;
      Q,Qb : out std_logic);
 end JKFF;
 
 Architecture Behavioural of JKFF is 
 begin
 variable temp: Std_logic;
 Process(CLK)
 begin
 if (CLK'event and CLK='1') then 
 if (J='0' and K='0') then 
  temp:=temp;
 elsif(J='0' and K='1') then
 temp:='0';
 elsif(J='1' and K='0') then
 temp:='1';
 elsif(J='1' and K='1') then 
 temp:= not temp;
 end if;
 Q<=temp;
 Qb<= not Q;
 end if;
 end Behavioural;
 
