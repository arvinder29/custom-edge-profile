# Run PowerShell as Administrator

# Define the registry path
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Edge"

# Check if the key exists
if (Test-Path $regPath) {
    # Remove the key and all subkeys
    Remove-Item -Path $regPath -Recurse -Force
    Write-Output "Registry key removed successfully: $regPath"
} else {
    Write-Output "Registry key does not exist: $regPath"
}
