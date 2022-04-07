@echo off
if "%goesfrom%" == "game" set destination=data/
call %destination%config_raw
:options
cls
echo.
echo 	0 = Back
echo 	1 = Languaje [%language%]
echo 	2 = Barriers [%barriers%]
echo 	3 = Velocity [%velocidad%]
echo 	4 = Show BETA and ALFA versions [%showBetaAlfa%]
echo.
choice /c 0123 /n
if %errorlevel% == 1 goto :EOF
if %errorlevel% == 2 if "%language%" == "spanish" (set language=english) else (set language=spanish)
if %errorlevel% == 3 if "%barriers%" == "enable" (set barriers=disable) else (set barriers=enable)
if %errorlevel% == 4 cls&set /p velocidad="Determine la velocidad con un numero (predeterminado = 12)> "
if %errorlevel% == 5 if "%showBetaAlfa%" == "false" (set showBetaAlfa=true) else (set showBetaAlfa=false)
call %destination%save
call %destination%loader
goto options


