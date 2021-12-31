module HomeAutomationSystem( clk,Rst,SFD,SRD,SW,SFA,ST,
                             fdoor,rdoor,winbuzz,alarmbuzz,cooler,heater,display);
    input Rst,SFD,SRD,SW,SFA,clk;
    input [7:0]ST;                       
    output fdoor,rdoor,winbuzz,alarmbuzz,cooler,heater; //one if they are done
    output [2:0] display;
    reg fdoor,rdoor,winbuzz,alarmbuzz,cooler,heater;
    reg [2:0] nextCheck,display;    

    always @(posedge clk) begin
        if(Rst)begin
            fdoor<=0;
            rdoor<=0;
            winbuzz<=0;
            alarmbuzz<=0;
            cooler<=0;
            heater<=0;
            display<=3'b000;
            nextCheck<=3'b000;  //0-->start, 1-->front, 2-->rear, 3-->fire alarm, 4-->window, 5-->temp, then return back to front
        end
        //All Signals = 0
        else if(SFD==0&SRD==0&SW==0&SFA==0&(ST>=50&ST<=70))begin
            fdoor<=0;
            rdoor<=0;
            alarmbuzz<=0;
            winbuzz<=0;
            cooler<=0;
            heater<=0;
            display<=3'b000;
            nextCheck=3'b000;
        end

        //fist time 
        else if(SFD&nextCheck==0)begin
            fdoor<=1;
            rdoor<=0;
            alarmbuzz<=0;
            winbuzz<=0;
            cooler<=0;
            heater<=0;
            nextCheck<=3'b010;
            display<=3'b001;
        end
        else if(SRD&nextCheck==0)begin
            rdoor<=1;
            fdoor<=0;
            alarmbuzz<=0;
            winbuzz<=0;
            cooler<=0;
            heater<=0;
            nextCheck<=3'b011;
            display<=3'b010;
        end
        else if(SFA&nextCheck==0)begin
            alarmbuzz<=1;
            fdoor<=0;
            rdoor<=0;
            winbuzz<=0;
            cooler<=0;
            heater<=0;
            nextCheck<=3'b100;
            display<=3'b011;
        end
        else if(SW&nextCheck==0)begin
            winbuzz<=1;
            fdoor<=0;
            rdoor<=0;
            alarmbuzz<=0;
            cooler<=0;
            heater<=0;
            nextCheck<=3'b101;
            display<=3'b100;
        end
        else if(ST>70&nextCheck==0)begin
            cooler<=1;
            fdoor<=0;
            rdoor<=0;
            alarmbuzz<=0;
            winbuzz<=0;
            heater<=0;
            nextCheck<=3'b001;
            display<=3'b101;
        end
        else if(ST<50&nextCheck==0)begin
            heater<=1;
            fdoor<=0;
            rdoor<=0;
            alarmbuzz<=0;
            winbuzz<=0;
            cooler<=0;
            nextCheck<=3'b001;
            display<=3'b101;
        end
        
        //After first time
        else if(SFD&nextCheck==1)begin
            fdoor<=1;
            rdoor<=0;
            alarmbuzz<=0;
            winbuzz<=0;
            cooler<=0;
            heater<=0;
            nextCheck<=3'b010;
            display<=3'b001;
        end
        else if(SRD&nextCheck==2)begin
            rdoor<=1;
            fdoor<=0;
            alarmbuzz<=0;
            winbuzz<=0;
            cooler<=0;
            heater<=0;
            nextCheck<=3'b011;
            display<=3'b010;
        end
        else if(SFA&nextCheck==3)begin
            alarmbuzz<=1;
            fdoor<=0;
            rdoor<=0;
            winbuzz<=0;
            cooler<=0;
            heater<=0;
            nextCheck<=3'b100;
            display<=3'b011;
        end
        else if(SW&nextCheck==4)begin
            winbuzz<=1;
            fdoor<=0;
            rdoor<=0;
            alarmbuzz<=0;
            cooler<=0;
            heater<=0;
            nextCheck<=3'b101;
            display<=3'b100;
        end
        else if(ST>70&nextCheck==5)begin
            cooler<=1;
            fdoor<=0;
            rdoor<=0;
            alarmbuzz<=0;
            winbuzz<=0;
            heater<=0;
            nextCheck<=3'b001;
            display<=3'b101;
        end
        else if(ST<50&nextCheck==5)begin
            heater<=1;
            fdoor<=0;
            rdoor<=0;
            alarmbuzz<=0;
            winbuzz<=0;
            cooler<=0;
            nextCheck<=3'b001;
            display<=3'b101;
        end
        else if(nextCheck!=6)begin
            nextCheck<=nextCheck+1;
            fdoor<=0;
            rdoor<=0;
            alarmbuzz<=0;
            winbuzz<=0;
            cooler<=0;
            heater<=0;
            display<=3'b000;
        end
        else if(nextCheck==6)begin
            nextCheck<=3'b001;
            fdoor<=0;
            rdoor<=0;
            alarmbuzz<=0;
            winbuzz<=0;
            cooler<=0;
            heater<=0;
            display<=3'b000;
        end
    end
endmodule
