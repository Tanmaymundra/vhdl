---------------------( 3 BIT SISO Structural)----------------------
library ieee;
use ieee.std_logic_1164.all;

entity SISO is 
Port(Din,CLK,Reset:in Std_logic;
     Dout: out Std_logic);
end SISO;

Architecture Structural of SISO is

Component DFF is 
port(D, CLK,Reset: in Std_logic;
     Q: out Std_logic);
end Component;

Signal Q : std_logic_vector(1 downto 0);

begin
D1: DFF Port Map(Din,CLK,Reset,Q(0));
D2: DFF Port Map(Q(0),CLK,Reset,Q(1));
D3: DFF Port Map(Q(1),CLK,Reset,Dout);

end Structural;

---------------------( 3 BIT SISO Behavioural)----------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity SISO is 
Port (Din,CLK,RESET :in Std_logic;
      Dout :out Std_logic);
end SISO;

Architecture Behavioural of SISO is
begin 
Process(CLK,RESET)
variable t1,t2 :Std_logic;
begin
if (Reset ='1') then
t1:='0';
t2:='0';
Dout<='0';
elsif(CLK'event and CLK='1') then
Dout<=t2;
t2:=t1;     --Sequence Matters --Dout should be updated after evry 3 cycles
t1:=Din;
end if;
end Process;
