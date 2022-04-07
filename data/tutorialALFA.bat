------------------------------------------------------------------------------------
:LEVEL-1
------------------------------------------------------------------------------------
cls
goto 1122

:p1111
set /p yz=
if %yz% == reset goto LEVEL-1
if %yz% == resetmode goto LEVEL-1
if %yz% == exit goto mainmenu
if %yz% == w goto 1111
if %yz% == a goto 1111
if %yz% == s goto 1121
if %yz% == d goto 1112
if not %yz% == w goto 1111

:p1112
set /p yz=
if %yz% == reset goto LEVEL-1
if %yz% == resetmode goto LEVEL-1
if %yz% == exit goto mainmenu
if %yz% == w goto 1112
if %yz% == a goto 1111
if %yz% == s goto 1122
if %yz% == d goto 1113
if not %yz% == w goto 1112

:p1113
set /p yz=
if %yz% == reset goto LEVEL-1
if %yz% == resetmode goto LEVEL-1
if %yz% == exit goto mainmenu
if %yz% == w goto 1113
if %yz% == a goto 1112
if %yz% == s goto 1123
if %yz% == d goto 1113
if not %yz% == w goto 1113

:p1121
set /p yz=
if %yz% == reset goto LEVEL-1
if %yz% == resetmode goto LEVEL-1
if %yz% == exit goto mainmenu
if %yz% == w goto 1111
if %yz% == a goto 1121
if %yz% == s goto 1131
if %yz% == d goto 1122
if not %yz% == w goto 1121

:p1122
set /p yz=
if %yz% == reset goto LEVEL-1
if %yz% == resetmode goto LEVEL-1
if %yz% == exit goto mainmenu
if %yz% == w goto 1112
if %yz% == a goto 1121
if %yz% == s goto 1132
if %yz% == d goto 1123
if not %yz% == w goto 1122

:p1123
set /p yz=
if %yz% == reset goto LEVEL-1
if %yz% == resetmode goto LEVEL-1
if %yz% == exit goto mainmenu
if %yz% == w goto 1113
if %yz% == a goto 1122
if %yz% == s goto 1133
if %yz% == d goto 1123
if not %yz% == w goto 1123

:p1131
set /p yz=
if %yz% == reset goto LEVEL-1
if %yz% == resetmode goto LEVEL-1
if %yz% == exit goto mainmenu
if %yz% == w goto 1121
if %yz% == a goto 1131
if %yz% == s goto 1131
if %yz% == d goto 1132
if not %yz% == w goto 1131

:p1132
set /p yz=
if %yz% == reset goto LEVEL-1
if %yz% == resetmode goto LEVEL-1
if %yz% == exit goto mainmenu
if %yz% == w goto 1122
if %yz% == a goto 1131
if %yz% == s goto 1132
if %yz% == d goto 1133
if not %yz% == w goto 1132

:p1133
set /p yz=
if %yz% == reset goto LEVEL-1
if %yz% == resetmode goto LEVEL-1
if %yz% == exit goto mainmenu
if %yz% == w goto 1123
if %yz% == a goto 1132
if %yz% == s goto 1133
if %yz% == d goto 1133
if not %yz% == w goto 1133


:1111
cls
echo.
echo 	LEVEL 1
echo.
echo 	 x--
echo 	 ---
echo 	 ---
goto LEVEL-2

:1112
cls
echo.
echo 	LEVEL 1
echo.
echo 	 *o-
echo 	 ---
echo 	 ---
goto p1112

:1113
cls
echo.
echo 	LEVEL 1
echo.
echo 	 *-o
echo 	 ---
echo 	 ---
goto p1113

:1121
cls
echo.
echo 	LEVEL 1
echo.
echo 	 *--
echo 	 o--
echo 	 ---
goto p1121

:1122
cls
echo.
echo 	LEVEL 1
echo.
echo 	 *--
echo 	 -o-
echo 	 ---
goto p1122

