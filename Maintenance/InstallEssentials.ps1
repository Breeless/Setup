Write-Host "Installing Windows Update Module"
Install-Module PSWindowsUpdate -y

Write-Host "Installing Chocolatey" -ForegroundColor Green
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Host "Installing HardwareInfo" -ForegroundColor Green
choco install hwinfo -y

Write-Host "Installing vcredistributable Packages" -ForegroundColor Green
choco install vcredist-all -y

Write-Host "Installing Nvidia Driver" -ForegroundColor Green
choco upgrade nvidia-display-driver -y

Write-Host "Installing EVGA Precision" -ForegroundColor Green
choco install evga-precision-x1 -y

Write-Host "Installing Notepad++" -ForegroundColor Green
choco install notepadplusplus -y

Write-Host "Installing Visual Studio Code" -ForegroundColor Green
choco install vscode -y

Write-Host "Installing Steam" -ForegroundColor Green
choco install steam -y

Write-Host "Installing Google Chrome" -ForegroundColor Green
choco install googlechrome -y

Write-Host "Installing Nvidia Broadcast" -ForegroundColor Green
choco install nvidia-broadcast -y

Write-Host "Installing Microsoft Teams" -ForegroundColor Green
choco install microsoft-teams -y

Write-Host "Installing Spotify" -ForegroundColor Green
choco install spotify -y

Write-Host "Installing Discord" -ForegroundColor Green
choco install discord -y

Write-Host "Installing OBS Studio" -ForegroundColor Green
choco install obs-studio -y

Write-Host "Installing Codeblocks" -ForegroundColor Green
choco install codeblocks -y

Write-Host "Installing iCUE" -ForegroundColor Green
choco install icue -y

Write-Host "Installing 7-zip" -ForegroundColor Green
choco install 7zip -y

Write-Host "Installing IrfanView" -ForegroundColor Green
choco install irfanview -y

Write-Host "Installing Epic Launcher" -ForegroundColor Green
choco install epicgameslauncher -y

Write-Host "Installing Ubisoft Launcher" -ForegroundColor Green
choco install ubisoft-connect -y

Write-Host "Installing EA Launcher" -ForegroundColor Green
choco install ea-app -y

Write-Host "Installing GOG Launcher" -ForegroundColor Green
choco install goggalaxy -y

Write-Host "Installing Intel Chipset Driver" -ForegroundColor Green
choco install intel-chipset-device-software -y

Write-Host "Installing EQ APO" -ForegroundColor Green
choco install equalizerapo -y