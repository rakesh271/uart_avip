all:
	make clean; make compile; make simulate; make clean;

compile:
	vlib work; 
	vlog -sv \
	-l uart_compile.log \
	+incdir+../../src/globals/ \
	+incdir+../../src/hvl_top/master/ \
	+incdir+../../src/hdl_top/master_agent_bfm/  \
  +incdir+../../src/hvl_top/test/virtual_sequences/ \
	+incdir+../../src/hvl_top/env \
	+incdir+../../src/hvl_top/slave \
	+incdir+../../src/hvl_top/test \
	+incdir+../../src/hdl_top/slave_agent_bfm \
	+incdir+../../src/hdl_top/uart_interface \
	../../src/globals/uart_globals_pkg.sv \
	../../src/hvl_top/master/uart_master_pkg.sv \
	../../src/hvl_top/slave/uart_slave_pkg.sv \
	../../src/hvl_top/env/uart_env_pkg.sv \
	../../src/hvl_top/test/virtual_sequences/uart_virtual_seq_pkg.sv \
	../../src/hvl_top/test/test_pkg.sv \
	../../src/hdl_top/spi_interface/spi_if.sv \
	../../src/hdl_top/slave_agent_bfm/slave_driver_bfm.sv \
	../../src/hdl_top/slave_agent_bfm/slave_monitor_bfm.sv \
	../../src/hdl_top/slave_agent_bfm/slave_agent_bfm.sv \
	../../src/hdl_top/hdl_top.sv \
	../../src/hvl_top/hvl_top.sv 

# TODO 
# Add the master HDL files when done
simulate:
	vsim -novopt work.hvl_top work.hdl_top -l uart.log -c -do "log -r /*; add wave -r /*; run -all;" \
	-wlf waveform.wlf
	# To open the waveform use the below command 
	# vsim -view waveform.wlf &

clean:
	rm -rf work/ transcript waveform.wlf
	rm -rf uart_compile.log
	rm -rf uart.log
