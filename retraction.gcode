; Full Retraction (PLA)
; Ender-3 V2 Neo
M104 S195 ; Set hot-end temp to 195
G90 ; use absolute coordinates
G0 X220
M109 S195 ; Wait until hot-end reaches 195
; G92 E0 ; Set current extruder position as 0

M83 ; Set Extruder to relative
G1 E-5 F1000 ; Retract 5 mm slowly
G1 E-400 F2000 ; Retract 400 mm fast
M84 E; Disable Extruder stepper
