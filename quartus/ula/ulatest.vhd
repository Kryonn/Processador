library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ulatest is
    port(
        A: in std_logic_vector(3 downto 0);
        B: in std_logic_vector(3 downto 0);
        aluop: in std_logic_vector(2 downto 0);
        C: out std_logic_vector(3 downto 0);
        overflow: out std_logic;
        sinal: out std_logic;
        zero: out std_logic;
        carry: out std_logic
    );
end ulatest;

architecture behavior of ulatest is
	
	signal temp1, temp2: std_logic_vector(4 downto 0);
	signal carry1, carry2: std_logic;
	
begin
    process(A, B, aluop)
    begin
        case aluop is
            when "100" =>  -- Adição
                temp1 <= std_logic_vector(signed('0' & A) + signed('0' & B));
					 temp2 <= std_logic_vector(signed("00" & A(2 downto 0))+signed("00" & B(2 downto 0)));
                carry1 <= temp1(4);
					 carry2 <= temp2(3);
                C <= temp1(3 downto 0);
					 carry <= carry1;
					 if(carry1 /= carry2) then
						overflow <= '1';
					 else
						overflow <= '0';
					 end if;
                
            when "101" =>  -- Subtração
                temp1 <= std_logic_vector(signed('0' & A) - (signed('0' & B)));
					 temp2 <= std_logic_vector(signed("00" & A(2 downto 0))-signed("00" & B(2 downto 0)));
                carry1 <= temp1(4);
					 carry2 <= temp2(3);
                C <= temp1(3 downto 0);
					 carry <= carry1;
					 if(carry1 /= carry2) then
						overflow <= '1';
					 else
						overflow <= '0';
					 end if;
                
            when "110" =>  -- AND
                C <= A and B;
                carry <= '0';
                overflow <= '0';

            when "111" =>  -- OR
                C <= A or B;
                carry <= '0';
                overflow <= '0';

            when "000" =>  -- NOT A
                C <= not B;
                carry <= '0';
                overflow <= '0';

            when others =>
                C <= (others => '0');
                carry <= '0';
                overflow <= '0';
        end case;

        sinal <= temp1(3);
		  if(temp1(3 downto 0) = "0000") then
				zero <= '1';
		  else
				zero <= '0';
        end if;
    end process;

end behavior;