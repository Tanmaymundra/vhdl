--------------behavioural--------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity 1bit_comp is 
Port (a,b:in Std_logic;
      greater,lesser,equal: out std_logic);
end 1bit_comp;

architecture Beh of 2bit_comp is 
begin
process(a,b)
begin
greater<= '0';
lesser<='0';
equal<='0';

if a>b then 
greater <='1';
elsif b>a then 
lesser<='1'
else 
equal<='1';
end if;
end process;
end Beh;
-----------------------------Data Flow------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity 1bit_comp is 
Port (a,b:in Std_logic;
      greater,lesser,equal: out std_logic);
end 1bit_comp;

Architecture DataFlow of 1bit_comp is
begin
greater<= a and (not b);
lesser<= (not a ) and b;
equal <= (a and b) or ((not a) and (not b));

end Dataflow;

