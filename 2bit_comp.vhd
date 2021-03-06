----------------------------------Dataflow-----------------------------------

library ieee;
use  ieee.std_logic.1164.all;
use  ieee.std_logic.arith.all;
use  ieee.std_logic.unsigned.all;

entity 2bit_comp is
Port(a,b:in Std_logic_vector(1 downto 0);
      greater,lesser,equal: out std_logic);
end 2bit_comp;

architecture dataflow of 2bit_comp is 
begin
equal<=((not a(0) and not a(1) and not b(0) and not b(1) )or (not a(0) and not b(0) and a(1) and  b(1)) or (a(0) and a(1) and b(0) and b(1)) or (not a(1) and not b(1) and a(0) and  b(0));
greater<=((not a(0) and not a(1) and b(0)) or (not a(1) and b(1)) or (b(0) and b(1) and not a(0)));
lesser<=(
end dataflow;

--------------------------------Behavioural----------------------------------

library ieee;
use  ieee.std_logic.1164.all;
use  ieee.std_logic.arith.all;
use  ieee.std_logic.unsigned.all;

entity 2bit_comp is
Port(a,b:in Std_logic_vector(1 downto 0);
      greater,lesser,equal: out std_logic);
end 2bit_comp;

architecture dataflow of 2bit_comp is 
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
end dataflow;

----------------------------------------Structural----------------------------------------------
