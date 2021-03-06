-----------------------DataFlow Model using when/else---------------------------

library ieee;
use ieee.std_logic_1164.all;

entity 8_3E is
port( x: in std_logic_vector(7 downto 0);
      y: out Std_logic_vector(2 downto 0));
      
end 8_3E;

Architecture DataFlow of 8_3E is 
begin
y<= "000" when x="00000001" else
    "001" when x="00000010" else
    "010" when x="00000100" else
    "011" when x="00001000" else
    "100" when x="00010000" else
    "101" when x="0010000" else
    "110" when x="01000000" else
    "111" when x="10000000" else
    "ZZZ";

end DataFlow;
    
-----------------------DataFlow Model using with/select/when---------------------------

library ieee;
use ieee.std_logic_1164.all;

entity 8_3E is
port( x: in std_logic_vector(7 downto 0);
      y: out Std_logic_vector(2 downto 0));
      
end 8_3E;

Architecture DataFlow of 8_3E is 
begin
with x SELECT
y<= "000" when "00000001",
    "001" when "00000010",
    "010" when "00000100",
    "011" when "00001000",
    "100" when "00010000",
    "101" when "00100000",
    "110" when "01000000",
    "111" when "10000000",
    "ZZZ" when OTHERS;

end DataFlow;
