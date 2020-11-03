cls
@echo Ping das maquinas ADM
@echo.
@echo.
@echo off
set /p range= Digite o range da sua loja:

cls
@echo Ping das maquinas ADM
@echo.
@echo.
@echo off
ping -n 2 0 >NUL
@echo RM 01
ping 10.%range%.6
@echo off
ping -n 3 0 >NUL

cls
@echo Ping das maquinas ADM
@echo.
@echo.
@echo off
ping -n 2 0 >NUL
@echo RM 02
ping 10.%range%.7
@echo off
ping -n 3 0 >NUL

cls
@echo Ping das maquinas ADM
@echo.
@echo.
@echo off
ping -n 2 0 >NUL
@echo RM 03
ping 10.%range%.8
@echo off
ping -n 3 0 >NUL

cls
@echo Ping das maquinas ADM
@echo.
@echo.
@echo off
ping -n 2 0 >NUL
@echo Manutencao
ping 10.%range%.9
@echo off
ping -n 3 0 >NUL