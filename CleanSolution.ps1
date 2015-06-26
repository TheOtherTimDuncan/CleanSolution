param(
    [Parameter(Mandatory=$true)]
    [string]$target
)
Set-Location $target
Write-Host "Deleting bin and obj folders from $target..."
gci -inc bin,obj -rec | rm -rec -force
Write-Host "Press any key to continue ..."
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
