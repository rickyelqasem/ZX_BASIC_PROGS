10 LET ayctrl=65533
20 LET aydata = 49149
30 OUT ayctrl,7 : REM select the mixer register
40 OUT aydata,62 : REM enable channel A only
50 OUT ayctrl,1 : REM channel A course pitch
60 OUT aydata,7 : REM set it
70 OUT ayctrl,8 : REM channel A volume
80 OUT aydata,15 : REM set it to maximum
90 PRINT"AY CHANNEL TESTER"
100 PRINT "TESTING CHANNEL A - PRESS ANYKEY TO TEST NEXT CHANNEL"

110 IF INKEY$ = "" THEN GO TO 110
120 OUT ayctrl,8 : REM channel A volume
125 OUT aydata,0 : REM set it to minimum
130 LET ayctrl=65533
140 LET aydata = 49149
150 OUT ayctrl,7 : REM select the mixer register
160 OUT aydata,61 : REM enable channel B only
170 OUT ayctrl,3 : REM channel B course pitch
180 OUT aydata,7 : REM set it
190 OUT ayctrl,9 : REM channel B volume
200 OUT aydata,15 : REM set it to maximum
210 PRINT "TESTING CHANNEL B - PRESS ANYKEY TO TEST NEXT CHANNEL"

220 IF INKEY$ = "" THEN GO TO 220
230 OUT ayctrl,9 : REM channel B volume
235 OUT aydata,0 : REM set it to minimum
240 LET ayctrl=65533
250 LET aydata = 49149
260 OUT ayctrl,7 : REM select the mixer register
270 OUT aydata,59 : REM enable channel C only
280 OUT ayctrl,5 : REM channel C course pitch
290 OUT aydata,7 : REM set it
300 OUT ayctrl,10 : REM channel C volume
310 OUT aydata,15 : REM set it to maximum
320 PRINT "TESTING CHANNEL c - PRESS ANYKEY TO STOP"

340 IF INKEY$ = "" THEN GO TO 340
350 OUT ayctrl,10 : REM channel C volume
360 OUT aydata,0 : REM set it to minimum 