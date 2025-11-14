# Run PowerShell as Administrator

$regFile = ".\custom-microsoft-edge-profile.reg"

# Use reg.exe to import the file
if (Test-Path $regFile) {
    Start-Process -FilePath "reg.exe" -ArgumentList "import `"$regFile`"" -Verb RunAs -Wait
    Write-Output "Registry file applied successfully: $regFile"
} else {
    Write-Output "Registry file not found: $regFile"
}
