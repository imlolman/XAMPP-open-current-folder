if ( !(Test-Path 'HKCR:\') ) {
    New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
}
$regPath = 'HKCR:\Applications\powershell.exe\shell\open\command'
if (Test-Path $regPath) {
    New-ItemProperty -Path $regPath -Name '(default)' -Value '"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" "& \"%1\""' -Force | Out-Null
}