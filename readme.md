Unidade de controle

```VHDL
library ieee;
use ieee.std_logic_1164.all;

entity uc is
    port(inst: in std_logic_vector(7 downto 0);
  control_bus: out std_logic_vector(4 downto 0));-- 0:mem_read/1:mem_write/2:mem_en/3:in_en/4:out_en/5-7:aluop
end uc;

architecture behavior of uc is
    signal mem_read: std_logic;-- Leitura de memória
    signal mem_write: std_logic;-- Escrita na memória
    signal mem_en: std_logic;-- Hablitar a memória para ações
    signal in_en: std_logic;-- Passagem dos inputs
    signal out_en: std_logic;-- Passagem do outputs
    signal aluop: std_logic(2 downto 0);-- Operação que será feita na ula 
    signal alu_src1: std_logic(1 downto 0);-- Origem da primeira entrada da ula
    signal alu_src2: std_logic(1 downto 0);-- Origem da segunda entrada da ula
    signal load_reg_a: std_logic;-- Carrega valores no reg A 
    signal load_reg_b: std_logic;-- Carrega valores no reg B
    signal load_pc: std_logic;
    signal load_reg_inst: std_logic;
    signal reg_src_a: std_logic(1 downto 0);-- Origem dos valores de entrada do reg A
    signal reg_src_b: std_logic(1 downto 0);-- Origem dos valores de entrada do reg B
    signal out_src: std_logic(1 downto 0);-- Origem dos valores de saída
    signal jump_c: std_logic;-- Sinal para mudança do pc
    signal jump: std_logic;-- Sinal para mudança do pc


begin
    process(inst)
    begin
        case (inst(7 downto 4)) is
            when "0000" => 
                control
    end process;
end behavior;
```

ULA

```VHDL
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
begin
    process(A, B, aluop)
    variable temp: signed(8 downto 0);  -- Usar uma variável temporária para overflow
    begin
        case aluop is
            when "000" =>  -- Adição
                temp := signed(A) + signed(B);
                C <= std_logic_vector(temp(7 downto 0));
                carry <= temp(8);
            when "001" =>  -- Subtração
                temp := signed(A) - signed(B);
                C <= std_logic_vector(temp(7 downto 0));
                carry <= temp(8);
            when "010" =>  -- AND
                C <= A and B;
                carry <= '0';  -- Não aplica
            when "011" =>  -- OR
                C <= A or B;
                carry <= '0';  -- Não aplica
            when "100" =>  -- NOT A
                C <= not A;
                carry <= '0';  -- Não aplica
            when "101" =>  -- Comparação
                temp := signed(A) - signed(B);
                if(temp > 0) then
                    C <= "00000001"; -- A > B
                else
                    if(temp = 0) then
                        C <= "00000010"; -- A = B
                    else
                        C <= "00000100"; -- A < B
                    end if;
                end if;
                carry <= '0';  -- Não aplica
            when others =>
                C <= (others => '0');
                carry <= '0';
        end case;

        -- Cálculo de overflow
        overflow <= (A(7) = B(7)) and (C(7) /= A(7));
        sinal <= C(7);
        zero <= (C = "00000000");
    end process;
end behavior;
```
