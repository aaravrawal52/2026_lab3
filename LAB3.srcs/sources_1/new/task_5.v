`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 16:23:22
// Design Name: 
// Module Name: task_5
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


module task_5(
    input CLOCK, [2:0]sw, output reg LD15 = 0
    );
    
    always @ (posedge CLOCK)
    begin
        if (sw[2:0] == 3'b001)
        begin
            LD15 <= clk_20hz;
        end
        if (sw[2:0] == 3'b010)
        begin
            LD15 <= clk_5hz;
        end
        if (sw[2:0] == 3'b100)
        begin
            LD15 <= clk_1hz;
        end       
   end
   slow_clk_20 unit_20hz(CLOCK, clk_20hz);  
   slow_clk_1 unit_1hz(CLOCK, clk_1hz);  
   slow_clk_5 unit_5hz(CLOCK, clk_5hz);         
endmodule
