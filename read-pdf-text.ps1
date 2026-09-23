$f = 'D:\Dev\UnifaccApps\3SemVG\Grupo1-DinheiroNaMao\Dinheiro na Mao.pdf'
$b = [System.IO.File]::ReadAllBytes($f)
$enc = [System.Text.Encoding]::UTF8
try { $s = $enc.GetString($b) } catch { $s = [System.Text.Encoding]::ASCII.GetString($b) }
$matches = [regex]::Matches($s, '[\x20-\x7E]{8,}')
$found = @()
foreach ($m in $matches) {
    $v = $m.Value.Trim()
    if ($v.Length -gt 15 -and $found.Count -lt 300) { $found += $v }
}
$found | ForEach-Object { Write-Host $_ }
