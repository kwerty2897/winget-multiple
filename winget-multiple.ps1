#Requires -RunAsAdministrator
Write-Host "Checking WinGet..."

Try{
    # Check if winget is already installed
    $er = (invoke-expression "winget -v") 2>&1
    if ($lastexitcode) {throw $er}
    Write-Host "WinGet is already installed."
}
Catch{
    Write-Host -Foreground Green 'Not found, trying install it'
    Start-Process 'ms-windows-store://pdp?productid=9NBLGGH4NNS1'
    Write-Host -Foreground Red 'If you dont have Store run wsreset -i from admin in terminal shell'
    Read-Host -Prompt "Install/update App Installer in MS Store window, then press any key to continue"    
}
Finally {
    Write-Host -Foreground Green "Installing WinGet packages"
    Get-Content .\packages.txt | ForEach-Object {
    $appName = $_
    iex ("winget install $appName --silent --accept-source-agreements --accept-package-agreements")
    }
}
