#TADDM User account
$taddm = "brian"
$SearchLocalAdmins = (net localgroup administrators | Select-String -pattern $taddm)
if ($SearchLocalAdmins -eq $null) {
    Write-Host "Not a member of Local Administrators Group."
}
Else {
    Write-Host "Found $SearchLocalAdmins in Local Administrators Group."
} 