`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 04:47:46 PM
// Design Name: 
// Module Name: testbench
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


module testbench();

reg clk_tb; 

    wire [31:0] pc_debug_out, pc_PCreg_out_cpu, instruction_IFIDreg_out_cpu; 
    //idexe reg out
    wire ewreg_IDEXEreg_out_cpu, ememtoreg_IDEXEreg_out_cpu, ewmem_IDEXEreg_out_cpu;
    wire [1:0] fwda,fwdb;
    wire [3:0] ealuc_IDEXEreg_out_cpu;
    wire ealuimm_IDEXEreg_out_cpu;
    wire [5:0] rdrt_IDEXEreg_out_cpu; 
    wire [31:0] qa_IDEXEreg_out_cpu, qb_IDEXEreg_out_cpu, sext_IDEXEreg_out_cpu;
    //exemem reg outs
    wire mwreg_EXEMEMreg_out_cpu, mmtoreg_EXEMEMreg_out_cpu, mwmem_EXEMEMreg_out_cpu;
    wire [5:0] rdrt_EXEMEMreg_out_cpu;
    wire [31:0] alu_EXEMEMreg_out_cpu, qb_EXEMEMreg_out_cpu;
    //memwb reg out
    wire wwreg_MEMWBreg_out_cpu, wmtoreg_MEMWBreg_out_cpu;
    wire [5:0] rdrt_MEMWBreg_out_cpu;
    wire [31:0] alu_MEMWBreg_out_cpu, do_MEMWBreg_out_cpu;

CPU cpu_tb( clk_tb,  
                    pc_debug_out, pc_PCreg_out_cpu, instruction_IFIDreg_out_cpu,fwdb, fwda, ewreg_IDEXEreg_out_cpu, ememtoreg_IDEXEreg_out_cpu, ewmem_IDEXEreg_out_cpu, 
                     ealuc_IDEXEreg_out_cpu, ealuimm_IDEXEreg_out_cpu, rdrt_IDEXEreg_out_cpu, qa_IDEXEreg_out_cpu, qb_IDEXEreg_out_cpu, sext_IDEXEreg_out_cpu,
                     mwreg_EXEMEMreg_out_cpu, mmtoreg_EXEMEMreg_out_cpu, mwmem_EXEMEMreg_out_cpu, rdrt_EXEMEMreg_out_cpu, alu_EXEMEMreg_out_cpu, qb_EXEMEMreg_out_cpu,
                     wwreg_MEMWBreg_out_cpu, wmtoreg_MEMWBreg_out_cpu, rdrt_MEMWBreg_out_cpu, alu_MEMWBreg_out_cpu, do_MEMWBreg_out_cpu );      
  

initial
begin
    clk_tb = 0;
    
end

 
always begin
    #5;
    clk_tb = ~clk_tb;
    //regrt_tb = ~regrt_tb;
    
end
endmodule
