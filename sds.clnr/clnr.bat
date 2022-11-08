@echo off
echo =========Cleaner===========
echo =Select:                  =
echo =1.Clear Temp             =
echo =2.exit                   =
echo ===========================
set /p selclnr=Select:
if "%selclnr%"=="1" (goto dsa)
exit
:dsa
del C:\Windows\setup.bat
cls
echo Done!
pause >> nul
exit
