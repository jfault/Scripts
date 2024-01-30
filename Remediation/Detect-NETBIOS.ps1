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