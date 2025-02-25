@echo off
setlocal

REM Check if a folder is dropped onto the script
if "%~1"=="" (
    echo Please drop a folder onto this script.
    pause
    exit /b
)

REM Set the folder path to the dropped folder
set "folder=%~1"

REM Set the output file name
set "outputFile=ImageList.txt"

REM Change to the specified folder
cd /d "%folder%"

REM Clear
if exist "%outputFile%" del "%outputFile%"

REM Loop through all image files
for %%f in (*.jpg *.jpeg *.png *.gif *.bmp *.tiff) do (
    <nul set /p ="%%~nf" >> "%outputFile%"
    echo(>> "%outputFile%"
)

echo Image names have been saved to %outputFile%
pause
