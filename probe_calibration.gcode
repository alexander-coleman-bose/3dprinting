; Calibrating probe offset script
; Ender-3 V2 Neo w/ Pro firmware, Sprite Pro, & CR-Touch

; Get the current EEPROM settings
M503 C ; Save the embedded configuration ZIP file to the SD Card or Flash Drive (not sure if supported on E3V2N)
M420 V ; Get current bed leveling state & mesh, if valid

; Heat the bed to 60C, but don't wait for it
M140 S60

; Reset everything
G28 ; Auto-home
G90 ; Absolute coordinate mode
M420 S0 ; Disable bed-leveling
M206 Z0 ; Set Z-axis home offset to 0.0

; Get the Probe Z-offset
M401 ; Deploy the probe
G0 Z0 ; Move to Z=0, which should trigger the probe
; Note the reported trigger height (Z=?)
M402 ; Stow the probe
M851 Z-??? ; Use the negative of the trigger height to set the probe Z-offset
M500 ; Save to EEPROM

; Get the Probe XY-offset
G0 X30 Y30 Z20 ; Move to corner
; Place a sheet of paper under the nozzle
G0 Z10 ; Move down, keep moving down until nozzle is touching paper
; Mark the paper where the nozzle touches
M114 ; Report current position and note X/Y
M401 ; Deploy the probe
; Job the head until the probe is over the mark on the paper where the nozzle was
M114 ; Report the new position and note X/Y
M402 ; Stow the probe
M851 X-??? Y-??? ; Probe XY offset = old XY - new XY
M500 ; Save to EEPROM

; Home again
G28 ; auto-home
