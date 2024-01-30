<#
Version: 1.0
Author: 
- Jeremy https://twitter.com/Jeremy_reboot
Script: Detect-NETBIOS
Description: Script detects whether or not NETBIOS is enabled on assigned device(s)
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Run this script using the logged-on credentials: Yes
Enforce script signature check: No
Run script in 64-bit PowerShell: Yes
#> 
 
$interfaces = Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Services\NetBT\Parameters\Interfaces\TCPIP*
$i = 0
 
foreach ($interface in $interfaces) {
    $i +=  $interface.NetbiosOptions
}
 
if ($interfaces.Count *2 -eq $i) {
    #netbios disabled
    return "exit 0"
}
 
else {
    # netbios enabled
    return "exit 1"
}
