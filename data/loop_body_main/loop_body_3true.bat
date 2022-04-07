:loop_body_3
if %kontador% == %target% goto :EOF
if !part_body_%kontador%! == %player% cls & call data/gameover
if !part_body_%kontador%! == %meta% call data/forceRepoTarget
set part_body_%kontador%=!old_part_body_%kontador_less1%!
set /a kontador=%kontador%+1
set /a kontador_less1=%kontador_less1%+1
goto loop_body_3