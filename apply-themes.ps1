$files = @(
  'D:\Dev\UnifaccApps\3SemVG\Grupo1-DinheiroNaMao\Slides-DinheiroNaMao.html',
  'D:\Dev\UnifaccApps\3SemVG\Grupo3-QuitaAI\Slides-QuitaAI.html',
  'D:\Dev\UnifaccApps\3SemVG\Grupo4-SuaCasaSuaVida\Slides-SuaCasaSuaVida.html',
  'D:\Dev\UnifaccApps\3SemVG\Grupo5-EDA\Slides-EDA.html',
  'D:\Dev\UnifaccApps\3SemVG\Grupo6-VidaNoControle\Slides-VidaNoControle.html'
)

$replacements = @{
  '#e94560' = 'var(--accent)'
  '#1a1a2e' = 'var(--tinta)'
  '#16213e' = 'var(--tinta2)'
  '#FDF2F4' = 'var(--accent-soft)'
  '#c73550' = 'var(--accent-dark)'
}

$temas = @{
  'Slides-DinheiroNaMao.html'    = 'tema-g1'
  'Slides-QuitaAI.html'          = 'tema-g3'
  'Slides-SuaCasaSuaVida.html'  = 'tema-g4'
  'Slides-EDA.html'             = 'tema-g5'
  'Slides-VidaNoControle.html'  = 'tema-g6'
}

foreach ($f in $files) {
  $name = Split-Path $f -Leaf
  $tema = $temas[$name]
  $content = Get-Content -Path $f -Raw -Encoding UTF8

  foreach ($hex in $replacements.Keys) {
    $content = $content -replace [regex]::Escape($hex), $replacements[$hex]
  }

  $oldLink = '<link rel="stylesheet" href="../assets/reveal/grupo-slides.css">'
  $newLink = '<link rel="stylesheet" href="../assets/identidade/temas.css">' + [Environment]::NewLine + '  <link rel="stylesheet" href="../assets/reveal/grupo-slides.css">'
  $content = $content -replace [regex]::Escape($oldLink), $newLink

  $content = $content -replace '<body>', ('<body class="' + $tema + '">')

  Set-Content -Path $f -Value $content -Encoding UTF8 -NoNewline
  Write-Host "OK: $name -> $tema"
}
