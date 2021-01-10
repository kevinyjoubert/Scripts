

ping -n 2 >> log-backup.txt

@echo off

IF NOT ERRORLEVEL == 1 (
	@echo OK
) ELSE (
	@echo ERROR
)


pause