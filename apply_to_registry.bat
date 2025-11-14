@echo off
:: Batch script to apply a .reg file to the registry

:: Path to your .reg file
set REGFILE=.\custom-microsoft-edge-profile.reg

:: Apply the .reg file silently (no prompts)
regedit /s "%REGFILE%"

:: Optional: confirmation message
echo Registry file "%REGFILE%" has been applied.
pause
