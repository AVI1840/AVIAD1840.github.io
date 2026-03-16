@echo off
echo === Deploy to GitHub Pages ===
echo.

REM Stage all relevant files
git add index.html
git add images/ 2>nul
git add .gitignore package.json package-lock.json 2>nul

REM Show what will be committed
git status

echo.
set /p MSG="Enter commit message (or press Enter for 'Update site'): "
if "%MSG%"=="" set MSG=Update site

git commit -m "%MSG%"

REM Push
git push origin main

echo.
echo Done! Site will update at https://avi1840.github.io/AVIAD1840.github.io in ~1 minute.
pause
