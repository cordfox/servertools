if(test-path C:\servertools-main){Remove-Item C:\servertools-main -Recurse -Force -Confirm:$FALSE };if(test-path C:\servertools.zip){Remove-Item C:\servertools.zip -Recurse -Force -Confirm:$FALSE}
Invoke-WebRequest -Uri 'https://github.com/cordfox/servertools/archive/refs/heads/main.zip' -OutFile "C:\servertools.zip" 
Expand-Archive C:\servertools.zip C:\
Remove-Item C:\servertools.zip
if(test-path C:\servertools){remove-item C:\servertools -Recurse -Force -Confirm:$FALSE}
Rename-Item C:\servertools-main C:\servertools
if(test-path C:\download.ps1){remove-item -Path C:\download.ps1}
