`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 03:51:10 PM
// Design Name: 
// Module Name: CPU
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

// idexe register test cpu
/*module CPU(
   input clk,
   output ewreg_idexe_out, ememtoreg_idexe_out, ewmem_idexe_out, aluimm_idexe_out,
   output [3:0] ealuC_idexe_out,
   output [5:0] rdrt_idexe_out, 
   output [31:0] qa_idexe_out, qb_idexe_out, sext_imm_out,
   output [31:0] pc_debug_out, instruction_id_debug_out
    );
wire [5:0] rdrt_mux_out;

wire[31:0] pc_next, pc_reg_out, instruction_blk_out, instruction_reg_out, sext_blk_out, qa_reg_blk_out, qb_reg_blk_out;

//control unit outputs
wire wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, regRT_control_out;
wire [3:0] aluC_control_out;

//IDEXE reg outputs
wire ewreg_idexe_out_reg, ememtoreg_idexe_out_reg, ewmem_idexe_out_reg, aluimm_idexe_out_reg;
wire [3:0] ealuC_idexe_out_reg;
wire [5:0] rdrt_idexe_out_reg; 
wire [31:0] qa_idexe_out_reg, qb_idexe_out_reg, sext_imm_out_reg;

assign ewreg_idexe_out      = ewreg_idexe_out_reg;
assign ememtoreg_idexe_out  = ememtoreg_idexe_out_reg;
assign ewmem_idexe_out      = ewmem_idexe_out_reg;
assign aluimm_idexe_out     = aluimm_idexe_out_reg;
assign ealuC_idexe_out      = ealuC_idexe_out_reg;
assign rdrt_idexe_out       = rdrt_idexe_out_reg;
assign qa_idexe_out         = qa_idexe_out_reg;
assign qb_idexe_out         = qb_idexe_out_reg;
assign sext_imm_out         = sext_imm_out_reg;



PC pc_cpu(clk, pc_next, pc_reg_out);

adder adder_cpu(pc_reg_out, pc_next);

IM im_cpu(pc_reg_out, pc_debug_out, instruction_blk_out);

IFID ifid_cpu(instruction_blk_out, clk, instruction_reg_out, instruction_id_debug_out);

ControlUnit control_cpu(instruction_reg_out, wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, regRT_control_out, aluC_control_out);

RDRTMux rdrtmux_cpu( regRT_control_out, instruction_reg_out, rdrt_mux_out); 

Sext sext_cpu(instruction_reg_out, sext_blk_out);

RegFile regfile_cpu(instruction_reg_out, qa_reg_blk_out, qb_reg_blk_out);

IDEXE idexe_cpu( clk, wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, aluC_control_out, rdrt_mux_out, qa_reg_blk_out, 
    qb_reg_blk_out, sext_blk_out,
     ewreg_idexe_out_reg, ememtoreg_idexe_out_reg, ewmem_idexe_out_reg, aluimm_idexe_out_reg, ealuC_idexe_out_reg, rdrt_idexe_out_reg,
      qa_idexe_out_reg, qb_idexe_out_reg, sext_imm_out_reg); 
endmodule */

//exemem register cpu
/*module CPU
(
    input clk,
    output mwreg_exemem_cpu_out, mmemtoreg_exemem_cpu_out, mwmem_exemem_cpu_out,
    output [5:0] rdrt_exemem_cpu_out,
    output [31:0] alu_exemem_cpu_out, qb_exemem_cpu_out,
    output [31:0] pc_debug_out, instruction_id_debug_out
);

//conecting wires
wire [31:0] pc_next, pc_reg_out;
wire [31:0] instruction_blk_out, instruction_reg_out;
wire wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, regRT_control_out;
wire [3:0] aluC_control_out;
wire [5:0] rdrt_mux_out;
wire [31:0] sext_blk_out, qa_reg_blk_out, qb_reg_blk_out;

// idexe reg outputs
wire ewreg_idexe_out_reg, ememtoreg_idexe_out_reg, ewmem_idexe_out_reg, aluimm_idexe_out_reg;
wire [3:0] ealuC_idexe_out_reg;
wire [5:0] rdrt_idexe_out_reg; 
wire [31:0] qa_idexe_out_reg, qb_idexe_out_reg, sext_imm_out_reg;

wire [31:0] muxexe_blk_out, alu_blk_out;
 
PC pc_cpu(clk, pc_next, pc_reg_out);

adder adder_cpu(pc_reg_out, pc_next);

IM im_cpu(pc_reg_out, pc_debug_out, instruction_blk_out);

IFID ifid_cpu(instruction_blk_out, clk, instruction_reg_out, instruction_id_debug_out);

ControlUnit control_cpu(instruction_reg_out, wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, regRT_control_out, aluC_control_out);

RDRTMux rdrtmux_cpu( regRT_control_out, instruction_reg_out, rdrt_mux_out); 

Sext sext_cpu(instruction_reg_out, sext_blk_out);

RegFile regfile_cpu(instruction_reg_out, qa_reg_blk_out, qb_reg_blk_out);

IDEXE idexe_cpu( clk, wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, aluC_control_out, rdrt_mux_out, qa_reg_blk_out, 
    qb_reg_blk_out, sext_blk_out, ewreg_idexe_out_reg, ememtoreg_idexe_out_reg, ewmem_idexe_out_reg, aluimm_idexe_out_reg, ealuC_idexe_out_reg, rdrt_idexe_out_reg,
      qa_idexe_out_reg, qb_idexe_out_reg, sext_imm_out_reg);
     
MuxExe muxexe_cpu( qb_idexe_out_reg, sext_imm_out_reg, aluimm_idexe_out_reg, muxexe_blk_out);

AluExe aluexe_cpu( qa_idexe_out_reg, muxexe_blk_out, ealuC_idexe_out_reg, alu_blk_out);

ExeMem exemem_cpu( clk, ewreg_idexe_out_reg, ememtoreg_idexe_out_reg, ewmem_idexe_out_reg, rdrt_idexe_out_reg, alu_blk_out,
                    qb_idexe_out_reg, mwreg_exemem_cpu_out, mmemtoreg_exemem_cpu_out, mwmem_exemem_cpu_out, rdrt_exemem_cpu_out, alu_exemem_cpu_out, qb_exemem_cpu_out);

endmodule
*/
//lab4 cpu
/*
module CPU 
(
    input clk,
    
  
    output [31:0] pc_debug_out, instruction_id_debug_out,
   
    //memwboutput
    output wwreg_memwb_out, wmtoreg_memwb_out, 
    output [5:0] rdrt_memwb_out, 
    output [31:0] r_memwb_out, do_memwb_out
    
);

    //exemem out wires
    wire mwreg_exemem_out, mmemtoreg_exemem_out, mwmem_exemem_out;
    wire [5:0] rdrt_exemem_out;
    wire [31:0] r_exemem_out, qb_exemem_out;

    //conecting wires
    wire [31:0] pc_next, pc_reg_out;
    wire [31:0] instruction_blk_out, instruction_reg_out;
    wire wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, regRT_control_out;
    wire [3:0] aluC_control_out;
    wire [5:0] rdrt_mux_out;
    wire [31:0] sext_blk_out, qa_reg_blk_out, qb_reg_blk_out;
    
    // idexe reg outputs
    wire ewreg_idexe_out_reg, ememtoreg_idexe_out_reg, ewmem_idexe_out_reg, aluimm_idexe_out_reg;
    wire [3:0] ealuC_idexe_out_reg;
    wire [5:0] rdrt_idexe_out_reg; 
    wire [31:0] qa_idexe_out_reg, qb_idexe_out_reg, sext_imm_out_reg;

    wire [31:0] muxexe_blk_out, alu_blk_out, do_memwb_in;
    
    PC pc_cpu(clk, pc_next, pc_reg_out);
    
    adder adder_cpu(pc_reg_out, pc_next);
    
    IM im_cpu(pc_reg_out, pc_debug_out, instruction_blk_out);
    
    IFID ifid_cpu(instruction_blk_out, clk, instruction_reg_out, instruction_id_debug_out);
    
    ControlUnit control_cpu(instruction_reg_out, wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, regRT_control_out, aluC_control_out);
    
    RDRTMux rdrtmux_cpu( regRT_control_out, instruction_reg_out, rdrt_mux_out); 
    
    Sext sext_cpu(instruction_reg_out, sext_blk_out);
    
    RegFile regfile_cpu(instruction_reg_out, qa_reg_blk_out, qb_reg_blk_out);
    
    IDEXE idexe_cpu( clk, wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, aluC_control_out, rdrt_mux_out, qa_reg_blk_out, 
        qb_reg_blk_out, sext_blk_out, ewreg_idexe_out_reg, ememtoreg_idexe_out_reg, ewmem_idexe_out_reg, aluimm_idexe_out_reg,
         ealuC_idexe_out_reg, rdrt_idexe_out_reg,
          qa_idexe_out_reg, qb_idexe_out_reg, sext_imm_out_reg);
          
   MuxExe muxexe_cpu( qb_idexe_out_reg , sext_imm_out_reg, aluimm_idexe_out_reg, muxexe_blk_out);
   
   AluExe aluexe_cpu( qa_idexe_out_reg, muxexe_blk_out, ealuC_idexe_out_reg, alu_blk_out);
   
   ExeMem exemem_cpu( clk, ewreg_idexe_out_reg, ememtoreg_idexe_out_reg, ewmem_idexe_out_reg, rdrt_idexe_out_reg, alu_blk_out, qb_idexe_out_reg, 
                         mwreg_exemem_out, mmemtoreg_exemem_out, mwmem_exemem_out, rdrt_exemem_out, r_exemem_out, qb_exemem_out);
                     
   DataMem datamem_cpu( mwmem_exemem_out, r_exemem_out, qb_exemem_out, do_memwb_in ); 
   
   MemWb memwb_cpu( clk, mwreg_exemem_out, mmemtoreg_exemem_out, rdrt_exemem_out, r_exemem_out, do_memwb_in,
                     wwreg_memwb_out, wmtoreg_memwb_out, rdrt_memwb_out, r_memwb_out, do_memwb_out);

endmodule
*/

/*module CPU
(
    input clk,
    //pc and ifid reg outputs
    output [31:0] pc_debug_out, pc_PCreg_out_cpu, instruction_IFIDreg_out_cpu, 
    //idexe reg out
    output ewreg_IDEXEreg_out_cpu, ememtoreg_IDEXEreg_out_cpu, ewmem_IDEXEreg_out_cpu,
    output [3:0] ealuc_IDEXEreg_out_cpu,
    output ealuimm_IDEXEreg_out_cpu,
    output [5:0] rdrt_IDEXEreg_out_cpu, 
    output [31:0] qa_IDEXEreg_out_cpu, qb_IDEXEreg_out_cpu, sext_IDEXEreg_out_cpu,
    //exemem reg outs
    output mwreg_EXEMEMreg_out_cpu, mmtoreg_EXEMEMreg_out_cpu, mwmem_EXEMEMreg_out_cpu,
    output [5:0] rdrt_EXEMEMreg_out_cpu,
    output [31:0] alu_EXEMEMreg_out_cpu, qb_EXEMEMreg_out_cpu,
    //memwb reg out
    output wwreg_MEMWBreg_out_cpu, wmtoreg_MEMWBreg_out_cpu,
    output [5:0] rdrt_MEMWBreg_out_cpu, 
    output [31:0] alu_MEMWBreg_out_cpu, do_MEMWBreg_out_cpu
    
);
    wire [31:0] pc_next, instruction_mem_out_cpu;
    
    wire wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, regRT_control_out;
    wire [3:0] aluC_control_out;

    wire [5:0] rdrt_mux_out;
    wire [31:0] sext_blk_out, qa_reg_blk_out, qb_reg_blk_out;
    
    wire [31:0] wbmux_out, exemux_out, r_alu_blk_out, do_datamem_blk_out;
    
    PC pc_cpu( clk, pc_next,
                     pc_PCreg_out_cpu );
    adder adder_cpu( pc_PCreg_out_cpu, 
                           pc_next );
    IM im_cpu( pc_PCreg_out_cpu, pc_debug_out, instruction_mem_out_cpu);
    IFID ifid_cpu(  instruction_mem_out_cpu, clk, instruction_IFIDreg_out_cpu );
    ControlUnit controlunit_cpu( instruction_IFIDreg_out_cpu, 
                                 wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, regRT_control_out, aluC_control_out );
    RDRTMux rdrtmux_cpu( regRT_control_out, instruction_IFIDreg_out_cpu, rdrt_mux_out );
    Sext sext_cpu( instruction_IFIDreg_out_cpu, sext_blk_out);
    RegFile regfile_cpu( clk, wwreg_MEMWBreg_out_cpu, instruction_IFIDreg_out_cpu, rdrt_MEMWBreg_out_cpu, wbmux_out, 
                                 qa_reg_blk_out,  qb_reg_blk_out );
                                 
    IDEXE idexe_cpu( clk, wreg_control_out, memToreg_control_out, wmem_control_out, 
                    aluIMM_control_out, aluC_control_out, rdrt_mux_out, qa_reg_blk_out, qb_reg_blk_out, sext_blk_out,
                                ewreg_IDEXEreg_out_cpu, ememtoreg_IDEXEreg_out_cpu, ewmem_IDEXEreg_out_cpu, ealuimm_IDEXEreg_out_cpu, ealuc_IDEXEreg_out_cpu,
                                rdrt_IDEXEreg_out_cpu, qa_IDEXEreg_out_cpu, qb_IDEXEreg_out_cpu, sext_IDEXEreg_out_cpu );
                                
    MuxExe muxexe( qb_IDEXEreg_out_cpu, sext_IDEXEreg_out_cpu, ealuimm_IDEXEreg_out_cpu, 
                        exemux_out );
                        
    AluExe aluexe_cpu( qa_IDEXEreg_out_cpu, exemux_out, ealuc_IDEXEreg_out_cpu, 
                            r_alu_blk_out );
                            
    ExeMem exemem_cpu( clk, ewreg_IDEXEreg_out_cpu, ememtoreg_IDEXEreg_out_cpu, ewmem_IDEXEreg_out_cpu, rdrt_IDEXEreg_out_cpu, r_alu_blk_out, qb_IDEXEreg_out_cpu,
                                mwreg_EXEMEMreg_out_cpu, mmtoreg_EXEMEMreg_out_cpu, mwmem_EXEMEMreg_out_cpu, rdrt_EXEMEMreg_out_cpu, alu_EXEMEMreg_out_cpu,
                                 qb_EXEMEMreg_out_cpu );
                                 
    DataMem datamem_cpu( mwmem_EXEMEMreg_out_cpu, alu_EXEMEMreg_out_cpu, qb_EXEMEMreg_out_cpu,
                              do_datamem_blk_out );
    
    MemWb memwb_cpu( clk, mwreg_EXEMEMreg_out_cpu, mmtoreg_EXEMEMreg_out_cpu, rdrt_EXEMEMreg_out_cpu, alu_EXEMEMreg_out_cpu, do_datamem_blk_out,
                            wwreg_MEMWBreg_out_cpu, wmtoreg_MEMWBreg_out_cpu, rdrt_MEMWBreg_out_cpu, alu_MEMWBreg_out_cpu, do_MEMWBreg_out_cpu ); 
                            
    WbMux wbmux_cpu( wmtoreg_MEMWBreg_out_cpu, alu_MEMWBreg_out_cpu, do_MEMWBreg_out_cpu, 
                            wbmux_out ); 
                           
    
    

endmodule */

module CPU
(
    input clk,
    
    //pc and ifid reg outputs
    output [31:0] pc_debug_out, pc_PCreg_out_cpu, instruction_IFIDreg_out_cpu,
    output [1:0] fwdb_out_cpu, fwda_out_cpu,
    //idexe reg out
    output ewreg_IDEXEreg_out_cpu, ememtoreg_IDEXEreg_out_cpu, ewmem_IDEXEreg_out_cpu,
    output [3:0] ealuc_IDEXEreg_out_cpu,
    output ealuimm_IDEXEreg_out_cpu,
    output [5:0] rdrt_IDEXEreg_out_cpu, 
    output [31:0] qa_IDEXEreg_out_cpu, qb_IDEXEreg_out_cpu, sext_IDEXEreg_out_cpu,
    //exemem reg outs
    output mwreg_EXEMEMreg_out_cpu, mmtoreg_EXEMEMreg_out_cpu, mwmem_EXEMEMreg_out_cpu,
    output [5:0] rdrt_EXEMEMreg_out_cpu,
    output [31:0] alu_EXEMEMreg_out_cpu, qb_EXEMEMreg_out_cpu,
    //memwb reg out
    output wwreg_MEMWBreg_out_cpu, wmtoreg_MEMWBreg_out_cpu,
    output [5:0] rdrt_MEMWBreg_out_cpu, 
    output [31:0] alu_MEMWBreg_out_cpu, do_MEMWBreg_out_cpu
);

    wire [31:0] pc_next, instruction_mem_out_cpu;
    
    wire wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, regRT_control_out;
    wire [3:0] aluC_control_out;

    wire [5:0] rdrt_mux_out;
    
    wire [31:0] sext_blk_out, qa_reg_blk_out, qb_reg_blk_out;
    
    wire [31:0] wbmux_out, exemux_out, r_alu_blk_out, do_datamem_blk_out, da_mux_out, db_mux_out;
    
    PC pc_cpu( clk, pc_next,
                         pc_PCreg_out_cpu );

    adder adder_cpu( pc_PCreg_out_cpu, 
                           pc_next );
                           
    IM im_cpu( pc_PCreg_out_cpu, 
        pc_debug_out, instruction_mem_out_cpu);
    
   IFID ifid_cpu(  instruction_mem_out_cpu, clk, 
                                    instruction_IFIDreg_out_cpu ); 
    
   ControlUnit controlUnit_cpu( instruction_IFIDreg_out_cpu, rdrt_EXEMEMreg_out_cpu, mmtoreg_EXEMEMreg_out_cpu, mwreg_EXEMEMreg_out_cpu, rdrt_IDEXEreg_out_cpu, ememtoreg_IDEXEreg_out_cpu, ewreg_IDEXEreg_out_cpu,
                                            wreg_control_out, memToreg_control_out, wmem_control_out, aluIMM_control_out, regRT_control_out, aluC_control_out, fwdb_out_cpu, fwda_out_cpu ); 
    
   RDRTMux rdrtmux_cpu( regRT_control_out, instruction_IFIDreg_out_cpu, 
                            rdrt_mux_out );
    
   Sext sext_cpu( instruction_IFIDreg_out_cpu, 
                        sext_blk_out);
    
   RegFile regfile_cpu( clk, wwreg_MEMWBreg_out_cpu, instruction_IFIDreg_out_cpu, rdrt_MEMWBreg_out_cpu, wbmux_out, 
                                                        qa_reg_blk_out,  qb_reg_blk_out );
    
   DaMux daMux_cpu(fwda_out_cpu, qa_reg_blk_out, r_alu_blk_out, alu_EXEMEMreg_out_cpu, do_datamem_blk_out,
                                da_mux_out); 
                                
   DbMux dbMux_cpu(fwdb_out_cpu, qb_reg_blk_out, r_alu_blk_out, alu_EXEMEMreg_out_cpu, do_datamem_blk_out,
                         db_mux_out);
   
   IDEXE idexe_cpu( clk, wreg_control_out, memToreg_control_out, wmem_control_out, 
                                             aluIMM_control_out, aluC_control_out, rdrt_mux_out, da_mux_out, db_mux_out, sext_blk_out,
                                                         ewreg_IDEXEreg_out_cpu, ememtoreg_IDEXEreg_out_cpu, ewmem_IDEXEreg_out_cpu, ealuimm_IDEXEreg_out_cpu, ealuc_IDEXEreg_out_cpu,
                                                         rdrt_IDEXEreg_out_cpu, qa_IDEXEreg_out_cpu, qb_IDEXEreg_out_cpu, sext_IDEXEreg_out_cpu ); 
   
   MuxExe muxexe( qb_IDEXEreg_out_cpu, sext_IDEXEreg_out_cpu, ealuimm_IDEXEreg_out_cpu, 
                                         exemux_out );
                                         
   AluExe aluexe_cpu( qa_IDEXEreg_out_cpu, exemux_out, ealuc_IDEXEreg_out_cpu, 
                                                                     r_alu_blk_out );
   
   ExeMem exemem_cpu( clk, ewreg_IDEXEreg_out_cpu, ememtoreg_IDEXEreg_out_cpu, ewmem_IDEXEreg_out_cpu, rdrt_IDEXEreg_out_cpu, r_alu_blk_out, qb_IDEXEreg_out_cpu,
                                                                 mwreg_EXEMEMreg_out_cpu, mmtoreg_EXEMEMreg_out_cpu, mwmem_EXEMEMreg_out_cpu, rdrt_EXEMEMreg_out_cpu, alu_EXEMEMreg_out_cpu,
                                                                              qb_EXEMEMreg_out_cpu );
                                                                              
   DataMem datamem_cpu( mwmem_EXEMEMreg_out_cpu, alu_EXEMEMreg_out_cpu, qb_EXEMEMreg_out_cpu,
                                                                     do_datamem_blk_out );
                                                                     
   MemWb memwb_cpu( clk, mwreg_EXEMEMreg_out_cpu, mmtoreg_EXEMEMreg_out_cpu, rdrt_EXEMEMreg_out_cpu, alu_EXEMEMreg_out_cpu, do_datamem_blk_out,
                                          wwreg_MEMWBreg_out_cpu, wmtoreg_MEMWBreg_out_cpu, rdrt_MEMWBreg_out_cpu, alu_MEMWBreg_out_cpu, do_MEMWBreg_out_cpu ); 
                                                                                                
   WbMux wbmux_cpu( wmtoreg_MEMWBreg_out_cpu, alu_MEMWBreg_out_cpu, do_MEMWBreg_out_cpu, 
                                             wbmux_out );                                                                  
               
endmodule

//Instruction fetch -done
module PC
(
    input clk, 
    input [31:0] pc_pc_in,
    output [31:0] pc_pc_out
);
    reg [31:0] pc__pc_out_reg;
    assign pc_pc_out = pc__pc_out_reg; 
    always @ (posedge clk)
    begin
        if(clk)
        begin
        pc__pc_out_reg <= pc_pc_in;
        end
    end
endmodule


// adder done
module adder
(
    input [31:00] pc_adder_in,
    output reg[31:0] pc_adder_out
);
    initial 
        pc_adder_out = 88;
    
    always @( * )
    begin
       pc_adder_out <= pc_adder_in + 4;
    end
endmodule



// Instruction mem - done
module IM
(
    input [31:0] pc_im_in,
    output [31:0] pc_debug_out,
    output wire [31:00] instruction_im_out    
    
);
    reg [31:0] instruction_memory [0:511];
    reg [31:0] reg_instruction_im_out, pc_debug_out_reg;    
    assign pc_debug_out = pc_debug_out_reg;
    integer i;
    initial
    begin
        for(i = 0; i < 512; i = i + 1)
        begin
            instruction_memory[i] = 32'b10101010101010101010101010101010;
        end
        instruction_memory[100] = 32'h00223020;
        instruction_memory[104] = 32'h01232022;
        instruction_memory[108] = 32'h00692825;
        instruction_memory[112] = 32'h00693026;
        instruction_memory[116] = 32'h00693824;
        
        /* old instructions
        instruction_memory[100] = 32'b10001100001000100000000000000000;
        instruction_memory[104] = 32'b10001100001000110000000000000100;
        instruction_memory[108] = 32'b10001100001001000000000000001000;
        instruction_memory[112] = 32'b10001100001001010000000000001100;
        instruction_memory[116] = 32'b00000000010010100011000000100000;
        */
    end    
    
    assign instruction_im_out = reg_instruction_im_out;    
    
    always @ (*)
    begin
        pc_debug_out_reg <= pc_im_in;
        reg_instruction_im_out = instruction_memory[pc_im_in];
    end
endmodule

//instruction register - done
module IFID
(
    input [31:0]instruction_IFID_in,
    input clk, 
    output [31:0] instruction_IFID_out
    //output [31:0] debug_instruction_out
);
    reg [31:0] instruction_reg;
    
    assign instruction_IFID_out = instruction_reg;
    //assign debug_instruction_out = instruction_reg;
    always @( posedge clk)
    begin
        if(clk)
        begin
            instruction_reg <= instruction_IFID_in;
        end
    end
endmodule


//Instruction decode

//control unit - done check aluIMM
module ControlUnit
(
    input [31:0] instruction_Control_in,
    input [5:0] rdrt_exeMem_out,
    input memtoreg_exeMem_out, mwreg_exeMem_out, 
    input [5:0] rdrt_idExe_out,
    input memtoreg_idExe_out, mwreg_idExe_out, 
    output wreg, memToreg, wmem, aluIMM, regRT,
    output [3:0] aluC,
    output reg [1:0] fwdb, fwda
    
);

    reg wreg_reg, memToreg_reg, wmem_reg, aluIMM_reg, regRT_reg;
    reg [3:0] aluC_reg;
    assign wreg     = wreg_reg;
    assign memToreg = memToreg_reg;
    assign wmem     = wmem_reg;
    assign aluC     = aluC_reg;
    assign aluIMM   = aluIMM_reg;
    assign regRT    = regRT_reg;
    
    always @(*)
    begin
        case (instruction_Control_in[31:26])
            6'b100011 : //load word instruction
                begin
                    wreg_reg     <= 1'b1;
                    memToreg_reg <= 1'b1;
                    wmem_reg     <= 1'b0;
                    aluC_reg     <= 4'd2; //add
                    aluIMM_reg   <= 1'b1;
                    regRT_reg    <= 1'b1; // changed because writes to rt which is [21:16}
                end
            6'd0 : //R-type instruction
                begin
                    wreg_reg     <= 1'b1; // because we want to write into register
                    memToreg_reg <= 1'b0; // because we want to write data calculated not data stored
                    wmem_reg     <= 1'b0; // dont think we want to write to memory just to registers
                    aluIMM_reg   <= 1'b0; // because we want to use regfile output
                    regRT_reg    <= 1'b0; // because writes to rd in 15:11
                    case (instruction_Control_in[5:0])
                        6'b100000: aluC_reg     <= 4'd2; //add
                        6'b100010: aluC_reg     <= 4'd6; //sub
                        6'b100100: aluC_reg     <= 4'd0; //and
                        6'b100101: aluC_reg     <= 4'd1; //or
                        6'b100110: aluC_reg     <= 4'd12; //xor
                    endcase
                end
            default : //debug case all zeroes
                begin
                    wreg_reg     <= 1'b0;
                    memToreg_reg <= 1'b0;
                    wmem_reg     <= 1'b0;
                    aluC_reg     <= 4'b0x0x;
                    aluIMM_reg   <= 1'b0;
                    regRT_reg    <= 1'b0;
                end
        endcase   
        if ( (mwreg_exeMem_out == 1) && (rdrt_exeMem_out != 0) )
        begin
            if (rdrt_exeMem_out == instruction_Control_in[25:21])
            begin
                fwda <= 2'b01;
            end
            if (rdrt_exeMem_out == instruction_Control_in[20:16])
            begin
                fwdb <= 2'b01;
            end
        end
        if ( (mwreg_idExe_out == 1) && (rdrt_idExe_out != 0) )
        begin
            if (rdrt_idExe_out == instruction_Control_in[25:21])
            begin
                fwda <= 2'b10;
            end
            if (rdrt_idExe_out == instruction_Control_in[20:16])
            begin
                fwdb <= 2'b10;
            end
        end
        else
        begin
            fwda <= 2'b01;
            fwdb <= 2'b01;
        end
    end
endmodule

// done
module RDRTMux
(
   input regrt_RDRTMux_in,
   input [31:0] instruction_in_RDRTMux, 
   output [5:0] reg_address_out
);
    reg [5:0] reg_address_out_reg;
    assign reg_address_out = reg_address_out_reg;

    always @( * )
    begin
        if( regrt_RDRTMux_in ) // rt code out
            reg_address_out_reg <= instruction_in_RDRTMux[20:16];
        else //rd code out
            reg_address_out_reg <= instruction_in_RDRTMux[15:11];
    end
endmodule

//done
module Sext
(
    input [31:0] instruction_sext_in,
    output [31:0] imm_sext_out
);

    reg [31:0] imm_sext_out_reg;
    
    assign imm_sext_out = imm_sext_out_reg;
    
    always @(*)
    begin
        imm_sext_out_reg = {16'b0000000000000000, instruction_sext_in[15:0]};
        
    end
endmodule

//
module RegFile
(
    input clk_in, we,
    input [31:0] instruction_regfile_in, 
    input [5:0] wn_regfile_in,
    input [31:0] d_regfile_in,
    output [31:0] qa, qb
   
);
    reg [31:0] registers [31:0];
    integer i;
    reg [5:0] rs_reg, rt_reg;
    reg [31:0] qa_reg, qb_reg;
    
    assign qa = qa_reg;
    assign qb = qb_reg;
    
    initial
    begin
        for( i = 0; i < 32; i = i + 1)
        begin
            registers[i] = 32'h0x0x0x0x;
        end 
         registers[1]   = 32'h00000000;
         registers[2]   = 32'hA00000AA;
         registers[3]   = 32'h10000011;
         registers[4]  = 32'h20000022;
         registers[5]  = 32'h30000033;
         registers[6]  = 32'h40000044;
         registers[7]  = 32'h50000055;
         registers[8]  = 32'h60000066;
         registers[9]  = 32'h70000077;
         registers[10]  = 32'h80000088;
         registers[11]  = 32'h90000099;
         
    end
    
    always @(posedge clk_in)
    begin
        if(clk_in)
        begin
            rs_reg = instruction_regfile_in[25:21];
            rt_reg = instruction_regfile_in[20:16];
            
            qa_reg = registers[rs_reg];
            qb_reg = registers[rt_reg];
       end
    end
    always @(negedge clk_in)
    begin
       if(we)
       begin
            registers[wn_regfile_in] = d_regfile_in;
       end
    end
endmodule

module IDEXE
(
    input clk_in,
    input wreg_idexe_in, memtoreg_idexe_in, wmem_idexe_in, aluimm_idexe_in,
    input [3:0] aluC_idexe_in,
    input [5:0] rdrt_idexe_in, 
    input [31:0] qa_idexe_in, qb_idexe_in, sext_imm_in,
    
    output reg ewreg_idexe_out, ememtoreg_idexe_out, ewmem_idexe_out, aluimm_idexe_out,
    output reg [3:0] ealuC_idexe_out,
    output reg [5:0] rdrt_idexe_out, 
    output reg [31:0] qa_idexe_out, qb_idexe_out, sext_imm_out
);

    always @(clk_in)
    begin
        if(clk_in)
        begin
             ewreg_idexe_out        <= wreg_idexe_in;
             ememtoreg_idexe_out    <= memtoreg_idexe_in;
             ewmem_idexe_out        <= wmem_idexe_in;
             aluimm_idexe_out       <= aluimm_idexe_in;
             ealuC_idexe_out        <= aluC_idexe_in;
             rdrt_idexe_out         <= rdrt_idexe_in;
             qa_idexe_out           <= qa_idexe_in;
             qb_idexe_out           <= qb_idexe_in;
             sext_imm_out           <= sext_imm_in;
        end
    end 
endmodule


module MuxExe
(
  input [31:0] qb_muxEXE_in, sext_muxEXE_in,
  input ealuimm_muxEXE_in,
  output [31:0] muxEXE_out
);

    reg [31:0] reg_muxEXE_out;
    
    assign muxEXE_out = reg_muxEXE_out;
    
    always @(*)
    begin
        if ( ealuimm_muxEXE_in )
        begin
            reg_muxEXE_out = sext_muxEXE_in;
        end
        else
        begin
            reg_muxEXE_out = qb_muxEXE_in;
        end
    end 
        

endmodule


module AluExe
(
    input [31:0] qa_aluEXE_in, muxEXE_aluEXE_in,
    input [3:0] aluC_aluEXE_in,
    output [31:0] aluEXE_out
);
    reg [31:0] reg_aluEXE_out;
    assign aluEXE_out = reg_aluEXE_out;
    
    always@(*)
    begin
        case (aluC_aluEXE_in) 
           4'd0 : reg_aluEXE_out = qa_aluEXE_in & muxEXE_aluEXE_in;  // bit-wise and
           4'd1 : reg_aluEXE_out = qa_aluEXE_in | muxEXE_aluEXE_in;  // bit-wise inclusive or 
           4'd2 : reg_aluEXE_out = qa_aluEXE_in + muxEXE_aluEXE_in;  // addition
           4'd6 : reg_aluEXE_out = qa_aluEXE_in - muxEXE_aluEXE_in;  // subtraction
           4'd12: reg_aluEXE_out = qa_aluEXE_in ^ muxEXE_aluEXE_in; //xor
           default : reg_aluEXE_out = 32'b0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x;   
        endcase
    end
endmodule

module ExeMem
(
    input clk_in,
    input ewreg_exemem_in, ememtoreg_exemem_in, ewmem_exemem_in,
    input [5:0] rdrt_exemem_in,
    input [31:0] alu_exemem_in, qb_exemem_in,
    
    output ewreg_exemem_out, ememtoreg_exemem_out, ewmem_exemem_out,
    output [5:0] rdrt_exemem_out,
    output [31:0] alu_exemem_out, qb_exemem_out
);

    reg ewreg_exemem_reg, ememtoreg_exemem_reg, ewmem_exemem_reg;
    reg [5:0] rdrt_exemem_reg;
    reg [31:0] alu_exemem_reg, qb_exemem_reg;
    
    assign ewreg_exemem_out     = ewreg_exemem_reg;
    assign ememtoreg_exemem_out = ememtoreg_exemem_reg;
    assign ewmem_exemem_out     = ewmem_exemem_reg; 
    assign rdrt_exemem_out      = rdrt_exemem_reg; 
    assign alu_exemem_out       = alu_exemem_reg;
    assign qb_exemem_out        = qb_exemem_reg;
    
    always @( posedge clk_in )
    begin
        if(clk_in)
        begin
            ewreg_exemem_reg        = ewreg_exemem_in;
            ememtoreg_exemem_reg    = ememtoreg_exemem_in;
            ewmem_exemem_reg        = ewmem_exemem_in;
            rdrt_exemem_reg         = rdrt_exemem_in; 
            alu_exemem_reg          = alu_exemem_in;
            qb_exemem_reg           = qb_exemem_in;
        end
    end           
            
endmodule

module DataMem
(
    input we_datamem_in, 
    input [31:0] a_datamem_in, d_datamem_in,
    output [31:0] do_datamem_out
    
);
    reg [31:0] datamem [511:0];
    reg [31:0] do_datamem_reg_out;
    assign do_datamem_out = do_datamem_reg_out;
    
    initial
    begin
       
        datamem[0]  = 32'hA00000AA;
        datamem[4]  = 32'h10000011;
        datamem[8]  = 32'h20000022;
        datamem[12] = 32'h30000033;
        datamem[16] = 32'h40000044;
        datamem[20] = 32'h50000055;
        datamem[24] = 32'h60000066;
        datamem[28] = 32'h70000077;
        datamem[32] = 32'h80000088;
        datamem[36] = 32'h90000099;
    end
    
    always @(*)
    begin
        if(we_datamem_in)
        begin
            datamem[a_datamem_in] = d_datamem_in;
        end
        else 
        begin
            do_datamem_reg_out = datamem[a_datamem_in];
        end
    end
    
endmodule

module MemWb
(
    
    input clk_in, mwreg_memwb_in, mmtoreg_memwb_in,
    input [5:0] rdrt_memwb_in,
    input [31:0] alu_memwb_in, do_memwb_in,
    
    output reg mwreg_memwb_out, mmtoreg_memwb_out,
    output reg [5:0] rdrt_memwb_out,
    output reg [31:0] alu_memwb_out, do_memwb_out
);

    always @(posedge clk_in)
    begin
        if(clk_in)
        begin 
            mwreg_memwb_out     = mwreg_memwb_in;
            mmtoreg_memwb_out   = mmtoreg_memwb_in;
            rdrt_memwb_out      = rdrt_memwb_in;
            alu_memwb_out       = alu_memwb_in;
            do_memwb_out        = do_memwb_in;
        end
    end

endmodule

module WbMux
(
    input wmtoreg_WbMux_in,
    input [31:0] alu_WbMux_in, do_WbMux_in,
    output reg [31:0] wbMux_out
);

    always @(*)
    begin
        if(wmtoreg_WbMux_in)
        begin
            wbMux_out = do_WbMux_in;
        end
        else
        begin
            wbMux_out = alu_WbMux_in;
        end
    end
endmodule

module DaMux
(
    input [1:0] fwda,
    input [31:0] qa_regFileOut, r_aluOut, r_memRegOut, do_dataMemOut,
    output reg [31:0] daMux_out
);

    always @(*)
    begin
        case (fwda)
            2'd0:       daMux_out <= qa_regFileOut;
            2'd1:       daMux_out <= r_aluOut;
            2'd2:       daMux_out <= r_memRegOut;
            2'd3:       daMux_out <= do_dataMemOut;
            default:    daMux_out <= 32'h1x1x1x1x;
        endcase
    end
endmodule

module DbMux
(
    input [1:0] fwdb,
    input [31:0] qb_regFileOut, r_aluOut, r_memRegOut, do_dataMemOut,
    output reg [31:0] dbMux_out
);

    always @(*)
    begin
        case (fwdb)
            2'd0:       dbMux_out <= qb_regFileOut;
            2'd1:       dbMux_out <= r_aluOut;
            2'd2:       dbMux_out <= r_memRegOut;
            2'd3:       dbMux_out <= do_dataMemOut;
            default:    dbMux_out <= 32'h1x1x1x1x;
        endcase
    end
endmodule

