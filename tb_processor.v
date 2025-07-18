`timescale 1ns / 1ps

module tb_processor;

    reg clk = 0;
    reg reset;

    pipelined_processor uut (
        .clk(clk),
        .reset(reset)
    );

    always #5 clk = ~clk;  // 10ns clock period

    initial begin
        $dumpfile("processor.vcd");
        $dumpvars(0, tb_processor);

        reset = 1;
        #10;
        reset = 0;

        // Run for a few cycles
        #100;

        $finish;
    end
endmodule