:1123
cls
echo.
echo 	LEVEL 1
echo.
echo 	 *--
echo 	 --o
echo 	 ---
goto p1123

:1131
cls
echo.
echo 	LEVEL 1
echo.
echo 	 *--
echo 	 ---
echo 	 o--
goto p1131

:1132
cls
echo.
echo 	LEVEL 1
echo.
echo 	 *--
echo 	 ---
echo 	 -o-
goto p1132

:1133
cls
echo.
echo 	LEVEL 1
echo.
echo 	 *--
echo 	 ---
echo 	 --o
goto p1133


------------------------------------------------------------------------------------
:LEVEL-2
------------------------------------------------------------------------------------
cls
goto 1222

:p1211
set /p yz=
if %yz% == w goto 1211
if %yz% == a goto 1211
if %yz% == s goto 1221
if %yz% == d goto 1212
if not %yz% == w goto 1211

:p1212
set /p yz=
if %yz% == w goto 1212
if %yz% == a goto 1211
if %yz% == s goto 1222
if %yz% == d goto 1213
if not %yz% == w goto 1212

:p1213
set /p yz=
if %yz% == w goto 1213
if %yz% == a goto 1212
if %yz% == s goto 1223
if %yz% == d goto 1213
if not %yz% == w goto 1213

:p1221
set /p yz=
if %yz% == w goto 1211
if %yz% == a goto 1221
if %yz% == s goto 1231
if %yz% == d goto 1222
if not %yz% == w goto 1221

:p1222
set /p yz=
if %yz% == w goto 1212
if %yz% == a goto 1221
if %yz% == s goto 1232
if %yz% == d goto 1223
if not %yz% == w goto 1222

:p1223
set /p yz=
if %yz% == w goto 1213
if %yz% == a goto 1222
if %yz% == s goto 1233
if %yz% == d goto 1223
if not %yz% == w goto 1223

:p1231
set /p yz=
if %yz% == w goto 1221
if %yz% == a goto 1231
if %yz% == s goto 1231
if %yz% == d goto 1232
if not %yz% == w goto 1231

:p1232
set /p yz=
if %yz% == w goto 1222
if %yz% == a goto 1231
if %yz% == s goto 1232
if %yz% == d goto 1233
if not %yz% == w goto 1232

:p1233
set /p yz=
if %yz% == w goto 1223
if %yz% == a goto 1232
if %yz% == s goto 1233
if %yz% == d goto 1233
if not %yz% == w goto 1233


:1211
cls
echo.
echo 	LEVEL 2
echo.
echo 	 o*-
echo 	 ---
echo 	 ---
goto p1211

:1212
cls
echo.
echo 	LEVEL 2
echo.
echo 	 -x-
echo 	 ---
echo 	 ---
goto LEVEL-3

:1213
cls
echo.
echo 	LEVEL 2
echo.
echo 	 -*o
echo 	 ---
echo 	 ---
goto p1213

:1221
cls
echo.
echo 	LEVEL 2
echo.
echo 	 -*-
echo 	 o--
echo 	 ---
goto p1221

:1222
cls
echo.
echo 	LEVEL 2
echo.
echo 	 -*-
echo 	 -o-
echo 	 ---
goto p1222

:1223
cls
echo.
echo 	LEVEL 2
echo.
echo 	 -*-
echo 	 --o
echo 	 ---
goto p1223

:1231
cls
echo.
echo 	LEVEL 2
echo.
echo 	 -*-
echo 	 ---
echo 	 o--
goto p1231

:1232
cls
echo.
echo 	LEVEL 2
echo.
echo 	 -*-
echo 	 ---
echo 	 -o-
goto p1232

:1233
cls
echo.
echo 	LEVEL 2
echo.
echo 	 -*-
echo 	 ---
echo 	 --o
goto p1233

------------------------------------------------------------------------------------
:LEVEL-3
------------------------------------------------------------------------------------
cls
echo.
echo ENHORABUENA HA TERMINADO LA DEMO
echo.
pause>nul
goto :EOF