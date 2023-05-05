; Manual/assisted leveling script
; Ender-3 V2 Neo w/ CR-Touch

; Get the current EEPROM settings
M503 C ; Save the embedded configuration ZIP file to the SD Card or Flash Drive (not sure if supported on E3V2N)
M420 V ; Get current bed leveling state & mesh, if valid

; Heat the bed to 60C, but don't wait for it
M140 S60

G90 ; Absolute coordinate mode
M420 S0 ; Disable bed-leveling
M206 Z0 ; Set Z-axis home offset to 0.0
G29 P0 ; Dump existing bed-leveling mesh

; Auto-home
G28

; Four corners
G0  X5      Y5      Z0  F3000 ; -3.25
G0  X5      Y215    Z0  F3000
G0  X215    Y215    Z0  F3000
G0  X215    Y5      Z0  F3000

; Center
G0  X110    Y110    Z0  F3000

; ABL routine
G28 ; auto-home again
; G29 P1 J4 T0 ; Automatically probe a 4x4 grid of points and return a Topology map
