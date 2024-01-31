<#
- Jeremy https://twitter.com/Jeremy_reboot
Script: Remediate-Consumer Outlook
Description: Script remediates consumer/non-enterprise Outlook installation on Windows 11
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Run this script using the logged-on credentials: Yes
Enforce script signature check: No
Run script in 64-bit PowerShell: Yes
#> 

try{
    Get-AppxPackage -Name *OutlookForWindows* | Remove-AppxPackage -ErrorAction stop
    Write-Host "Microsoft Outlook (New) successfully removed."

}
catch{
    Write-Error "Error removing Microsoft Outlook (New)."
}