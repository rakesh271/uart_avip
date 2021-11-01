//-------------------------------------------------------
// master driver BFM
//-------------------------------------------------------

module master_driver_bfm(uart_if intf);

virtual uart_if vif;

initial 
  begin
    $display("Master driver BFM");
  end
endmodule
