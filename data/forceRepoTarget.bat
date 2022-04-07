:META
set /a Mx=%random%/1000
set /a My=%random%/1000
if %Mx% GTR 20 goto META
if %My% GTR 20 goto META
if %Mx% LEQ 0 goto META
if %My% LEQ 0 goto META
set meta=a%Mx%_%My%
set %meta%=%comida%
goto :EOF