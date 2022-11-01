$regBaka = @"
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StubPreference\Microsoft.WindowsStore_8wekyb3d8bbwe]
"PreferNonX64"=dword:00000001
"@

New-Item "C:\Temp\allowARM_ms_store.reg" -ItemType File -Value $regBaka
Start-Process -FilePath "C:\Temp\allowARM_ms_store.reg"
Remove-Item "C:\Temp\allowARM_ms_store.reg"