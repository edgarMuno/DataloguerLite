EESchema Schematic File Version 4
LIBS:DATALITE-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L esp32mcu:ESP32-DEVKITC-32D U4
U 1 1 5FFF0E0C
P 4800 3150
F 0 "U4" H 4800 4317 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 4800 4226 50  0000 C CNN
F 2 "esp32mcu:MODULE_ESP32-DEVKITC-32D" H 4800 3150 50  0001 L BNN
F 3 "" H 4800 3150 50  0001 L BNN
F 4 "4" H 4800 3150 50  0001 L BNN "PARTREV"
F 5 "Espressif Systems" H 4800 3150 50  0001 L BNN "MANUFACTURER"
	1    4800 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5FFF2C5A
P 1550 1950
F 0 "J4" H 1630 1942 50  0000 L CNN
F 1 "Conn_01x04_RTC" H 1630 1851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1550 1950 50  0001 C CNN
F 3 "~" H 1550 1950 50  0001 C CNN
	1    1550 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J3
U 1 1 5FFF3208
P 1500 3050
F 0 "J3" H 1580 3042 50  0000 L CNN
F 1 "Conn_01x10_ADS" H 1580 2951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 1500 3050 50  0001 C CNN
F 3 "~" H 1500 3050 50  0001 C CNN
	1    1500 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5FFF4A7F
P 1450 4200
F 0 "J2" H 1530 4192 50  0000 L CNN
F 1 "Conn_01x06_SD" H 1530 4101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1450 4200 50  0001 C CNN
F 3 "~" H 1450 4200 50  0001 C CNN
	1    1450 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J9
U 1 1 5FFFC92E
P 7700 3550
F 0 "J9" H 7780 3592 50  0000 L CNN
F 1 "Screw_Terminal_01x03_Volt" H 7780 3501 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 7700 3550 50  0001 C CNN
F 3 "~" H 7700 3550 50  0001 C CNN
	1    7700 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5FFFCB14
P 6750 2450
F 0 "J8" H 6830 2492 50  0000 L CNN
F 1 "Conn_01x03" H 6830 2401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6750 2450 50  0001 C CNN
F 3 "~" H 6750 2450 50  0001 C CNN
	1    6750 2450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5FFFD90D
P 6900 3100
F 0 "J7" H 6980 3142 50  0000 L CNN
F 1 "Conn_01x03" H 6980 3051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6900 3100 50  0001 C CNN
F 3 "~" H 6900 3100 50  0001 C CNN
	1    6900 3100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J11
U 1 1 5FFFEA2D
P 7700 3000
F 0 "J11" H 7780 2992 50  0000 L CNN
F 1 "Screw_Terminal_01x04_I2c" H 7780 2901 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 7700 3000 50  0001 C CNN
F 3 "~" H 7700 3000 50  0001 C CNN
	1    7700 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 6000338E
P 4800 1200
F 0 "J6" V 4764 912 50  0000 R CNN
F 1 "Conn_01x04_Source" V 4673 912 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4800 1200 50  0001 C CNN
F 3 "~" H 4800 1200 50  0001 C CNN
	1    4800 1200
	0    -1   -1   0   
$EndComp
Text Label 4500 1500 0    50   ~ 0
GND
Wire Wire Line
	4500 1500 4700 1500
Wire Wire Line
	4700 1500 4700 1400
$Comp
L pspice:0 #GND01
U 1 1 60004373
P 4500 1500
F 0 "#GND01" H 4500 1400 50  0001 C CNN
F 1 "0" H 4500 1589 50  0000 C CNN
F 2 "" H 4500 1500 50  0001 C CNN
F 3 "~" H 4500 1500 50  0001 C CNN
	1    4500 1500
	1    0    0    -1  
$EndComp
Text Label 4750 1550 0    50   ~ 0
12S
Wire Wire Line
	4750 1550 4750 1400
Wire Wire Line
	4750 1400 4800 1400
Text Label 5100 1550 0    50   ~ 0
D12
Wire Wire Line
	5600 1700 5600 1550
Wire Wire Line
	4950 1400 4900 1400
Wire Wire Line
	5100 1550 5100 1400
Wire Wire Line
	5100 1400 5000 1400
