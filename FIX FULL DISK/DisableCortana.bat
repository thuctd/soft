@echo off
Title Disable Cortana
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 goto Main
goto Alert
:Main
call :Title
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
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