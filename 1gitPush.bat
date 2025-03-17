@echo off
REM Commit and push all changes with a user-defined message

SET /p commit_msg="Enter commit message: "
IF "%commit_msg%"=="" (
    echo Commit aborted: empty commit message.
    pause
    exit /b
)

git add .
git commit -m "%commit_msg%"
git push origin main

echo Push completed successfully.
pause
