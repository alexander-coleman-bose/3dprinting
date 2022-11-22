; Ending Script
; Ender-3 V2 Neo
G91 ; Relative positioning
G1 E-2 F2700 ; Retract a bit
G1 E-2 Z0.2 F2400 ; Retract and raise Z
G1 X5 Y5 F3000 ; Wipe out
G1 Z10 ; Raise Z more
G90 ; Absolute positioning

G1 X0 Y220 ; Present print
M106 S0 ; Turn-off fan
M104 S0 ; Turn-off hotend
M140 S0 ; Turn-off bed

M84 ; Disable all steppers

; Done
M300 P30 ; chirp
G4 P120 ; delay 120 ms
M300 P30 ; chirp
G4 P120 ; delay 120 ms
M300 P30 ; chirp
G4 P120 ; delay 120 ms
M300 P30 ; chirp
G4 P120 ; delay 120 ms
M300 P30 ; chirp