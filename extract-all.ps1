$files = @(
    @{Path='D:\Dev\UnifaccApps\3SemVG\Grupo5-EDA\Resposta EDA.pptx';Out='g5-resposta'},
    @{Path='D:\Dev\UnifaccApps\3SemVG\Grupo5-EDA\Portfolio_EDA_Caso_Suzana_Rediagramado (3).pdf';Out='g5-portfolio'}
)

foreach ($f in $files) {
    $ext = [System.IO.Path]::GetExtension($f.Path).ToLower()
    $tmp = [IO.Path]::GetTempFileName() + '.zip'
    Copy-Item $f.Path $tmp -Force

    Add-Type -AssemblyName System.IO.Compression.FileSystem
    $z = [System.IO.Compression.ZipFile]::OpenRead($tmp)
    $entries = @($z.Entries)
    $slides = @()
    for ($i = 1; $i -le 25; $i++) {
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

    Write-Host "======== $($f.Out) ========="
    for ($j = 0; $j -lt $slides.Count; $j++) {
        Write-Host "--- Slide $($j+1) ---"
        Write-Host ($slides[$j].Substring(0, [Math]::Min(1000, $slides[$j].Length)))
        Write-Host ""
    }
}
