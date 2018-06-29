Set-Location -Path C:\ctms\git_repos\NOCAgentUpdater
git.exe pull
Copy-Item "C:\ctms\git_repos\NOCAgentUpdater\InstallAgent.ini" -Destination "C:\Windows\SYSVOL\sysvol\$env:USERDNSDOMAIN\scripts\Agent" -Force
Copy-Item "C:\ctms\git_repos\NOCAgentUpdater\SOAGENTSETUP.exe" -Destination "C:\Windows\SYSVOL\sysvol\$env:USERDNSDOMAIN\scripts\Agent" -Force
