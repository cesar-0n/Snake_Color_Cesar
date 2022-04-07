echo Loading language...
call data\language\%language%.bat
echo Loading barriers configuration...
if "%barriers%" == "enable" (
   echo Barriers = [enable]
   set barrier= 
   set nobarrier=rem
   set barriers_DISPx1=[38;2;255;255;0m#[0m
   set barriers_DISPx20=[38;2;255;255;0m ####################[0m
)
if "%barriers%" == "disable" (
   echo Barriers = [disable]
   set nobarrier= 
   set barrier=rem
   set barriers_DISPx1=
   set barriers_DISPx20=
)
echo Loading completed sucessfully!
timeout /t 0 >nul
goto :EOF