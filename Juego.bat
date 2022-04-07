@echo off
setlocal enabledelayedexpansion
mode 120,30
color 7
:ceroth
rem choice /c P§ /n /d P /t 1
rem if %errorlevel% == 2 goto DEVELOPER_CONSOLE

rem =======================================
rem --------------CONFIGURACION------------
set godMode=
set goesfrom=game
echo Loading sprite "head"...
set cabeza=[38;5;40mÛ[0m
echo Loading sprite "tail"...
set cola=[38;5;40m±[0m
echo Loading sprite "food"...
set comida=[38;2;231;72;86mÛ[0m
echo Loading sprite "ground"...
set fondo=[38;5;243m²[0m
if exist data/config_raw.bat (call data/config_raw.bat) else (call data/recover&call data/save&goto pri)
rem timeout /t 0
rem ---------------------------------------
rem =======================================

:pri
cls
call data\loader.bat
set T1=%time%
cls
call data/intro.bat
color A
:mainmenu
color A
if "%showBetaAlfa%" == "false" (set hide=rem ) else (set hide=)
cls
echo. 
call data/title.bat
echo.   
echo 	1 = %play%
echo 	2 = %play_loop%
echo 	3 = %configuracion%
%hide%echo 	4 = %playALFA% ALFA!
%hide%echo 	5 = %playBETA% BETA!

echo.
set errorlevel=
choice /c §12345 /n
if %errorlevel% == 1 call :DEVELOPER_CONSOLE
if %errorlevel% == 2 goto update_2020/10/06
if %errorlevel% == 3 goto update_2020/10/06_bucle
if %errorlevel% == 4 call data/config.bat
%hide%if %errorlevel% == 5 call data/tutorialALFA
%hide%if %errorlevel% == 6 call data/freemodeBETA
goto mainmenu

:update_2020/10/06
set x=10
set y=10
set player=a10_10
set meta=a10_10
set counter=0
set body=0
set last_direction=119
set main_kontador=0
rem goto FAST_LOAD    ahora esta en un archivo a parte
call data/fastload.bat
cls
call data/game.bat
goto mainmenu

:update_2020/10/06_bucle
set x=0
set y=1
set player=a10_10
set meta=a10_10
set counter=0
set body=0
set last_direction=w
set main_kontador=0
goto bucle_de_carga

:bucle_de_carga
for /l %%y in (1;1;20) do (
   for /l %%x in (1;1;20) do (
      set xy=a%%x_%%y
      set !xy!=%fondo%
      set /a counter=!counter!+1
      set /a percent=!counter!/4
      call echo [%time%]     !counter!/400     !percent!%%%%      Info: !xy! Se ha cargado correctamente

   )
)
goto LEVEL1

:LEVEL1
cls
set x=10
set y=10
set a10_10=%cabeza%
call data/game.bat
goto mainmenu

:DEVELOPER_CONSOLE
set /p DC="> "
%DC%
goto pri
