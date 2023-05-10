$timeRemaining = cscript $Env:SystemRoot\system32\slmgr.vbs /dlv | Select-String '\W*(Remaining Windows rearm count:\W*.*)'
$timeRemaining = $timeRemaining -replace "[^0-9]"
