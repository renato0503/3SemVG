$pdf = 'D:\Dev\UnifaccApps\3SemVG\Grupo4-SuaCasaSuaVida\Green Playful cartoon Financial Project Presentation.pdf'
$tmp = [IO.Path]::GetTempFileName() + '.txt'
$bytes = [System.IO.File]::ReadAllBytes($pdf)
$enc = [System.Text.Encoding]::UTF8
try { $s = $enc.GetString($bytes) } catch { $s = [System.Text.Encoding]::ASCII.GetString($bytes) }
$matches = [regex]::Matches($s, '[\x20-\x7E]{8,}')
$found = @()
foreach ($m in $matches) {
    $v = $m.Value.Trim()
    if ($v.Length -gt 15 -and $found.Count -lt 300) { $found += $v }
}
$found | ForEach-Object { Write-Host $_ }
Remove-Item $tmp -Force -EA SilentlyContinue
