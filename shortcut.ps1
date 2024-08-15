
$shortcuts = @(
    @{ Path = "C:\Users\cbuquet\Desktop\Houma Rental DVR.url"; Url = "http://10.8.4.2:81" },
    @{ Path = "C:\Users\cbuquet\Desktop\Houma Frac DVR.url"; Url = "http://10.8.4.3:81" },
    @{ Path = "C:\Users\cbuquet\Desktop\Surface Well Testing DVR.url"; Url = "http://10.8.4.5:81" }
)

foreach ($shortcut in $shortcuts) {
    $WScriptShell = New-Object -ComObject WScript.Shell
    $sc = $WScriptShell.CreateShortcut($shortcut.Path)
    $sc.TargetPath = $shortcut.Url
    $sc.Save()
    
    if (Test-Path $shortcut.Path) {
        Write-Host "Shortcut created successfully at $($shortcut.Path)"
    } else {
        Write-Host "Failed to create shortcut at $($shortcut.Path)"
    }
}
