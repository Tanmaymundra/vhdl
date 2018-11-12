---------------------( 3 Bit SIPO Behavioural)--------------
library ieee;
use ieee.std_logic_1164.all;

entity SIPO is 
Port(Din,CLK,Reset : in Std_logic;
    Q: inout std_logic_vector(2 downto 0));
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

--------------Structural--------------------(Active High)

library ieee;
use ieee.std_logic_1164.all;



entity SIPO is 
    Port(Din,Clk,Reset : in Std_logic;
         Q : inout Std_logic_vector(2 downto 0));
end entity;

Architecture Structural of SIPO is
    
    Component DFF is 
    Port (D,Clk,Reset: in Std_logic;
          Q : out Std_logic);
    end Component;
 
  begin
     
      D1: Portmap(Din,Clk,'0',Q(0));
      D2: Portmap(Q(0),Clk,'0',Q(1));
      D3: Portmap(Q(1),Clk,'0',Q(2));

end Structural;
