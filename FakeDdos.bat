----fake and it do is when it know that you have the browser or searchengine it will open the url that you put and when it say attack it will close the searchengine you had in your computer or other
@echo off
title DDoS Attack
color 0c

:main
cls
echo =========================================
echo           DDoS Attack          
echo =========================================
echo.
echo Enter the website URL to attack (e.g., www.example.com):
set /p website=

echo [*] Initiating attack on %website%...
ping -n 2 127.0.0.1 > nul
echo [*] Launching browser...

:: Check for and open in default browser
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    start chrome %website%
    goto wait_and_close
)
if exist "C:\Program Files\Mozilla Firefox\firefox.exe" (
    start firefox %website%
    goto wait_and_close
)
if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    start microsoft-edge:%website%
    goto wait_and_close
)
if exist "C:\Program Files\Internet Explorer\iexplore.exe" (
    start iexplore.exe %website%
    goto wait_and_close
)

:: If no browsers are found, display an error message
echo [*] No supported browsers found!
echo Press any key to exit...
pause > nul
exit

:wait_and_close
ping -n 7 127.0.0.1 > nul
echo [*] Website crashed!
taskkill /IM chrome.exe /F > nul 2>&1
taskkill /IM firefox.exe /F > nul 2>&1
taskkill /IM msedge.exe /F > nul 2>&1
taskkill /IM iexplore.exe /F > nul 2>&1
echo [*] Attack complete!
echo.
echo Press any key to exit...
pause > nul
exit
