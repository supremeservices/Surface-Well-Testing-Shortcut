# Define the registry path and value name
$keyPath = "Registry::HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Outlook\Setup"
$valueName = "DisableRoamingSignaturesTemporaryToggle"
$newValue = 1

# Check if the registry key exists
if (Test-Path $keyPath) {
    # Check if the value exists
    if (Get-ItemProperty -Path $keyPath -Name $valueName -ErrorAction SilentlyContinue) {
        # If the value exists, update it
        Set-ItemProperty -Path $keyPath -Name $valueName -Value $newValue
        Write-Host "Updated '$valueName' to '$newValue' under '$keyPath'."
    } else {
        # If the value doesn't exist, create it
        New-ItemProperty -Path $keyPath -Name $valueName -Value $newValue -PropertyType DWord
        Write-Host "Created '$valueName' with value '$newValue' under '$keyPath'."
    }
} else {
    Write-Host "Registry key '$keyPath' does not exist."
}
