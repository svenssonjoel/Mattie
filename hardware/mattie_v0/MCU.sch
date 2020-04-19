EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "Mattie Version 0"
Date ""
Rev "0"
Comp "Joel Svensson & Marvin Damschen"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L favorites:STM32F40X_LQFP64 U1
U 1 1 5E988641
P 5850 3550
F 0 "U1" H 5850 5987 60  0000 C CNN
F 1 "STM32F40X_LQFP64" H 5850 5881 60  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 5850 3550 60  0000 C CNN
F 3 "" H 5850 3550 60  0000 C CNN
	1    5850 3550
	1    0    0    -1  
$EndComp
Text Notes 5650 4450 0    50   ~ 0
SPI_2_MISO\n
Text Notes 5650 4550 0    50   ~ 0
SPI_2_MOSI
Text Notes 700  1850 0    50   ~ 0
PA4 - SPI_1_NSS  (SPI_3_NSS)\nPA5 - SPI_1_SCK\nPA6 - SPI_1_MISO\nPA7 - SPI_1_MOSI\nPB3 - SPI_1_SCK (SPI_3_SCK)\nPB4 - SPI_1_MISO  (SPI_3_MISO)\nPB5 - SPI_1_ MOSI (SPI_3_MOSI)\nPB10 - SPI_2_SCK\nPB12 - SPI_2_NSS\nPB13 - SPI_2_SCK\nPB14 - SPI_2_MISO\nPB15 - SPI_2_MOSI\nPA15 - SPI_3_NSS\nPC10 - SPI_3_SCK\nPC11 - SPI_3_MISO\nPC12 - SPI_3_MOSI\n
Text HLabel 7100 2950 2    50   Input ~ 0
SPI_SCK
Text HLabel 7100 3050 2    50   Input ~ 0
SPI_MISO
Text HLabel 4600 3000 0    50   Input ~ 0
SPI_MOSI
Text HLabel 4600 3100 0    50   Input ~ 0
RESET
Text HLabel 4600 3200 0    50   Input ~ 0
DONE
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5E9B3194
P 8450 1750
F 0 "Y1" H 8256 1704 50  0000 R CNN
F 1 "8Mhz" H 8256 1795 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_5032-4Pin_5.0x3.2mm" H 8450 1750 50  0001 C CNN
F 3 "~" H 8450 1750 50  0001 C CNN
F 4 " 535-9720-1-ND" H 8450 1750 50  0001 C CNN "OrderN"
	1    8450 1750
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 5E9B31A1
P 8600 2100
F 0 "C11" H 8715 2146 50  0000 L CNN
F 1 "15p" H 8715 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8638 1950 50  0001 C CNN
F 3 "~" H 8600 2100 50  0001 C CNN
F 4 " 710-885012006033 " H 8600 2100 50  0001 C CNN "OrderN"
	1    8600 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 5E9B31A8
P 8600 1400
F 0 "C10" H 8715 1446 50  0000 L CNN
F 1 "15p" H 8715 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8638 1250 50  0001 C CNN
F 3 "~" H 8600 1400 50  0001 C CNN
F 4 " 710-885012006033 " H 8600 1400 50  0001 C CNN "OrderN"
	1    8600 1400
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P?
U 1 1 5E9BED28
P 10300 3100
AR Path="/5E994520/5E9BED28" Ref="P?"  Part="1" 
AR Path="/5E9881B4/5E9BED28" Ref="P1"  Part="1" 
F 0 "P1" H 10300 3450 50  0000 C CNN
F 1 "SWD" V 10400 3100 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B6B-PH-K_1x06_P2.00mm_Vertical" H 10300 3100 60  0001 C CNN
F 3 "" H 10300 3100 60  0000 C CNN
F 4 "455-1708-ND " H 10300 3100 50  0001 C CNN "OrderN"
	1    10300 3100
	1    0    0    1   
