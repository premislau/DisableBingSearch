# DisableBingSearch
A PowerShell script disabling Bing search in Search Box in Windows 10 and Windows 11; which is achieved by addition of a set to 0 flag "BingSearchEnabled" to "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search". If the flag does not exist, Bing search is enabled by default in Windows 10.

# Usage
To disable Bing search in Search Box:
```powershell
.\DisableBingSearch.ps1
```
To revert this change (therefore reenable Bing search):
```powershell
.\DisableBingSearch.ps1 revert
```