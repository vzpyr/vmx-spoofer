@echo off
title vmx recode

net session >nul 2>&1
if %errorLevel% == 0 (
    echo running as admin
    cls
) else (
    echo run this as an admin!
    timeout 10 > nul
    exit
)

:menu
cls
echo vmx recode
echo before spoofing, change all serials and macs in vmx.bat, AsDeviceCheck.bat and startup.nsh
echo.
echo 1 - normal spoof
echo 2 - asus spoof
echo 3 - mac spoof
echo 4 - asus efi
echo 5 - smbios fixer
set /p choice=enter number: 

if %choice%==1 goto normal
if %choice%==2 goto asus
if %choice%==3 goto mac
if %choice%==4 goto efi
if %choice%==5 goto fixer

echo done, exiting in 10s
timeout 10 > nul
exit

:normal
cls
echo eier
cd %~dp0\stuff
start 2j1fhe1j3f9s.exe /SU "8A2FD2194A3876B588E974563CB7AE89"
start 2j1fhe1j3f9s.exe /BS "Default string"
start 2j1fhe1j3f9s.exe /PAT "Unknown"
start 2j1fhe1j3f9s.exe /PPN "Unknown"
start 2j1fhe1j3f9s.exe /PSN "Unknown"
net stop winmgmt /y
timeout 2 > nul
net start winmgmt /y
start 4m2x64t.exe -accepteula C: C3C7-FF47
start 4m2x64t.exe -accepteula D: C3C7-FF47
start 4m2x64t.exe -accepteula E: C3C7-FF47
start 4m2x64t.exe -accepteula F: C3C7-FF47
slmgr //b /upk
slmgr //b /cpky
echo done, exiting in 10s
timeout 10 > nul
exit

:asus
cls
echo eier
cd %~dp0\stuff
mkdir C:\Windows\Vss
mkdir C:\Windows\Vss\Writers
copy 3j1hdu3h164.sys C:\Windows\Vss\Writers\
copy 2j1fhe1j3f9s.exe C:\Windows\Vss\Writers\
schtasks /f /delete /tn Asus_Runtime_Check
copy AsDeviceCheck.bat C:\Windows\Vss\Writers\
schtasks /create /tn "Asus_Runtime_Check" /tr "C:\Windows\Vss\Writers\AsDeviceCheck.bat" /sc /onlogon /ru "SYSTEM" /rl HIGHEST /F
start cmd.exe /c C:\Windows\Vss\Writers\AsDeviceCheck.bat
net stop winmgmt /y
timeout 2 > nul
net start winmgmt /y
start 4m2x64t.exe -accepteula C: C3C7-FF47
start 4m2x64t.exe -accepteula D: C3C7-FF47
start 4m2x64t.exe -accepteula E: C3C7-FF47
start 4m2x64t.exe -accepteula F: C3C7-FF47
slmgr //b /upk
slmgr //b /cpky
echo done, exiting in 10s
timeout 10 > nul
exit

:mac
cls
echo eier
echo too lazy to add realtek spoofing
set /p intel=are you on intel (y/n)?: 
if %intel%==y (
    cd %~dp0\stuff
    start EEUPDATEW64e.exe /nic=1 /mac=3247F479533E
    echo done, exiting in 10s
    timeout 10 > nul
    exit
) else (
    echo exiting in 10s
    timeout 10 > nul
    exit
)

:efi
cls
echo eier
set /p letter=enter drive letter of usb (without :): 
cd %~dp0\stuff\usb
mkdir %letter%:\efi
mkdir %letter%:\efi\boot
copy perm.efi %letter%:\
copy bootx64.efi %letter%:\efi\boot
copy startup.nsh %letter%:\efi\boot
echo done, exiting in 10s
timeout 10 > nul
exit

:fixer
cls
echo eier
cd %~dp0\stuff
start 2j1fhe1j3f9s.exe /IVN "American Megatrends International, LLC."
start 2j1fhe1j3f9s.exe /IV "1.F0"
start 2j1fhe1j3f9s.exe /ID "02/06/2024"
start 2j1fhe1j3f9s.exe /SU "E8E0E8BB4EF4D52FD282047C16146F8F"
start 2j1fhe1j3f9s.exe /SP "MS-7D77"
start 2j1fhe1j3f9s.exe /SM "Micro-Star International Co., Ltd."
start 2j1fhe1j3f9s.exe /SV "1.0"
start 2j1fhe1j3f9s.exe /SS "To be filled by O.E.M."
start 2j1fhe1j3f9s.exe /SK "To be filled by O.E.M."
start 2j1fhe1j3f9s.exe /SF "To be filled by O.E.M."
start 2j1fhe1j3f9s.exe /BS "73C0128_N73B428440"
start 2j1fhe1j3f9s.exe /BM "Micro-Star International Co., Ltd."
start 2j1fhe1j3f9s.exe /BP "PRO B650M-A WIFI (MS-7D77)"
start 2j1fhe1j3f9s.exe /BV "1.0"
start 2j1fhe1j3f9s.exe /BT "To be filled by O.E.M."
start 2j1fhe1j3f9s.exe /BLC "To be filled by O.E.M."
start 2j1fhe1j3f9s.exe /CM "Micro-Star International Co., Ltd."
start 2j1fhe1j3f9s.exe /CT "03"
start 2j1fhe1j3f9s.exe /CA "Default string"
start 2j1fhe1j3f9s.exe /CO "Default string"
start 2j1fhe1j3f9s.exe /CS "Default string"
start 2j1fhe1j3f9s.exe /CSK "Default string"
start 2j1fhe1j3f9s.exe /PAT "To be filled by O.E.M."
start 2j1fhe1j3f9s.exe /PPN "To be filled by O.E.M."
start 2j1fhe1j3f9s.exe /PSN "To be filled by O.E.M."
start 2j1fhe1j3f9s.exe /BT "Asset Tag"
start 2j1fhe1j3f9s.exe /OS "Default string"
start 2j1fhe1j3f9s.exe /SCO 1 "Default string"
net stop winmgmt /y
timeout 2 > nul
net start winmgmt /y
start 4m2x64t.exe -accepteula C: C3C7-FF47
start 4m2x64t.exe -accepteula D: C3C7-FF47
start 4m2x64t.exe -accepteula E: C3C7-FF47
start 4m2x64t.exe -accepteula F: C3C7-FF47
slmgr //b /upk
slmgr //b /cpky
echo done, exiting in 10s
timeout 10 > nul
exit