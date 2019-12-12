---------------STRUCTURAL---------------------------

library ieee;
use ieee.std_logic_1164.all;

Entity Async is
  Port (Clk,Reset : in std_logic;
        Q : inout std_logic_vector(2 downto 0));
End Async;

Architecture Structural of Async is 

Component JKFF is 
  Port (J,K,Clk,Reset: in std_logic;
        Q  : out std_logic);
end Component;

begin
FF1:JKFF Portmap('1','1',Clk,Reset,Q(0));
FF2:JKFF Portmap('1','1',Q(0),Reset,Q(1));
FF3:JKFF Portmap('1','1',Q(1),Reset,Q(2));

end Structural;

  
