; Professional Firmware Configuration File
; Morpheus
; https://github.com/mriscoc/Ender3V2S1/wiki/Custom-C-gcodes
;=====================================================
C10                    ; Mark as a configuration file
M117 Applying configuration
;-----------------------------------------------------
; C11 En Rn Gn Bn : colorize UI elements (C11 E0 to update the screen)
; C29 Ln Rn Fn Bn Tn Nn Xn Ym : set probing mesh inset (Left, Right, Front, Back) in mm. T is the probing temperature (T0 doesn't change the current bed temperature) and N is the density or amount of grid points NxN, it is posible to set a NxM density by using X and Y. In UBL use G29 S# to save to a mesh slot number #.
C29 L25.00 R198.50 F25.00 B186.00 N5 T60 ; 5x5  T=50°C
; C35 Launch the bed tramming wizard.

; C100 Xn Yn Zn : setup minimum physical limits
C100 X0 Y0              ; Set XY Min position to 0
; C101 Xn Yn Zn : setup maximum physical limits
C101 X235 Y226 Z220     ; Set XYZ Max position
; C102 Xn Yn : setup bed size (can't be larger than physical limits)
C102 X235 Y225          ; Set a bed size of 220x220

; C104 U1 Tn : unlock the maximum hotend temperature temperature to ###°C (limited by thermistor calibration table CAUTION, the stock hot-end doesn't support more than 260°C due to the isolators and PTFE degradation.)
; C108 : cancel screens waiting for user simple confirmation
; C125 Xn Yn Zn : setup the park position
C125 X0 Y226 Z20        ; Park in the rear left corner
; C250 Pn : enable or disable preview screen (needs PREVIEW_MENU_ITEM)
C250 P1                 ; Enable preview screen
; C412 Mn : set run-out sensor active state (M0:LOW, M1:HIGH, M2:MOTION)
; C510 Un : lock/unlock the screen (C510 U1 to unlock)
; C562 En : invert the Extruder (E1 to invert)
; C810 An Bn Cn Dn En : sets up the toolbar shortcuts A..E to functions 0..n (0 disable that shortcut)
; C851 Sn [Zn] Mn : Set probe Z feed speed (S) in mm/min, Multiple probing (Mn>1) or disables it (M0), in manual mesh version, Z parameter can be used to set a manual Z-offset.
C851 S480 M2            ; Probe feedrate and disable multiple probing

M256 B127               ; Set Brightness
M413 S0                 ; Disable Powerloss recovery
M603 L3.00 U50.00       ; Configure Filament Change
M500                    ; Save all settings
;-----------------------------------------------------
G4 S1                   ; Wait a second
M300 P200               ; Beep
M117 Configuration Applied
;-----------------------------------------------------
