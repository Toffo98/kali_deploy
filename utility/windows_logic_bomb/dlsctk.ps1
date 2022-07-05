# Delete a scheduled task and autodelete the ps1 script
Unregister-ScheduledTask -TaskName "atkl" -Confirm:$false
Remove-Item -Path $MyInvocation.MyCommand.Source