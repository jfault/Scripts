<#
- Jeremy https://twitter.com/Jeremy_reboot
Script: Detect-Consumer Outlook
Description: Script detects consumer/non-enterprise Outlook installation on Windows 11
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Run this script using the logged-on credentials: Yes
Enforce script signature check: No
Run script in 64-bit PowerShell: Yes
#>  

if (Get-AppxPackage -Name *OutlookForWindows*) {
write-host "Microsoft Outlook (New) found."

exit 1
}

else {
write-host "Microsoft Outlook (New) not found."

exit 0
}
