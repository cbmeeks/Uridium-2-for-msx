10 SCREEN 8,3
20 COLOR 15,0,0:CLS
30 SPRITE$(0)=STRING$(32,255)
40 T=0
50 J = 0 
60 OPEN "GRP:" FOR OUTPUT AS #1
100 FOR J=0 TO 15
110 FOR I=0 TO 15
120 CLS
121 PUT SPRITE T  ,(0,0),8,0
122 PUT SPRITE T+1,(16,0),64+2,0
130 COLOR SPRITE$(1)=STRING$(16,J+64)
140 COLOR SPRITE$(0)=STRING$(16,I)
150 PSET(0,64):PRINT #1,I,J
160 A$ = INPUT$(1)
170 NEXT:NEXT
180 REM GOTO 180
