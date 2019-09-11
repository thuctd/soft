@echo off
Title Tat Windows Defender
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 goto Main
goto Alert
:Main
call :Title
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /t REG_DWORD /d 1 /f
Exit
:Alert
call :Title
COLOR 0C
echo.
echo   VUI LONG CLICK CHUOT PHAI VAO FILE CHON RUN AS ADMINISTRATORS
ECHO.
pause
Exit
:Title
cls
color 0E
echo.
echo        ******************************************************************
echo        **        THEGIOIDIDONG.COM - DESIGN BY TEAM HTKT LAPTOP        **
echo        ******************************************************************
echo.
echo.