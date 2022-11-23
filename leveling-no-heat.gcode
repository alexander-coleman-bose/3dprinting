; leveling-no-heat.gcode
; Ender-3 V2 Neo

; Startup chirps
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms

; Home & Level at temp
M117 Leveling
G28 ; Auto-home
G29 ; Automatic bed-leveling routine

; Done!
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms

; Return to open Z
G90 ; use absolute coordinates
G0 X0 Y220 Z50 F5000 ; Raise hot-end and present bed for cleaning/inspection
M84 ; Disable steppers
