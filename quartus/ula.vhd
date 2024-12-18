library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula is
    port(
        A: in std_logic_vector(7 downto 0);
        B: in std_logic_vector(7 downto 0);
        aluop: in std_logic_vector(2 downto 0);
        C: out std_logic_vector(7 downto 0);
        overflow: out std_logic;
        sinal: out std_logic;
        zero: out std_logic;
        carry: out std_logic
    );
end ula;

architecture behavior of ula is
	
	signal temp1, temp2: std_logic_vector(8 downto 0);
	signal carry1, carry2: std_logic;
	
begin
    process(A, B, aluop)
    begin
        case aluop is
            when "000" =>  -- Adição
                temp1 <= std_logic_vector(signed('0' & A) + signed('0' & B));
					 temp2 <= std_logic_vector(signed("00" & A(6 downto 0))+signed("00" & B(6 downto 0)));
                carry1 <= temp1(8);
					 carry2 <= temp2(7);
                C <= temp1(7 downto 0);
					 carry <= carry1;
					 if(carry1 /= carry2) then
						overflow <= '1';
					 else
						overflow <= '0';
					 end if;
                
            when "001" =>  -- Subtração
                temp1 <= std_logic_vector(signed('0' & A) - signed('0' & B));
					 temp2 <= std_logic_vector(signed("00" & A(6 downto 0))-signed("00" & B(6 downto 0)));
                carry1 <= temp1(8);
					 carry2 <= temp2(7);
                C <= temp1(7 downto 0);
					 carry <= carry1;
					 if(carry1 /= carry2) then
						overflow <= '1';
					 else
						overflow <= '0';
					 end if;
                
            when "010" =>  -- AND
                C <= A and B;
                carry <= '0';
                overflow <= '0';

            when "011" =>  -- OR
                C <= A or B;
                carry <= '0';
                overflow <= '0';

            when "100" =>  -- NOT A
                C <= not B;
                carry <= '0';
                overflow <= '0';

            when others =>
                C <= (others => '0');
                carry <= '0';
                overflow <= '0';
        end case;

        sinal <= temp1(7);
		  if(temp1(7 downto 0) = "00000000") then
				zero <= '1';
		  else
				zero <= '0';
        end if;
    end process;

end behavior;