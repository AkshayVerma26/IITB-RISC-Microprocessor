transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/Testbench.vhdl}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/DUT.vhdl}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/WB_Stage.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/RR_EXE.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/muxes.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/MEM_WB.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/memory.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/IM.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/IF_ID.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/ID_stage.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/ID_RR.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/EXE_MEM.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/ALU.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/Top_Level_Entity.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/RR_stage.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/Reg_File.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/MEM_Stage.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/FU.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/EX_stage.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/Branch_Control.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/IF_Stage.vhd}

vcom -93 -work work {D:/IITB/EE 309 Microprocessor/ProjectBouns/IITB_RISC_Pipelined/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
