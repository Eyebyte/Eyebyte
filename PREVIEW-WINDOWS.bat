@echo off
setlocal
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 goto use_py
where python >nul 2>nul
if %errorlevel%==0 goto use_python
echo Python was not found. Install Python, or upload this folder to an HTTP/HTTPS web host.
echo YouTube background videos and the contact form will not work reliably when index.html is opened directly as file://.
pause
exit /b 1

:use_py
start "Eyebyte local web server" cmd /k "cd /d ""%~dp0"" && py -m http.server 8000"
goto open_browser

:use_python
start "Eyebyte local web server" cmd /k "cd /d ""%~dp0"" && python -m http.server 8000"

:open_browser
timeout /t 2 /nobreak >nul
start "" "http://localhost:8000/"
echo The website is being served at http://localhost:8000/
echo Keep the server window open while testing. Close it when finished.
