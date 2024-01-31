<#
- Jeremy https://twitter.com/Jeremy_reboot
Script: Remediate-Consumer Teams
Description: Script remediates consumer/non-enterprise Teams installation on Windows 11
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Run this script using the logged-on credentials: Yes
Enforce script signature check: No
Run script in 64-bit PowerShell: Yes
#> 

try{
    Get-AppxPackage -Name MicrosoftTeams | Remove-AppxPackage -ErrorAction stop
    Write-Host "Microsoft Teams app successfully removed"

}
catch{
    Write-Error "Errorremoving Microsoft Teams app"
}