`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 21:58:49
// Design Name: 
// Module Name: test_t_flip_flop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_t_flip_flop(

    );
    reg t, clk;
    wire q, qbar;
	t_Flip_Flop uut (t, clk, q, qbar);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("tb_t_flipflop.vcd"); 
        $dumpvars(0, tb_t_flipflop);     
        
        t = 0; #10; 

        t = 1; #10; 

        t = 1; #10;

        t = 0; #10;

        t = 1; #10;
        
        $finish; 
    end

endmodule
