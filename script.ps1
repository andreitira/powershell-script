


echo "Introduce-ti calea de cautare"
$path = Read-Host

echo "Introduce-ti calea unde doriti arhivele puse"
$archivePath = Read-Host

$date = Get-date

ls $path -Recurse -Filter "*.txt" | Where-Object {$_.LastWriteTime -lt $date}  | foreach($_) { Compress-Archive($_.FullName) -DestinationPath $archivePath\bk -Update ; Remove-Item $_.fullname}