$EndComp
NoConn ~ 10100 3300
$Comp
L power:GND #PWR?
U 1 1 5E9BED2F
P 9650 3350
AR Path="/5E994520/5E9BED2F" Ref="#PWR?"  Part="1" 
AR Path="/5E9881B4/5E9BED2F" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 9650 3100 50  0001 C CNN
F 1 "GND" H 9650 3200 50  0000 C CNN
F 2 "" H 9650 3350 60  0000 C CNN
F 3 "" H 9650 3350 60  0000 C CNN
	1    9650 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10100 2800 9650 2800
Wire Wire Line
	10100 3000 9650 3000
Wire Wire Line
	9650 3000 9650 3350
Wire Wire Line
	9650 2800 9650 2700
$Comp
L power:+3V3 #PWR013
U 1 1 5E9BEF93
P 9650 2700
F 0 "#PWR013" H 9650 2550 50  0001 C CNN
F 1 "+3V3" H 9665 2873 50  0000 C CNN
F 2 "" H 9650 2700 50  0001 C CNN
F 3 "" H 9650 2700 50  0001 C CNN
	1    9650 2700
	1    0    0    -1  
$EndComp
Text Label 10100 2900 2    50   ~ 0
SWCLK
Text Label 10100 3100 2    50   ~ 0
SWDIO
Text Label 10100 3200 2    50   ~ 0
NRST
Text Label 7100 2650 0    50   ~ 0
SWDIO
Text Label 7100 2750 0    50   ~ 0
SWCLK
Text Label 7100 2400 0    50   ~ 0
NRST
$Comp
L Device:C_Small C9
U 1 1 5E9C4A2C
P 7500 2400
F 0 "C9" V 7271 2400 50  0000 C CNN
F 1 "0.1u" V 7362 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7500 2400 50  0001 C CNN
F 3 "~" H 7500 2400 50  0001 C CNN
F 4 " 963-TMK107BJ104KA-T " H 7500 2400 50  0001 C CNN "Mouser"
	1    7500 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E9C5B27
P 7750 2400
F 0 "#PWR010" H 7750 2150 50  0001 C CNN
F 1 "GND" H 7755 2227 50  0000 C CNN
F 2 "" H 7750 2400 50  0001 C CNN
F 3 "" H 7750 2400 50  0001 C CNN
	1    7750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2400 7400 2400
Wire Wire Line
	7600 2400 7750 2400
$Comp
L power:GND #PWR06
U 1 1 5E9C7FB1
P 7300 2100
F 0 "#PWR06" H 7300 1850 50  0001 C CNN
F 1 "GND" H 7305 1927 50  0000 C CNN
F 2 "" H 7300 2100 50  0001 C CNN
F 3 "" H 7300 2100 50  0001 C CNN
	1    7300 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2100 7300 2100
Text Label 7100 2000 0    50   ~ 0
BOOT0
$Comp
L power:GND #PWR?
U 1 1 5E9CAD08
P 9650 4300
AR Path="/5E994520/5E9CAD08" Ref="#PWR?"  Part="1" 
AR Path="/5E9881B4/5E9CAD08" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 9650 4050 50  0001 C CNN
F 1 "GND" H 9655 4127 50  0000 C CNN
F 2 "" H 9650 4300 50  0001 C CNN
F 3 "" H 9650 4300 50  0001 C CNN
	1    9650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4200 9650 4200
Wire Wire Line
	9650 4200 9650 4300
$Comp
L Switch:SW_SPDT SW?
U 1 1 5E9CAD02
P 10100 4100
AR Path="/5E994520/5E9CAD02" Ref="SW?"  Part="1" 
AR Path="/5E9881B4/5E9CAD02" Ref="SW1"  Part="1" 
F 0 "SW1" H 10175 3925 50  0000 C CNN
F 1 "BOOT0" H 10125 4300 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 10100 4100 50  0001 C CNN
F 3 "~" H 10100 4100 50  0001 C CNN
F 4 "401-2016-1-ND " H 10100 4100 50  0001 C CNN "OrderN"
	1    10100 4100
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR015
U 1 1 5E9CE66E
P 9650 3900
F 0 "#PWR015" H 9650 3750 50  0001 C CNN
F 1 "+3V3" H 9665 4073 50  0000 C CNN
F 2 "" H 9650 3900 50  0001 C CNN
F 3 "" H 9650 3900 50  0001 C CNN
	1    9650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4000 9650 4000
