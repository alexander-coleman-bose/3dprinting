; Unblock/Unlock
; Ender-3 V2 Neo
G91 ; Set all axes to relative
G1 Z10 ; Raise Z more

; Return to open Z
G90 ; use absolute coordinates
G0 X0 Y220 Z50 F5000 ; Raise hot-end and present bed for cleaning/inspection
M84 ; Disable steppers
