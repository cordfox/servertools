#Get Grace Period
$GracePeriodRemaining = Get-CimInstance -ClassName SoftwareLicensingProduct | Select-Object -Expand GracePeriodRemaining

#Do math to make things right
$DaysRemaining = $GracePeriodRemaining/1440
$Days = [math]::truncate($DaysRemaining)

#This part sends the data back to Zabbix
write-host $Days