Wire Wire Line
	9650 4000 9650 3900
Text Label 10450 4100 0    50   ~ 0
BOOT0
Wire Wire Line
	10300 4100 10450 4100
$Comp
L power:+3V3 #PWR04
U 1 1 5E9D319C
P 7250 3850
F 0 "#PWR04" H 7250 3700 50  0001 C CNN
F 1 "+3V3" H 7265 4023 50  0000 C CNN
F 2 "" H 7250 3850 50  0001 C CNN
F 3 "" H 7250 3850 50  0001 C CNN
	1    7250 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4000 7100 4000
Wire Wire Line
	7250 3850 7250 4000
Wire Wire Line
	7250 4000 7250 4100
Wire Wire Line
	7250 4100 7100 4100
Connection ~ 7250 4000
Wire Wire Line
	7250 4100 7250 4200
Wire Wire Line
	7250 4200 7100 4200
Connection ~ 7250 4100
Wire Wire Line
	7250 4200 7250 4300
Wire Wire Line
	7250 4300 7100 4300
Connection ~ 7250 4200
$Comp
L power:+3V3 #PWR05
U 1 1 5E9D677F
P 7250 4950
F 0 "#PWR05" H 7250 4800 50  0001 C CNN
F 1 "+3V3" H 7265 5123 50  0000 C CNN
F 2 "" H 7250 4950 50  0001 C CNN
F 3 "" H 7250 4950 50  0001 C CNN
	1    7250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5100 7100 5100
Wire Wire Line
	7250 4950 7250 5100
Wire Wire Line
	7250 5100 7250 5300
Wire Wire Line
	7250 5300 7100 5300
Connection ~ 7250 5100
$Comp
L power:GND #PWR08
U 1 1 5E9D92F1
P 7550 4800
F 0 "#PWR08" H 7550 4550 50  0001 C CNN
F 1 "GND" H 7555 4627 50  0000 C CNN
F 2 "" H 7550 4800 50  0001 C CNN
F 3 "" H 7550 4800 50  0001 C CNN
	1    7550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4800 7550 4700
Wire Wire Line
	7550 4700 7100 4700
Wire Wire Line
	7550 4700 7550 4600
Wire Wire Line
	7550 4600 7100 4600
Connection ~ 7550 4700
$Comp
L power:GND #PWR09
U 1 1 5E9DC0F5
P 7550 5500
F 0 "#PWR09" H 7550 5250 50  0001 C CNN
F 1 "GND" H 7555 5327 50  0000 C CNN
F 2 "" H 7550 5500 50  0001 C CNN
F 3 "" H 7550 5500 50  0001 C CNN
	1    7550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5500 7550 5400
Wire Wire Line
	7100 5400 7550 5400
Connection ~ 7300 6050
Wire Wire Line
	7150 6050 7300 6050
Wire Wire Line
	7150 6000 7150 6050
Wire Wire Line
	7450 6050 7300 6050
Wire Wire Line
	7450 6000 7450 6050
$Comp
L power:GND #PWR?
U 1 1 5E9EEEE2
P 7300 6050
AR Path="/5E994520/5E9EEEE2" Ref="#PWR?"  Part="1" 
AR Path="/5E9881B4/5E9EEEE2" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 7300 5800 50  0001 C CNN
F 1 "GND" H 7305 5877 50  0000 C CNN
F 2 "" H 7300 6050 50  0001 C CNN
F 3 "" H 7300 6050 50  0001 C CNN
	1    7300 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E9EEEE9
P 7450 5900
AR Path="/5E994520/5E9EEEE9" Ref="C?"  Part="1" 
AR Path="/5E9881B4/5E9EEEE9" Ref="C8"  Part="1" 
F 0 "C8" H 7542 5946 50  0000 L CNN
F 1 "2.2u" H 7542 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7450 5900 50  0001 C CNN
F 3 "~" H 7450 5900 50  0001 C CNN
F 4 " 963-TMK107ABJ225MA-T " H 7450 5900 50  0001 C CNN "OrderN"
	1    7450 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E9EEEF0
