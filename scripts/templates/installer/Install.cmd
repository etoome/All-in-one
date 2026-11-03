@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0.bin\Install.ps1" %*
pause
