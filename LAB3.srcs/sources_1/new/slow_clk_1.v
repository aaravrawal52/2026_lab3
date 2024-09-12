`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 16:12:14
// Design Name: 
// Module Name: slow_clk_1
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


module slow_clk_1(
    input CLOCK,
    output reg SLOW_CLOCK = 0
    );
    
    reg [31:0] COUNT = 0;
    
    always @ (posedge CLOCK) begin
        COUNT <= (COUNT == 49999999) ? 0 : COUNT + 1;
        SLOW_CLOCK <= (COUNT == 0) ? ~SLOW_CLOCK : SLOW_CLOCK;
    end
endmodule