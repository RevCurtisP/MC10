100 REM Test TP-10 Control Codes
102 L$=CHR$(10):N$=CHR$(13):I$=CHR$(14):O$=CHR$(15)
104 R$=CHR$(26):E$=CHR$(27):P$=CHR$(28):W$=E$+I$:X$=E$+O$
106 Q$=CHR$(34):U$=CHR$(95):S$=CHR$(96):T$=CHR$(126)
108 FOR G=128 TO 143:G$=G$+CHR$(G):NEXT
110 LPRINT "TANDY TP-10 TEST"
112 LPRINT "Embedded"L$"Line Feed"
114 LPRINT "Elongated "W$"ON "X$"OFF"
116 LPRINT "Repeat 11: "P$CHR$(11)"*"
120 LPRINT "E b d e   a r a e R t r "R$" m e d d C r i g   e u n"
122 LPRINT "Is this underlined?"R$"        "P$L$U$
124 LPRINT "Strikethrough?"R$P$N$"-"
126 LPRINT "Double Strike Text?"R$"Double Strike Text?"
128 LPRINT "Accents? aeiou aeiou aeiou n"R$"         ''''' "S$S$S$S$S$" "Q$Q$Q$Q$Q$" "T$
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
