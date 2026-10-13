@echo off
git add .
git commit -m "%~1"
if %errorlevel% neq 0 (
    echo commit失败
    pause
    exit /b
)
git push -u origin main
echo success!
pause
