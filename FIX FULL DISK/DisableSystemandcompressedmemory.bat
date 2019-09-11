@echo off
Title Disable Windows File Compression
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 goto Main
goto Alert
:Main
call :Title
schtasks /Change /TN "\Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents" /DISABLE
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