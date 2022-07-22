transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IITB/EE 309 Microprocessor/Project1/IITB_RISC_Multicycle/Testbench.vhdl}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/Project1/IITB_RISC_Multicycle/DUT.vhdl}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/Project1/IITB_RISC_Multicycle/Top_Level_Entity.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/Project1/IITB_RISC_Multicycle/muxes.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/Project1/IITB_RISC_Multicycle/memory.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/Project1/IITB_RISC_Multicycle/Datapath.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/Project1/IITB_RISC_Multicycle/ALU.vhd}
vcom -93 -work work {D:/IITB/EE 309 Microprocessor/Project1/IITB_RISC_Multicycle/Reg_File.vhd}

vcom -93 -work work {D:/IITB/EE 309 Microprocessor/Project1/IITB_RISC_Multicycle/Top_Level_Entity.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
