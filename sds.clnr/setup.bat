@echo off
cls
echo SysDataSoft Cleaner
echo 1 - Install
echo 2 - Exit
set /p sdsamsetsel=Select:
if "%sdsamsetsel%"=="1" (goto setup)
if "%sdsamsetsel%"=="2" (exit)
:setup
wget --no-check-certificate "https://raw.githubusercontent.com/WinHack9702GitHub/sdos-appstore/main/sds.clnr/clnr.bat"
copy clnr.bat C:\Windows\clnr.bat
echo echo clnr - SysDataSoft Cleaner >> C:\Windows\appman\name.cmd
echo if "%appmansel%"=="clnr" (start C:\Windows\clnr.bat) >> C:\Windows\appman\if.cmd
cls
echo Done!
pause >> nul
exit
