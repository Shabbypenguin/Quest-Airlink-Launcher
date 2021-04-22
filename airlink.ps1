.\adb.exe disconnect
$ipaddress = $(ipconfig | where {$_ -match 'IPv4.+\s(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})' } | out-null; $Matches[1])
$netcfg = .\adb.exe shell ip addr show wlan0
$ip = [regex]::Matches($netcfg, '\d{1,}[.]\d{1,}[.]\d{1,}[.]\d{1,}')[0].Value
.\adb.exe tcpip 5555
$port = (Get-NetTCPConnection -OwningProcess (Get-Process -Name OVRServer_x64).Id -State Listen).LocalPort
.\adb.exe connect $ip
Write-Host "ADB Wireless enabled, please disconnect usb cable and hit enter when ready"
pause
.\adb.exe wait-for-device shell am start -a android.intent.action.VIEW -d "xrstreamingclient://$($ipaddress):$($port)" com.oculus.xrstreamingclient