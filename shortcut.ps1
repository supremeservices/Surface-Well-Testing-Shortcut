
$shortcutPath = "C:\Users\Public\Desktop\Surface Well Testing DVR.url"
$targetUrl = "http://10.8.4.5:81"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $targetUrl
$shortcut.Save()
if (Test-Path $shortcutPath) {
    Write-Host "Shortcut created successfully at $shortcutPath"
} else {
    Write-Host "Failed to create shortcut at $shortcutPath"
}
