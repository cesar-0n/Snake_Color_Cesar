if "%goesfrom%" == "game" set destination=data/
>%destination%config_raw.bat echo set language=%language%
>>%destination%config_raw.bat echo set showBetaAlfa=%showBetaAlfa%
>>%destination%config_raw.bat echo set barriers=%barriers%
>>%destination%config_raw.bat echo set velocidad=%velocidad%
>>%destination%config_raw.bat echo goto :EOF
goto :EOF