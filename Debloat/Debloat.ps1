New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
Function Remove-RegistryKeys {
    $Keys = @(
        #BackgroundTasks
        'HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI`*'

        #3rdPartySoftware
        'HKCR:\Extensions\ContractId\Windows.File\PackageId\ActiproSoftwareLLC`*'
    )

    ForEach ($Key in $Keys) {
        If (Test-Path $Key) {
            Write-Output "Removing $Key from registry"
            Remove-Item -Path $Key -Recurse -ErrorAction SilentlyContinue -Force -Confirm:$false
        }
    }
}

Remove-RegistryKeys