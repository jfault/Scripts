$NICS = Get-WmiObject win32_NetworkAdapterConfiguration
foreach ($NIC in $NICS){
        $NIC.settcpipnetbios(2) # 2 = disable netbios on interface
    }