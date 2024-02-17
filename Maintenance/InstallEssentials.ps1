Function Install-Essentials {
    $Keys = @(
        #vcredistributable Packages
        'vcredist-all'

        #Recommended NVidia Driver
        'nvidia-display-driver'

        #Steam
        'steam'

        #Google Chrome Browser
        'googlechrome'

        #Discord
        'discord'

        #7zip
        '7zip'

        #Intel Chipset Driver
        'intel-chipset-device-software'

        #
        ''
    )

    Write-Host "Installing Windows Update Module"
    Install-Module PSWindowsUpdate -y

    Write-Host "Installing Chocolatey" -ForegroundColor Green
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

    
    ForEach ($Key in $Keys) {
        Write-Output "Installing $Key"
        choco install $Key -y -ErrorAction SilentlyContinue
    }
}