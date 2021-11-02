//--------------------------------------------------------------------------------------------
// Module      : HDL Top
// Description : Has a interface and slave agent bfm.
//--------------------------------------------------------------------------------------------

//-------------------------------------------------------
// Including UART interface and Slave Agent BFM Files
//-------------------------------------------------------
module hdl_top;

  bit rst;

  //-------------------------------------------------------
  // Display statement for HDL_TOP
  //-------------------------------------------------------
  initial begin
    $display("HDL_TOP");
  end

  //-------------------------------------------------------
  // System Reset Generation
  //-------------------------------------------------------
  initial begin
    rst = 1'b0;
    #80;
    rst = 1'b1;
  end

  //-------------------------------------------------------
  // UART Interface Instantiation
  //-------------------------------------------------------
  uart_if intf();

  //-------------------------------------------------------
  // UART BFM Agent Instantiation
  //-------------------------------------------------------
  master_agent_bfm master_agent_bfm_h(intf);

  //-------------------------------------------------------
  // SPI BFM Agent Instantiation
  //-------------------------------------------------------
  slave_agent_bfm slave_agent_bfm_h(intf);

endmodule : hdl_top
