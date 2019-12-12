---------------------Data Flow--------------------------------

library ieee;
use  ieee.std_logic_1164.all;

entity 4_2E is 
Port (a : in std_logic_vector(3 downto 0);
      y : out std_logic);
end 4_2E;

Architecture DataFlow of 4_2E is 
begin
y<="00" when a="0001" else
   "01" when a="0010" else
   "10" when a="0100" else
   "11" when a="1000"
   
end dataflow;


---------------------------------Case Statement-------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity encoder_case is
     port(
         A : in STD_LOGIC_VECTOR(3 downto 0);
         Y : out STD_LOGIC_VECTOR(1 downto 0));
end encoder_case;


architecture beh_case of encoder_case is
begin

process(A)     
begin
        case A is
            when "0001" => Y <= "00";
            when "0010" => Y <= "01";
            when "0100" => Y <= "10";
            when "1000" => Y <= "11";
            when others => Y <= "ZZ";
        end case;
    end process;

end beh_case;
