Write-Host "Updating Everything"
choco upgrade all -y

Start-Sleep -Seconds 10
shutdown /s