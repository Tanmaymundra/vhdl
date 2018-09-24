-------------------------------DATAFLOW------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity BCD_Gray is 
Port (B: in std_logic vector(3 downto 0);
      G : out std_logic_vector(3 downto 0));
end BCD_Gray;

Architecture DataFlow of BCD_Gray is 
begin
G(3)<= B(3);
G(2)<= B(3) XOR B(2);
G(1)<= B(2) XOR B(1);
G(0)<= B(1) XOR B(0);

end DataFlow;
-------------------------------Behavioural-----------------------------






-------------------------------STRUCTURAL------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity BCD_Gray is 
Port (B: in std_logic vector(3 downto 0);
      G : out std_logic_vector(3 downto 0));
end BCD_Gray;

Architecture Structural of BCD_Gray is 

Component XOR1 is
Port( a,b : in std_logic;
        c: out std_logic);
end Component;

Component Buffer is
Port ( a : in std_logic;
       b: out std_logic);
end Component;

begin
B1: Buffer Port map(B(3),G(3));
X1: XOR1 Port map (B(3),B(2),G(2));
X2: XOR1 Port map (B(2),B(1),G(1));
X3: XOR1 Port map (B(1),B(0),G(0));

end Structural;
