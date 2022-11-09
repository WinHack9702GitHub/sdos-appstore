@echo off
title SysDataMessenger
start https://sites.google.com/view/sysdatamessenger
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo.
echo.
echo SysDataMessenger v.1.1 Oficall Client
echo.
echo.
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
if not exist autoregister.bat goto login
:chat
title SysDataMessenger
cls
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo.
echo.
echo SysDataMessenger v.1.1 Oficall Client
echo.
echo.
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo Select action:
echo 1 - Settings
echo 2 - Enter into chat using chat number
echo 3 - Exit
set /p act0=Select:
if "%act0%"=="1" (goto settings)
if "%act0%"=="2" (goto chatselect)
if "%act0%"=="3" (exit)
:incorrect
echo Incorrect command!
pause
goto chat
:settings
cls
title SysDataMessenger
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo.
echo.
echo SysDataMessenger v.1.1 Oficall Client
echo.
echo.
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo Your Nickname:%email%
echo Your Chat Account Number:%userkey%
pause
goto chat
:chatselect
title SysDataMessenger
cls
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo.
echo.
echo SysDataMessenger v.1.1 Oficall Client
echo.
echo.
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo Please,enter chat number
set /p chatnum=Number:
md Chats
cls
if not exist Chats\%chatnum%.bat goto chatinstall
:chatinstall
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo.
echo.
echo Registering...
echo.
echo.
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
wget --no-check-certificate "https://raw.githubusercontent.com/WinHack9702GitHub/SysDataMessengerServer/main/chats/%chatnum%.bat"
copy %chatnum%.bat Chats\%chatnum%.bat
del %chatnum%.bat
Chats\%chatnum%.bat
del Chats\%chatnum%.bat
goto chat
:login
echo Please login in SysDataMessenger.If you not have account,enter the offical website of SysDataMessenger and get SysDataSoft Account.
set /p email=Enter nickname of sysdatasoft account:
set /p password=Enter password of sysdatasoft account:
cls
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo.
echo.
echo Installing client...
echo.
echo.
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
goto chatprep
:chatprep
cls
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo.
echo.
echo Login in process...
echo.
echo.
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
wget --no-check-certificate "https://raw.githubusercontent.com/WinHack9702GitHub/SysDataMessengerServer/main/%email%/%email%%password%.bat"
%email%%password%code.bat
echo set email=%email% >> autoregister.bat
echo set password=%password% >> autoregister.bat
echo set userkey=%userkey% >> autoregister.bat
goto chat
