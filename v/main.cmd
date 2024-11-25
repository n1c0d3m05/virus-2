@echo off
color a


echo checking DNS

timeout /t 5 /nobreak > nul

ipconfig /all | findstr DNS

timeout /t 3 /nobreak > nul

for /l %%i in (1, 1, 1) do (
        cls
        echo extracting .
        timeout /t 1 /nobreak> nul
        cls
        echo extracting ..
        timeout /t 1 /nobreak > nul
        cls
        echo extracting ...
        timeout /t 1 /nobreak >nul
)

echo ctrl+c e ctrl+v no notepad
echo eai %username%, tudo bem? | clip
start notepad.exe

:LOOP



tasklist | find /i "notepad.exe" > nul
if errorLevel 1 (
        goto :resto
)
goto LOOP

:resto
echo que medo
pause
start "" powershell -NoProfile -ExecutionPolicy Bypass -File "m.ps1"