$Comp
L DATALITE-rescue:SIM800L-SIM800L GSM_Module1
U 1 1 60006508
P 4850 5250
F 0 "GSM_Module1" H 4875 6137 60  0000 C CNN
F 1 "SIM800L" H 4875 6031 60  0000 C CNN
F 2 "SIM800LF:SIM800L" H 4850 5250 60  0001 C CNN
F 3 "" H 4850 5250 60  0001 C CNN
	1    4850 5250
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C1
U 1 1 60008B62
P 1200 5850
F 0 "C1" H 1378 5896 50  0000 L CNN
F 1 "CAP1UF" H 1378 5805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 1200 5850 50  0001 C CNN
F 3 "~" H 1200 5850 50  0001 C CNN
	1    1200 5850
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C3
U 1 1 60009E66
P 2750 5900
F 0 "C3" H 2928 5946 50  0000 L CNN
F 1 "CAP1UF" H 2928 5855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2750 5900 50  0001 C CNN
F 3 "~" H 2750 5900 50  0001 C CNN
	1    2750 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6000A128
P 2400 5700
F 0 "R3" H 2470 5746 50  0000 L CNN
F 1 "R1K" H 2470 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2330 5700 50  0001 C CNN
F 3 "~" H 2400 5700 50  0001 C CNN
	1    2400 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6000AA96
P 2100 6200
F 0 "R2" H 2170 6246 50  0000 L CNN
F 1 "R2K" H 2170 6155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2030 6200 50  0001 C CNN
F 3 "~" H 2100 6200 50  0001 C CNN
	1    2100 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5600 1800 5600
Wire Wire Line
	1200 6100 1200 6400
Wire Wire Line
	1200 6400 2100 6400
Wire Wire Line
	2100 6400 2100 6350
Wire Wire Line
	2100 6050 2100 5850
Wire Wire Line
	2100 5850 2400 5850
Wire Wire Line
	2750 5650 2750 5550
Wire Wire Line
	2750 5550 2500 5550
Wire Wire Line
	2750 6150 2750 6400
Wire Wire Line
	2750 6400 2100 6400
Connection ~ 2100 6400
Text Label 850  5600 0    50   ~ 0
12S
Wire Wire Line
	850  5600 1200 5600
Connection ~ 1200 5600
Text Label 2100 6400 0    50   ~ 0
GND
Wire Wire Line
	2750 5550 3250 5550
Wire Wire Line
	3250 5550 3250 5100
Wire Wire Line
	3250 5100 3700 5100
Connection ~ 2750 5550
Text Label 3400 5300 0    50   ~ 0
TX2
Text Label 3400 5400 0    50   ~ 0
RX2
Text Label 3400 5200 0    50   ~ 0
D4
Wire Wire Line
	3400 5200 3700 5200
Wire Wire Line
	3400 5300 3700 5300
Wire Wire Line
	3700 5400 3400 5400
Wire Wire Line
	3700 5500 3700 6400
Wire Wire Line
	3700 6400 2750 6400
Connection ~ 2750 6400
$Comp
L Regulator_Linear:LM7805_TO220 U3
U 1 1 6000F9B4
P 3000 1100
F 0 "U3" H 3000 1342 50  0000 C CNN
F 1 "LM7805_TO220" H 3000 1251 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3000 1325 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 3000 1050 50  0001 C CNN
	1    3000 1100
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C2
U 1 1 60011070
P 2450 1350
F 0 "C2" H 2628 1396 50  0000 L CNN
F 1 "CAP1UF" H 2628 1305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2450 1350 50  0001 C CNN
F 3 "~" H 2450 1350 50  0001 C CNN
	1    2450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1600 2450 1900
$Comp
L pspice:CAP C4
U 1 1 60011BAE
P 3500 1350
F 0 "C4" H 3678 1396 50  0000 L CNN
F 1 "CAP1UF" H 3678 1305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3500 1350 50  0001 C CNN
F 3 "~" H 3500 1350 50  0001 C CNN
	1    3500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1600 3500 1900
Wire Wire Line
	3300 1100 3500 1100
Wire Wire Line
	3500 1900 3000 1900
Wire Wire Line
	3000 1900 3000 1400
Wire Wire Line
	3000 1900 2450 1900
Connection ~ 3000 1900
Wire Wire Line
	2450 1100 2700 1100
Text Label 2150 1050 0    50   ~ 0
12S
Text Label 3600 950  0    50   ~ 0
5S
Wire Wire Line
	3600 950  3600 1100
Wire Wire Line
	3600 1100 3500 1100
Connection ~ 3500 1100
Wire Wire Line
	2450 1100 2150 1100
Wire Wire Line
	2150 1100 2150 1050
