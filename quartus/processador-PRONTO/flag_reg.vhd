library ieee;
use ieee.std_logic_1164.all;

entity flag_reg is
    port(
        data_in: in std_logic;
        rst: in std_logic;
        load: in std_logic;
        data_out: out std_logic
    );
end flag_reg;

architecture behavior of flag_reg is
    signal temp: std_logic := '0';

begin
    process(rst, load)
    begin
        if rst = '1' then
            temp <= '0';
        elsif load = '1' then
            temp <= data_in;
        end if;
    end process;

    data_out <= temp;
end behavior;