# Microsoft Store on ARM64 (for UTM)
<img src="https://github.com/DaBigBlob/ms-store-arm64/raw/main/assets/Screenshot%202022-11-01%20at%207.26.33%20AM.png" alt="in action screenshot">

Some installations of Windows 11 on computers with Apple M1 chip might have non-functional Microsoft Windows Store.

Note: Microsoft Store appears to be present in Windows Insider Preview build 22499 and later. Therefore, before performing the steps below, try installing all available Windows updates, and the store will most likely appear.

# How to install
1. Run the virtual machine, and from it, download Open the .reg file inside Windows.
2. When prompted to add information to the registry, click Yes.<br>
Run the virtual machine and open PowerShell.

3. Execute the following command:
```powershell
wsreset.exe -i
```
4. Once the installation is over, the Store should be available through search.<br>
Since the first launch will be accompanied by an update, it may take a couple of minutes(or seconds).


# Fix Microsoft Store closing on start
If you already have Microsoft Store installed in Windows 11 on a Mac with Apple M1 Chip, but it immediately closes after being opened, perform the following steps:

1. Run the virtual machine and open PowerShell.<br>
Execute the following command:
```powershell
Get-AppxPackage -Name "Microsoft.WindowsStore" -AllUsers | Remove-AppxPackage
```
Restart Windows and perform the steps at the beginning of this article.
# CREDITS

### *this beautiful piece of work was gathered from [parallel's wayback machine page](https://web.archive.org/web/20211128085342/https://kb.parallels.com/en/128520)*
