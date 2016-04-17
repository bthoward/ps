param(
[Parameter(Position=0,Mandatory=$true)][int]$Count
)

#$d = Read-Host "how many?"
for ($i=1;$i -le $Count; $i++) {
    $name = -join ((Get-Content C:\Script\names.txt | Get-Random).Trim(),"-",(Get-Random -Minimum 1001 -Maximum 1999))
if (!(Test-Connection -computername "$c.dylan.net" -Count 1 -Quiet)) {
    write-host $name.ToUpper() -foregroundcolor "magenta"
}
}