Set-Location -Path C:\ctms\git_repos\NOCAgentUpdater
start-process -filepath "C:\Program Files\Git\cmd\git.exe" -ArgumentList "pull"
Copy-Item "C:\ctms\git_repos\NOCAgentUpdater\InstallAgent.ini" -Destination "C:\Windows\SYSVOL\sysvol\$env:USERDNSDOMAIN\scripts\Agent" -Force
Copy-Item "C:\ctms\git_repos\NOCAgentUpdater\SOAGENTSETUP.exe" -Destination "C:\Windows\SYSVOL\sysvol\$env:USERDNSDOMAIN\scripts\Agent" -Force
