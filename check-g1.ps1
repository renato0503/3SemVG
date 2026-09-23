$f = 'D:\Dev\UnifaccApps\3SemVG\Grupo1-DinheiroNaMao\Dinheiro na Mao.pdf'
$bytes = [System.IO.File]::ReadAllBytes($f)
$sig = [System.Text.Encoding]::ASCII.GetString($bytes, 0, 8)
Write-Host "Signature: $sig"
Write-Host "Size: $($bytes.Length) bytes"
