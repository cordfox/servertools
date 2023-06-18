$sourceFiles = "https://github.com/cordfox/servertools/archive/refs/heads/main.zip"
$downloadName = "servertools.zip"
$scriptsFolder = "C:\Program Files\Zabbix Agent 2\scripts"
$repositoryFolderEW = "servertools-main" #this is the name 
$repositoryFolderYeah = "servertools"

#Clean some house
if(test-path $scriptsFolder\$repositoryFolderEW){Remove-Item $scriptsFolder\$repositoryFolderEW -Recurse -Force -Confirm:$FALSE }
if(test-path $scriptsFolder\$repositoryFolderYeah){Remove-Item $scriptsFolder\$repositoryFolderYeah -Recurse -Force -Confirm:$FALSE }
if(test-path $scriptsFolder\$downloadName){Remove-Item $scriptsFolder\$downloadName -Recurse -Force -Confirm:$FALSE}

#download the files from github
if(!(test-path $scriptsFolder)){New-Item -ItemType Directory $scriptsFolder -Force -Confirm:$FALSE}
Invoke-WebRequest -Uri $sourceFiles -OutFile $scriptsFolder\$downloadName
Expand-Archive $scriptsFolder\$downloadName $scriptsFolder
Rename-Item $scriptsFolder\$repositoryFolderEW $scriptsFolder\$repositoryFolderYeah

#clean house again but leave the goods
if(test-path $scriptsFolder\$repositoryFolderEW){Remove-Item $scriptsFolder\$repositoryFolderEW -Recurse -Force -Confirm:$FALSE }
if(test-path $scriptsFolder\$downloadName){Remove-Item $scriptsFolder\$downloadName -Recurse -Force -Confirm:$FALSE}
