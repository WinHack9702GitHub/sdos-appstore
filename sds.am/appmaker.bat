@echo off
:app
cls
echo SysDataSoft App Maker
echo Select:
echo 1 - Create console app (Batch)
echo 2 - Create GUI app (HTML)
echo 3 - Create GUI app (VBS)
echo 4 - Create console app (SysDataScript)
set /p selsdsam=Select:
if "%selsdsam%"=="1" (goto batch)
if "%selsdsam%"=="2" (goto html)
if "%selsdsam%"=="3" (goto vbs)
if "%selsdsam%"=="4" (goto sdscr)
echo Incorrect!
pause
goto app
:batch
cls
echo Create Batch App
set /p appnamebatch=Enter App name:
set /p appidbatch=Enter App ID:
set /p appaltnamebatch=Enter App Alternate Name (no spaces,dots,only numbers and english letters):
md C:\SDOSApps\%appidbatch%
cls
echo Enter Code,when you ended,click Ctrl+Z.
copy con %appaltnamebatch%.bat
copy %appaltnamebatch%.bat C:\SDOSApps\%appidbatch%\%appaltnamebatch%.bat
echo echo %appaltnamebatch% - %appnamebatch% >> C:\Windows\appman\name.cmd
echo if "%appmansel%"=="%appaltnamebatch%" (start C:\SDOSApps\%appidbatch%\%appaltnamebatch%.bat) >> C:\Windows\appman\if.cmd
cls
echo Done!app is created and installed.Click any key to return to app window...
pause >> nul
goto app
:html
cls
echo Create HTML App
set /p appnamehtml=Enter App name:
set /p appidhtml=Enter App ID:
set /p appaltnamehtml=Enter App Alternate Name (no spaces,dots,only numbers and english letters):
md C:\SDOSApps\%appidhtml%\
cls
echo Enter Code,when you ended,click Ctrl+Z.
copy con %appaltnamehtml%.hta
copy %appaltnamehtml%.hta C:\SDOSApps\%appidhtml%\%appaltnamehtml%.hta
echo echo %appaltnamehtml% - %appnamehtml% >> C:\Windows\appman\name.cmd
echo if "%appmansel%"=="%appaltnamehtml%" (start C:\SDOSApps\%appidhtml%\%appaltnamehtml%.bat) >> C:\Windows\appman\if.cmd
echo start C:\SDOSApps\%appidsdscr%\%appaltnamehtml%.hta >> C:\SDOSApps\%appidhtml%\%appaltnamehtml%.bat
cls
echo Done!app is created and installed.Click any key to return to app window...
pause >> nul
goto app
:vbs
cls
echo Create VBS App
set /p appnamevbs=Enter App name:
set /p appidvbs=Enter App ID:
set /p appaltnamevbs=Enter App Alternate Name (no spaces,dots,only numbers and english letters):
md C:\SDOSApps\%appidvbs%
cls
echo Enter Code,when you ended,click Ctrl+Z.
copy con %appaltnamevbs%.bat
copy %appaltnamevbs%.bat C:\SDOSApps\%appidvbs%\%appaltnamebatch%.bat
echo echo %appaltnamevbs% - %appnamevbs% >> C:\Windows\appman\name.cmd
echo if "%appmansel%"=="%appaltnamevbs%" (start C:\SDOSApps\%appidvbs%\%appaltnamevbs%.bat) >> C:\Windows\appman\if.cmd
echo start C:\SDOSApps\%appidvbs%\%appaltnamevbs%.vbs >> C:\SDOSApps\%appidvbs%\%appaltnamevbs%.bat
cls
echo Done!app is created and installed.Click any key to return to app window...
pause >> nul
goto app
:sdscr
cls
echo Create SysDataScript App
set /p appnamesdscr=Enter App name:
set /p appidsdscr=Enter App ID:
set /p appaltnamesdscr=Enter App Alternate Name (no spaces,dots,only numbers and english letters):
md C:\SDOSApps\%appidsdscr%
cls
echo Enter Code,when you ended,click Ctrl+Z.
copy con tmp2.bat
copy /d sysdatascript.bat + tmp2.bat %appaltnamesdscr%.bat
copy %appaltnamesdscr%.bat C:\SDOSApps\%appidsdscr%\%appaltnamesdscr%.bat
echo echo %appaltnamesdscr% - %appnamesdscr% >> C:\Windows\appman\name.cmd
echo if "%appmansel%"=="%appaltnamesdscr%" (start C:\SDOSApps\%appidsdscr%\%appaltnamesdscr%.bat) >> C:\Windows\appman\if.cmd
cls
echo Done!app is created and installed.Click any key to return to app window...
pause >> nul
goto app