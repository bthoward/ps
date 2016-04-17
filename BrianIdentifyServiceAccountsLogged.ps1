$Query = "Select StartName, Name from Win32_Service"
$File = "C:\output\ServiceAccounts.txt"
New-Variable -Name ASCII -Value "ASCII" -Option constant
Get-CimInstance -Query $Query |
Sort-Object StartName, Name |
Format-List name, StartName |
Out-File -FilePath $File -Encoding $ASCII -Append -NoClobber