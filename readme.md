Estados

* Ini: zera os registradores
* Busca: leitura da memória e escrita no IR
* Dec: decodificação de instrução
* R-type: execução das instruções add, sub, or e and.
  * R_dec, R_exec, R_exec_imm
* Not: execução da instrução not
* ...
* Pc: atualização do pc

| Estado | rst | load_pc | mem_read | mem_write | mem_en | mem_src1 | mem_src2 | load_ir | A_src | B_src | in_en | load_A | load_B | alu_src1 | alu_src2 | aluop | R_src | load_R | load_overflow | load_sinal | load_zero | load_carry | out_src | load_out | jmp | jeq | jgr 
|  :--:  |:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|ini               |1|0|0|0|0|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|busca             |0|0|1|0|1|000|00|1|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|dec               |0|0|0|0|1|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|R_dec             |0|0|0|0|1|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|R_exec            |0|0|0|0|1|000|00|0|00|00|0|0|0| inst[3-2] | inst[1-0] | inst[6-4] |00|1|0|0|0|0|00|0|0|0|0|
|R_exec_immA       |0|1|1|0|1|000|00|0|00|00|0|0|0|    00     |    11     | inst[6-4] |00|1|0|0|0|0|00|0|0|0|0|
|R_exec_immB       |0|1|1|0|1|000|00|0|00|00|0|0|0|    01     |    11     | inst[6-4] |00|1|0|0|0|0|00|0|0|0|0|
|R_exec_immR       |0|1|1|0|1|000|00|0|00|00|0|0|0|    10     |    11     | inst[6-4] |00|1|0|0|0|0|00|0|0|0|0|
|Not_dec           |0|0|0|0|1|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|Not_exec          |0|0|0|0|1|000|00|0|00|00|0|0|0| inst[3-2] |    00     | inst[6-4] |00|1|0|0|0|0|00|0|0|0|0|
|Not_exec_imm      |0|1|1|0|1|000|00|0|00|00|0|0|0|    11     |    00     | inst[6-4] |00|1|0|0|0|0|00|0|0|0|0|
|Cmp_dec           |0|0|0|0|1|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|Cmp_exec          |0|0|0|0|1|000|00|0|00|00|0|0|0| inst[3-2] | inst[1-0] |    001    |00|0|1|1|1|1|00|0|0|0|0|
|Cmp_exec_immA     |0|1|1|0|1|000|00|0|00|00|0|0|0|    00     |    11     |    001    |00|0|1|1|1|1|00|0|0|0|0|
|Cmp_exec_immB     |0|1|1|0|1|000|00|0|00|00|0|0|0|    01     |    11     |    001    |00|0|1|1|1|1|00|0|0|0|0|
|Cmp_exec_immR     |0|1|1|0|1|000|00|0|00|00|0|0|0|    10     |    11     |    001    |00|0|1|1|1|1|00|0|0|0|0|
|jmp_dec           |0|1|1|0|1|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|jmp_exec          |0|1|0|0|1|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|1|0|0|
|jeq_dec           |0|1|1|0|1|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|jeq_exec          |0|1|1|0|1|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|1|0|
|jgq_dec           |0|1|1|0|1|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|jgq_exec          |0|1|1|0|1|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|1|
|load_dec          |0|0|0|0|0|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|load_exec_imm_A   |0|1|1|0|1|001|00|0|10|00|0|1|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|load_exec_imm_B   |0|1|1|0|1|001|00|0|00|10|0|0|1|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|load_exec_imm_R   |0|1|1|0|1|001|00|0|00|00|0|0|0|    00     |    00     |    000    |11|1|0|0|0|0|00|0|0|0|0|
|load_exec_A_A     |0|0|1|0|1|010|00|0|10|00|0|1|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|load_exec_A_B     |0|0|1|0|1|011|00|0|10|00|0|1|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|load_exec_A_R     |0|0|1|0|1|100|00|0|10|00|0|1|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|load_exec_B_A     |0|0|1|0|1|010|00|0|00|10|0|0|1|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|load_exec_B_B     |0|0|1|0|1|011|00|0|00|10|0|0|1|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|load_exec_B_R     |0|0|1|0|1|100|00|0|00|10|0|0|1|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|load_exec_R_A     |0|0|1|0|1|010|00|0|00|00|0|0|0|    00     |    00     |    000    |11|1|0|0|0|0|00|0|0|0|0|
|load_exec_R_B     |0|0|1|0|1|011|00|0|00|00|0|0|0|    00     |    00     |    000    |11|1|0|0|0|0|00|0|0|0|0|
|load_exec_R_R     |0|0|1|0|1|100|00|0|00|00|0|0|0|    00     |    00     |    000    |11|1|0|0|0|0|00|0|0|0|0|
|store_dec         |0|0|0|0|0|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|store_exec_A      |0|0|0|0|0|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|
|Pc                |0|1|0|0|1|000|00|0|00|00|0|0|0|    00     |    00     |    000    |00|0|0|0|0|0|00|0|0|0|0|




