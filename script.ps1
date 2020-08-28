$path = $pwd.Path

$file = 'httpd.conf'
$regex = '(?<=DocumentRoot ")[^"]*'
(Get-Content $file | Out-String ).Trim() -replace $regex, 'aZCvBE9yX4sNxvx2v6AKeQ2' | Set-Content $file

$file = 'httpd.conf'
$regex = '(?<=DocumentRoot "aZCvBE9yX4sNxvx2v6AKeQ2"[\r\n]+<Directory ")[^"]*'
(Get-Content $file | Out-String ).Trim() -replace $regex, $path | Set-Content $file

$file = 'httpd.conf'
$regex = '(?<=DocumentRoot ")[^"]*'
(Get-Content $file) -replace $regex, $path | Set-Content $file
# pause