`ifndef SLAVE_MONITOR_BFM_INCLUDED_
`define SLAVE_MONITOR_BFM_INCLUDED_

//--------------------------------------------------------------------------------------------
// Module       : Slave Monitor BFM
// Description  : Connects the slave monitor bfm with the monitor proxy
//--------------------------------------------------------------------------------------------

module slave_monitor_bfm (uart_if.MON_MP intf);
  
  //-------------------------------------------------------
  // Creating the handle for proxy driver
  //-------------------------------------------------------
  import uart_slave_pkg::slave_monitor_proxy;
  slave_monitor_proxy slave_mon_proxy;

  initial begin
    $display("Slave Monitor BFM");
  end

endmodule : slave_monitor_bfm

`endif
