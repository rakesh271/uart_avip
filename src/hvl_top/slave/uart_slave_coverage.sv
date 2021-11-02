`ifndef UART_SLAVE_COVERAGE_INCLUDED_
`define UART_SLAVE_COVERAGE_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: uart_slave_coverage
// <Description_here>
//--------------------------------------------------------------------------------------------
class uart_slave_coverage extends uvm_subscriber;
  `uvm_component_utils(uart_slave_coverage)

  //Creating handle for uart_slave transacion coverage
  slave_tx slave_tx_cov_data;

  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "uart_slave_coverage", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);

endclass : uart_slave_coverage

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - uart_slave_coverage
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function uart_slave_coverage::new(string name = "uart_slave_coverage", uvm_component parent = null);
  super.new(name, parent);
endfunction : new

//--------------------------------------------------------------------------------------------
// Function: build_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void uart_slave_coverage::build_phase(uvm_phase phase);
  super.build_phase(phase);
endfunction : build_phase

`endif
