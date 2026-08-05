@echo off
setlocal
cd /d "%~dp0"
chcp 65001 >nul

echo =======================================================
echo   Qin 1s+ Launcher Mod - סנכרון ושמירה ל-GitHub
echo =======================================================
echo.

echo [*] בודק שינויים מקומיים...
git status -s

echo.
set /p msg="הזן תיאור לשינויים (או לחץ Enter לשמירה אוטומטית): "
if "%msg%"=="" (
    set msg=עדכון ושמירת קוד מקור: %date% %time%
)

echo.
echo [*] מושך עדכונים אחרונים מהשרת...
git pull --rebase --autostash origin main

echo.
echo [*] שומר את כל השינויים (git add)...
git add .

echo.
echo [*] יוצר Commit: "%msg%"...
git commit -m "%msg%" --allow-empty

echo.
echo [*] מעלה ל-GitHub (git push)...
git push origin main

if errorlevel 1 (
    echo.
    echo [ERROR] ארעה שגיאה בהעלאה. אנא בדוק את החיבור לרשת.
) else (
    echo.
    echo =======================================================
    echo   [SUCCESS] כל השינויים סונכרנו בהצלחה ל-GitHub!
    echo =======================================================
)

echo.
pause
