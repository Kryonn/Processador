Unidade de controle

```VHDL
library ieee;
use ieee.std_logic_1164.all;

entity uc is
    port(inst: in std_logic_vector(7 downto 0);
  control_bus: out std_logic_vector(4 downto 0));-- 0:mem_read/1:mem_write/2:mem_en/3:in_en/4:out_en/5-7:aluop
end uc;

architecture behavior of uc is
    type state is (dec, add_, sub_, and_, or_, not_ cmp_, jmp_, jeq_, jgr_, load_, store_, mov_, in_, out_, wait_, imm);
    signal cur_state: state := idle;
    signal next_state: state;
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
    process(dec, state)
    begin
        case(state) is
            when dec =>
                case(inst(7 downto 4)) is
                    when "0000" =>
                        next_state <= add_;
                    when "0001" =>
                        next_state <= sub_;
                    when "0010" =>
                        next_state <= and_;
                    when "0011" =>
                        next_state <= or_;
                    when "0100" =>
                        next_state <= not_;
                    when "0101" =>
                        next_state <= cmp_;
                    when "0110" =>
                        next_state <= jmp_;
                    when "0111" =>
                        next_state <= jeq_;
                    when "1000" =>
                        next_state <= jgr_;
                    when "1001" =>
                        next_state <= load_;
                    when "1010" =>
                        next_state <= store_;
                    when "1011" =>
                        next_state <= mov_;
                    when "1100" =>
                        next_state <= in_;
                    when "1101" =>
                        next_state <= out_;
                    when "1110" =>
                        next_state <= wait_;
                    when (others) =>
                        next_state <= dec;
                end case;

            when add_ =>
                mem_en <= '0';
                in_en <= '0';
                out_en <= '0';
                alu_src1 <= inst(3 downto 2);
                alu_src2 <= inst(1 downto 0);
                aluop <= "000";
                load_reg_a <= '0';
                load_reg_b <= '0';
                load_reg_pc <= '0';
                reg_src_a <= '0';
                reg_src_b <= '0';
                out_src <= '0';
                jump_c <= '0';
                jump <= '0';
                if(inst(1 downto 0) = "11") then
                    next_state <= imm;
                    load_reg_inst <= '1';
                else
                    next_state <= dec;
                    load_reg_inst <= '0';
                end if;



                    

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
