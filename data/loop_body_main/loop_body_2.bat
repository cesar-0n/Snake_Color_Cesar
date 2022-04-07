:loop_body_2
if %kontador% == %target% goto :EOF
set old_part_body_%kontador%=!part_body_%kontador%!
set /a kontador=%kontador%+1
goto loop_body_2