@echo off
@chcp 65001 >nul
title FastNexus[Cleaner]
@echo off
:START
cls
%homedrive%
cd %USERPROFILE%
cd..
set profiles=%cd%

for /f "tokens=* delims= " %%u in ('dir /b/ad') do (

cls
title Suppression %%u Cookies. . .
if exist "%profiles%\%%u\cookies" echo Suppression....
if exist "%profiles%\%%u\cookies" cd "%profiles%\%%u\cookies"
if exist "%profiles%\%%u\cookies" del *.* /F /S /Q /A: R /A: H /A: A
cls
title Suppression %%u Temp Files. . .
if exist "%profiles%\%%u\Local Settings\Temp" echo Suppression....
if exist "%profiles%\%%u\Local Settings\Temp" cd "%profiles%\%%u\Local Settings\Temp"
if exist "%profiles%\%%u\Local Settings\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\Local Settings\Temp" rmdir /s /q "%profiles%\%%u\Local Settings\Temp"
cls
title Suppression %%u Temp Files. . .
if exist "%profiles%\%%u\AppData\Local\Temp" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Temp" cd "%profiles%\%%u\AppData\Local\Temp"
if exist "%profiles%\%%u\AppData\Local\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Temp" rmdir /s /q "%profiles%\%%u\AppData\Local\Temp"
cls
title Suppression %%u Temporary Internet Files. . .
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" echo Suppression....
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" cd "%profiles%\%%u\Local Settings\Temporary Internet Files"
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" rmdir /s /q "%profiles%\%%u\Local Settings\Temporary Internet Files"
cls
title Suppression  %%u Temporary Internet Files. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files"
cls
title Suppression %%u WER Files. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive"
cls
title Suppression %Systemroot%\Temp
if exist "%Systemroot%\Temp" echo Suppression....
if exist "%Systemroot%\Temp" cd "%Systemroot%\Temp"
if exist "%Systemroot%\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%Systemroot%\Temp" rmdir /s /q "%Systemroot%\Temp"
cls
title Suppression %SYSTEMDRIVE%\Temp
if exist "%SYSTEMDRIVE%\Temp" echo Suppression....
if exist "%SYSTEMDRIVE%\Temp" cd "%SYSTEMDRIVE%\Temp"
if exist "%SYSTEMDRIVE%\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%SYSTEMDRIVE%\Temp" rmdir /s /q "%Systemroot%\Temp"
cls
title Suppression %%u Firefox Temporary Files. . .
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" cd "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" rmdir /s /q "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"
cls
title Suppression %%u Chrome Temporary Files. . .
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache"
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache"
cls
title Suppression %%u Chromium Files. . .
if exist "%profiles%\%%u\AppData\Local\Chromium\User Data\Default\Cache" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Chromium\User Data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Chromium\User Data\Default\Cache"
if exist "%profiles%\%%u\AppData\Local\Chromium\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Chromium\User Data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Chromium\User Data\Default\Cache"
cls
title Suppression %%u Internet Explorer Temporary Files. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"
cls
title Suppression %%u Internet Explorer Cookies. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies"
cls
title Suppression %%u Edge Temporary Files. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\edge\user data\Default\Cache" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Microsoft\edge\user data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Microsoft\edge\user data\Default\Cache"
if exist "%profiles%\%%u\AppData\Local\Microsoft\edge\user data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\edge\user data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\edge\user data\Default\Cache"
cls
title Suppression %%u Edge Cookies. . .
RD /S /Q "%LocalAppData%\MicrosoftEdge\Cookies"
RD /S /Q "%LocalAppData%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\INetCookies"
RD /S /Q "%LocalAppData%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\MicrosoftEdge\Cookies"
RD /S /Q "%LocalAppData%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\INetCookies"
RD /S /Q "%LocalAppData%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\MicrosoftEdge\Cookies"
RD /S /Q "%LocalAppData%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\MicrosoftEdge\User\Default\DOMStore"
RD /S /Q "%LocalAppData%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!002\INetCookies"
RD /S /Q "%LocalAppData%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!002\MicrosoftEdge\Cookies"
RD /S /Q "%LocalAppData%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!002\MicrosoftEdge\User\Default\DOMStore"
cls
title Suppression %%u RDP Temporary Files. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" cd "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache"
cls
title Suppression %%u Opera Temporary Files. . .
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" cd "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Caches" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"
cls
title Suppression %%u Vivaldi Temporary Files. . .
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" echo Suppression....
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache"
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache"
cls
title Cleaner +
rmdir /S /Q "%SYSTEMDRIVE%\Nexus\Resources\DeviceCleanupCmd\" >nul 2>&1
del /F /Q "%SYSTEMDRIVE%\Nexus\Resources\AdwCleaner.exe" >nul 2>&1
del /F /Q "%SYSTEMDRIVE%\Nexus\Resources\EmptyStandbyList.exe" >nul 2>&1
curl -g -L -# -o "%SYSTEMDRIVE%\Nexus\Resources\EmptyStandbyList.exe" "https://raw.githubusercontent.com/NotAspects/FastNexus-Desktop/main/EmptyStandbyList.exe"
curl -g -L -# -o "%SYSTEMDRIVE%\Nexus\Resources\DeviceCleanupCmd.zip" "https://www.uwe-sieber.de/files/DeviceCleanupCmd.zip"
curl -g -L -# -o "%SYSTEMDRIVE%\Nexus\Resources\AdwCleaner.exe" "https://adwcleaner.malwarebytes.com/adwcleaner?channel=release"
powershell -NoProfile Expand-Archive '%SYSTEMDRIVE%\Nexus\Resources\DeviceCleanupCmd.zip' -DestinationPath '%SYSTEMDRIVE%\Nexus\Resources\DeviceCleanupCmd\'
del /F /Q "%SYSTEMDRIVE%\Nexus\Resources\DeviceCleanupCmd.zip" >nul 2>&1
del /Q %LOCALAPPDATA%\Microsoft\Windows\INetCache\IE\*.* >nul 2>&1
del /Q "%SYSTEMROOT%\Downloaded Program Files\*.*" >nul 2>&1
rd /s /q %SYSTEMDRIVE%\$Recycle.bin >nul 2>&1
del /Q %TEMP%\*.* >nul 2>&1
del /Q %SYSTEMROOT%\Temp\*.* >nul 2>&1
del /Q %SYSTEMROOT%\Prefetch\*.* >nul 2>&1
cd %SYSTEMDRIVE%\Nexus\Resources >nul 2>&1
AdwCleaner.exe /eula /clean /noreboot
for %%g in (workingsets modifiedpagelist standbylist priority0standbylist) do EmptyStandbyList.exe %%g
cd "%SYSTEMDRIVE%\Nexus\Resources\DeviceCleanupCmd\x64" >nul 2>&1
DeviceCleanupCmd.exe *
exit
)
goto END


:END
exit