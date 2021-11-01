`ifndef ENV_INCLUDED_
`define ENV_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: env
// Description:
// Environment contains slave_agent_top and slave_virtual_sequencer
//--------------------------------------------------------------------------------------------
class env extends uvm_env;

  //-------------------------------------------------------
  // Factory registration to create uvm_method and override it
  //-------------------------------------------------------
  `uvm_component_utils(env)
  
  env_config env_cfg_h;
  //-------------------------------------------------------
  // declaring master handles
  //-------------------------------------------------------
  master_agent master_agent_h;
  
  //-------------------------------------------------------
  // Declaring slave handles
  //-------------------------------------------------------
  slave_agent slave_agent_h;
 
  virtual_sequencer virtual_seqr_h;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "env", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual function void end_of_elaboration_phase(uvm_phase phase);
  extern virtual function void start_of_simulation_phase(uvm_phase phase);
  extern virtual task run_phase(uvm_phase phase);

endclass : env

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - env
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function env::new(string name = "env",uvm_component parent = null);
  super.new(name, parent);
endfunction : new

//--------------------------------------------------------------------------------------------
// Function: build_phase
// Description:
//  Create required components
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void env::build_phase(uvm_phase phase);
  super.build_phase(phase);

  `uvm_info(get_full_name(),"ENV: build_phase",UVM_LOW);

  if(!uvm_config_db #(env_config)::get(this,"","env_config",env_cfg_h)) begin
   `uvm_fatal("FATAL_SA_AGENT_CONFIG", $sformatf("Couldn't get the slave_agent_config from config_db"))
  end

  master_agent_h=master_agent::type_id::create("master_agent_h",this);
  slave_agent_h = slave_agent::type_id::create("slave_agent_h",this);

  if(env_cfg_h.has_virtual_sqr) begin
    virtual_seqr_h = virtual_sequencer::type_id::create("virtual_seqr_h",this);
  end


endfunction : build_phase

//--------------------------------------------------------------------------------------------
// Function: connect_phase
// Description:
//  To connect driver and sequencer
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void env::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
endfunction : connect_phase

//--------------------------------------------------------------------------------------------
// Function: end_of_elaboration_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void env::end_of_elaboration_phase(uvm_phase phase);
  super.end_of_elaboration_phase(phase);
endfunction  : end_of_elaboration_phase

//--------------------------------------------------------------------------------------------
// Function: start_of_simulation_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void env::start_of_simulation_phase(uvm_phase phase);
  super.start_of_simulation_phase(phase);
endfunction : start_of_simulation_phase

//--------------------------------------------------------------------------------------------
// Task: run_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
task env::run_phase(uvm_phase phase);

  phase.raise_objection(this, "env");

  super.run_phase(phase);

  // Work here
  // ...

  phase.drop_objection(this);

endtask : run_phase

`endif

