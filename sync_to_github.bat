@echo off
setlocal
cd /d "%~dp0"

echo =======================================================
echo   Qin 1s+ Launcher Mod - Sync & Save to GitHub
echo =======================================================
echo.

echo [*] Checking local changes...
git status -s

echo.
set /p msg="Enter commit message (or press Enter for auto-date): "
if "%msg%"=="" set msg=Update Launcher Mod Source Code

echo.
echo [*] Pulling latest changes from GitHub...
git pull --rebase --autostash origin main

echo.
echo [*] Saving all files (git add)...
git add .

echo.
echo [*] Creating commit...
git commit -m "%msg%" --allow-empty

echo.
echo [*] Pushing to GitHub...
git push origin main

echo.
echo =======================================================
echo   [SUCCESS] Synced with GitHub successfully!
echo =======================================================
echo.
pause
