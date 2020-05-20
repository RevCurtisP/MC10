100 REM MC-10 TAPE DIRECTORY
105 CLEAR 512:HS=16991:RB=16384:RT=PEEK(16976)*256+PEEK(16977):X$="0123456789ABCDEF":X$(1)=" "
110 CLS:PRINT "CASSETTE FILE DIRECTORY"
112 PRINT "(S)CREEN OR (P)RINTER"
114 O$=INKEY$:IF O$<>"S" AND O$<>"P" THEN 114 
116 PRINT "(F)ORMATTED OR (R)AW"
118 M$=INKEY$:IF M$<>"F" AND M$<>"R" THEN 118 
120 IF M$="R" THEN H$="FILENAME FT DT GF EXEC LOAD":GOTO 126
122 H$="         FILE DATA  EXEC  SIZE"+CHR$(13)+"FILENAME TYPE TYPE  ADDR /LOAD"
126 Q$=CHR$(34):PRINT "PRESS PLAY ON TAPE"
130 FOR I=0 TO 13:POKE HS+I,0:NEXT
132 SKIPF:IF PEEK(HS)=255 THEN 182
134 IF L THEN 140
136 IF O$="P" THEN LPRINT H$:GOTO 140
138 CLS:PRINT H$
140 N$="":P$=" ":J$="":FOR I=0 TO 7:K=PEEK(HS+I):Z$=CHR$(K):K$=Q$+Z$+Q$:IF K<32 THEN Z$=".":P$="*":K$="^"+CHR$(K+64)
142 N$=N$+Z$:J$=J$+K$:IF I<7 THEN J$=J$+" "
144 NEXT:L$=N$+" ":IF P$="*" THEN L$=J$+CHR$(13)+"         "
146 IF O$="P" THEN PRINT @96,"FOUND ";N$
148 IF M$="R" THEN FOR I=8 TO 14:X=PEEK(HS+I):L$=L$+MID$(X$,X/16+1,1)+MID$(X$,(XAND15)+1,1)+X$(-(I<11 OR I=12)):NEXT:GOTO 170
150 T=PEEK(HS+8):T$="DAT":U$="*":IF T<5 THEN T$=MID$("BASDATM/LDATVAR",T*3+1,3):IF T<>3 THEN U$=" "
152 D=PEEK(HS+9):D$="BIN":C$=" ":IF D THEN D$="ASC":IF D<255 THEN C$="*"
154 E=PEEK(HS+11)*256+PEEK(HS+12):E$="     ":IF T=2 THEN E$=RIGHT$("   "+STR$(E),5)
156 F$=" ":IF T=2 AND (E<RB OR E>RT) THEN F$="*"
158 S=PEEK(HS+13)*256+PEEK(HS+14):S$=RIGHT$("   "+STR$(S),5):IF T=0 AND D=0 AND S>16384 THEN U$="*"
160 G$=" ":IF T=2 AND (S<RB OR S>RT) THEN G$="*"
162 IF (T=0 AND (D OR S=0)) OR T=1 THEN E$="<COCO":S$="FILE>":IF T=0 THEN S$="PROG>"
164 IF T=3 OR T>4 THEN E$="<MISC":S$="FILE>"
166 IF T=2 AND (S=16384 OR S=1024) THEN E$="<MC10":F$=" ":S$="SCRN>":G$=F$:IF S=1024 THEN E$="<COCO"
168 L$=N$+P$+T$+U$+" "+D$+C$+" "+E$+F$+S$+G$:
170 IF O$="S" THEN PRINT L$:GOTO 174
172 LPRINT L$
174 L=L+1:IF O$="P" OR L<12 THEN 130
176 L=0:PRINT:PRINT "  PRESS ANY KEY TO CONTINUE";
178 IF INKEY$="" THEN 178
180 GOTO 130
182 IF L=0 THEN PRINT "END OF TAPE"
184 END
