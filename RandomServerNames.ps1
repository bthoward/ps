
param(
[Parameter(Position=0,Mandatory=$true)][int]$Count
)

$PhoneticNames = "Alpha","Bravo","Charlie","Delta","Echo","Foxtrot","Golf","Hotel","India","Juliet","Kilo","Lima","Mike","November","Oscar","Papa","Quebec","Romeo","Sierra","Tango","Uniform","Victor","Whiskey","X-Ray","Yankee","Zulu"

for ($i=1;$i -le $Count; $i++) {
    $name = -join (($PhoneticNames | Get-Random).Trim(),"-",(Get-Random -Minimum 1001 -Maximum 1999))
if (!(Test-Connection -computername "$c.dylan.net" -Count 1 -Quiet)) {
    write-host $name.ToUpper() -foregroundcolor "green"
}
}