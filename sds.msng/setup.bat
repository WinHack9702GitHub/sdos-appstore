@echo off
cls
echo SysDataMessenger
echo 1 - Install
echo 2 - Exit
set /p sdsamsetsel=Select:
if "%sdsamsetsel%"=="1" (goto setup)
if "%sdsamsetsel%"=="2" (exit)
:setup
wget --no-check-certificate "https://raw.githubusercontent.com/WinHack9702GitHub/sdos-appstore/main/sds.msng/msng.bat"
copy msng.bat C:\Windows\msng.bat
echo echo msng - SysDataMessenger >> C:\Windows\appman\name.cmd
echo if "%appmansel%"=="msng" (start C:\Windows\msng.bat) >> C:\Windows\appman\if.cmd
cls
echo Done!
pause >> nul
exit
