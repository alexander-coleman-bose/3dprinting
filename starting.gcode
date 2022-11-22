; Starting script
; Ender-3 V2 Neo

M117 Initializing
M300 P30 ; chirp
G4 P120 ; delay 120 ms
M300 P30 ; chirp
G4 P120 ; delay 120 ms
M300 P30 ; chirp
; Set coordinate modes
G90 ; use absolute coordinates
M83 ; extruder relative mode
M413 S0 ; disable Power-loss recovery https://www.youtube.com/watch?v=84cDVu1Q6rk

; Reset speed and extrusion rates
M200 D0 ; disable volumetric e
M220 S100 ; reset speed
M221 S100 ; reset extrusion rate

; Home
M117 Homing
M300 P30 ; chirp
G4 P120 ; delay 120 ms
M300 P30 ; chirp
G28 ; home all
; G29 ; Automatic bed-leveling routine

; Final warmup routine
M117 Final warmup
G0 Z5; Raise nozzle
M140 S[first_layer_bed_temperature] ; set bed final temp
M104 S[first_layer_temperature] ; set extruder final temp
M109 S[first_layer_temperature] ; wait for extruder final temp
M190 S[first_layer_bed_temperature] ; wait for bed final temp

; Prime line routine
M300 P30 ; chirp
G4 P120 ; delay 120 ms
M300 P30 ; chirp
G4 P120 ; delay 120 ms
M300 P30 ; chirp
M117 Printing prime line
G0 X5 Y5 F6000.0 ; Go to (5, 5)
G0 Z0.3 F1000.0
G92 E0.0 ; reset extrusion distance
G1 E2 F1000 ; de-retract and push ooze

G1 X100 F1500.0 E10 ; Draw the first line
G1 Y5.3 F5000.0 ; Move to side a little
G1 X5 F1500.0 E10 ; Draw the second line
G1 X10 ; Wipe 5 mm
G1 X5 ; Wipe back
G1 Y15 Z0.1 ; Coast down to 0.1 mm over 10 mm
G92 E0 ; Reset Extruder

; G1 X25.0 E6  F1000.0 ; fat 20mm intro line @ 0.30
; G1 X65.0 E3.2  F1000.0 ; thin +40mm intro line @ 0.08
; G1 X105.0 E6  F1000.0 ; fat +40mm intro line @ 0.15
; G1 E-5 F3000; retract to avoid stringing
; G1 X103 E0 F1000.0 ; -2mm wipe action to avoid string
; G1 X115 E0 F1000.0 ; +10mm intro line @ 0.00
; G1 E4 F1500 ; de-retract
; G92 E0.0 ; reset extrusion distance
; G1 Z2.0 F3000 ; Move Z Axis up to prevent scratching of Heat Bed
; G1 X115 Y10 Z0.25 F5000.0 ; Move over to prevent blob squish
