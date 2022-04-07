@echo on
set /a target=%target%-1
for /l %%i in (0;1;%target%) do (
rem   if !part_body_%%i! == %player% cls & call data/gameover
if %part_body_%%i% == %meta% call data/forceRepoTarget
   call set part_body_%%i=%old_part_body_%%i%
   echo [91m[2K[%%i]
   call echo [2Kpart_body=%part_body_%%i%
   call echo [2Kold_part_body=%%old_part_body_!kontador_less1!%%
   call echo [2Kkontador_less1=%%kontador_less1%%[92m
   
)
@echo off
goto :EOF