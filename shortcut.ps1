
New-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Outlook\Setup" -Name "DisableRoamingSignaturesTemporaryToggle" -Value 1 -PropertyType DWord
