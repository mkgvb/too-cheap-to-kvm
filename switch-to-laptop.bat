rem Switch MX Keys to channel 2
.\hidapitester.exe --vidpid 046D/C548 --usage 0x0001 --usagePage 0xFF00 --open --length 7 --send-output 0x10,0x01,0x09,0x1e,0x01,0x00,0x00

rem Switch MX Anywhere 3 to channel 2
.\hidapitester.exe --vidpid 046D/C548 --usage 0x0001 --usagePage 0xFF00 --open --length 7 --send-output 0x10,0x02,0x0a,0x1b,0x01,0x00,0x00

@REM SAMSUNG
@REM 3 is unpredictable, idk what it is
@REM 6 is HDMI
@REM 9 is DP1

@REM changes values? newest at bottom
.\ControlMyMonitor.exe /SetValue "MONITOR\SAM0F9C\{4d36e96e-e325-11ce-bfc1-08002be10318}\0002" 60 6 
.\ControlMyMonitor.exe /SetValue "MONITOR\SAM0F9C\{4d36e96e-e325-11ce-bfc1-08002be10318}\0009" 60 6

@REM PIXIO
@REM 18 HDMI2 ?
@REM 17 DP1

@REM .\ControlMyMonitor.exe /SetValue "MONITOR\PNS0329\{4d36e96e-e325-11ce-bfc1-08002be10318}\0001" 60 18
.\ControlMyMonitor.exe /SetValue "PX329" 60 18

TIMEOUT 5