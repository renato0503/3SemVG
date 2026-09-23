$files = @(
    'D:\Dev\UnifaccApps\3SemVG\Grupo5-EDA\Resposta EDA.pptx'
)

foreach ($f in $files) {
    $tmp = [IO.Path]::GetTempFileName() + '.zip'
    Copy-Item $f $tmp -Force
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
    $name = Split-Path $f -Leaf
    Write-Host "======== $name ========="
    for ($j = 0; $j -lt $slides.Count; $j++) {
        Write-Host "--- Slide $($j+1) ---"
        Write-Host ($slides[$j].Substring(0, [Math]::Min(1200, $slides[$j].Length)))
        Write-Host ""
    }
}
