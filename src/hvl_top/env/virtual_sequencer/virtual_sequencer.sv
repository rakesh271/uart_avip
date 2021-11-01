`ifndef VIRTUAL_SEQUENCER_INCLUDED_
`define VIRTUAL_SEQUENCER_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: virtual_sequencer
// Description of the class.
// this class contains the handle of actual sequencer pointing towards them
//--------------------------------------------------------------------------------------------
class virtual_sequencer extends uvm_sequencer #(uvm_sequence_item);
  `uvm_component_utils(virtual_sequencer)

  master_sequencer master_seqr_h;
  slave_sequencer slave_seqr_h;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "virtual_sequencer", uvm_component parent=null);
  extern virtual function void build_phase(uvm_phase phase);
//  extern virtual task run_phase(uvm_phase phase);

endclass : virtual_sequencer

  //--------------------------------------------------------------------------------------------
  // Construct: new
  //initializes the mon class object
  //
  // Parameters:
  //  name - instance name of the  virtual_sequencer
  //  parent - parent under which this component is created
  //--------------------------------------------------------------------------------------------
  function virtual_sequencer::new(string name = "virtual_sequencer",uvm_component parent=null );
    super.new(name, parent);
  endfunction : new

  //--------------------------------------------------------------------------------------------
  // Function: build_phase
  // creates the required ports
  //
  // Parameters:
  //  phase - stores the current phase
  //--------------------------------------------------------------------------------------------
  function void virtual_sequencer::build_phase(uvm_phase phase);
    super.build_phase(phase);
    master_seqr_h=master_sequencer::type_id::create("master_seqr_h",this);
    slave_seqr_h=slave_sequencer::type_id::create("slave_seqr_h",this);
  endfunction : build_phase

`endif

