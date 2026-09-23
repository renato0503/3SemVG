$f = 'D:\Dev\UnifaccApps\3SemVG\Grupo1-DinheiroNaMao\Dinheiro na Mao.pdf'
$bytes = [System.IO.File]::ReadAllBytes($f)
$enc = [System.Text.Encoding]::UTF8
try { $s = $enc.GetString($bytes) } catch { $s = [System.Text.Encoding]::ASCII.GetString($bytes) }

# Try to find readable text between stream and endstream
$chunks = [regex]::Matches($s, 'BT(.*?)ET', 'Singleline')
$found = @()
foreach ($c in $chunks) {
    $t = $c.Groups[1].Value -replace '[^\x20-\x7E\xA0-\xFF\u00C0-\u017F]', ' ' -replace '\s+', ' '
    if ($t.Length -gt 20) { $found += $t.Trim() }
}
$found | Select-Object -First 100 | ForEach-Object { Write-Host $_ }
