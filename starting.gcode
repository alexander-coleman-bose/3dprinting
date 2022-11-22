; Starting script
; Ender-3 V2 Neo

M117 Initializing
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
; Set coordinate modes
G90 ; use absolute coordinates
M83 ; extruder relative mode

; Reset speed and extrusion rates
M200 D0 ; disable volumetric e
M220 S100 ; reset speed
M221 S100 ; reset extrusion rate

; Home
M117 Homing
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
G28 ; home all
; G29 ; Automatic bed-leveling routine

; Final warmup routine
M117 Final warmup
G0 Z5; Raise nozzle
M140 S{first_layer_bed_temperature[0]} ; set bed final temp
M104 S{first_layer_temperature[0]} ; set extruder final temp
M190 S{first_layer_bed_temperature[0]} ; wait for bed final temp
M109 S{first_layer_temperature[0]} ; wait for extruder final temp

; Prime line routine
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M117 Printing prime line
G0 X10 Y2 F6000 ; Go to (10, 2)
G0 Z0.28 F250 ; Lower nozzle to priming position
G1 E2 F1000 ; de-retract and push blob
G92 E0 ; reset extrusion distance

G1 X140 Y2      F1500   E10 ; Draw the first line
G1 X140 Y2.3    F5000       ; Move to side a little
G92 E0 ; reset extrusion distance
G1 X15  Y2.3    F1200   E10 ; Draw the second line
G1 X20  Y2.3    F1500       ; Wipe 5 mm
G1 X15  Y2.3    F1500       ; Wipe back
G1 X5   Y12     Z0.1        ; Coast down to 0.1 mm over 10 mm
G92 E0 ; Reset Extruder