Connection ~ 2450 1100
$Comp
L Connector:Screw_Terminal_01x03 J10
U 1 1 6001664F
P 7700 2500
F 0 "J10" H 7780 2542 50  0000 L CNN
F 1 "Screw_Terminal_01x03_SDI12" H 7780 2451 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 7700 2500 50  0001 C CNN
F 3 "~" H 7700 2500 50  0001 C CNN
	1    7700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2450 7100 2450
Wire Wire Line
	7100 2450 7100 2350
Text Label 7300 2300 0    50   ~ 0
12S
Text Label 7300 2650 0    50   ~ 0
GND
Wire Wire Line
	7300 2650 7500 2650
Wire Wire Line
	7500 2650 7500 2600
Wire Wire Line
	7500 2400 7300 2400
Wire Wire Line
	7300 2400 7300 2300
Text Label 7200 2500 0    50   ~ 0
D13
Wire Wire Line
	7200 2500 7500 2500
Text Label 3550 3650 0    50   ~ 0
5V
Text Label 3550 3550 0    50   ~ 0
GND
Wire Wire Line
	4000 3550 3550 3550
Text Label 3600 3450 0    50   ~ 0
D13
Wire Wire Line
	3600 3450 4000 3450
Text Label 3650 3350 0    50   ~ 0
D12
Text Label 3650 3250 0    50   ~ 0
D14
Text Label 3650 3150 0    50   ~ 0
D27
Text Label 3650 3050 0    50   ~ 0
D26
Text Label 3650 2950 0    50   ~ 0
D25
Text Label 3650 2850 0    50   ~ 0
D33
Text Label 3650 2750 0    50   ~ 0
D32
Text Label 3650 2650 0    50   ~ 0
D35
Text Label 3650 2550 0    50   ~ 0
D34
Text Label 3650 2450 0    50   ~ 0
VN
Text Label 3650 2350 0    50   ~ 0
VP
Text Label 3650 2250 0    50   ~ 0
EN
Text Label 5800 2250 0    50   ~ 0
D23
Text Label 5800 2350 0    50   ~ 0
D22
Text Label 5800 2450 0    50   ~ 0
TX0
Text Label 5800 2550 0    50   ~ 0
RX0
Text Label 5800 2650 0    50   ~ 0
D21
Text Label 5800 2750 0    50   ~ 0
D19
Text Label 5800 2850 0    50   ~ 0
D18
Text Label 5800 2950 0    50   ~ 0
D5
Text Label 5800 3050 0    50   ~ 0
TX2
Text Label 5800 3150 0    50   ~ 0
RX2
Text Label 5800 3250 0    50   ~ 0
D4
Text Label 5800 3450 0    50   ~ 0
D15
Text Label 5800 3550 0    50   ~ 0
GND
Text Label 5800 3650 0    50   ~ 0
3V3
Wire Wire Line
	3650 2250 4000 2250
Wire Wire Line
	4000 2350 3650 2350
Wire Wire Line
	4000 2450 3650 2450
Wire Wire Line
	4000 2550 3650 2550
Wire Wire Line
	4000 2650 3650 2650
Wire Wire Line
	4000 2750 3650 2750
Wire Wire Line
	4000 2850 3650 2850
Wire Wire Line
	4000 2950 3650 2950
Wire Wire Line
	4000 3050 3650 3050
Wire Wire Line
	4000 3150 3650 3150
Wire Wire Line
	3650 3250 4000 3250
Wire Wire Line
	4000 3350 3650 3350
Wire Wire Line
	3550 3650 4000 3650
Wire Wire Line
	5600 2450 5800 2450
Wire Wire Line
	5800 2550 5600 2550
Wire Wire Line
	5600 3050 5800 3050
Wire Wire Line
	5800 3150 5600 3150
Wire Wire Line
	5600 3250 5800 3250
Wire Wire Line
	5800 3350 5600 3350
Wire Wire Line
	5600 3450 5800 3450
Wire Wire Line
	5800 3550 5600 3550
Text Label 6100 2650 0    50   ~ 0
SDA
Text Label 6100 2350 0    50   ~ 0
SCL
Wire Wire Line
	5600 2350 6100 2350
Wire Wire Line
	5600 2650 6100 2650
Text Label 1000 1850 0    50   ~ 0
SCL
Text Label 1000 1950 0    50   ~ 0
SDA
Text Label 1000 2050 0    50   ~ 0
5V
Text Label 1000 2150 0    50   ~ 0
GND
Wire Wire Line
	1000 1850 1350 1850
