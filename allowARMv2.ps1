$sussyFile = "C:\Temp\allowARM_ms_store.reg"
$regBaka = @"
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModel\StubPreference\Microsoft.WindowsStore_8wekyb3d8bbwe]
"PreferNonX64"=dword:00000001
"@

if (-not(Test-Path -Path $sussyFile -PathType Leaf)) {
     try {
         New-Item $sussyFile -ItemType File -Value $regBaka
         Write-Host "[*] The file $sussyFile created..."
     }
     catch {
         throw $_.Exception.Message
     }
 } else {
     Write-Host "[!] Cannot create $sussyFile because a file with that name already exists..."
 }

 Start-Process -FilePath $sussyFile