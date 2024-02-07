<#
- Jeremy https://twitter.com/Jeremy_reboot
Script: Remediate-NETBIOS
Description: Script Remediates NETBIOS to off.
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Run this script using the logged-on credentials: No (depends on your environment, may be able to run Yes if your users have access to powershell. Use No to run in system context)
Enforce script signature check: No
Run script in 64-bit PowerShell: Yes
#> 
 
$base = "HKLM:SYSTEM\CurrentControlSet\Services\NetBT\Parameters\Interfaces"

$interfaces = Get-ChildItem $base | Select -ExpandProperty PSChildName

foreach($interface in $interfaces) {
    Set-ItemProperty -Path "$base\$interface" -Name "NetbiosOptions" -Value 2
}
