-----------------------DataFlow-----------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity of Conv is 
Port(B: in std_logic_vector(3 downto 0);
     E: out Std_logic_vector(3 downto 0));
end Conv;

Architecture DataFlow of Conv is 
begin
E<=B+"0011";
end DataFlow;

---------------------------------Structural----------------------------
