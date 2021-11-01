
  module master_agent_bfm(uart_if intf);

   initial
   begin
      $display("Master Agent BFM");
   end
   
   master_driver_bfm master_drv_h(intf);
   master_monitor_bfm master_mon_h(intf);

  endmodule
