; Starting script
; Prusa slicer
; Morpheus

M117 Initializing
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms

; Set coordinate modes
G90 ; use absolute coordinates
G92 E0 ; reset extrusion distance
M83 ; extruder relative mode

; Reset speed and extrusion rates
M200 D0 ; disable volumetric e
M220 S100 ; reset speed/feedrate
M221 S100 ; reset extrusion/flowrate

; Initial warmup routine
M117 Setting temps
G0 Z2 F1000; Raise nozzle
M140 S{first_layer_bed_temperature[0]} ; set bed final temp
M104 S{first_layer_temperature[0]} ; set extruder final temp

; Home
M117 Homing
G28 ; home all
; G29 ; Automatic bed-leveling routine

; Move to start position and wait for temperatures
G1 X6.0 Y8.0    Z2.0    F3000.0     ; Move to start position
M190 S{first_layer_bed_temperature[0]} ; wait for bed final temp
M109 S{first_layer_temperature[0]} ; wait for extruder final temp

; Prime line routine
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M117 Priming Nozzle
G92 E0 ; reset extrusion distance
G1 E2 F1000 ; de-retract and push blob
G92 E0 ; reset extrusion distance
G1 X6.0 Y8.0    Z0.28   F5000.0     ; Lower the nozzle to print position
G1 X6.0 Y188.0  Z0.28   F1500.0 E15 ; Draw the first line
G1 X6.3 Y188.0  Z0.28   F5000.0     ; Move to side a little
G1 X6.3 Y20     Z0.28   F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder

M117 Resetting Extruder
G92 E0 ; Reset Extruder
G1 E-1.0000 F1800 ;Retract a bit
G1 Z2.0 F3000 ;Move Z Axis up
G1 E0.0000 F1800

M117 Ready to print
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
