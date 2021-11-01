`ifndef TEST_PKG_INCLUDED_
`define TEST_PKG_INCLUDED_


//--------------------------------------------------------------------------------------------
// Package: Test
// Description:
// Includes all the files written to run the simulation
//--------------------------------------------------------------------------------------------
package test_pkg;

  //-------------------------------------------------------
  // Import uvm package
  //-------------------------------------------------------
  `include "uvm_macros.svh"
  import uvm_pkg::*;

  //-------------------------------------------------------
  // Importing the required packages
  //-------------------------------------------------------
  import uart_globals_pkg::*;
  import uart_master_pkg::*;
  import uart_slave_pkg::*;
  import uart_env_pkg::*;
  
  `include "uart_virtual_seq_base.sv"
  `include "uart_virtual_seqs.sv"
  
  `include "base_test.sv"

endpackage :test_pkg

`endif
