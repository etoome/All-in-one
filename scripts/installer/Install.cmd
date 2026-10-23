@echo off
REM Double-click wrapper for Install.ps1. Pass -Uninstall to remove the add-in instead.
attrib +h "%~dp0.bin" >nul 2>&1
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0.bin\Install.ps1" %*
pause
