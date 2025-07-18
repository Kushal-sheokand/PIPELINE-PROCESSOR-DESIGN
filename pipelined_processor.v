module pipelined_processor (
    input clk,
    input reset
);

    // Define opcodes
    localparam NOP  = 4'b0000;
    localparam ADD  = 4'b0001;
    localparam SUB  = 4'b0010;
    localparam LOAD = 4'b0011;

    // Registers and memory
    reg [15:0] instr_mem [0:15];  // 16 instructions
    reg [7:0] reg_file [0:15];    // 16 general purpose 8-bit registers
    reg [7:0] data_mem [0:15];    // Memory for LOAD instruction

    // Pipeline registers
    reg [15:0] IF_ID, ID_EX, EX_WB;
    reg [3:0]  WB_dest;
    reg [7:0]  WB_result;

    integer i;

    // Initialization
    initial begin
        // Instruction Format: [opcode][dest][src1][src2/immed]
        instr_mem[0] = {ADD, 4'd1, 4'd2, 4'd3};    // R1 = R2 + R3
        instr_mem[1] = {SUB, 4'd4, 4'd1, 4'd2};    // R4 = R1 - R2
        instr_mem[2] = {LOAD, 4'd5, 4'd0, 4'd8};   // R5 = MEM[8]
        instr_mem[3] = {NOP, 4'd0, 4'd0, 4'd0};

        // Register and memory init
        reg_file[2] = 8'd10;
        reg_file[3] = 8'd5;
        data_mem[8] = 8'd99;
    end

    // Instruction Fetch (IF)
    reg [3:0] pc = 0;
    always @(posedge clk) begin
        if (reset) begin
            pc <= 0;
            IF_ID <= 0;
            ID_EX <= 0;
            EX_WB <= 0;
        end else begin
            IF_ID <= instr_mem[pc];
            pc <= pc + 1;

            // Instruction Decode (ID)
            ID_EX <= IF_ID;

            // Execute (EX)
            case (ID_EX[15:12])
                ADD:  WB_result <= reg_file[ID_EX[7:4]] + reg_file[ID_EX[3:0]];
                SUB:  WB_result <= reg_file[ID_EX[7:4]] - reg_file[ID_EX[3:0]];
                LOAD: WB_result <= data_mem[ID_EX[3:0]];
                default: WB_result <= 0;
            endcase
            WB_dest <= ID_EX[11:8];

            // Write Back (WB)
            reg_file[WB_dest] <= WB_result;
            EX_WB <= ID_EX;
        end
    end

endmodule
