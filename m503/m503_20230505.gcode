Send: M503
Recv: echo:; Linear Units:
Recv: echo:  G21 ; (mm)
Recv: echo:; Temperature Units:
Recv: echo:  M149 C ; Units in Celsius
Recv: echo:; Filament settings (Disabled):
Recv: echo:  M200 S0 D1.75
Recv: echo:; Steps per unit:
Recv: echo:  M92 X80.00 Y80.00 Z400.00 E93.00
Recv: echo:; Max feedrates (units/s):
Recv: echo:  M203 X150.00 Y150.00 Z10.00 E60.00
Recv: echo:; Max Acceleration (units/s2):
Recv: echo:  M201 X500.00 Y500.00 Z100.00 E5000.00
Recv: echo:; Acceleration (units/s2) (P<print-accel> R<retract-accel> T<travel-accel>):
Recv: echo:  M204 P500.00 R1000.00 T500.00
Recv: echo:; Advanced (B<min_segment_time_us> S<min_feedrate> T<min_travel_feedrate> X<max_jerk> Y<max_jerk> Z<max_jerk> E<max_jerk>):
Recv: echo:  M205 B20000.00 S0.00 T0.00 X8.00 Y8.00 Z0.40 E5.00
Recv: echo:; Unified Bed Leveling:
Recv: echo:  M420 S0 Z10.00 ; Leveling OFF
Recv:
Recv: Unified Bed Leveling System v1.01 inactive
Recv: echo:Active Mesh Slot 0
Recv: echo:EEPROM can hold 6 meshes.
Recv:
Recv: echo:; Material heatup parameters:
Recv: echo:  M145 S0 H205.00 B60.00 F128
Recv: echo:  M145 S1 H240.00 B90.00 F128
Recv: echo:  M145 S2 H230.00 B80.00 F128
Recv: echo:  M145 S3 H150.00 B60.00 F128
Recv: echo:; Bed PID:
Recv: echo:  M304 P269.56 I52.65 D920.09
Recv: echo:; LCD Brightness:
Recv: echo:  M256 B127
Recv: echo:; Power-loss recovery:
Recv: echo:  M413 S0 ; OFF
Recv: echo:; Retract (S<length> F<feedrate> Z<lift>):
Recv: echo:  M207 S5.00 W13.00 F2400.00 Z0.20
Recv: echo:; Recover (S<length> F<feedrate>):
Recv: echo:  M208 S0.00 W0.00 F2400.00
Recv: echo:; Z-Probe Offset:
Recv: echo:  M851 X-32.20 Y-40.00 Z-1.79 ; (mm)
Recv: echo:; Filament load/unload:
Recv: echo:  M603 L3.00 U150.00 ; (mm)
Recv: echo:; Filament runout sensor:
Recv: echo:  M412 S1 D25.00 ; Sensor ON
Recv: echo:; Model predictive control:
Recv: echo:  M306 E0 P40.00 C10.11 R0.3191 A0.0582 F0.0604 H0.0056
Recv: echo:; Physical minimums:
Recv: echo:  C100 X0 Y0
Recv: echo:; Physical maximums:
Recv: echo:  C101 X240 Y231 Z250
Recv: echo:; Bed size:
Recv: echo:  C102 X230 Y230
Recv: echo:; Mesh Insets and leveling settings:
Recv: echo:  C29 L25.00 R198.50 F25.00 B191.00 N5 T50 ; 5x5  T=50°C
Recv: echo:; Max Extruder temperature:
Recv: echo:  C104 T275
Recv: echo:; Park Head:
Recv: echo:  C125 X240 Y221 Z20
Recv: echo:; Filament runout sensor:
Recv: echo:  C412 M0 ; Active mode: LOW
Recv: echo:; Invert Extruder:
Recv: echo:  C562 E0 ; No inverted
Recv: echo:; Probe Z Speed and Multiple Probing:
Recv: echo:  C851 S480 M2
Recv: ok P15 B15