Sinais de controle
```VHDL
rst <=
load_pc <=
mem_read <=
mem_write <=
mem_en <=
mem_src1 <=
mem_src2 <=
load_ir <=
A_src <=
B_src <=
in_en <=
load_A <=
load_B <=
alu_src1 <=
alu_src2 <=
aluop <=
R_src <=
load_r <=
out_src <=
load_out <=
jmp <=
jeq <=
jgr <=
```

```VHDL
library ieee;
use ieee.std_logic_1164.all;

entity processador is
    port(sw: in std_logic_vector(7 downto 0);
        clk: in std_logic;
        led: out std_logic_vector(7 downto 0)); 
end processador;

architecture vamos_reprovar of processador is
    signal address_bus: std_logic_vector(7 downto 0);
    signal mem_out: std_logic_vector(7 downto 0);
    -- Sinais: load_pc/mem_src1/mem_read/mem_write/mem_en/
    --         load_ir/mem_src2(1-0)/a_src(1-0)/b_src(1-0)/in/load_a/load_b/alu_src1(1-0)/
    --         alu_src2(1-0)/aluop(2-0)/r_src(1-0)/load_r/out_src/load_out
    signal search_control: std_logic_vector(5 downto 0);
    signal control_bus: std_logic_vector(26 downto 0);
    signal rst: std_logic;
    signal exec: std_logic := '0';
    signal pc: std_logic_vector(7 downto 0);
    type state is (ini, busca, in_pc, exec);
    signal cur_state: state := ini;
    signal next_state: state;

begin
    process(clk, sw)
    begin
        case(state) is
            when ini =>
                exec <= '0';
                busca <= '0';
                rst <= '1';
                search_bus <= "0_0_0_0_0_0";
                next_state <= busca;
            when busca =>
                rst <= '0';
                search_bus <= "0_0_1_0_1_1";
                next_state <= inc_pc;
            when inc_pc =>
                search_bus <= "1_0_0_0_1_0";
                next_state <= exec;
            when exec => 
                search_bus <= "0_0_0_0_1_0";
                exec <= '1';
                if(busca = '1') then
                    next_state <= busca;
                else
                    next_state <= exec;
                end if;
        end case;
    end process;

    


            
            




    end process;
    
end vamos_reprovar;
```
Unidade de controle

