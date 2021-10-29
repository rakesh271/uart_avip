//-------------------------------------------------------
// master driver BFM
//-------------------------------------------------------

module master_drv(uart_if intf);

virtual uart_if vif;

initial 
  begin
    $display("Master driver BFM")
  end
endmodule
