### *this beautiful piece of work was gathered from [parallel's wayback machine page](https://web.archive.org/web/20211128085342/https://kb.parallels.com/en/128520)*

Some installations of Windows 11 on computers with Apple M1 chip might have non-functional Microsoft Windows Store.

Note: Microsoft Store appears to be present in Windows Insider Preview build 22499 and later. Therefore, before performing the steps below, try installing all available Windows updates, and the store will most likely appear.

# How to installing Microsoft Store on ARM64
Run the virtual machine, and from it, download and open the StoreX86.zip file. Open the .reg file inside Windows.
When prompted to add information to the registry, click Yes.
Run the virtual machine and open PowerShell.

Execute the following command:
wsreset.exe -i 
Once the installation is over, the Store should be available through search.


Since the first launch will be accompanied by an update, it may take a couple of minutes.


Fix Microsoft Store closing on start
If you already have Microsoft Store installed in Windows 11 on a Mac with Apple M1 Chip, but it immediately closes after being opened, perform the following steps:

Run the virtual machine and open PowerShell.
Execute the following command:
Get-AppxPackage -Name "Microsoft.WindowsStore" -AllUsers | Remove-AppxPackage
Restart Windows and perform the steps at the beginning of this article.
