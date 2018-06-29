Set-Location -Path C:\ctms\git_repos\NOCAgentUpdater
"C:\Program Files\Git\cmd\git.exe" pull
Copy-Item "C:\ctms\git_repos\NOCAgentUpdater\*" -Destination "C:\Windows\SYSVOL\sysvol\$env:USERDNSDOMAIN\scripts\Agent" -Force
