$pptxPath = 'D:\Dev\UnifaccApps\3SemVG\Grupo2-LifePath\LifePath x Nubank - Simulador da Vida Real.pptx'
$tmp = [IO.Path]::GetTempFileName() + '.zip'
Copy-Item $pptxPath $tmp -Force
Add-Type -AssemblyName System.IO.Compression.FileSystem
$z = [System.IO.Compression.ZipFile]::OpenRead($tmp)
$entries = @($z.Entries)
$slides = @()
for ($i = 1; $i -le 30; $i++) {
    $pattern = "ppt/slides/slide$($i).xml"
    $fentry = $entries | Where-Object { $_.FullName -eq $pattern }
    if ($fentry) {
        $sr = New-Object System.IO.StreamReader($fentry.Open())
        $txt = $sr.ReadToEnd() -replace '<[^>]+>', ' ' -replace '\s+', ' '
        $sr.Close()
        $slides += $txt.Trim()
    }
}
$z.Dispose()
Remove-Item $tmp -Force

Write-Host "Total slides: $($slides.Count)"
for ($j = 0; $j -lt $slides.Count; $j++) {
    Write-Host ""
    Write-Host "======== Slide $($j+1) ========"
    Write-Host ($slides[$j].Substring(0, [Math]::Min(1500, $slides[$j].Length)))
}