P 7150 5900
AR Path="/5E994520/5E9EEEF0" Ref="C?"  Part="1" 
AR Path="/5E9881B4/5E9EEEF0" Ref="C7"  Part="1" 
F 0 "C7" H 7242 5946 50  0000 L CNN
F 1 "2.2u" H 7242 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7150 5900 50  0001 C CNN
F 3 "~" H 7150 5900 50  0001 C CNN
F 4 " 963-TMK107ABJ225MA-T " H 7150 5900 50  0001 C CNN "OrderN"
	1    7150 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5800 7150 5700
Wire Wire Line
	7150 5700 7100 5700
Wire Wire Line
	7450 5800 7450 5600
Wire Wire Line
	7450 5600 7100 5600
Wire Wire Line
	8450 1600 8450 1400
Wire Wire Line
	8450 1400 7850 1400
Wire Wire Line
	7850 1400 7850 1700
Wire Wire Line
	7850 1700 7100 1700
Wire Wire Line
	8450 2100 7850 2100
Wire Wire Line
	7850 2100 7850 1800
Wire Wire Line
	7850 1800 7100 1800
Wire Wire Line
	8450 1900 8450 2100
Connection ~ 8450 1400
Connection ~ 8450 2100
Wire Wire Line
	8750 1400 8900 1400
Wire Wire Line
	8900 1400 8900 1750
Wire Wire Line
	8650 1750 8900 1750
Connection ~ 8900 1750
Wire Wire Line
	8900 1750 8900 2100
Connection ~ 8900 2100
Wire Wire Line
	8750 2100 8900 2100
$Comp
L power:GND #PWR012
U 1 1 5E9B319A
P 8900 2100
F 0 "#PWR012" H 8900 1850 50  0001 C CNN
F 1 "GND" H 8905 1927 50  0000 C CNN
F 2 "" H 8900 2100 50  0001 C CNN
F 3 "" H 8900 2100 50  0001 C CNN
	1    8900 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5EA053A3
P 8150 1850
F 0 "#PWR011" H 8150 1600 50  0001 C CNN
F 1 "GND" H 8155 1677 50  0000 C CNN
F 2 "" H 8150 1850 50  0001 C CNN
F 3 "" H 8150 1850 50  0001 C CNN
	1    8150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1850 8150 1750
Wire Wire Line
	8150 1750 8250 1750
Text Label 4600 2800 2    50   ~ 0
ADC12_IN8
Text Label 4600 2900 2    50   ~ 0
ADC12_IN9
NoConn ~ 9850 5200
$Comp
L power:GND #PWR?
U 1 1 5E9CE67D
P 10550 4950
AR Path="/5E994520/5E9CE67D" Ref="#PWR?"  Part="1" 
AR Path="/5E9881B4/5E9CE67D" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 10550 4700 50  0001 C CNN
F 1 "GND" H 10555 4777 50  0000 C CNN
F 2 "" H 10550 4950 50  0001 C CNN
F 3 "" H 10550 4950 50  0001 C CNN
	1    10550 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J?
U 1 1 5E9CE687
P 10150 5400
AR Path="/5E994520/5E9CE687" Ref="J?"  Part="1" 
AR Path="/5E9881B4/5E9CE687" Ref="J2"  Part="1" 
F 0 "J2" H 9920 5297 50  0000 R CNN
F 1 "USB_B_Mini" H 9920 5388 50  0000 R CNN
F 2 "Connector_USB:USB_Mini-B_Lumberg_2486_01_Horizontal" H 10300 5350 50  0001 C CNN
F 3 "~" H 10300 5350 50  0001 C CNN
F 4 " 151-1206-1-ND " H 10150 5400 50  0001 C CNN "OrderN"
	1    10150 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 5000 10250 4850
Wire Wire Line
	10250 4850 10550 4850
Wire Wire Line
	10550 4850 10550 4950
Wire Wire Line
	10150 5000 10150 4850
Wire Wire Line
	10150 4850 10250 4850