Wire Wire Line
	1000 1950 1350 1950
Wire Wire Line
	1350 2050 1000 2050
Wire Wire Line
	1000 2150 1350 2150
Text Label 1100 2650 0    50   ~ 0
5S
Text Label 1100 2750 0    50   ~ 0
GND
Text Label 1100 2850 0    50   ~ 0
SCL
Text Label 1100 2950 0    50   ~ 0
SDA
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 6005CA45
P 550 3100
F 0 "J1" H 468 2775 50  0000 C CNN
F 1 "Conn_01x03" H 468 2866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 550 3100 50  0001 C CNN
F 3 "~" H 550 3100 50  0001 C CNN
	1    550  3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	750  3000 750  2650
Wire Wire Line
	750  2650 1300 2650
Wire Wire Line
	1100 2750 1300 2750
Wire Wire Line
	1300 2850 1100 2850
Wire Wire Line
	1300 2950 1100 2950
Wire Wire Line
	1300 3050 750  3050
Wire Wire Line
	750  3050 750  3100
Text Label 700  3400 0    50   ~ 0
GND
Wire Wire Line
	700  3400 700  3200
Wire Wire Line
	700  3200 750  3200
Text Label 1100 3250 0    50   ~ 0
A0
Text Label 1100 3350 0    50   ~ 0
A1
Text Label 1100 3450 0    50   ~ 0
A2
Text Label 1100 3550 0    50   ~ 0
A3
Wire Wire Line
	1100 3250 1300 3250
Wire Wire Line
	1300 3350 1100 3350
Wire Wire Line
	1300 3450 1100 3450
Wire Wire Line
	1300 3550 1100 3550
Text Label 1000 4000 0    50   ~ 0
CS
Text Label 1000 4100 0    50   ~ 0
SCK
Text Label 1000 4200 0    50   ~ 0
MOSI
Text Label 1000 4300 0    50   ~ 0
MISO
Text Label 1000 4400 0    50   ~ 0
5S
Text Label 1000 4500 0    50   ~ 0
GND
Wire Wire Line
	1000 4000 1250 4000
Wire Wire Line
	1250 4100 1000 4100
Wire Wire Line
	1000 4200 1250 4200
Wire Wire Line
	1250 4300 1000 4300
Wire Wire Line
	1250 4400 1000 4400
Wire Wire Line
	1000 4500 1250 4500
Text Label 6050 2950 0    50   ~ 0
CS
Text Label 6050 2850 0    50   ~ 0
SCK
Text Label 6100 2250 0    50   ~ 0
MOSI
Text Label 6050 2750 0    50   ~ 0
MISO
Wire Wire Line
	5600 2750 6050 2750
Wire Wire Line
	5600 2850 6050 2850
Wire Wire Line
	5600 2950 6050 2950
Wire Wire Line
	5600 2250 6100 2250
$Comp
L Device:R R4
U 1 1 600A840F
P 2650 3850
F 0 "R4" H 2720 3896 50  0000 L CNN
F 1 "R39" H 2720 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2580 3850 50  0001 C CNN
F 3 "~" H 2650 3850 50  0001 C CNN
	1    2650 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 600A8AD8
P 2650 4300
F 0 "R5" H 2720 4346 50  0000 L CNN
F 1 "15K" H 2720 4255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2580 4300 50  0001 C CNN
F 3 "~" H 2650 4300 50  0001 C CNN
	1    2650 4300
	1    0    0    -1  
$EndComp
Text Label 2500 4700 0    50   ~ 0
GND
Text Label 2450 3550 0    50   ~ 0
12S
Wire Wire Line
	2450 3550 2650 3550
Wire Wire Line
	2650 3550 2650 3700
Wire Wire Line
	2650 4000 2650 4100
Wire Wire Line
	2650 4450 2650 4700
Wire Wire Line
	2650 4700 2500 4700
Wire Wire Line
	2650 4100 2350 4100
Connection ~ 2650 4100
Wire Wire Line
	2650 4100 2650 4150
Text Label 2350 4100 0    50   ~ 0
A0
Text Label 7450 2800 0    50   ~ 0
5S
Text Label 7400 3300 0    50   ~ 0
GND
Wire Wire Line
	7450 2800 7450 2900
Wire Wire Line
	7450 2900 7500 2900
Wire Wire Line
	7400 3300 7500 3300
