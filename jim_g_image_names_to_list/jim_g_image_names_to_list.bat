@echo off
setlocal
REM
if "%~1"=="" (
    echo Please drop a folder onto this script.
    pause
    exit /b
)
REM
set "folder=%~1"
REM
set "outputFile=Image_name_List.txt"
REM
cd /d "%folder%"
REM
if exist "%outputFile%" del "%outputFile%"
REM
for %%f in (*.jpg *.jpeg *.png *.gif *.bmp *.tiff) do (
    echo %%~nf >> "%outputFile%"
)
echo Image names have been saved to %outputFile%
pause