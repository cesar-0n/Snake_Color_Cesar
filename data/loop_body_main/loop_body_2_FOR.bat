for /l %%i in (0;1;%target%) do (
   set old_part_body_%%i=!part_body_%%i!
)
goto :EOF