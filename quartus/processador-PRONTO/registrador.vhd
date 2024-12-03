library ieee;
use ieee.std_logic_1164.all;

entity registrador is
    port(
        clk: in std_logic;                -- Clock para sincronização
        data_in: in std_logic_vector(7 downto 0);  -- Dados de entrada
        rst: in std_logic;                        -- Sinal de reset
        load: in std_logic;                       -- Sinal de controle (carregar)
        data_out: out std_logic_vector(7 downto 0)  -- Dados de saída
    );
end registrador;

architecture behavior of registrador is
    signal temp: std_logic_vector(7 downto 0) := (others => '0');  -- Registrador interno
begin
    process(clk, rst)
    begin
        if rst = '1' then
            temp <= (others => '0');  -- Reset assíncrono
        elsif rising_edge(clk) then
            if load = '1' then
                temp <= data_in;  -- Carrega dados no registrador
            end if;
        end if;
    end process;

    data_out <= temp;  -- A saída é o valor armazenado no registrador
end behavior;
