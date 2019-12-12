-------------------------Data Flow using When/else---------------------------
library ieee;
use  ieee.std_logic_1164.all;

entity 4_1M is 
Port(a,b,c,d,s0,s1: in Std_logic;
     y : out std_logic);
end 4_1M;

Architecture Dataflow of 4_1M is
begin
y<= a when (s1='0' and s0='0') else
    b when (s1='0' and s0='1') else
    c when (s1='1' and s0='0') else
    d;
end dataflow;

------------------------Data Flow using When/else(Array Selection)-------------------------------

library ieee;
use  ieee.std_logic_1164.all;

entity 4_1M is 
Port(a,b,c,d: in Std_logic;
     s:in std_logic_vector(1 downto 0);
     y : out std_logic);
end 4_1M;

Architecture Dataflow of 4_1M is
begin
y<= a when s="00" else
    b when s="01" else
    c when s="10" else
    d;
end dataflow;

------------------------Data Flow using With/Select/When -------------------------------

library ieee;
use  ieee.std_logic_1164.all;

entity 4_1M is 
Port(a,b,c,d: in Std_logic;
     s:in std_logic_vector(1 downto 0);
     y : out std_logic);
end 4_1M;

Architecture Dataflow of 4_1M is
begin
With s SELECT
y<= a when "00",
    b when "01",
    c when "10",
    d;
end dataflow;

------------------Data Flow using s defined as a Integer----------------------

library ieee;
use  ieee.std_logic_1164.all;

entity 4_1M is 
Port(a,b,c,d: in Std_logic;
     s:in integer range 0 to 3 ;
     y : out std_logic);
end 4_1M;

Architecture Dataflow of 4_1M is
begin
With s SELECT
y<= a when 0,
    b when 1,
    c when 2,
    d when 3; -- Where 3 or others are Equivalent
end dataflow;

---------------Data flow using when/else and s as a Integer-----------------------

library ieee;
use  ieee.std_logic_1164.all;

entity 4_1M is 
Port(a,b,c,d: in Std_logic;
     s:in integer range 0 to 3 ;
     y : out std_logic);
end 4_1M;

Architecture Dataflow of 4_1M is
begin
With s SELECT
y<= a when s=0 else
    b when s=1 else
    c when s=2 else
    d; 
end dataflow;
