{\rtf1\ansi\deff0{\fonttbl{\f0\fswiss\fcharset0 Arial;}}
{\*\generator Msftedit 5.41.15.1515;}\viewkind4\uc1\pard\lang1040\f0\fs20 10 screen 8\par
20 set page 1,1\par
30 for i=0 to 255: line (i,0)-(i,211),i:next\par
40 set page 0,0\par
50 '\par
60 copy (0,0)-(255,211),1 to (0,0),0\par
65 for j=0 to 100\par
70 for i=-7 to 8\par
80 set adjust (i,0)\par
90 next\par
100 for i=8 to -7 step -1\par
110 set adjust (i,0)\par
120 next\par
125 next\par
130 goto 60\par
\par
}
 