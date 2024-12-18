library ieee;
use ieee.std_logic_1164.all;

entity mux4x1 is
    port(
        entrada1: in std_logic_vector(7 downto 0);
        entrada2: in std_logic_vector(7 downto 0);
        entrada3: in std_logic_vector(7 downto 0);
        entrada4: in std_logic_vector(7 downto 0);
        seletor: in std_logic_vector(1 downto 0);
        saida: out std_logic_vector(7 downto 0)
    );
end mux4x1;

architecture behavior of mux4x1 is

begin

	process(seletor)
	begin
		case(seletor) is
			when "00" =>
				saida <= entrada1;
			when "01" =>
				saida <= entrada2;
			when "10" =>
				saida <= entrada3;
			when "11" =>
				saida <= entrada4;
		end case;
	end process;

end behavior;