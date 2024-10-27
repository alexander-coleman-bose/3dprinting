; Ending Script
; Orca slicer
; Morpheus

G91 ; Relative positioning
G1 E-2 F2700 ; Retract a bit
G1 E-2 Z0.2 F2400 ; Retract a bit more and raise Z
G1 X5 Y5 F3000 ; Wipe out
G1 Z5 ;Raise Z more

G90 ; Absolute positioning
; {if max_layer_z < max_print_height}G1 Z{z_offset+min(max_layer_z+2, max_print_height)} F600 ; Move print head up{endif}
; G1 X5 Y{print_bed_max[1]*0.85} F{travel_speed*60} ; present print
G1 X0 Y235 ;Present print

M106 S0 ; Turn-off fan
M104 S0 ; Turn-off hotend
M140 S0 ; Turn-off bed
M84 ; Disable all steppers

; Done
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms

M117 Print complete
