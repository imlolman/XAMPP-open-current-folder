$path = $pwd.Path
$configFile = 'C:\xampp\apache\conf\httpd.conf'

$regex = '(?<=DocumentRoot ")[^"]*'
(Get-Content $configFile | Out-String ).Trim() -replace $regex, 'aZCvBE9yX4sNxvx2v6AKeQ2' | Set-Content $configFile

$regex = '(?<=DocumentRoot "aZCvBE9yX4sNxvx2v6AKeQ2"[\r\n]+<Directory ")[^"]*'
(Get-Content $configFile | Out-String ).Trim() -replace $regex, $path | Set-Content $configFile

$regex = '(?<=DocumentRoot ")[^"]*'
(Get-Content $configFile) -replace $regex, $path | Set-Content $configFile

# pause