<#
Version: 1.0
Author: 
- Jeremy https://twitter.com/Jeremy_reboot
Script: Remediate-NETBIOS
Description: Script Remediates NETBIOS if it is enabled, if not enabled no action is taken.
Hint: This is a community script. There is no guarantee for this. Please check thoroughly before running.
Run this script using the logged-on credentials: Yes
Enforce script signature check: No
Run script in 64-bit PowerShell: Yes
#> 
 
$NICS = Get-WmiObject win32_NetworkAdapterConfiguration
foreach ($NIC in $NICS){
        $NIC.settcpipnetbios(2) # 2 = disable netbios on interface
    }
