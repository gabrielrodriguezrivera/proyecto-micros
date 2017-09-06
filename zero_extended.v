`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2017 23:38:00
// Design Name: 
// Module Name: zero_extended
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


module zero_extended(
entrada,
salida
);

input [15:0] entrada;
output [31:0] salida;
assign salida= {{16{1'b0}},entrada};
endmodule


