@echo off
setlocal
cd /d "%~dp0"
echo ========================================================
echo   Qin 1s+ ClassicHome Mod - Automated Build and Deploy
echo ========================================================
python build_and_deploy.py %*
if errorlevel 1 (
    echo.
    echo [ERROR] Build failed! Check output above.
    pause
    exit /b 1
)
echo.
echo [SUCCESS] Done!
pause