Wire Wire Line
	7500 3300 7500 3200
Text Label 7100 3000 0    50   ~ 0
SCL
Text Label 6950 2350 0    50   ~ 0
SDA
Text Label 6950 2550 0    50   ~ 0
D14
Text Label 7100 3200 0    50   ~ 0
D27
Text Label 7300 3450 0    50   ~ 0
5S
Text Label 7300 3650 0    50   ~ 0
GND
Text Label 7300 3550 0    50   ~ 0
A1
Wire Wire Line
	7300 3450 7500 3450
Wire Wire Line
	7300 3550 7500 3550
Wire Wire Line
	7300 3650 7500 3650
Text Label 1200 900  0    50   ~ 0
GND
$Comp
L Isolator:PC817 U1
U 1 1 600DAED4
P 1050 1000
F 0 "U1" V 1004 1188 50  0000 L CNN
F 1 "PC817" V 1095 1188 50  0000 L CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 850 800 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 1050 1000 50  0001 L CNN
	1    1050 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 900  1600 900 
Wire Wire Line
	1400 700  1150 700 
Text Label 750  700  0    50   ~ 0
5V
Wire Wire Line
	750  700  950  700 
$Comp
L Device:R R1
U 1 1 60122CEA
P 950 1450
F 0 "R1" H 1020 1496 50  0000 L CNN
F 1 "R" H 1020 1405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 880 1450 50  0001 C CNN
F 3 "~" H 950 1450 50  0001 C CNN
	1    950  1450
	1    0    0    -1  
$EndComp
Text Label 950  1600 0    50   ~ 0
D35
Text Label 1150 1300 0    50   ~ 0
GND
$Comp
L Switch:SW_Push SW2
U 1 1 60124442
P 7700 4850
F 0 "SW2" H 7700 5135 50  0000 C CNN
F 1 "SW_ARRI" H 7700 5044 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 7700 5050 50  0001 C CNN
F 3 "~" H 7700 5050 50  0001 C CNN
	1    7700 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 60125101
P 7500 5000
F 0 "R7" H 7570 5046 50  0000 L CNN
F 1 "R" H 7570 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7430 5000 50  0001 C CNN
F 3 "~" H 7500 5000 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
Text Label 7350 5350 0    50   ~ 0
GND
Wire Wire Line
	7350 5350 7350 5150
Wire Wire Line
	7350 5150 7500 5150
Text Label 7150 4850 0    50   ~ 0
D32
Wire Wire Line
	7150 4850 7500 4850
Connection ~ 7500 4850
Text Label 7900 4850 0    50   ~ 0
3V3
$Comp
L Switch:SW_Push SW4
U 1 1 6013CDF0
P 8700 4800
F 0 "SW4" H 8700 5085 50  0000 C CNN
F 1 "SW_ABAJO" H 8700 4994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 8700 5000 50  0001 C CNN
F 3 "~" H 8700 5000 50  0001 C CNN
	1    8700 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6013CDF6
P 8500 4950
F 0 "R9" H 8570 4996 50  0000 L CNN
F 1 "R" H 8570 4905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8430 4950 50  0001 C CNN
F 3 "~" H 8500 4950 50  0001 C CNN
	1    8500 4950
	1    0    0    -1  
$EndComp
Text Label 8350 5300 0    50   ~ 0
GND
Wire Wire Line
	8350 5300 8350 5100
Wire Wire Line
	8350 5100 8500 5100
Text Label 8150 4800 0    50   ~ 0
D33
Wire Wire Line
	8150 4800 8500 4800
Connection ~ 8500 4800
Text Label 8900 4800 0    50   ~ 0
3V3
$Comp
L Switch:SW_Push SW1
U 1 1 60142ABD
P 7600 5800
F 0 "SW1" H 7600 6085 50  0000 C CNN
F 1 "SW_IZ" H 7600 5994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 7600 6000 50  0001 C CNN
F 3 "~" H 7600 6000 50  0001 C CNN
	1    7600 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 60142AC3
P 7400 5950
F 0 "R6" H 7470 5996 50  0000 L CNN
F 1 "R" H 7470 5905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7330 5950 50  0001 C CNN
F 3 "~" H 7400 5950 50  0001 C CNN
	1    7400 5950
	1    0    0    -1  
$EndComp
Text Label 7250 6300 0    50   ~ 0
GND
Wire Wire Line
	7250 6300 7250 6100
Wire Wire Line
	7250 6100 7400 6100