Connection ~ 10250 4850
Text Label 9850 5300 2    50   ~ 0
MCU_USB_DM
Text Label 9850 5400 2    50   ~ 0
MCU_USB_DP
Text HLabel 9450 5600 0    50   Input ~ 0
MCU_USB_VBUS
$Comp
L Device:R_Small R?
U 1 1 5E9D3D5E
P 4400 2600
AR Path="/5E994520/5E9D3D5E" Ref="R?"  Part="1" 
AR Path="/5E9881B4/5E9D3D5E" Ref="R5"  Part="1" 
F 0 "R5" V 4500 2600 50  0000 C CNN
F 1 "22R" V 4450 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4400 2600 50  0001 C CNN
F 3 "~" H 4400 2600 50  0001 C CNN
F 4 " 71-CRCW060322R0FKEAC " H 4400 2600 50  0001 C CNN "OrderN"
	1    4400 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 2600 4500 2600
Wire Wire Line
	3900 2600 4300 2600
Wire Wire Line
	3900 2500 4050 2500
Wire Wire Line
	4250 2500 4600 2500
$Comp
L Device:R_Small R?
U 1 1 5E9D3D69
P 4150 2500
AR Path="/5E994520/5E9D3D69" Ref="R?"  Part="1" 
AR Path="/5E9881B4/5E9D3D69" Ref="R4"  Part="1" 
F 0 "R4" V 4050 2500 50  0000 C CNN
F 1 "22R" V 4100 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4150 2500 50  0001 C CNN
F 3 "~" H 4150 2500 50  0001 C CNN
F 4 " 71-CRCW060322R0FKEAC " H 4150 2500 50  0001 C CNN "OrderN"
	1    4150 2500
	0    1    1    0   
$EndComp
Text Label 3900 2500 2    50   ~ 0
MCU_USB_DM
Text Label 3900 2600 2    50   ~ 0
MCU_USB_DP
Text Label 4600 3300 2    50   ~ 0
LED_GREEN
$Comp
L Device:LED_Small D1
U 1 1 5E9EC139
P 2450 3300
F 0 "D1" H 2450 3535 50  0000 C CNN
F 1 "GREEN" H 2450 3444 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 2450 3300 50  0001 C CNN
F 3 "~" V 2450 3300 50  0001 C CNN
F 4 " 710-150060VS75000 " H 2450 3300 50  0001 C CNN "OrderN"
	1    2450 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E9EE494
P 2200 4500
F 0 "#PWR01" H 2200 4250 50  0001 C CNN
F 1 "GND" H 2205 4327 50  0000 C CNN
F 2 "" H 2200 4500 50  0001 C CNN
F 3 "" H 2200 4500 50  0001 C CNN
	1    2200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3300 2200 3300
Wire Wire Line
	2350 4300 2200 4300
Connection ~ 2200 4300
Wire Wire Line
	2200 4300 2200 4500
$Comp
L Device:R_Small R?
U 1 1 5E9F14F9
P 3000 3300
AR Path="/5E994520/5E9F14F9" Ref="R?"  Part="1" 
AR Path="/5E9881B4/5E9F14F9" Ref="R1"  Part="1" 
F 0 "R1" V 2900 3300 50  0000 C CNN
F 1 "1K" V 2950 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3000 3300 50  0001 C CNN
F 3 "~" H 3000 3300 50  0001 C CNN
F 4 " 71-CRCW06031K00JNEAC " H 3000 3300 50  0001 C CNN "OrderN"
	1    3000 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E9F237D
P 3000 4300
AR Path="/5E994520/5E9F237D" Ref="R?"  Part="1" 
AR Path="/5E9881B4/5E9F237D" Ref="R3"  Part="1" 
F 0 "R3" V 2900 4300 50  0000 C CNN
F 1 "1K" V 2950 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3000 4300 50  0001 C CNN
F 3 "~" H 3000 4300 50  0001 C CNN
F 4 " 71-CRCW06031K00JNEAC " H 3000 4300 50  0001 C CNN "OrderN"
	1    3000 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 3300 2900 3300
Wire Wire Line
	2550 4300 2900 4300
$Comp
L Device:LED_Small D3
U 1 1 5E9F55BA
P 2450 4300
F 0 "D3" H 2450 4535 50  0000 C CNN
F 1 "RED" H 2450 4444 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 2450 4300 50  0001 C CNN
F 3 "~" V 2450 4300 50  0001 C CNN
F 4 " 710-150060RS75000 " H 2450 4300 50  0001 C CNN "OrderN"
	1    2450 4300
	1    0    0    -1  