```VHDL
library ieee;
use ieee.std_logic_1164.all;

entity uc is
    port(inst: in std_logic_vector(7 downto 0);
	 clk, exec: in std_logic;
		  busca: out std_logic;
  control_bus: out std_logic_vector(32 downto 0));
end uc;

architecture behavior of uc is
    type state is (dec, add_, add_1, add_imm_A, add_imm_B, add_imm_R, add_imm, sub_, and_, or_, not_ cmp_, jmp_, jeq_, jgr_, load_, store_, mov_, in_, out_, wait_);
    signal cur_state: state := idle;
    signal next_state: state;
	 signal load_pc: std_logic;
    signal mem_read: std_logic;
    signal mem_write: std_logic;
    signal mem_en: std_logic;
	 signal mem_src1: std_logic(2 downto 0);
	 signal mem_src2: std_logic(1 downto 0);
    signal load_ir: std_logic;
	 signal A_src: std_logic_vector(1 downto 0);
	 signal B_src: std_logic_vector(1 downto 0);
	 signal in_en: std_logic;
	 signal load_A: std_logic;
	 signal load_B: std_logic;
	 signal alu_src1: std_logic_vector(1 downto 0);
	 signal alu_src2: std_logic_vector(1 downto 0);
	 signal aluop: std_logic_vector(2 downto 0);
	 signal R_src: std_logic_vector(1 downto 0);
	 signal load_r: std_logic;
	 signal out_src: std_logic_vector(1 downto 0);
	 signal load_out: std_logic;
	 signal jmp: std_logic;
	 signal jeq: std_logic;
	 signal jgr: std_logic;
	 
begin
    process
    begin
	 if(exec = '1') then
		  busca <= '0';
		  load_pc <= '0';
		  mem_read <= '0';
		  mem_write <= '0';
		  mem_en <= '1';
		  mem_src1 <= "000"
		  mem_src2 <= "00"
		  load_ir <= '0';
		  A_src <= "00";
		  B_src <= "00";
		  in_en <= '0';
		  load_A <= '0';
		  load_B <= '0';
		  alu_src1 <= "00";
		  alu_src2 <= "00";
		  aluop <= "000";
		  R_src <= "00";
		  load_r <= '0';
		  out_src <= "00";
		  load_out <= '0';
		  jmp <= '0';
		  jeq <= '0';
		  jgr <= '0';
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
					case(inst(1 downto 0)) is
						when "11" =>
							case(inst(3 downto 2)) is
								when "00" =>
									next_state <= add_imm_A;
								when "01" =>
									next_state <= add_imm_B;
								when "10" =>
									next_state <= add_imm_R;
								when others =>
									next_state <= dec;
							end case;
						when others =>
							next_state <= add_1;
					end case;
						
				when add_1 =>
					load_pc <= '0';
					mem_read <= '0';
					mem_write <= '0';
					mem_en <= '1';
					mem_src1 <= "000"
					mem_src2 <= "00"
					load_ir <= '0';
					A_src <= "00";
					B_src <= "00";
					in_en <= '0';
					load_A <= '0';
					load_B <= '0';
					alu_src1 <= inst(3 downto 2);
					alu_src2 <= inst(1 downto 0);
					aluop <= "000";
					R_src <= "00";
					load_r <= '1';
					out_src <= "00";
					load_out <= '0';
					jmp <= '0';
					jeq <= '0';
					jgr <= '0';
					next_state <= dec;
					busca <= '1';
					
				when add_imm_A =>
					load_pc <= '1';
					mem_read <= '1';
					mem_write <= '0';
					mem_en <= '1';
					mem_src1 <= "000"
					mem_src2 <= "00"
					load_ir <= '0';
					A_src <= "00";
					B_src <= "00";
					in_en <= '0';
					load_A <= '0';
					load_B <= '0';
					alu_src1 <= "00";
					alu_src2 <= "11";
					aluop <= "000";
					R_src <= "00";
					load_r <= '1';
					out_src <= "00";
					load_out <= '0';
					jmp <= '0';
					jeq <= '0';
					jgr <= '0';
					next_state <= dec;
					busca <= '1';
					
	 else
		next_state <= dec;
    end if;
    end process;
	 
	 control_bus <= load_pc & mem_read & mem_write & mem_en & mem_src1 & mem_src2 & 
						 load_ir & A_src & B_src & in_en & load_A & load_B & alu_src1 & alu_src2 & 
						 aluop & R_src & load_R & out_src & load_out & jmp & jeq & jgr;
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
        variable temp: signed(8 downto 0);  -- Variável para capturar overflow e carry
    begin
        case aluop is
            when "000" =>  -- Adição
                temp := signed('0' & A) + signed('0' & B);
                carry <= temp(8);
                C <= std_logic_vector(temp(7 downto 0));
                overflow <= (A(7) = B(7)) and (C(7) /= A(7));
                
            when "001" =>  -- Subtração
                temp := signed('0' & A) - signed('0' & B);
                carry <= temp(8);
                C <= std_logic_vector(temp(7 downto 0));
                overflow <= (A(7) /= B(7)) and (C(7) /= A(7));
                
            when "010" =>  -- AND
                C <= A and B;
                carry <= '0';
                overflow <= '0';

            when "011" =>  -- OR
                C <= A or B;
                carry <= '0';
                overflow <= '0';

            when "100" =>  -- NOT A
                C <= not A;
                carry <= '0';
                overflow <= '0';

            when others =>
                C <= (others => '0');
                carry <= '0';
                overflow <= '0';
        end case;

        sinal <= C(7);
        zero <= (C = "00000000");
    end process;
end behavior;
```

PC Reg

```VHDL
library ieee;
use ieee.std_logic_1164.all;

entity pc_reg is
    port(
        data_in: in std_logic_vector(7 downto 0);
        rst, clk: in std_logic;
        load: in std_logic;
        data_out: out std_logic_vector(7 downto 0)
    );
end pc_reg;

architecture behavior of pc_reg is
    signal temp: std_logic_vector(7 downto 0) := (others => '0');

begin
    process(rst, load, clk)
    begin
        if rst = '1' then
            temp <= (others => '0');
        elsif load = '1' then
				if(rising_edge(clk)) then
					temp <= data_in;
				end if;
        end if;
    end process;

    data_out <= temp;
end behavior;
```

Reg


```VHDL
library ieee;
use ieee.std_logic_1164.all;

entity reg is
    port(
        data_in: in std_logic_vector(7 downto 0);
        rst: in std_logic;      -- Ativo em '0' para reset
        load: in std_logic;     -- Ativo em '0' para carregar os dados
        data_out: out std_logic_vector(7 downto 0)
    );
end reg;

architecture behavior of reg is
    signal temp: std_logic_vector(7 downto 0) := (others => '0');

begin
    process(rst, load)  -- Sensibilidade aos sinais que controlam a lógica
    begin
        if rst = '1' then
            temp <= (others => '0');  -- Reset do registrador quando rst é 0
        elsif load = '1' then
            temp <= data_in;  -- Carregando dados no registrador quando load é 0
        end if;
    end process;

    data_out <= temp;  -- Saída do registrador
end behavior;
```
