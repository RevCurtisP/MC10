NEW
100 REM Test TP-10 Control Codes
102 L$=CHR$(10):N$=CHR$(13):I$=CHR$(14):O$=CHR$(15)
104 R$=CHR$(26):E$=CHR$(27):P$=CHR$(28):W$=E$+I$:X$=E$+O$
106 Q$=CHR$(34):U$=CHR$(95):S$=CHR$(96):T$=CHR$(126)
108 FOR G=128 TO 143:G$=G$+CHR$(G):NEXT
110 LPRINT "TANDY TP-10 TEST"
112 LPRINT "Embedded"L$"LineFeed"
114 LPRINT "Elongated "W$"ON "X$"OFF"
116 LPRINT "Repeat 11: "P$CHR$(11)"*"
118 LPRINT "Line Wrap with a Carriage Return"
120 LPRINT "E b d e   a r a e R t r "R$" m e d d C r i g   e u n"
122 LPRINT "This is underlined?"R$"        "P$L$U$
124 LPRINT "Strikethrough"R$P$N$"-"
126 LPRINT "Double Strike Text"R$"Double Strike Text"
128 LPRINT "Accents: aeiou aeiou aeiou n"R$"         ''''' "S$S$S$"^^ ^^"Q$Q$Q$" "T$
130 LPRINT N$W$"Elongated Block"N$"---------------"
132 LPRINT "Embedded"L$"LineFeed"
134 LPRINT "Repeat 11: "P$CHR$(11)"*"
136 LPRINT "LineWrap with CR"
138 LPRINT "Embedded Carriag|e R t r "R$"   e u n"
140 LPRINT "Underlined"R$P$L$U$
142 LPRINT "Strikethrough"R$P$N$"-"
144 LPRINT "Double Strike"R$"Double Strike"
146 LPRINT "Accents: aeion"R$"         '"S$Q$"^"T$
148 LPRINT X$
150 LPRINT "Semigraphic Characters"
152 LPRINT G$
154 LPRINT ""
156 LPRINT "Elongated Semigraphics"
158 LPRINT W$G$X$
160 LPRINT ""
162 LPRINT "TEST COMPLETE"
RUN