$EndComp
Text Label 3250 3300 0    50   ~ 0
LED_GREEN
Text Label 3250 4300 0    50   ~ 0
LED_RED
Wire Wire Line
	3100 3300 3250 3300
Wire Wire Line
	3100 4300 3250 4300
Text HLabel 4600 1400 0    50   Input ~ 0
DAT0
Text HLabel 4600 1500 0    50   Input ~ 0
DAT1
Text HLabel 4600 1600 0    50   Input ~ 0
DAT2
Text HLabel 4600 1700 0    50   Input ~ 0
DAT3
Text HLabel 4600 1800 0    50   Input ~ 0
DAT4
Text HLabel 4600 1900 0    50   Input ~ 0
DAT5
Text HLabel 4600 2000 0    50   Input ~ 0
DAT6
Text HLabel 4600 2100 0    50   Input ~ 0
DAT7
Text HLabel 4600 4200 0    50   Input ~ 0
DAT8
Text HLabel 4600 4300 0    50   Input ~ 0
DAT9
Text HLabel 4600 4400 0    50   Input ~ 0
DAT10
Text HLabel 4600 4500 0    50   Input ~ 0
DAT11
Text HLabel 4600 4600 0    50   Input ~ 0
DAT12
Text HLabel 4600 4700 0    50   Input ~ 0
DAT13
Text HLabel 4600 4800 0    50   Input ~ 0
DAT14
Text HLabel 4600 4900 0    50   Input ~ 0
DAT15
Text HLabel 4600 2200 0    50   Input ~ 0
AUX0
Text HLabel 4600 2300 0    50   Input ~ 0
AUX1
Text HLabel 4600 2400 0    50   Input ~ 0
AUX2
Text HLabel 4600 5000 0    50   Input ~ 0
AUX3
Text HLabel 4600 5100 0    50   Input ~ 0
AUX4
Text HLabel 4600 5200 0    50   Input ~ 0
AUX5
Text Label 4600 3500 2    50   ~ 0
LED_RED
Text Label 4600 3400 2    50   ~ 0
LED_YELLOW
Wire Wire Line
	2200 3300 2200 3800
$Comp
L Device:R_Small R?
U 1 1 5EA04D09
P 3000 3800
AR Path="/5E994520/5EA04D09" Ref="R?"  Part="1" 
AR Path="/5E9881B4/5EA04D09" Ref="R2"  Part="1" 
F 0 "R2" V 2900 3800 50  0000 C CNN
F 1 "1K" V 2950 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3000 3800 50  0001 C CNN
F 3 "~" H 3000 3800 50  0001 C CNN
F 4 " 71-CRCW06031K00JNEAC " H 3000 3800 50  0001 C CNN "OrderN"
	1    3000 3800
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 5EA04FCC
P 2450 3800
F 0 "D2" H 2450 4035 50  0000 C CNN
F 1 "YELLOW" H 2450 3944 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 2450 3800 50  0001 C CNN
F 3 "~" V 2450 3800 50  0001 C CNN
F 4 " 710-150060YS75000 " H 2450 3800 50  0001 C CNN "OrderN"
	1    2450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3800 2550 3800
Wire Wire Line
	2350 3800 2200 3800
Connection ~ 2200 3800
Wire Wire Line
	2200 3800 2200 4300
Text Label 3250 3800 0    50   ~ 0
LED_YELLOW
Wire Wire Line
	3100 3800 3250 3800
Text Label 4600 3800 2    50   ~ 0
GPIO0
Text Label 4600 3900 2    50   ~ 0
GPIO1
Text Label 4600 4000 2    50   ~ 0
GPIO2
Text Label 4600 5300 2    50   ~ 0
GPIO3
Text Label 4600 5400 2    50   ~ 0
GPIO4
Text Label 4600 5500 2    50   ~ 0
GPIO5
NoConn ~ 4600 5700
$Comp
L power:GND #PWR?
U 1 1 5EA110AF
P 3350 7000
AR Path="/5E994520/5EA110AF" Ref="#PWR?"  Part="1" 
AR Path="/5E9881B4/5EA110AF" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 3350 6750 50  0001 C CNN
F 1 "GND" H 3355 6827 50  0000 C CNN
F 2 "" H 3350 7000 50  0001 C CNN
F 3 "" H 3350 7000 50  0001 C CNN
	1    3350 7000
	1    0    0    -1  
