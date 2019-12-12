----------------------------T FF BEHAVIOURAL----------------------------
library ieee;
use ieee.std_logic_1164.all;

entity of TFF is 
Port( T,CLK :in std_logic;
      Q,Qb :out std_logic);
end TFF;

Architecture Behavioural of TFF is
begin
variable tmp: std_logic
Process(CLK)
begin
if (CLK'event and CLK='1') then 
if (T='0') then
tmp:=tmp;
elsif(T='1') then
tmp:= not tmp;
end if;
end if;
Q<=tmp;
Qb<= not tmp;
end Behavioural;
