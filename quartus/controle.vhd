library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controle is
    port(inst: in std_logic_vector(7 downto 0);
          clk: in std_logic;   
       estado: out std_logic_vector(6 downto 0);
  control_bus: out std_logic_vector(32 downto 0));
end entity;


architecture be of controle is

	 type state is (ini, busca1, busca2, decode, R_exec, R_exec_imm1, R_exec_imm2, R_exec_imm3, CMP_exec, CMP_exec_imm1,
                    CMP_exec_imm2, CMP_exec_imm3, JMP_exec1, JMP_exec2, JMP_exec3, JMP_exec4, JEQ_exec1, JEQ_exec2, JEQ_exec3, JEQ_exec4 ,
						  JGR_exec1, JGR_exec2, JGR_exec3, JGR_exec4, LOAD_exec_A1, LOAD_exec_A2, LOAD_exec_B1, LOAD_exec_B2, LOAD_exec_R1, LOAD_exec_R2,
						  LOAD_exec_imm_A1, LOAD_exec_imm_A2, LOAD_exec_imm_A3, LOAD_exec_imm_A4, LOAD_exec_imm_A5, LOAD_exec_imm_A6,
						  LOAD_exec_imm_B1, LOAD_exec_imm_B2, LOAD_exec_imm_B3, LOAD_exec_imm_B4, LOAD_exec_imm_B5, LOAD_exec_imm_B6,
						  LOAD_exec_imm_R1, LOAD_exec_imm_R2, LOAD_exec_imm_R3, LOAD_exec_imm_R4, LOAD_exec_imm_R5, LOAD_exec_imm_R6,
						  STORE_exec1, STORE_exec2, STORE_exec_imm_A1, STORE_exec_imm_A2, STORE_exec_imm_A3,
						  STORE_exec_imm_A4, STORE_exec_imm_A5, STORE_exec_imm_B1, STORE_exec_imm_B2, STORE_exec_imm_B3, STORE_exec_imm_B4, STORE_exec_imm_B5,
						  STORE_exec_imm_R1, STORE_exec_imm_R2, STORE_exec_imm_R3, STORE_exec_imm_R4, STORE_exec_imm_R5, MOV_exec_A, MOV_exec_B, MOV_exec_R,
						  MOV_exec_imm_A1, MOV_exec_imm_A2, MOV_exec_imm_A3, MOV_exec_imm_B1, MOV_exec_imm_B2, MOV_exec_imm_B3, MOV_exec_imm_R1, MOV_exec_imm_R2, 
						  MOV_exec_imm_R3,
						  in_a, in_b, in_r, out1, wait1, Pc);
    signal cur_state: state := ini;
	 signal next_state: state := ini;

    signal rst, load_pc, mem_write, load_ir, in_en, load_A, load_B, load_R, load_out, load_flag, jmp, jeq, jgr: std_logic := '0';
    signal data_src, A_src, B_src, alu_src1, alu_src2, R_src, out_src: std_logic_vector(1 downto 0) := "00";
    signal add_src, aluop: std_logic_vector(2 downto 0) := "000";

begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            cur_state <= next_state;
        end if;
        case(cur_state) is
            when ini => estado <= "0000000";--0
            when busca1 => estado <= "0000001";--1
				when busca2 => estado <= "0000010";--2
            when decode => estado <= "0000011";--3
				when R_exec => estado <= "0000100";--4
            when R_exec_imm1 => estado <= "0000101";--5
				when R_exec_imm2 => estado <= "0000110";--6
				when R_exec_imm3 => estado <= "0000111";--7
				when CMP_exec => estado <= "0001000";--8
				when CMP_exec_imm1 => estado <= "0001001";--9
				when CMP_exec_imm2 => estado <= "0001010";--A
				when CMP_exec_imm3 => estado <= "0001011";--B
				when JMP_exec1 => estado <= "0001100";--C
				when JMP_exec2 => estado <= "0001101";--D
				when JMP_exec3 => estado <= "0001110";--E
				when JMP_exec4 => estado <= "0001111";--F
				when JEQ_exec1 => estado <= "0010000";--10
				when JEQ_exec2 => estado <= "0010001";--11
				when JEQ_exec3 => estado <= "0010010";--12
				when JEQ_exec4 => estado <= "0010011";--13
				when JGR_exec1 => estado <= "0010100";--14
				when JGR_exec2 => estado <= "0010101";--15
				when JGR_exec3 => estado <= "0010110";--16
				when JGR_exec4 => estado <= "0010111";--17
				when LOAD_exec_A1 => estado <= "0011000";--18
				when LOAD_exec_A2 => estado <= "0011001";--19
				when LOAD_exec_B1 => estado <= "0011010";--1A
				when LOAD_exec_B2 => estado <= "0011011";--1B
				when LOAD_exec_R1 => estado <= "0011100";--1C
				when LOAD_exec_R2 => estado <= "0011101";--1D
				when LOAD_exec_imm_A1 => estado <= "0011110";--1E
				when LOAD_exec_imm_A2 => estado <= "0011111";--1F
				when LOAD_exec_imm_A3 => estado <= "0100000";--20
				when LOAD_exec_imm_A4 => estado <= "0100001";--21
				when LOAD_exec_imm_A5 => estado <= "0100010";--22
				when LOAD_exec_imm_A6 => estado <= "0100011";--23
				when LOAD_exec_imm_B1 => estado <= "0100100";--24
				when LOAD_exec_imm_B2 => estado <= "0100101";--25
				when LOAD_exec_imm_B3 => estado <= "0100110";--26
				when LOAD_exec_imm_B4 => estado <= "0100111";--27
				when LOAD_exec_imm_B5 => estado <= "0101000";--28
				when LOAD_exec_imm_B6 => estado <= "0101001";--29
				when LOAD_exec_imm_R1 => estado <= "0101010";--2A
				when LOAD_exec_imm_R2 => estado <= "0101011";--2B
				when LOAD_exec_imm_R3 => estado <= "0101100";--2C
				when LOAD_exec_imm_R4 => estado <= "0101101";--2D
				when LOAD_exec_imm_R5 => estado <= "0101110";--2E
				when LOAD_exec_imm_R6 => estado <= "0101111";--2F
				when STORE_exec1 => estado <= "0110000";--30
				when STORE_exec2 => estado <= "0110001";--31
				when STORE_exec_imm_A1 => estado <= "0110010";--32
				when STORE_exec_imm_A2 => estado <= "0110011";--33
				when STORE_exec_imm_A3 => estado <= "0110100";--34
				when STORE_exec_imm_A4 => estado <= "0110101";--35
				when STORE_exec_imm_A5 => estado <= "0110110";--36
				when STORE_exec_imm_B1 => estado <= "0110111";--37
				when STORE_exec_imm_B2 => estado <= "0111000";--38
				when STORE_exec_imm_B3 => estado <= "0111001";--39
				when STORE_exec_imm_B4 => estado <= "0111010";--3A
				when STORE_exec_imm_B5 => estado <= "0111011";--3B
				when STORE_exec_imm_R1 => estado <= "0111100";--3C
				when STORE_exec_imm_R2 => estado <= "0111101";--3D
				when STORE_exec_imm_R3 => estado <= "0111110";--3E
				when STORE_exec_imm_R4 => estado <= "0111111";--3F
				when STORE_exec_imm_R5 => estado <= "1000000";--40
				when MOV_exec_A => estado <= "1000001";--41
				when MOV_exec_B => estado <= "1000010";--42
				when MOV_exec_R => estado <= "1000011";--43
				when MOV_exec_imm_A1 => estado <= "1000100";--44
				when MOV_exec_imm_A2 => estado <= "1000101";--45
				when MOV_exec_imm_A3 => estado <= "1000110";--46
				when MOV_exec_imm_B1 => estado <= "1000111";--47
				when MOV_exec_imm_B2 => estado <= "1001000";--48
				when MOV_exec_imm_B3 => estado <= "1001001";--49
				when MOV_exec_imm_R1 => estado <= "1001010";--4A
				when MOV_exec_imm_R2 => estado <= "1001011";--4B
				when MOV_exec_imm_R3 => estado <= "1001100";--4C
				when in_a => estado <= "1001101";--4D
				when in_b => estado <= "1001110";--4E
				when in_r => estado <= "1001111";--4F
				when out1 => estado <= "1010000";--50
				when wait1 => estado <= "1010001";--51
				when Pc => estado <= "1010010";--52
				when others => estado <= "0000000";
        end case;
    end process;

    process(cur_state)
    begin
            case (cur_state) is
                when ini =>
                    rst <= '1';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= busca2;

                when busca1 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0'; 
                    next_state <= busca2;
						  
					 when busca2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '1';
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0'; 
                    next_state <= decode;

                when decode =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    case(inst(7 downto 4)) is
                        when "0000" | "0001" | "0010" | "0011" | "0100" => 
                            if(inst(1 downto 0) = "11") then
                                next_state <= R_exec_imm1;
                            else
                                next_state <= R_exec;
                            end if;

                        when "0101" =>
                            if(inst(1 downto 0) = "11") then
                                next_state <= CMP_exec_imm1;
                            else
                                next_state <= CMP_exec;
                            end if;    
                        
                        when "0110" =>
                            next_state <= JMP_exec1;

                        when "0111" =>
                            next_state <= JEQ_exec1;

                        when "1000" =>
                            next_state <= JGR_exec1;
									 
								when "1001" =>
									 if(inst(1 downto 0) = "11") then
										case(inst(3 downto 2))is
											when "00" => next_state <= LOAD_exec_imm_A1;
											when "01" => next_state <= LOAD_exec_imm_B1;
											when "10" => next_state <= LOAD_exec_imm_R1;
											when "11" => next_state <= ini;
										end case;
									 else
										case(inst(3 downto 2)) is
											when "00" => next_state <= LOAD_exec_A1;
											when "01" => next_state <= LOAD_exec_B1;
											when "10" => next_state <= LOAD_exec_R1;
											when "11" => next_state <= ini;
										end case;
									end if;
									 
								when "1010" =>
									 if(inst(1 downto 0) = "11") then
										case(inst(3 downto 2)) is
											when "00" => next_state <= STORE_exec_imm_A1;
											when "01" => next_state <= STORE_exec_imm_B1;
											when "10" => next_state <= STORE_exec_imm_R1;
											when "11" => next_state <= ini;
										end case;
									 else
										next_state <= STORE_exec1;
									 end if;
									 
								when "1011" =>
									case(inst(3 downto 0)) is
										when "0000"| "0001" | "0010" => next_state <= MOV_exec_A;
										when "0100"| "0101" | "0110"  => next_state <= MOV_exec_B;
										when "1000"| "1001" | "1010" => next_state <= MOV_exec_R;
										when "0011" => next_state <= MOV_exec_imm_A1;
										when "0111" => next_state <= MOV_exec_imm_B1;
										when "1011" => next_state <= MOV_exec_imm_R1;
										when others => next_state <= ini;
									end case;
									 
								when "1100" =>
								    case(inst(3 downto 2)) is
										when "00" => next_state <= in_a;
										when "01" => next_state <= in_b;
										when "10" => next_state <= in_r;
										when "11" => next_state <= ini;
									 end case;
									 
								when "1101" =>
									 next_state <= out1;
								
								when "1110" =>
									 next_state <= wait1;

                        when others =>
                            next_state <= busca1;
                    end case;

                when R_exec =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '0';
                    alu_src1 <= inst(3 downto 2);
                    alu_src2 <= inst(1 downto 0);
                    aluop <= inst(6 downto 4);
                    R_src <= "10";
                    load_r <= '1';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= Pc;

                when R_exec_imm1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '0';
                    alu_src1 <= inst(3 downto 2);
                    alu_src2 <= inst(1 downto 0);
                    aluop <= inst(6 downto 4);
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= R_exec_imm2;
						  
					 when R_exec_imm2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '0';
                    alu_src1 <= inst(3 downto 2);
                    alu_src2 <= inst(1 downto 0);
                    aluop <= inst(6 downto 4);
                    R_src <= "10";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= R_exec_imm3;
						  
					when R_exec_imm3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '0';
                    alu_src1 <= inst(3 downto 2);
                    alu_src2 <= inst(1 downto 0);
                    aluop <= inst(6 downto 4);
                    R_src <= "10";
                    load_r <= '1';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= Pc;

                when CMP_exec =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '0';
                    alu_src1 <= inst(3 downto 2);
                    alu_src2 <= inst(1 downto 0);
                    aluop <= "001";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '1';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= Pc;

                when CMP_exec_imm1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= CMP_exec_imm2;
					
					 when CMP_exec_imm2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= CMP_exec_imm3;
						  
					when CMP_exec_imm3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '0';
                    alu_src1 <= inst(3 downto 2);
                    alu_src2 <= inst(1 downto 0);
                    aluop <= "001";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '1';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= Pc;

                when JMP_exec1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= JMP_exec2;
						  
					when JMP_exec2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= JMP_exec3;
						  
					when JMP_exec3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '1';
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= JMP_exec4;
						  
					when JMP_exec4 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '1';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= busca1;
						  
					 when JEQ_exec1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= JEQ_exec2;
						  
					when JEQ_exec2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= JEQ_exec3;
						  
					when JEQ_exec3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '1';
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= JEQ_exec4;
						  
					when JEQ_exec4 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '1';
                    jgr <= '0';
                    next_state <= busca1;
						  
					 when JGR_exec1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= JGR_exec2;
						  
					when JGR_exec2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= JGR_exec3;
						  
					when JGR_exec3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '1';
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= JGR_exec4;
						  
					when JGR_exec4 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '1';
                    next_state <= busca1;
						  
					when STORE_exec1 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '1';
                    add_src <= '0' & inst(1 downto 0);
                    data_src <= inst(3 downto 2);
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec2;
						  
					when STORE_exec2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '1';
                    add_src <= '0' & inst(1 downto 0);
                    data_src <= inst(3 downto 2);
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  --0000 00 01
					when STORE_exec_imm_A1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_A2;
						  
					when STORE_exec_imm_A2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_A3;
						  
					when STORE_exec_imm_A3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '1';
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_A4;
						  
					when STORE_exec_imm_A4 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '1';
                    add_src <= "100";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_A5;
					
					when STORE_exec_imm_A5 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '1';
                    add_src <= "100";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when STORE_exec_imm_B1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_B2;
						  
					when STORE_exec_imm_B2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_B3;
						  
					when STORE_exec_imm_B3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '1';
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_B4;
						  
					when STORE_exec_imm_B4 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '1';
                    add_src <= "100";
                    data_src <= "01";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_B5;
					
					when STORE_exec_imm_B5 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '1';
                    add_src <= "100";
                    data_src <= "01";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when STORE_exec_imm_R1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_R2;
						  
					when STORE_exec_imm_R2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_R3;
						  
					when STORE_exec_imm_R3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '1';
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_R4;
						  
					when STORE_exec_imm_R4 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '1';
                    add_src <= "100";
                    data_src <= "10";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= STORE_exec_imm_R5;
					
					when STORE_exec_imm_R5 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '1';
                    add_src <= "100";
                    data_src <= "10";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					
					when MOV_exec_A =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= inst(1 downto 0);
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '1';
                    load_B <= '0';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;  
					
					when MOV_exec_B =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= inst(1 downto 0);
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '1';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc; 
						 
					when MOV_exec_R =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '0';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= inst(1 downto 0);
                    load_r <= '1';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc; 
						 
					when MOV_exec_imm_A1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= MOV_exec_imm_A2; 
						  
					when MOV_exec_imm_A2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= MOV_exec_imm_A3; 
						  
					when MOV_exec_imm_A3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "11";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '1';
                    load_B <= '0';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when MOV_exec_imm_B1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= MOV_exec_imm_B2; 
						  
					when MOV_exec_imm_B2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= MOV_exec_imm_B3; 
						  
					when MOV_exec_imm_B3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "11";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '1';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when MOV_exec_imm_R1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= MOV_exec_imm_R2; 
						  
					when MOV_exec_imm_R2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= MOV_exec_imm_R3; 
						  
					when MOV_exec_imm_R3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '0';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "11";
                    load_r <= '1';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when LOAD_exec_A1 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= '0' & inst(1 downto 0);
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_A2;
						  
					when LOAD_exec_A2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= '0' & inst(1 downto 0);
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "11";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '1';
                    load_B <= '0';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when LOAD_exec_B1 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= '0' & inst(1 downto 0);
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_B2;
						  
					when LOAD_exec_B2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= '0' & inst(1 downto 0);
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "11";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '1';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when LOAD_exec_R1 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= '0' & inst(1 downto 0);
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_R2;
						  
					when LOAD_exec_R2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= '0' & inst(1 downto 0);
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '0';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "11";
                    load_r <= '1';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when LOAD_exec_imm_A1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_A2;
						  
					when LOAD_exec_imm_A2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_A3;
						  
					when LOAD_exec_imm_A3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '1';
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_A4;
						  
					when LOAD_exec_imm_A4 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "100";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_A5;
						  
					when LOAD_exec_imm_A5 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "100";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_A6;
						  
					when LOAD_exec_imm_A6 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "11";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '1';
                    load_B <= '0';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when LOAD_exec_imm_B1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_B2;
						  
					when LOAD_exec_imm_B2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_B3;
						  
					when LOAD_exec_imm_B3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '1';
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_B4;
						  
					when LOAD_exec_imm_B4 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "100";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_B5;
						  
					when LOAD_exec_imm_B5 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "100";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_B6;
						  
					when LOAD_exec_imm_B6 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "11";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '1';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when LOAD_exec_imm_R1 =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_R2;
						  
					when LOAD_exec_imm_R2 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_R3;
						  
					when LOAD_exec_imm_R3 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '1';
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_R4;
						  
					when LOAD_exec_imm_R4 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "100";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_R5;
						  
					when LOAD_exec_imm_R5 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "100";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= LOAD_exec_imm_R6;
						  
					when LOAD_exec_imm_R6 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '0';
                    load_A <= '0';
                    load_B <= '0';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "11";
                    load_r <= '1';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					
					when in_A =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '1';
                    load_A <= '1';
                    load_B <= '0';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when in_B =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '1';
                    load_A <= '0';
                    load_B <= '1';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "00";
                    load_r <= '0';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when in_R =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
                    load_ir <= '0';
                    A_src <= "00";
                    B_src <= "00";
                    in_en <= '1';
                    load_A <= '0';
                    load_B <= '0';
                    alu_src1 <= "00";
                    alu_src2 <= "00";
                    aluop <= "000";
                    R_src <= "00";
                    load_r <= '1';
                    out_src <= "00";
                    load_out <= '0';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when out1 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    out_src <= inst(3 downto 2);
                    load_out <= '1';
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= pc;
						  
					when wait1 =>
                    rst <= '0';
                    load_pc <= '0';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
                    load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= wait1;
                                
                when Pc =>
                    rst <= '0';
                    load_pc <= '1';
                    mem_write <= '0';
                    add_src <= "101";
                    data_src <= "00";
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
					load_flag <= '0';
                    jmp <= '0';
                    jeq <= '0';
                    jgr <= '0';
                    next_state <= busca1;
            end case;
              
                    
    end process;

	 
    control_bus <= rst & load_pc & mem_write & add_src & data_src & 
                  load_ir & A_src & B_src & in_en & load_A & load_B & alu_src1 & alu_src2 & 
                  aluop & R_src & load_R & out_src & load_out & load_flag & jmp & jeq & jgr;

end be;