$EndComp
Text Notes 3600 6800 0    50   ~ 0
place close to pin 1, 19, 32, 48, 64, 13\n\n
$Comp
L power:+3V3 #PWR02
U 1 1 5EA1376D
P 3350 6800
F 0 "#PWR02" H 3350 6650 50  0001 C CNN
F 1 "+3V3" H 3365 6973 50  0000 C CNN
F 2 "" H 3350 6800 50  0001 C CNN
F 3 "" H 3350 6800 50  0001 C CNN
	1    3350 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6800 3550 6800
Wire Wire Line
	3350 7000 3550 7000
$Comp
L Device:C_Small C?
U 1 1 5EA14FEA
P 3550 6900
AR Path="/5E994520/5EA14FEA" Ref="C?"  Part="1" 
AR Path="/5E9881B4/5EA14FEA" Ref="C1"  Part="1" 
F 0 "C1" H 3642 6946 50  0000 L CNN
F 1 "2.2u" H 3642 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3550 6900 50  0001 C CNN
F 3 "~" H 3550 6900 50  0001 C CNN
F 4 " 963-TMK107ABJ225MA-T " H 3550 6900 50  0001 C CNN "OrderN"
	1    3550 6900
	1    0    0    -1  
$EndComp
Connection ~ 3550 6800
Wire Wire Line
	3550 6800 3900 6800
Connection ~ 3550 7000
Wire Wire Line
	3550 7000 3900 7000
$Comp
L Device:C_Small C?
U 1 1 5EA15727
P 3900 6900
AR Path="/5E994520/5EA15727" Ref="C?"  Part="1" 
AR Path="/5E9881B4/5EA15727" Ref="C2"  Part="1" 
F 0 "C2" H 3992 6946 50  0000 L CNN
F 1 "2.2u" H 3992 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3900 6900 50  0001 C CNN
F 3 "~" H 3900 6900 50  0001 C CNN
F 4 " 963-TMK107ABJ225MA-T " H 3900 6900 50  0001 C CNN "OrderN"
	1    3900 6900
	1    0    0    -1  
$EndComp
Connection ~ 3900 6800
Wire Wire Line
	3900 6800 4200 6800
Connection ~ 3900 7000
Wire Wire Line
	3900 7000 4200 7000
$Comp
L Device:C_Small C?
U 1 1 5EA1590C
P 4200 6900
AR Path="/5E994520/5EA1590C" Ref="C?"  Part="1" 
AR Path="/5E9881B4/5EA1590C" Ref="C3"  Part="1" 
F 0 "C3" H 4292 6946 50  0000 L CNN
F 1 "2.2u" H 4292 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4200 6900 50  0001 C CNN
F 3 "~" H 4200 6900 50  0001 C CNN
F 4 " 963-TMK107ABJ225MA-T " H 4200 6900 50  0001 C CNN "OrderN"
	1    4200 6900
	1    0    0    -1  
$EndComp
Connection ~ 4200 6800
Wire Wire Line
	4200 6800 4500 6800
Connection ~ 4200 7000
Wire Wire Line
	4200 7000 4500 7000
$Comp
L Device:C_Small C?
U 1 1 5EA15BBD
P 4500 6900
AR Path="/5E994520/5EA15BBD" Ref="C?"  Part="1" 
AR Path="/5E9881B4/5EA15BBD" Ref="C4"  Part="1" 
F 0 "C4" H 4592 6946 50  0000 L CNN
F 1 "2.2u" H 4592 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4500 6900 50  0001 C CNN
F 3 "~" H 4500 6900 50  0001 C CNN
F 4 " 963-TMK107ABJ225MA-T " H 4500 6900 50  0001 C CNN "OrderN"
	1    4500 6900
	1    0    0    -1  
