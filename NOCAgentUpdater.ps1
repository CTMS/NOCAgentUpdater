Set-Location -Path C:\ctms\git_repos\NOCAgentUpdater
git.exe pull
Copy-Item "C:\ctms\git_repos\NOCAgentUpdater\*" -Destination "C:\Windows\SYSVOL\sysvol\$env:USERDNSDOMAIN\scripts\Agent" -Force
