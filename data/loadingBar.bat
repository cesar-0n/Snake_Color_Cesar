:loadingBar_loop
set loadBar=�%loadBar%
set loadBar=�%loadBar%
set loadBar=�%loadBar%
set loadBar=�%loadBar%
set loadBar=�%loadBar%
timeout /t 0 >nul
cls
echo %loadBar%
echo %loadMotive%
set /a loadBar_kontador=%loadBar_kontador%+5
if %loadBar_kontador% GEQ %loadPercent% goto :EOF
goto loadingBar_loop