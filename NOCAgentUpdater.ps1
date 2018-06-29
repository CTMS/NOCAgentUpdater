Set-Location -Path C:\ctms\git_repos\NOCAgentUpdater
start-process -filepath "C:\Program Files\Git\cmd\git.exe" -ArgumentList "pull"

$domain = (Get-WmiObject Win32_ComputerSystem).Domain
$AgentBin = "C:\ctms\git_repos\NOCAgentUpdater\SOAGENTSETUP.exe"
$Agentini = "C:\ctms\git_repos\NOCAgentUpdater\InstallAgent.ini"

if (Test-Path -Path C:\Windows\SYSVOL_DFSR) {
    $Sysvol_Path = "C:\Windows\SYSVOL_DFSR\sysvol\$domain\scripts\Agent"
}
else {
    $Sysvol_Path = "C:\Windows\SYSVOL\sysvol\$domain\scripts\Agent"
}

Copy-Item $AgentBin -Destination $Sysvol_Path -Force
Copy-Item $Agentini -Destination $Sysvol_Path -Force