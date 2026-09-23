<#
.SYNOPSIS
    Regenera todos os PDFs do projeto 3SemVG (slides reveal.js + cadernos HTML).

.DESCRIPTION
    Usa o Chrome headless para gerar os PDFs via file:// + ?print-pdf (slides).
    O Chrome headless é instável: às vezes sai uma página em branco ou o total
    de páginas erra. O script repete a geração até a contagem bater com o
    esperado (retry loop), apagando o PDF ruim entre as tentativas.

.PARAMETER Only
    Filtra os jobs por parte do nome (ex.: "Parte 1", "Grupo3", "Slides").

.PARAMETER MaxTentativas
    Número máximo de tentativas por arquivo (padrão 6).

.PARAMETER ChromePath
    Caminho do chrome.exe. Se omitido, procura nos locais usuais.

.PARAMETER VirtualTimeBudget
    Valor de --virtual-time-budget em ms (padrão 30000).

.EXAMPLE
    .\Regenerar-PDFs.ps1
    .\Regenerar-PDFs.ps1 -Only "Parte 1"
    .\Regenerar-PDFs.ps1 -Only "Grupo3" -MaxTentativas 10

.NOTES
    Só funciona via file://. Servido por HTTP local o ?print-pdf sai em branco.
    Contagem de páginas via regex no PDF (objeto /Type /Page).
#>
[CmdletBinding()]
param(
    [string]$Only = "",
    [int]$MaxTentativas = 6,
    [string]$ChromePath = "",
    [int]$VirtualTimeBudget = 30000
)

$ErrorActionPreference = "Stop"
$Root = $PSScriptRoot
if (-not $Root) { $Root = (Get-Location).Path }

# ---------------------------------------------------------------------------
# Jobs: HTML -> PDF, com a contagem de páginas esperada.
# Slides usam ?print-pdf; cadernos são impressos direto (fluxo normal).
# Obs.: "Esperado" = contagem real do PDF renderizado. Slides reveal.js que
# transbordam a altura viram mais de uma página (ex.: 12 seções -> 14 páginas).
# Se você editar um slide, confira a contagem e atualize "Esperado" aqui.
# ---------------------------------------------------------------------------
$Jobs = @(
    @{ Html = "Parte 1\Slides-Shopping.html";          Pdf = "Parte 1\Slides-Shopping.pdf";          Esperado = 12; Print = $true  }
    @{ Html = "Parte 1\caderno-shopping.html";         Pdf = "Parte 1\caderno-shopping.pdf";         Esperado = 20; Print = $false }
    @{ Html = "Parte 2\Slides-Shopping-Parte2.html";   Pdf = "Parte 2\Slides-Shopping-Parte2.pdf";   Esperado = 13; Print = $true  }
    @{ Html = "Parte 2\caderno-shopping-parte2.html";  Pdf = "Parte 2\caderno-shopping-parte2.pdf";  Esperado = 9;  Print = $false }
    @{ Html = "Parte 3\Slides-Shopping-Parte3.html";   Pdf = "Parte 3\Slides-Shopping-Parte3.pdf";   Esperado = 9;  Print = $true  }
    @{ Html = "Parte 3\caderno-shopping-parte3.html";  Pdf = "Parte 3\caderno-shopping-parte3.pdf";  Esperado = 7;  Print = $false }
    @{ Html = "Grupo1-DinheiroNaMao\Slides-DinheiroNaMao.html";   Pdf = "Grupo1-DinheiroNaMao\Slides-DinheiroNaMao.pdf";   Esperado = 20; Print = $true }
    @{ Html = "Grupo3-QuitaAI\Slides-QuitaAI.html";               Pdf = "Grupo3-QuitaAI\Slides-QuitaAI.pdf";               Esperado = 17; Print = $true }
    @{ Html = "Grupo4-SuaCasaSuaVida\Slides-SuaCasaSuaVida.html";Pdf = "Grupo4-SuaCasaSuaVida\Slides-SuaCasaSuaVida.pdf";Esperado = 14; Print = $true }
    @{ Html = "Grupo5-EDA\Slides-EDA.html";                       Pdf = "Grupo5-EDA\Slides-EDA.pdf";                       Esperado = 12; Print = $true }
    @{ Html = "Grupo6-VidaNoControle\Slides-VidaNoControle.html"; Pdf = "Grupo6-VidaNoControle\Slides-VidaNoControle.pdf"; Esperado = 18; Print = $true }
    @{ Html = "Grupo2-LifePath\Slides-Lifepath.html";               Pdf = "Grupo2-LifePath\Slides-Lifepath.pdf";               Esperado = 21; Print = $true }
)

