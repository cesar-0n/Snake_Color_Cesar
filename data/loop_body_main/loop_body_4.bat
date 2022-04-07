:loop_body_4
if %kontador% == %target% goto :EOF
set !part_body_%kontador%!=%cola%
set /a kontador=%kontador%+1
goto loop_body_4