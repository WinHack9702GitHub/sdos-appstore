@echo off
cls
echo SysDataSoft App maker
echo 1 - Install
echo 2 - Exit
set /p sdsamsetsel=Select:
if "%sdsamsetsel%"=="1" (goto setup)
if "%sdsamsetsel%"=="2" (exit)
:setup
md C:\SDOSApps\sds.am\
wget --no-check-certificate "https://raw.githubusercontent.com/WinHack9702GitHub/sdos-appstore/main/sds.am/appmaker.bat"
copy appmaker.bat C:\SDOSApps\sds.am\appmaker.bat
copy sysdatascript.bat C:\SDOSApps\sds.am\sysdatascript.bat
echo echo appmaker - SysDataSoft App maker >> C:\Windows\appman\name.cmd
echo if "%appmansel%"=="appmaker" (start C:\SDOSApps\sds.am\appmaker.bat) >> C:\Windows\appman\if.cmd
cls
echo Done!
pause >> nul
exit
