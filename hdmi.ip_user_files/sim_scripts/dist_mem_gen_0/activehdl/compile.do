vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"D:/FPGA/Xilinx/2021.1/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/FPGA/Xilinx/2021.1/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../hdmi.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.vhdl" \


vlog -work xil_defaultlib \
"glbl.v"

