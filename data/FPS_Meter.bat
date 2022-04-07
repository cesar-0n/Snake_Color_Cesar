set T2=%time%
rem SEGUNDOS y CENTÉSIMAS (el 1 es para evitar error de numero que empieza por 0)(los parentesis son para usar menos rems)
for /f "delims=: tokens=3" %%A in ("%T1%") do set "TS1=1%%A"
for /f "delims=: tokens=3" %%A in ("%T2%") do set "TS2=1%%A"
rem SEGUNDOS (dFPS es decimalFPS)
for /f "delims=, tokens=1" %%A in ("%TS1%") do set "TSS1=%%A"
for /f "delims=, tokens=1" %%A in ("%TS2%") do set "TSS2=%%A"
rem CENTÉSIMAS (invT3 son los FPS x100)
for /f "delims=, tokens=2" %%A in ("%TS1%") do set "TSC1=%%A"
for /f "delims=, tokens=2" %%A in ("%TS2%") do set "TSC2=%%A"
set /a T3=%TSS2%%TSC2%-%TSS1%%TSC1%
set /a ms=%T3%*10
set /a invT3=100000/%T3%
set /a intFPS=%invT3%/1000
set /a FPSx=%intFPS%*1000
set /a dFPS=(%invT3%-%FPSx%)+1000
rem FPS enteros (sin decimales) menos FPS solo con decimales (la parte entera es 0)
set FPS=%intFPS%.%dFPS:~1%
set T1=%time%
goto :EOF