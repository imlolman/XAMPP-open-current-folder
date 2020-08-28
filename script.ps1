$file = 'httpd.conf'
$regex = '(?<=<setting name="Media\.MediaLinkServerUrl" value=")[^"]*'
(Get-Content $file) -replace $regex, 'https://newurl.com' | Set-Content $file
pause