Text Label 7050 5800 0    50   ~ 0
D25
Wire Wire Line
	7050 5800 7400 5800
Connection ~ 7400 5800
Text Label 7800 5800 0    50   ~ 0
3V3
$Comp
L Switch:SW_Push SW3
U 1 1 601489E1
P 8600 5800
F 0 "SW3" H 8600 6085 50  0000 C CNN
F 1 "SW_DERE" H 8600 5994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 8600 6000 50  0001 C CNN
F 3 "~" H 8600 6000 50  0001 C CNN
	1    8600 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 601489E7
P 8400 5950
F 0 "R8" H 8470 5996 50  0000 L CNN
F 1 "R" H 8470 5905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8330 5950 50  0001 C CNN
F 3 "~" H 8400 5950 50  0001 C CNN
	1    8400 5950
	1    0    0    -1  
$EndComp
Text Label 8250 6300 0    50   ~ 0
GND
Wire Wire Line
	8250 6300 8250 6100
Wire Wire Line
	8250 6100 8400 6100
Text Label 8050 5800 0    50   ~ 0
D26
Wire Wire Line
	8050 5800 8400 5800
Connection ~ 8400 5800
Text Label 8800 5800 0    50   ~ 0
3V3
$Comp
L SSD1306-128x64_OLED:SSD1306 Brd1
U 1 1 60177974
P 1950 750
F 0 "Brd1" V 1996 472 50  0000 R CNN
F 1 "SSD1306" V 1905 472 50  0000 R CNN
F 2 "OLED:128x64OLED" H 1950 1000 50  0001 C CNN
F 3 "" H 1950 1000 50  0001 C CNN
	1    1950 750 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 700  1600 700 
Text Label 1500 700  0    50   ~ 0
SCL
Wire Wire Line
	1600 600  1500 600 
Text Label 1500 600  0    50   ~ 0
SDA
Wire Wire Line
	1600 800  1400 800 
Wire Wire Line
	1400 800  1400 700 
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 601B8067
P 2150 5300
F 0 "J5" V 2022 5480 50  0000 L CNN
F 1 "Conn_01x03LM317" V 2113 5480 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2150 5300 50  0001 C CNN
F 3 "~" H 2150 5300 50  0001 C CNN
	1    2150 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 5100 2050 5100
Wire Wire Line
	1800 5100 1800 5600
Wire Wire Line
	2250 5100 2400 5100
Wire Wire Line
	2400 5100 2400 5500
Wire Wire Line
	2400 5500 2100 5500
Wire Wire Line
	2100 5500 2100 5850
Connection ~ 2100 5850
Wire Wire Line
	2150 5100 2150 4900
Wire Wire Line
	2150 4900 2500 4900
Connection ~ 2500 5550
Wire Wire Line
	2500 5550 2400 5550
Wire Wire Line
	2500 4900 2500 5550
$Comp
L pspice:0 #GND0101
U 1 1 601FC24B
P 2750 6400
F 0 "#GND0101" H 2750 6300 50  0001 C CNN
F 1 "0" H 2750 6489 50  0000 C CNN
F 2 "" H 2750 6400 50  0001 C CNN
F 3 "~" H 2750 6400 50  0001 C CNN
	1    2750 6400
	1    0    0    -1  
$EndComp
Text Label 3000 1900 0    50   ~ 0
GND
Text Label 5600 1700 0    50   ~ 0
5V
$Comp
L Switch:SW_SPST SW5
U 1 1 6020FBE9
P 5150 1750
F 0 "SW5" H 5150 1985 50  0000 C CNN
F 1 "SW_SPST" H 5150 1894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Piano_10.8x4.1mm_W7.62mm_P2.54mm" H 5150 1750 50  0001 C CNN
F 3 "~" H 5150 1750 50  0001 C CNN
	1    5150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1750 4950 1400
Wire Wire Line
	5350 1750 5450 1750
Wire Wire Line
	5450 1750 5450 1550
Wire Wire Line
	5450 1550 5600 1550
Wire Wire Line
	5600 3650 5800 3650
Text Label 5800 3350 0    50   ~ 0
D2
Wire Wire Line
	7500 3000 7350 3000
Wire Wire Line
	7350 3000 7350 2800
Wire Wire Line
	7350 2800 7100 2800
Wire Wire Line
	7100 2800 7100 2450
Connection ~ 7100 2450
Wire Wire Line
	7100 3100 7500 3100
$EndSCHEMATC
