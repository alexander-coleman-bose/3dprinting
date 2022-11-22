; Unblock/Unlock
; Ender-3 V2 Neo
G91 ; Set all axes to relative
G1 Z10 ; Raise Z 10 mm

; Return to open Z
G90 ; use absolute coordinates
G0 X0 Y220 F5000 ; Return hot-end and present bed for cleaning/inspection
M84 ; Disable steppers

; Done
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
M300 P30 ; chirp 30 ms
G4 P120 ; delay 120 ms
