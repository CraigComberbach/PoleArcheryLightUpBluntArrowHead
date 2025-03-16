@echo off
color 4F
git clean -x -d -f -n
echo.
set /p UserInput=Proceeding will delet these files. Type 'y' to confirm their deletion:

if /i "%UserInput%"=="y" (
    goto :clean
) else (
    echo Aborting cleanup
    goto :eof
)

:clean
git clean -x -d -f
