set ORIGEM=C:\Users
set DESTINO=X:\Backup\teste-backup\teste
set LOG-BACKUP=X:\Backup\teste-backup\

for %%x in (wmv, avi, flv, mov, rmvb, mpg, mpeg, mkv, mp4, qt, avchd, swf, ts, divx, ogm, h.264, vob) do (
    xcopy %ORIGEM%\*.%%x %DESTINO% /s /c /y >> %LOG-BACKUP%\log-backup.txt
    @echo. >> %LOG-BACKUP%\log-backup.txt
    @echo %%x >> %LOG-BACKUP%\log-backup.txt
    @echo -------------------------------------------------------------- >> %LOG-BACKUP%\log-backup.txt
    @echo. >> %LOG-BACKUP%\log-backup.txt
)

start %LOG-BACKUP%\log-backup.txt


pause
@echo off

for %%x in (jpg, jfif, gif, bmp, png, psd, tiff, exif, raw, webp, svg, avif) do (
    xcopy %userprofile%\*%%x %DESTINO% /s /c /y >> log-backup.txt
    @echo. >> log-backup.txt
    @echo -------------------------------------------------------------- >> log-backup.txt
    @echo. >> log-backup.txt
)