`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2017 07:14:40 PM
// Design Name: 
// Module Name: Fetch
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


module Fetch(
    control_mux,
    entrada1_mux,       //  Entrada mas significativa del mux
    salida_sumador,
    salida_pc,
    clk
    );
    
    input control_mux;
    input entrada1_mux;
    output salida_sumador;
    output reg salida_pc;
    input clk;
    
    wire salida_mux;
    
    assign salida_sumador = 3'd4 + salida_pc;   //  Creacion del sumador
    
    assign salida_mux = control_mux ?  salida_sumador : entrada1_mux;   //  Creacion del mux
    
    always @(posedge clk)
        salida_pc <= salida_mux;    //  Creacion del program counter
					
endmodule
