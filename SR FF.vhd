----------------------------SR FF BEHAVIOURAL----------------------------
library ieee;
use ieee.std_logic_1164.all;

entity of SRFF is 
Port( S,R,CLK : in std_logic;
      Q,Qb: out std_logic);
end SRFF;

Architecture Behavioural of SRFF is 
begin
variable tmp:std_logic
process(CLK)
begin
if (CLK'event and CLK='1') then
if(S='0' and R='0')
tmp:=tmp;
elsif(S='0' and R= '1') then 
tmp:='0';
elsif(S='1' and R='1') then
tmp:='Z';
else 
tmp:='1';
end if;
end if;
Q<=tmp;
Qb<=not tmp;
end Process;
End Behavioural
