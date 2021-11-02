`ifndef UART_MASTER_COVERAGE_INCLUDED_
`define UART_MASTER_COVERAGE_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: uart_master_coverage
// <Description_here>
//--------------------------------------------------------------------------------------------
class uart_master_coverage extends uvm_subscriber;
  `uvm_component_utils(uart_master_coverage)

  //Creating handle for uart_master transacion coverage
  master_tx master_tx_cov_data;

  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "uart_master_coverage", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);

endclass : uart_master_coverage

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - uart_master_coverage
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function uart_master_coverage::new(string name = "uart_master_coverage", uvm_component parent = null);
  super.new(name, parent);
endfunction : new

//--------------------------------------------------------------------------------------------
// Function: build_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void uart_master_coverage::build_phase(uvm_phase phase);
  super.build_phase(phase);
endfunction : build_phase

`endif
