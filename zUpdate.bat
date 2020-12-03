@ECHO OFF
@echo Started: %date% %time%

set /p commit=Enter Commit: 
echo %commit%


call git pull origin master
call git add .


call git commit -m %date%_%time%_%commit%
call git push origin master -f
PAUSE
