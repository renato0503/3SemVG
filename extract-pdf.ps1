$pdf = 'D:\Dev\UnifaccApps\3SemVG\Grupo1-DinheiroNaMao\Dinheiro na Mao.pdf'
$tmp = [IO.Path]::GetTempFileName() + '.txt'
# try reading as raw text (works for text-based PDFs)
try {
    $bytes = [System.IO.File]::ReadAllBytes($pdf)
    $text = [System.Text.Encoding]::UTF8.GetString($bytes)
    # filter readable text chunks
    $clean = $text -replace '[^\x20-\x7E\xA0-\xFF\n\r]', ' ' -replace '\s+', ' '
    $chunks = $clean -split '%%EOF'
    if ($chunks.Count -gt 1) {
        $main = $chunks[0]
        # extract text between BT and ET markers
        $matches = [regex]::Matches($main, 'BT(.*?)ET', 'Singleline')
        $result = @()
        foreach ($m in $matches) {
            $t = $m.Groups[1].Value -replace '[^\x20-\x7E\xA0-\xFF]', ' ' -replace '\s+', ' '
            if ($t.Length -gt 10) { $result += $t.Trim() }
        }
        $result | ForEach-Object { Write-Host $_ }
    }
} catch {
    Write-Host "Error: $_"
}
Remove-Item $tmp -Force -ErrorAction SilentlyContinue
