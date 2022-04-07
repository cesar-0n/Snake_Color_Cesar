if /i "%DC%" == "EnableDeveloperConsole" (
   :DC-Command
   echo [38;2;255;255;0mType exitLoop to continue
   set /p DC-Command="> "
   if /i "%DC-Command%" == "exitLoop" goto priDC
   %DC-Command%
   goto DC-Command
   )
:priDC
echo. [38;2;200;70;70m
if /i "%DC%" == "enablebarriers" (
   echo barriers=enable
   set barriers=enable
   call data/loader.bat
   )
if /i "%DC%" == "disablebarriers" (
   echo barriers=disable
   set barriers=disable
   call data/loader.bat
   )
if /i "%DC%" == "body+10" (
   set /a body=%body%+10
   )
if /i "%DC%" == "god" (
   echo godMode=true
   set godMode=true
   )
if /i "%DC%" == "mortal" (
   echo godMode=false
   set godMode=false
   )
if /i "%DC%" == "revive" (
   echo revive activated!
   set revive=true
   )

set DC=
echo. [38;2;22;192;18m
pause
cls
goto :EOF