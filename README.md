# Microsoft Store on ARM64 (for UTM)
Some installations of Windows 11 on computers with Apple M1 chip might have non-functional Microsoft Windows Store.

Note: Microsoft Store appears to be present in Windows Insider Preview build 22499 and later. Therefore, before performing the steps below, try installing all available Windows updates, and the store will most likely appear.

# How to install
1. Run the virtual machine, and from it, open Powershell as Administrator.
<br><br><br>
<img src="https://github.com/DaBigBlob/ms-store-arm64/raw/main/assets/Screenshot%202022-11-01%20at%208.33.22%20AM.png" alt="">

2.  Execute the following command: (When prompted to add information to the registry, click Yes.)
```powershell
iwr -useb https://raw.githubusercontent.com/DaBigBlob/ms-store-arm64/main/allowARM.ps1|iex
```
*NOTE: Please check the [ps1 script](https://raw.githubusercontent.com/DaBigBlob/ms-store-arm64/main/allowARMv2.ps1) yourself to be sure I aren't installing malware onto your vm.*
<br><br><br>
3. Execute the following command:
```powershell
wsreset.exe -i
```
4. Once the installation is over, the Store should be available through search.<br>
Since the first launch will be accompanied by an update, it may take a couple of minutes(or seconds).
<img src="https://github.com/DaBigBlob/ms-store-arm64/raw/main/assets/Screenshot%202022-11-01%20at%208.54.47%20AM.png" alt="installing pic">
<img src="https://github.com/DaBigBlob/ms-store-arm64/raw/main/assets/Screenshot%202022-11-01%20at%207.26.33%20AM.png" alt="in action screenshot">

<br><br><br>
# Fix Microsoft Store closing on start
If you already have Microsoft Store installed in Windows 11 on a Mac with Apple M1 Chip, but it immediately closes after being opened, perform the following steps:

1. Run the virtual machine and open Powershell as Administrator.<br>
Execute the following command:
```powershell
Get-AppxPackage -Name "Microsoft.WindowsStore" -AllUsers | Remove-AppxPackage
```
2. Restart Windows and perform the steps at the beginning of this article [here](#how-to-install).

# CREDITS
1. **This beautiful piece of work was gathered from [parallel's wayback machine page.](https://web.archive.org/web/20211128085342/https://kb.parallels.com/en/128520)**
2. I assembled and wrote scripts myself.
