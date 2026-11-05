@echo off
echo ========================================================
echo Pushing Updates to GitHub and Vercel...
echo ========================================================
git add .
set /p commit_msg="Enter update description (or press Enter for default): "
if "%commit_msg%"=="" set commit_msg=Update website content
git commit -m "%commit_msg%"
git push
echo.
echo ========================================================
echo Done! Vercel is automatically re-deploying your site now.
echo ========================================================
pause
