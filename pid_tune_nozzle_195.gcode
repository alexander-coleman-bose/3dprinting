; PID autotune nozzle for 195C
; Ender-3 V2 Neo

M503 ; Print current firmware settings

M104 S195 ; Set hot-end temp to 195C
G28 ; Auto-home
G90 ; use absolute coordinates
G0 X110 Y110 Z5 F5000; Move to just above the middle of the build plate
M109 S195 ; Wait until hot-end reaches 195C

M83 ; Set Extruder to relative
G1 E-5 F100 ; Retract 5 mm slowly
G92 E0 ; Set current extruder position as 0

M303 C10 S195 U1 ; 10 cycles of PID tune

M503 ; Print current firmware settings
M500 ; Save the results

; Done!
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
