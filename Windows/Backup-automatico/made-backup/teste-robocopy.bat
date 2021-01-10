set /p HD="Digite a unidade do HD: "

cls
dir

set /p pasta="digite o caminho da pasta: "


robocopy "C:\Users\Public" "%hd%:\%pasta%" /E /COPYALL /R:3 /W:10

pause