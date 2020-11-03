cls
@echo Ping dos DVRs'
@echo.
@echo.
@echo off
set /p range= Digite o range da sua loja: 

cls
@echo Ping dos DVRs'
@echo.
@echo.
@echo off
ping -n 2 0 >NUL
@echo DVR 01
ping 10.%range%.2
@echo off
ping -n 3 0 >NUL

cls
@echo Ping dos DVRs'
@echo.
@echo.
@echo off
ping -n 2 0 >NUL
@echo DVR 02
ping 10.%range%.3
@echo off
ping -n 3 0 >NUL

cls
@echo Ping dos DVRs'
@echo.
@echo.
@echo off
ping -n 2 0 >NUL
@echo DVR 03
ping 10.%range%.4
@echo off
ping -n 3 0 >NUL

cls
@echo Ping dos DVRs'
@echo.
@echo.
@echo off
ping -n 2 0 >NUL
@echo DVR 04
ping 10.%range%.5
@echo off
ping -n 3 0 >NUL