//--------------------------------------------------------------------------------------------
// Class: seq extended from base class
//--------------------------------------------------------------------------------------------

class slave_sequence_1 extends slave_sequence;

  //-------------------------------------------------------
  // Factory Registration is done to override the object
  //-------------------------------------------------------
  `uvm_object_utils(slave_sequence_1)

  //-------------------------------------------------------
  // Externally defined tasks and functions
  //-------------------------------------------------------
  extern function new(string name = "slave_sequence_1");
  extern virtual task body();

endclass : slave_sequence_1

//--------------------------------------------------------------------------------------------
// Construct: new
// Initializes sseq1 class object 
//
// Parameters:
//  name - sseq1
//--------------------------------------------------------------------------------------------
function slave_sequence_1::new(string name = "slave_sequence_1");
  super.new(name);
endfunction : new

//-------------------------------------------------------
// task:body
//  To create request which is comes from driver
//-------------------------------------------------------

task slave_sequence_1::body();

endtask : body