$EndComp
Connection ~ 4500 6800
Wire Wire Line
	4500 6800 4800 6800
Connection ~ 4500 7000
Wire Wire Line
	4500 7000 4800 7000
$Comp
L Device:C_Small C?
U 1 1 5EA15E5C
P 4800 6900
AR Path="/5E994520/5EA15E5C" Ref="C?"  Part="1" 
AR Path="/5E9881B4/5EA15E5C" Ref="C5"  Part="1" 
F 0 "C5" H 4892 6946 50  0000 L CNN
F 1 "2.2u" H 4892 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4800 6900 50  0001 C CNN
F 3 "~" H 4800 6900 50  0001 C CNN
F 4 " 963-TMK107ABJ225MA-T " H 4800 6900 50  0001 C CNN "OrderN"
	1    4800 6900
	1    0    0    -1  
$EndComp
Connection ~ 4800 6800
Wire Wire Line
	4800 6800 5100 6800
Connection ~ 4800 7000
Wire Wire Line
	4800 7000 5100 7000
$Comp
L Device:C_Small C?
U 1 1 5EA16107
P 5100 6900
AR Path="/5E994520/5EA16107" Ref="C?"  Part="1" 
AR Path="/5E9881B4/5EA16107" Ref="C6"  Part="1" 
F 0 "C6" H 5192 6946 50  0000 L CNN
F 1 "2.2u" H 5192 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5100 6900 50  0001 C CNN
F 3 "~" H 5100 6900 50  0001 C CNN
F 4 " 963-TMK107ABJ225MA-T " H 5100 6900 50  0001 C CNN "OrderN"
	1    5100 6900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even GPIO2
U 1 1 5EA17BAA
P 1800 5550
F 0 "GPIO2" V 1804 5730 50  0000 L CNN
F 1 "GPIO" V 1895 5730 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 1800 5550 50  0001 C CNN
F 3 "~" H 1800 5550 50  0001 C CNN
	1    1800 5550
	0    1    1    0   
$EndComp
Text Label 1900 5350 1    50   ~ 0
GPIO0
Text Label 1900 5850 3    50   ~ 0
GPIO1
Text Label 1800 5350 1    50   ~ 0
GPIO2
Text Label 1800 5850 3    50   ~ 0
GPIO3
Text Label 1700 5350 1    50   ~ 0
GPIO4
Text Label 1700 5850 3    50   ~ 0
GPIO5
Text Label 1600 5350 1    50   ~ 0
GPIO6
Text Label 1600 5850 3    50   ~ 0
GPIO7
Text HLabel 4600 3600 0    50   Input ~ 0
REG1V2_ON
Text HLabel 4600 3700 0    50   Input ~ 0
PWRGD1V2
Text Label 7100 1400 0    50   ~ 0
GPIO6
Text Label 7100 1500 0    50   ~ 0
GPIO7
Text HLabel 7100 2850 2    50   Input ~ 0
SPI_SS
$Comp
L Device:C_Small C?
U 1 1 5EA6712A
P 9600 5800
AR Path="/5E994520/5EA6712A" Ref="C?"  Part="1" 
AR Path="/5E9881B4/5EA6712A" Ref="C25"  Part="1" 
F 0 "C25" H 9692 5846 50  0000 L CNN
F 1 "4.7u" H 9692 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9600 5800 50  0001 C CNN
F 3 "~" H 9600 5800 50  0001 C CNN
F 4 " 346-CM105X5R475M25AT " H 9600 5800 50  0001 C CNN "OrderN"
	1    9600 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5EA6A257
P 9600 6000
F 0 "#PWR032" H 9600 5750 50  0001 C CNN
F 1 "GND" H 9605 5827 50  0000 C CNN
F 2 "" H 9600 6000 50  0001 C CNN
F 3 "" H 9600 6000 50  0001 C CNN
	1    9600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 6000 9600 5900
Wire Wire Line
	9850 5600 9600 5600
Wire Wire Line
	9600 5600 9600 5700
Connection ~ 9600 5600
Wire Wire Line
	9600 5600 9450 5600
$EndSCHEMATC
