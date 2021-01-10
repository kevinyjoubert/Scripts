set Origem=C:\Users\Public\Wallpaper
set Destino=X:\Backup\teste-backup
set LOG-BACKUP=X:\Backup\


robocopy "%Origem%" "%Destino%" *.png /E /V /COPYALL /R:3 /W:10 /LOG:X:\Backup\log-backup.txt

start %LOG-BACKUP%\log-backup.txt



pause

