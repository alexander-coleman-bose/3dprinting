; Full Retraction (PLA)
; Ender-3 V2 Neo

M104 S200 ; Set hot-end temp to 200
G28 ; Auto-home
G90 ; use absolute coordinates
G0 X220 Y110 Z150; Straighten out Bowden tube, center build plate, raise nozzle
M109 S200 ; Wait until hot-end reaches 200
; G92 E0 ; Set current extruder position as 0

M83 ; Set Extruder to relative
G1 E-5 F800 ; Retract 5 mm slowly
G1 E-500 F2000 ; Retract 500 mm fast
M84 E; Disable Extruder stepper

; Done!
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
