`ifndef MASTER_AGENT_INCLUDED_
`define MASTER_AGENT_INCLUDED_

//--------------------------------------------------------------------------------------------
// Class: master_agent
// <Description_here>
//--------------------------------------------------------------------------------------------
class master_agent extends uvm_agent;
  `uvm_component_utils(master_agent)

  // Variable: m_cfg
  // Declaring handle for master agent config class 
  master_agent_config m_cfg;
  master_sequencer m_sqr_h;
  master_driver_proxy m_drv_h;
  master_monitor_proxy m_mon_h;
  //-------------------------------------------------------
  // Externally defined Tasks and Functions
  //-------------------------------------------------------
  extern function new(string name = "master_agent", uvm_component parent = null);
  extern virtual function void build_phase(uvm_phase phase);
  extern virtual function void connect_phase(uvm_phase phase);
  extern virtual function void end_of_elaboration_phase(uvm_phase phase);
  extern virtual function void start_of_simulation_phase(uvm_phase phase);
  extern virtual task run_phase(uvm_phase phase);

endclass : master_agent

function  master_agent::new(string name="master_agent",uvm_component parent = null);
  super.new(name,parent);
endfunction : new

//--------------------------------------------------------------------------------------------
// Function: build_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void master_agent::build_phase(uvm_phase phase);
  super.build_phase(phase);

  if(!uvm_config_db #(master_agent_config)::get(this,"","master_agent_config",m_cfg)) begin
    `uvm_fatal("FATAL_MDP_MASTER_CFG_NOT_FOUND_CONFIG_DB","cannot get m_cfg from uvm_config");
  end


  if(m_cfg.is_active == UVM_ACTIVE) begin
    m_drv_h=master_driver_proxy::type_id::create("master_driver_proxy",this);
    m_sqr_h=master_sequencer::type_id::create("master_sequencer",this);
  end

  m_mon_h=master_monitor_proxy::type_id::create("master_monitor_proxy",this);
endfunction : build_phase

//--------------------------------------------------------------------------------------------
// Function: connect_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void master_agent::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  m_mon_h.m_cfg = m_cfg;
endfunction : connect_phase

//--------------------------------------------------------------------------------------------
// Function: end_of_elaboration_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void master_agent::end_of_elaboration_phase(uvm_phase phase);
  super.end_of_elaboration_phase(phase);
endfunction  : end_of_elaboration_phase

//--------------------------------------------------------------------------------------------
// Function: start_of_simulation_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
function void master_agent::start_of_simulation_phase(uvm_phase phase);
  super.start_of_simulation_phase(phase);
endfunction : start_of_simulation_phase

//--------------------------------------------------------------------------------------------
// Task: run_phase
// <Description_here>
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
task master_agent::run_phase(uvm_phase phase);

  phase.raise_objection(this, "master_agent");

  super.run_phase(phase);

  // Work here
  // ...

  phase.drop_objection(this);

endtask : run_phase

`endif

