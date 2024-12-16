<#
- Jeremy https://twitter.com/Jeremy_reboot
Script: Detect Game Bar
Description: Script detects XBOX Game Bar installation on Windows 11
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Run this script using the logged-on credentials: Yes
Enforce script signature check: No
Run script in 64-bit PowerShell: Yes
#> 

if ($null -eq (Get-AppxPackage -Name Microsoft.XboxGamingOverlay)) {
	Write-Host "Xbox Gaming Overlay not found"
	exit 0
} Else {
	Write-Host "Xbox Gaming Overlay found"
	Exit 1

}