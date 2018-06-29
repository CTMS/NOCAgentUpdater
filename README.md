## **NOCAgentUpdater**



## **Installation**
Install chocolatey and git before hand.
Clone out the repo into the git_repos directory.
Run the following as admin:
> schtasks /CREATE /TN NOCAgentUpdater /TR "powershell.exe -noprofile -executionpolicy Bypass -file C:\ctms\git_repos\NOCAgentUpdater\NOCAgentUpdater.ps1" /RU "SYSTEM" /RL HIGHEST /SC DAILY