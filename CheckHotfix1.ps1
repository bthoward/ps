$server = Read-Host "Server Name"
$hotfix = "KB3144756"
$os = "Microsoft Windows 10 Pro"

#Get server Operating System
Function Get-OperatingSystemVersion
{
    (Get-WmiObject -Class Win32_OperatingSystem -ComputerName $server).caption
}

#Check server to see if hotfix is installed
Function Get-HotfixID
{
    (Get-Hotfix -ComputerName $server | where {$_.hotfixid -eq $hotfix}) 
}

#Want to check OS version and if 2012, then check for KB
if ((Test-Connection -ComputerName $server -quiet) -and ((Get-OperatingSystemVersion) -eq $os)) {
        (Get-HotFixId) 
            "$server OS is $(Get-OperatingSystemVersion) and you already have the patch."
        }
        Else {
            "$server OS is $(Get-OperatingSystemVersion) and you NEED the patch."
        }
Elseif {
    "$server OS is $(Get-OperatingSystemVersion)."
}