:gameover
if "%godMode%"=="true" (
   goto :EOF
)
if "%revive%"=="true" (
   set revive=false
   goto :EOF
)
cls
set /a score=(((%body%*%body%*%body%*%body%)/5)+(%main_kontador%*%body%)*2)
echo.
call data/gameover_TXT.bat
echo.
echo ==========%SCOREBOARD%==========
echo ------------------------------
echo [38;2;255;255;0m%Score_TXT%=%score%[38;2;22;192;18m
echo ------------------------------
echo %Length%=%body%
echo %Moves%=%main_kontador%
echo ------------------------------
echo ==============================
echo.
echo [0m%continue%[38;2;22;192;18m
set errorlevel=
choice /c §Q /n
if %errorlevel% == 1 call data/DevConsole.bat
if %errorlevel% == 2 set QUIT=true&goto :EOF
goto gameover