function Find-Chrome {
    param([string]$Explicit)
    if ($Explicit -and (Test-Path -LiteralPath $Explicit)) { return $Explicit }
    $candidatos = @(
        "$env:ProgramFiles\Google\Chrome\Application\chrome.exe",
        "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe",
        "$env:LOCALAPPDATA\Google\Chrome\Application\chrome.exe",
        "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe",
        "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe"
    )
    foreach ($c in $candidatos) { if (Test-Path -LiteralPath $c) { return $c } }
    throw "Chrome/Edge não encontrado. Informe -ChromePath."
}

function Get-PdfPageCount {
    param([string]$Path)
    if (-not (Test-Path -LiteralPath $Path)) { return 0 }
    $bytes = [IO.File]::ReadAllText($Path, [Text.Encoding]::GetEncoding(28591))
    return ([regex]::Matches($bytes, "/Type\s*/Page[^s]")).Count
}

function ConvertTo-FileUrl {
    param([string]$RelPath, [bool]$PrintPdf)
    $abs = (Join-Path $Root $RelPath) -replace '\\', '/'
    $uri = "file:///" + $abs
    $uri = $uri -replace ' ', '%20'
    if ($PrintPdf) { $uri += "?print-pdf" }
    return $uri
}

$Chrome = Find-Chrome -Explicit $ChromePath
Write-Host "Chrome: $Chrome" -ForegroundColor DarkGray
Write-Host "Raiz:   $Root"   -ForegroundColor DarkGray

$selecionados = $Jobs | Where-Object { $Only -eq "" -or $_.Html -like "*$Only*" }
if (-not $selecionados) { Write-Warning "Nenhum job corresponde a '$Only'."; return }

$resultados = @()
foreach ($job in $selecionados) {
    $htmlAbs = Join-Path $Root $job.Html
    $pdfAbs  = Join-Path $Root $job.Pdf

    if (-not (Test-Path -LiteralPath $htmlAbs)) {
        Write-Host ("  ⛔ SKIP   {0} (HTML não existe)" -f $job.Html) -ForegroundColor DarkYellow
        $resultados += [pscustomobject]@{ Arquivo=$job.Html; Status="SKIP"; Paginas=0; Esperado=$job.Esperado; Tentativas=0 }
        continue
    }

    $url = ConvertTo-FileUrl -RelPath $job.Html -PrintPdf:$job.Print
    $ok = $false
    $paginas = 0

    for ($t = 1; $t -le $MaxTentativas; $t++) {
        if (Test-Path -LiteralPath $pdfAbs) { Remove-Item -LiteralPath $pdfAbs -Force }
        $args = @(
            "--headless=new", "--disable-gpu", "--no-sandbox", "--no-pdf-header-footer",
            "--log-level=3",
            "--virtual-time-budget=$VirtualTimeBudget",
            "--print-to-pdf=$pdfAbs", $url
        )
        $eap = $ErrorActionPreference
        $ErrorActionPreference = "Continue"
        & $Chrome @args 2>$null | Out-Null
        $ErrorActionPreference = $eap

        Start-Sleep -Milliseconds 400
        $paginas = Get-PdfPageCount -Path $pdfAbs
        Write-Host ("     tentativa {0}/{1}: {2} pág. (esperado {3})" -f $t, $MaxTentativas, $paginas, $job.Esperado) -ForegroundColor DarkGray

        if ($paginas -eq $job.Esperado) { $ok = $true; break }
    }

    if ($ok) {
        Write-Host ("  ✅ OK     {0} -> {1} pág." -f $job.Html, $paginas) -ForegroundColor Green
        $resultados += [pscustomobject]@{ Arquivo=$job.Html; Status="OK"; Paginas=$paginas; Esperado=$job.Esperado; Tentativas=$t }
    } else {
        Write-Host ("  ❌ FALHA  {0} -> {1} pág. (esperado {2}) após {3} tentativas" -f $job.Html, $paginas, $job.Esperado, $MaxTentativas) -ForegroundColor Red
        $resultados += [pscustomobject]@{ Arquivo=$job.Html; Status="FALHA"; Paginas=$paginas; Esperado=$job.Esperado; Tentativas=$MaxTentativas }
    }
}

Write-Host ""
Write-Host "== Resumo ==" -ForegroundColor Cyan
$resultados | Format-Table -AutoSize

$falhas = @($resultados | Where-Object { $_.Status -eq "FALHA" }).Count
if ($falhas -gt 0) {
    Write-Host "$falhas arquivo(s) com falha. Rode de novo: o Chrome headless é instável." -ForegroundColor Yellow
    exit 1
}
Write-Host "Todos os PDFs gerados na contagem esperada." -ForegroundColor Green
exit 0
