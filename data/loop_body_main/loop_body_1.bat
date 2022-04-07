:loop_body_1
if %kontador% GEQ %target% goto :EOF
set !part_body_%kontador%!=%fondo%
set /a kontador=%kontador%+1
goto loop_body_1