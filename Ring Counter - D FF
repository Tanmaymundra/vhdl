Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


Entity of Ring is 
Port (Clk,Reset : in std_logic;
      Q : inout std_logic_vector(3 downto 0));
end Ring;

Architecture beh of Ring is 
begin
Process(Clk,Reset)
begin
if (Reset='1') then
Q<="0001";
elsif(Clk'event and Clk='1') then
Q(3)<=Q(2);
Q(2)<=Q(1);
Q(1)<=Q(0);
Q(0)<=Q(3);
end if;
end Process;
end beh;

