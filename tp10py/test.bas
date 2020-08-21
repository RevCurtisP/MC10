100 REM Test TP-10 Control Codes
102 L$=CHR$(10):N$=CHR$(13):I$=CHR$(14):O$=CHR$(15):R$=CHR$(26):
104 E$=CHR$(27):P$=CHR$(28):Q$=CHR$(34):W$=E$+I$:X$=E$+O$
106 FOR G=128 TO 143:G$=G$+CHR$(G):NEXT
110 LPRINT "TANDY TP-10 TEST"
112 LPRINT "Embedded"L$"Line Feed"
114 LPRINT "Elongated "W$"ON "X$"OFF"
116 LPRINT "Repeat 11: "P$CHR$(11)"*"
120 LPRINT "This will be overwritten by a"R$"Carriage Return"
122 LPRINT "Is this underlined?"R$P$CHR$(8)" __________"
124 LPRINT "Strikethrough?"R$P$CHR$(13)"-"
126 LPRINT "Double Strike Text?"R$"Double Strike Text?"
128 LPRINT "Accents? aeiou aeiou aeiou n"R$"         ''''' ````` "Q$Q$Q$Q$Q$" ~"
130 LPRINT W$"Elongated Text Block"
132 LPRINT "Embedded"L$"Line Feed"
134 LPRINT "Overwrite with"R$"Carriage Return"
136 LPRINT "Repeat 11: "P$CHR$(11)"*"X$
140 LPRINT "Semigraphic Characters"
142 LPRINT G$
144 LPRINT ""
146 LPRINT "Elongated Semigraphics"
148 LPRINT W$G$X$
150 LPRINT ""
152 LPRINT "TEST COMPLETE"
