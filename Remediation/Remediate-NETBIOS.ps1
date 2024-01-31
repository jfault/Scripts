<#
Version: 1.0
Author: 
- Jeremy https://twitter.com/Jeremy_reboot
Script: Remediate-NETBIOS
Description: Script Remediates NETBIOS to off.
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Run this script using the logged-on credentials: Yes
Enforce script signature check: No
Run script in 64-bit PowerShell: Yes
#> 
 
$base = "HKLM:SYSTEM\CurrentControlSet\Services\NetBT\Parameters\Interfaces"

$interfaces = Get-ChildItem $base | Select -ExpandProperty PSChildName

foreach($interface in $interfaces) {
    Set-ItemProperty -Path "$base\$interface" -Name "NetbiosOptions" -Value 2
}
