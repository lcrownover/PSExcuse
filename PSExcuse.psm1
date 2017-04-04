$Excuses = Get-Content "$($Env:PSModulePath.split(';')[0])\PSExcuse\excuses.txt"


Function Get-Excuse {
    $r = Get-Random -Maximum $($Excuses.Count + 1) -Minimum 1
    Write-Output $Excuses[$r]
}
