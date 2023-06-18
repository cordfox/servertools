if(test-path C:\scripts\servertools-main){Remove-Item C:\scripts\servertools-main -Recurse -Force -Confirm:$FALSE };if(test-path C:\scripts\servertools.zip){Remove-Item C:\scripts\servertools.zip -Recurse -Force -Confirm:$FALSE}
Invoke-WebRequest -Uri 'https://github.com/cordfox/servertools/archive/refs/heads/main.zip' -OutFile "C:\scripts\servertools.zip" 
Expand-Archive C:\scripts\servertools.zip C:\scripts
Remove-Item C:\scripts\servertools.zip
if(test-path C:\scripts\servertools){remove-item C:\scripts\servertools -Recurse -Force -Confirm:$FALSE}
Rename-Item C:\scripts\servertools-main C:\scripts\servertools
if(test-path C:\scripts\download.ps1){remove-item -Path C:\scripts\download.ps1}
