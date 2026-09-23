$f = 'D:\Dev\UnifaccApps\3SemVG\Grupo3-QuitaAI\Quit_AI.pdf'
$bytes = [System.IO.File]::ReadAllBytes($f)
$sig = [System.Text.Encoding]::ASCII.GetString($bytes, 0, 8)
Write-Host "G3 sig: $sig  size: $($bytes.Length)"
