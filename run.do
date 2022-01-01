vsim -gui work.HomeAutomationSystem
# vsim -gui work.HomeAutomationSystem 
# Start time: 19:06:04 on Dec 30,2021
# Loading work.HomeAutomationSystem
add wave -position insertpoint  \
sim:/HomeAutomationSystem/Rst \
sim:/HomeAutomationSystem/SFD \
sim:/HomeAutomationSystem/SRD \
sim:/HomeAutomationSystem/SW \
sim:/HomeAutomationSystem/SFA \
sim:/HomeAutomationSystem/clk \
sim:/HomeAutomationSystem/ST \
sim:/HomeAutomationSystem/fdoor \
sim:/HomeAutomationSystem/rdoor \
sim:/HomeAutomationSystem/winbuzz \
sim:/HomeAutomationSystem/alarmbuzz \
sim:/HomeAutomationSystem/cooler \
sim:/HomeAutomationSystem/heater \
sim:/HomeAutomationSystem/display \
sim:/HomeAutomationSystem/nextCheck
force -freeze sim:/HomeAutomationSystem/Rst 1 0
force -freeze sim:/HomeAutomationSystem/clk 1 0, 0 {50 ps} -r 100
run
force -freeze sim:/HomeAutomationSystem/Rst 0 0
force -freeze sim:/HomeAutomationSystem/SFD 1 0
force -freeze sim:/HomeAutomationSystem/SRD 1 0
force -freeze sim:/HomeAutomationSystem/SW 1 0
force -freeze sim:/HomeAutomationSystem/SFA 1 0
force -freeze sim:/HomeAutomationSystem/ST 110000 0
run
run
run
run
run
run
force -freeze sim:/HomeAutomationSystem/Rst St0 0
force -freeze sim:/HomeAutomationSystem/SFD St1 0
force -freeze sim:/HomeAutomationSystem/SRD St1 0
force -freeze sim:/HomeAutomationSystem/SW St1 0
force -freeze sim:/HomeAutomationSystem/SFA St1 0
force -freeze sim:/HomeAutomationSystem/ST 1001011 0
run
run
run
run
run
force -freeze sim:/HomeAutomationSystem/Rst St0 0
force -freeze sim:/HomeAutomationSystem/SFD 0 0
force -freeze sim:/HomeAutomationSystem/SRD 0 0
force -freeze sim:/HomeAutomationSystem/SW 0 0
force -freeze sim:/HomeAutomationSystem/SFA 0 0
force -freeze sim:/HomeAutomationSystem/ST 111100 0
run
run
run
run
run
run


