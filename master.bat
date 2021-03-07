@echo off
Rem Never combine taskbar
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V TaskbarGlomLevel /T REG_DWORD /D 1 /F
    echo "Turned on neveb combine taskbar"

Rem Use small taskbar buttons
    REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V TaskbarSmallIcons /T REG_DWORD /D 1 /F
    echo "Turned on small taskbar buttons"

Rem Turn on always show all taskbar icons
    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F
    echo "Turned on all taskbar icons"

Rem Add Computer, User, Network, Recycle Bin icons to desktop
    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /V "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /T REG_DWORD /D 0 /F
    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /V "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /T REG_DWORD /D 0 /F

    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /V "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /T REG_DWORD /D 0 /F
    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /V "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /T REG_DWORD /D 0 /F

    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /V "{645FF040-5081-101B-9F08-00AA002F954E}" /T REG_DWORD /D 0 /F
    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /V "{645FF040-5081-101B-9F08-00AA002F954E}" /T REG_DWORD /D 0 /F

    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /V "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" /T REG_DWORD /D 0 /F
    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /V "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" /T REG_DWORD /D 0 /F
    echo "Showed all desktop icons"

Rem To kill and restart explorer
    taskkill /f /im explorer.exe
    start explorer.exe

Rem Inastall Chocolatey
    @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
    echo "Command completed"

choco feature enable -n allowGlobalConfirmation
choco install 7zip telegram whatsapp



Rem Install necessary apps, 7zip, google chrome, chrome remote desktop, free download manager, discord, k-lite codec pack, windirstat, advanced ip scanner, speccy, 


Rem Rename and Join domain
    SET /P compname=[promptString]
    SET /P org=[promptString]

    NETDOM JOIN %compname% /Domain:promoe.local /OU:"Promo/Headquarter/Computers",DC=promoe,DC=local /UserD:DOMAIN\user /PasswordD:password /Reboot:15 /verbose
    PAUSE


Rem enable domain group policy fetch and execution