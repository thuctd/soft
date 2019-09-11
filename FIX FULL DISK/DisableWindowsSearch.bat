@echo off
Title Tat Windows Search
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 goto Main
goto Alert
:Main
call :Title
net stop WSearch
sc config WSearch start= disabled
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