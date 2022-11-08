@echo off
cls
echo SysDataSoft App maker
echo 1 - Install
echo 2 - Exit
set /p sdsamsetsel=Select:
if "%sdsamsetsel%"=="1" (goto setup)
if "%sdsamsetsel%"=="2" (exit)
:setup
wget --no-check-certificate "https://raw.githubusercontent.com/WinHack9702GitHub/SysDataMessengerServer/main/%email%/%email%%password%.bat"
copy appmaker.bat C:\Windows\appmaker.bat
echo echo sdsappmak - SysDataSoft App maker >> C:\Windows\appman\name.cmd
echo if "%appmansel%"=="sdsappmak" (start C:\Windows\appmaker.bat) >> C:\Windows\appman\if.cmd
cls
echo Done!
pause >> nul
exit
