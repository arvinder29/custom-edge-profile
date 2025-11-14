@echo off
:: Batch script to delete Edge policy registry key

:: Check for administrator rights
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Please run this script as Administrator.
    pause
    exit /b
)

:: Delete the registry key
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f

:: Confirmation
echo Registry key HKLM\SOFTWARE\Policies\Microsoft\Edge has been deleted.
pause
