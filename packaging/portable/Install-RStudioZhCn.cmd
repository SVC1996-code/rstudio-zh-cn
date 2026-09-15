@echo off
setlocal DisableDelayedExpansion
set "installer_host=%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe"
where pwsh.exe >nul 2>nul
if errorlevel 1 goto run
set "installer_host=pwsh.exe"
:run
rem Rebuild host-native module paths; do not inherit PS7 module paths into PS5.1.
set "PSModulePath="
rem Only this child process bypasses downloaded unsigned-script policy.
rem No user/machine policy or administrator elevation is changed.
"%installer_host%" -NoLogo -NoProfile -STA -ExecutionPolicy Bypass -File "%~dp0Install-RStudioZhCn.ps1" %*
set "installer_result=%ERRORLEVEL%"
echo.
if "%installer_result%"=="0" (echo Installer finished.) else (echo Installation failed. See the message above.)
pause
exit /b %installer_result%
