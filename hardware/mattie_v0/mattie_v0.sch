EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Mattie Version 0"
Date ""
Rev "0"
Comp "Joel Svensson & Marvin Damschen"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2400 1000 1550 3100
U 5E9881B4
F0 "MCU" 50
F1 "MCU.sch" 50
F2 "SPI_SCK" I R 3950 1200 50 
F3 "SPI_MISO" I R 3950 1300 50 
F4 "SPI_MOSI" I R 3950 1400 50 
F5 "RESET" I R 3950 1500 50 
F6 "DONE" I R 3950 1600 50 
F7 "MCU_USB_VBUS" I L 2400 3900 50 
F8 "DAT0" I R 3950 1800 50 
F9 "DAT1" I R 3950 1900 50 
F10 "DAT2" I R 3950 2000 50 
F11 "DAT3" I R 3950 2100 50 
F12 "DAT4" I R 3950 2200 50 
F13 "DAT5" I R 3950 2300 50 
F14 "DAT6" I R 3950 2400 50 
F15 "DAT7" I R 3950 2500 50 
F16 "DAT8" I R 3950 2600 50 
F17 "DAT9" I R 3950 2700 50 
F18 "DAT10" I R 3950 2800 50 
F19 "DAT11" I R 3950 2900 50 
F20 "DAT12" I R 3950 3000 50 
F21 "DAT13" I R 3950 3100 50 
F22 "DAT14" I R 3950 3200 50 
F23 "DAT15" I R 3950 3300 50 
F24 "AUX0" I R 3950 3450 50 
F25 "AUX1" I R 3950 3550 50 
F26 "AUX2" I R 3950 3650 50 
F27 "AUX3" I R 3950 3750 50 
F28 "AUX4" I R 3950 3850 50 
F29 "AUX5" I R 3950 3950 50 
F30 "REG1V2_ON" I L 2400 3550 50 
F31 "PWRGD1V2" I L 2400 3450 50 
F32 "SPI_SS" I R 3950 1100 50 
$EndSheet
$Sheet
S 2400 4350 1550 1500
U 5E988213
F0 "DCDC" 50
F1 "DCDC.sch" 50
F2 "5V" I L 2400 4550 50 
F3 "REG1V2_ON" I L 2400 4700 50 
F4 "PWRGD1V2" I L 2400 4800 50 
$EndSheet
$Sheet
S 5550 1000 1500 3100
U 5E98823A
F0 "LATTICE_ICE40" 50
F1 "LATTICE_ICE40.sch" 50
F2 "SPI_SS" I L 5550 1100 50 
F3 "SPI_SCK" I L 5550 1200 50 
F4 "SPI_MISO" I L 5550 1300 50 
F5 "SPI_MOSI" I L 5550 1400 50 
F6 "RESET" I L 5550 1500 50 
F7 "DONE" I L 5550 1600 50 
F8 "DAT0" I L 5550 1800 50 
F9 "DAT1" I L 5550 1900 50 
F10 "DAT2" I L 5550 2000 50 
F11 "DAT3" I L 5550 2100 50 
F12 "DAT4" I L 5550 2200 50 
F13 "DAT5" I L 5550 2300 50 
F14 "DAT6" I L 5550 2400 50 
F15 "DAT7" I L 5550 2500 50 
F16 "DAT8" I L 5550 2600 50 
F17 "DAT9" I L 5550 2700 50 
F18 "DAT10" I L 5550 2800 50 
F19 "DAT11" I L 5550 2900 50 
F20 "DAT12" I L 5550 3000 50 
F21 "DAT13" I L 5550 3100 50 
F22 "DAT14" I L 5550 3200 50 
F23 "DAT15" I L 5550 3300 50 
F24 "AUX0" I L 5550 3450 50 
F25 "AUX1" I L 5550 3550 50 
F26 "AUX2" I L 5550 3650 50 
F27 "AUX3" I L 5550 3750 50 
F28 "AUX4" I L 5550 3850 50 
F29 "AUX5" I L 5550 3950 50 
$EndSheet
Wire Wire Line
	2400 3900 2000 3900
Wire Wire Line
	2000 3900 2000 4550
Wire Wire Line
	2000 4550 2400 4550
Wire Wire Line
	2400 4700 1800 4700
Wire Wire Line
	1800 4700 1800 3550
Wire Wire Line
	1800 3550 2400 3550
Wire Wire Line
	2400 3450 1700 3450
Wire Wire Line
	1700 3450 1700 4800
Wire Wire Line
	1700 4800 2400 4800
Wire Wire Line
	3950 1100 5550 1100
Wire Wire Line
	3950 1200 5550 1200
Wire Wire Line
	3950 1300 5550 1300
Wire Wire Line
	3950 1400 5550 1400
Wire Wire Line
	3950 1500 5550 1500
Wire Wire Line
	3950 1600 5550 1600
Wire Wire Line
	5550 3300 3950 3300
Wire Wire Line
	3950 3200 5550 3200
Wire Wire Line
	5550 3100 3950 3100
Wire Wire Line
	3950 3000 5550 3000
Wire Wire Line
	5550 2900 3950 2900
Wire Wire Line
	3950 2800 5550 2800
Wire Wire Line
	5550 2700 3950 2700
Wire Wire Line
	3950 2600 5550 2600
Wire Wire Line
	5550 2500 3950 2500
Wire Wire Line
	3950 2400 5550 2400
Wire Wire Line
	5550 2300 3950 2300
Wire Wire Line
	3950 2200 5550 2200
Wire Wire Line
	5550 2100 3950 2100
Wire Wire Line
	3950 2000 5550 2000
Wire Wire Line
	5550 1900 3950 1900
Wire Wire Line
	3950 1800 5550 1800
Wire Wire Line
	3950 3450 5550 3450
Wire Wire Line
	5550 3550 3950 3550
Wire Wire Line
	3950 3650 5550 3650
Wire Wire Line
	5550 3750 3950 3750
Wire Wire Line
	3950 3850 5550 3850
Wire Wire Line
	5550 3950 3950 3950
$EndSCHEMATC
