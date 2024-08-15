# Define the path for the shortcut and the target URL
$shortcutPath = "C:\Users\jneid\Desktop\Houma IMS DVR.url"
$targetUrl = "http://10.11.4.10:81"

# Create the shortcut
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $targetUrl
$shortcut.Save()

# Confirm creation to the host
if (Test-Path $shortcutPath) {
    Write-Host "Shortcut created successfully at $shortcutPath"
} else {
    Write-Host "Failed to create shortcut at $shortcutPath"
}
