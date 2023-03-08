@REM 10 [device index] 08 10 [channel index] 00 00 00
@REM Switch MX Keys to channel 1
.\hidapitester.exe --vidpid 046D/C548 --usage 0x0001 --usagePage 0xFF00 --open --length 7 --send-output 0x10,0x02,0x09,0x1e,0x00,0x00,0x00
 
@REM Switch MX Anywhere 3 to channel 1
.\hidapitester.exe --vidpid 046D/C548 --usage 0x0001 --usagePage 0xFF00 --open --length 7 --send-output 0x10,0x01,0x0a,0x1b,0x00,0x00,0x00

.\ControlMyMonitor.exe /SetValue "CJG9S" 60 9
.\ControlMyMonitor.exe /SetValue "PX329" 60 17

TIMEOUT 5
