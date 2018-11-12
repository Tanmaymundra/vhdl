---------------------( 3 Bit SIPO Behavioural)--------------
library ieee;
use ieee.std_logic_1164.all;

entity of SIPO is 
Port(Din,CLK,Reset : in Std_logic;
    Q: out std_logic_vector(2 downto 0));
end SIPO;

Architecture Behavioural of SIPO is
Signal Q:std_logic_vector(1 downto 0);
begin
Process(CLK,Reset);
begin
if (Reset='1') then
Q<="000";
elsif( CLK'event and CLK='1') then 
Q(0)<= Din;
Q(1)<= Q(0);
Q(2)<=Q(1);
end if;
end Process;
end Behavioural;

--------------Structural--------------------

library ieee;
use ieee.std_logic_1164.all;



