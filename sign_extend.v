`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2017 07:33:46 PM
// Design Name: 
// Module Name: sign_extend
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


module sign_extend(
    entrada,
    salida
    );
    
    parameter bus_entrada = 16;
    parameter bus_salida = 32;
    
    input [bus_entrada-1:0] entrada;
    output wire [bus_salida-1:0] salida;
    
    reg [bus_entrada-1:0] comodin;
    always @ (entrada)
        if (entrada [15] == 0)
            comodin = 16'b0;
        else
            comodin = 16'b1;
            
    assign salida [bus_entrada-1:0] = entrada;
    assign salida [bus_salida-1:bus_entrada] = comodin;
    
endmodule
