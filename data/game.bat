>log/FPS.log echo %date% %time%
>log/body.log echo %date% %time%
>log/main_kontador.log echo %date% %time%
set doMovement=true
set QUIT=false
set i=0
set delay=1000
set ms=100
set amount=0
:ready
if %doMovement% == true set /a main_kontador=%main_kontador%+1
call :META
rem call data\recompiler
call data\DISPLAY.bat
call :controler
if %QUIT% == true goto :EOF
goto ready
:META
if not %player% == %meta% set %meta%=%comida%
if not %meta% == %player% goto :EOF
set /a Mx=%random%/1000
set /a My=%random%/1000
if %Mx% GTR 20 goto META
if %My% GTR 20 goto META
if %Mx% LEQ 0 goto META
if %My% LEQ 0 goto META
set meta=a%Mx%_%My%
set %meta%=%comida%
set /a body=%body%+1
set skip_loop_body_last=true
goto :EOF
:controler
set /a msToFPS=100000/(%ms%/10)
set /a msToFPSd2=(%msToFPS%*3)/4
echo velocidad=%velocidad%
set /a amount=(((%msToFPS%-(%velocidad%*1000))/10)+(%amount%))*2/3
if %delay% LEQ 0 if %amount% LEQ 0 set amount=0& set delay=0
echo [2Kamount=%amount%
set /a delay=%delay%+%amount%
echo [2Kdelay=[%delay%]
for /l %%i in (1;1;%delay%) do (
   set doMovement=false
   rem echo i=%%i[1A
)
rem if %i% LSS %delay% (
rem    rem echo i=%i%
rem    set /a i=%i%+1
rem    set doMovement=false
rem    goto :EOF
rem )
set errorlevel=
data\DependenciesEXE\GetKey /N
call data\FPS_meter.bat
set i=0
set OR=false
if %errorlevel% EQU 0 set errorlevel=%last_direction%
if %errorlevel% EQU 112 (set OR=true&set last_direction=112&set doMovement=false&goto :EOF) else (set doMovement=true)
if %errorlevel% EQU 119 if %last_direction% == 115 cls & set doMovement=false & goto :EOF
if %errorlevel% EQU 97 if %last_direction% == 100 cls & set doMovement=false & goto :EOF
if %errorlevel% EQU 115 if %last_direction% == 119 cls & set doMovement=false & goto :EOF
if %errorlevel% EQU 100 if %last_direction% == 97 cls & set doMovement=false & goto :EOF
%barrier% if %x% == 1 if %errorlevel% == 97 cls & call data\gameover
%barrier% if %x% == 20 if %errorlevel% == 100 cls & call data\gameover
%barrier% if %y% == 1 if %errorlevel% == 119 cls & call data\gameover
%barrier% if %y% == 20 if %errorlevel% == 115 cls & call data\gameover
if %x% == 1 if %errorlevel% == 97 set x=21&set %player%=%fondo%
if %x% == 20 if %errorlevel% == 100 set x=0&set %player%=%fondo%
if %y% == 1 if %errorlevel% == 119 set y=21&set %player%=%fondo%
if %y% == 20 if %errorlevel% == 115 set y=0&set %player%=%fondo%
set player=a%x%_%y%
set %player%=%fondo%
set part_body_0=%player%
if %errorlevel% EQU 119 set OR=true&set /a y=%y%-1& set last_direction=119
if %errorlevel% EQU 97 set OR=true&set /a x=%x%-1& set last_direction=97
if %errorlevel% EQU 115 set OR=true&set /a y=%y%+1& set last_direction=115
if %errorlevel% EQU 100 set OR=true&set /a x=%x%+1& set last_direction=100
if %errorlevel% EQU 167 set OR=true&call data/DevConsole.bat & goto :EOF 
if %errorlevel% EQU 113 set OR=true&set QUIT=true&goto :EOF
if %OR% == false set doMovement=false&goto :EOF
:loop_body_main

if %skip_loop_body_last% == true (set /a target=%body%-2) else (set /a target=%body%-1)
call data/loop_body_main/loop_body_1_FOR.bat
set skip_loop_body_last=false
set kontador=0
set /a target=%body%-2
call data/loop_body_main/loop_body_2_FOR.bat
set /a target=%body%
set kontador=1
set kontador_less1=0
call data/loop_body_main/loop_body_3%doMovement%.bat
set kontador=1
set /a target=%body%-1
call data/loop_body_main/loop_body_4_FOR.bat

set player=a%x%_%y%
set %player%=%cabeza%

goto :EOF

