library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
    port(
        entrada1: in std_logic_vector(7 downto 0);
        entrada2: in std_logic_vector(7 downto 0);
        seletor: in std_logic;
        saida: out std_logic_vector(7 downto 0)
    );
end mux2x1;

architecture behavior of mux2x1 is

begin

	process(seletor)
	begin
		if(seletor = '0') then
			saida <= entrada1;
		else
			saida <= entrada2;
		end if;
	end process;

end behavior;