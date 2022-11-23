; leveling.gcode
; Ender-3 V2 Neo

; Startup chirps
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms

; Set initial warmup temps
M117 Nozzle preheat
M104 S150 ; set extruder no-ooze temp
M140 S60 ; set bed warmup temp
; Nozzle warmup before home to avoid driving hardened ooze into PEI surface
M109 S150 ; wait for extruder no-ooze warmup temp before mesh bed leveling
M190 S60 ; wait for bed temp
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms

M117 Equalizing Temps
G4 S120 ; wait 120 seconds at temp
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
