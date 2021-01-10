set DESTINO=C:\Users\Public\
set ORIGEM=%userprofile%\


@echo 

for %%x in (jpg, png) do (
    xcopy %ORIGEM%*.%%x X:\Backup\teste-backup\teste /s /c /y 
)

pause