@echo off
setlocal enabledelayedexpansion
:pri
cls
set part_body_%kontador_less1%=egiuhg
set old_part_body_%kontador_less1%=yoquese
set player=7
set meta=10
set target=3
:: --------------
set kontador=1
echo [91m
set t1_old=%time%
call data\loop_body_main\loop_body_3true.bat
set t2_old=%time%
:: --------------
:: --------------
set target=3
set kontador=2
echo [92m
set t1_new=%time%
call data\loop_body_main\loop_body_3true_FOR.bat
set t2_new=%time%
:: --------------

echo [91m
echo %t1_old%
echo %t2_old%
echo [92m
echo %t1_new%
echo %t2_new%
echo.
rem SEGUNDOS y CENTÉSIMAS (el 1 es para evitar error de numero que empieza por 0)(los parentesis son para usar menos rems)
for /f "delims=: tokens=3" %%A in ("%t1_old%") do set "TS1=1%%A"
for /f "delims=: tokens=3" %%A in ("%t2_old%") do set "TS2=1%%A"
rem SEGUNDOS (dFPS es decimalFPS)
for /f "delims=, tokens=1" %%A in ("%TS1%") do set "TSS1=%%A"
for /f "delims=, tokens=1" %%A in ("%TS2%") do set "TSS2=%%A"
rem CENTÉSIMAS (invT3 son los FPS x100)
for /f "delims=, tokens=2" %%A in ("%TS1%") do set "TSC1=%%A"
for /f "delims=, tokens=2" %%A in ("%TS2%") do set "TSC2=%%A"
set /a T3=%TSS2%%TSC2%-%TSS1%%TSC1%
set /a duracion_old=%T3%*10
::----------------------------------------------------------------------
rem SEGUNDOS y CENTÉSIMAS (el 1 es para evitar error de numero que empieza por 0)(los parentesis son para usar menos rems)
for /f "delims=: tokens=3" %%A in ("%t1_new%") do set "TS1_new=1%%A"
for /f "delims=: tokens=3" %%A in ("%t2_new%") do set "TS2_new=1%%A"
rem SEGUNDOS (dFPS es decimalFPS)
for /f "delims=, tokens=1" %%A in ("%TS1_new%") do set "TSS1_new=%%A"
for /f "delims=, tokens=1" %%A in ("%TS2_new%") do set "TSS2_new=%%A"
rem CENTÉSIMAS (invT3 son los FPS x100)
for /f "delims=, tokens=2" %%A in ("%TS1_new%") do set "TSC1_new=%%A"
for /f "delims=, tokens=2" %%A in ("%TS2_new%") do set "TSC2_new=%%A"
set /a T3_new=%TSS2_new%%TSC2_new%-%TSS1_new%%TSC1_new%
set /a duracion_new=%T3_new%*10

echo OLD = %duracion_old% ms
echo NEW = %duracion_new% ms
:DC
set /p car="> "
%car%
goto DC