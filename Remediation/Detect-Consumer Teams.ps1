<#
- Jeremy https://twitter.com/Jeremy_reboot
Script: Detect-Consumer Teams
Description: Script detects consumer/non-enterprise Teams installation on Windows 11
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Run this script using the logged-on credentials: Yes
Enforce script signature check: No
Run script in 64-bit PowerShell: Yes
#> 

if ($null -eq (Get-AppxPackage -Name MicrosoftTeams)) {
	Write-Host "Microsoft Teams client not found"
	exit 0
} Else {
	Write-Host "Microsoft Teams client found"
	Exit 1

}