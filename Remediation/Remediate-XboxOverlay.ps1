<#
- Jeremy https://twitter.com/Jeremy_reboot
Script: Remediate Game Bar
Description: Script remediates XBOX Game Bar installation on Windows 11
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Run this script using the logged-on credentials: Yes
Enforce script signature check: No
Run script in 64-bit PowerShell: Yes
#> 

try{
    Get-AppxPackage -Name Microsoft.XboxGamingOverlay | Remove-AppxPackage -ErrorAction stop
    Write-Host "XBOX Game Bar successfully removed"

}
catch{
    Write-Error "Error removing XBOX Game Bar"
}