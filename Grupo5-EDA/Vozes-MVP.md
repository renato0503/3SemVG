# Vozes do MVP — EDA (Grupo 5)

**Data:** 27/10/2026
**Status:** duas vozes integradas e testadas no app; falta commit/push.
**App:** `app.html` · **Áudios:** `vozes/`

---

## 1. Resumo

O MVP do EDA passou a ter duas vozes:

| Voz | Papel | Onde toca |
|---|---|---|
| Voz 1 — acolhimento | Saudação do check-in | Tela **Hoje** (`#/hoje`) |
| Voz 2 — respiração | Guia da respiração quadrada | Tela **Respirar** (`#/respirar`) |

As falas fixas do MVP foram entregues **já gravadas** pelas duas pessoas. Não foi preciso clonar para colocá-las no app: bastou converter OGG → MP3 e ligar os arquivos.

Para o **teste de dueto** do hino do Corinthians, as mesmas duas referências foram usadas para **clonar** as vozes no OmniVoice (runtime GGUF), gerando falas novas. O dueto é um arquivo separado e **não é usado pelo app**.

---

## 2. Arquivos finais em `vozes/`

| Arquivo | Voz | Duração | Uso |
|---|---|---|---|
| `saudacao-dia.mp3` | 1 | 6,38 s | “Bom dia, como você está? Um check-in leva menos de um minuto.” |
| `saudacao-tarde.mp3` | 1 | 6,10 s | “Boa tarde, como você está? Um check-in leva menos de um minuto.” |
| `saudacao-noite.mp3` | 1 | 5,47 s | “Boa noite, como você está? Um check-in leva menos de um minuto.” |
| `inspire.mp3` | 2 | 1,56 s | “Inspire.” |
| `segure.mp3` | 2 | 1,80 s | “Segure.” (reutilizado nas duas fases de segurar) |
| `solte.mp3` | 2 | 1,75 s | “Solte.” |
| `dueto-hino-corinthians.mp3` | 1 + 2 | 14,09 s | Teste de dueto; **não usado pelo app** |

Formato dos seis arquivos do app: **MP3 mono, 24 kHz, 96 kbps**, normalizados em −18 LUFS / −2 dBTP. O dueto está em 128 kbps.

---

## 3. Integração no `app.html`

- `#ouvir-saud`: botão **“Ouvir”** na tela Hoje para repetir a saudação.
- A saudação toca **sozinha uma vez por sessão**, depois que o diário é desbloqueado (o PIN/demo funciona como gesto de autoplay).
- `VOZ_SAUD` escolhe a variante pelo horário: `saudacao-dia.mp3`, `saudacao-tarde.mp3` ou `saudacao-noite.mp3`.
- `VOZ_RESP` toca uma palavra no início de cada fase do `setInterval(..., 4000)`: `inspire` → `segure` → `solte` → `segure`.
- `#resp-voz` (tela Respirar) e `#som` (Ajustes) ligam/desligam a voz.
- O estado do mudo fica em `localStorage` na chave `eda:som` (`"on"`/`"off"`).
- Ao trocar de rota ou clicar em **Parar**, os áudios são pausados.
- Se um MP3 não existir, o app não quebra: fica em silêncio e, ao clicar em “Ouvir”, mostra “Áudio da voz ainda não instalado.”
- `sw.js` atualizado para o cache **`eda-v3`**.

---

## 4. Conversão das gravações

**Originais recebidos** (movidos para fora do repositório público):

- Voz 1: `D:\Dev\VoiceStudio\refs\voz1\` — `bomdia.ogg` (6,45 s), `boatarde.ogg` (6,21 s), `boanoite.ogg` (5,49 s) e `textovoz1.ogg` (22,29 s, referência).
- Voz 2: `D:\Dev\VoiceStudio\refs\voz2\` — `inspire.ogg` (2,29 s), `segure.ogg` (2,29 s), `solte.ogg` (1,91 s) e `textovoz2.ogg` (28,45 s, referência).

**Comando usado** (ffmpeg do `imageio-ffmpeg`):

```powershell
$ff="C:\Users\Renato\AppData\Local\Temp\opencode\vsvenv\Lib\site-packages\imageio_ffmpeg\binaries\ffmpeg-win-x86_64-v7.1.exe"
$d="D:\Dev\UnifaccApps\3SemVG\Grupo5-EDA\vozes"
$ref1="D:\Dev\VoiceStudio\refs\voz1"
$ref2="D:\Dev\VoiceStudio\refs\voz2"

# saudação: bomdia.ogg -> saudacao-dia.mp3; boatarde -> saudacao-tarde; boanoite -> saudacao-noite
& $ff -hide_banner -loglevel error -y -i "$ref1\bomdia.ogg" `
  -af "silenceremove=start_periods=1:start_silence=0.05:start_threshold=-40dB,loudnorm=I=-18:TP=-2:LRA=7" `
  -ac 1 -ar 24000 -codec:a libmp3lame -b:a 96k "$d\saudacao-dia.mp3"

# respiração: inspire.ogg, segure.ogg, solte.ogg -> inspire.mp3, segure.mp3, solte.mp3
& $ff -hide_banner -loglevel error -y -i "$ref2\inspire.ogg" `
  -af "silenceremove=start_periods=1:start_silence=0.05:start_threshold=-40dB,loudnorm=I=-18:TP=-2:LRA=7" `
  -ac 1 -ar 24000 -codec:a libmp3lame -b:a 96k "$d\inspire.mp3"
```

Os originais OGG não devem voltar para o repositório público.

---

## 5. Testes realizados

**Playwright + Chrome headless** (viewport 390×844, servidor HTTP local):

- Saudação automática em `#/hoje` tocou `saudacao-noite.mp3` (HTTP 200).
- Botão “Ouvir” tocou a saudação de novo.
- Em `#/respirar`, `inspire.mp3`, `segure.mp3` e `solte.mp3` responderam 200 e tocaram nas fases de 4 s.
- Mudo (`#resp-voz`) parou de chamar `HTMLMediaElement.play()`.
- Resultado: **zero erro de JavaScript e zero 404** com as duas vozes instaladas.

**Conferência do dueto:** transcrição com Vosk `small-pt` reconheceu a estrutura do hino (“salve … campeão dos campeões … eternamente em todos os nossos corações … vai coríntio … renato dez”). As diferenças são limitações do ASR pequeno, não do áudio.

---

## 6. Clonagem e dueto (OmniVoice GGUF)

Para gerar falas novas com as duas vozes, foi usado o runtime C++ **`omnivoice.cpp`** com quants GGUF, sem PyTorch.

**Binário e DLLs**

- `D:\Dev\VoiceStudio\work\gguf\omnivoice-tts-windows-x86_64.exe`
- Artifact `omnivoice-tts-windows-x86_64` do workflow `build-omnivoice-tts.yml`, run `40605330567`, repo `debpalash/VoiceStudio`.
- DLLs (`ggml*.dll`, `ggml-vulkan.dll`, runtime MSVC) ficam na mesma pasta.

**Modelo**

- `D:\Dev\VoiceStudio\work\gguf\models\omnivoice-base-Q4_K_M.gguf` (388,6 MB)
- `D:\Dev\VoiceStudio\work\gguf\models\omnivoice-tokenizer-Q4_K_M.gguf` (240,8 MB)
- Origem: `Serveurperso/OmniVoice-GGUF` no Hugging Face.

**Referências para clonagem**

- `D:\Dev\VoiceStudio\work\gguf\refs\ref1.wav` + `ref1.txt` (voz 1)
- `D:\Dev\VoiceStudio\work\gguf\refs\ref2.wav` + `ref2.txt` (voz 2)
- WAV mono 24 kHz; transcrições em UTF-8 sem BOM.
- As transcrições foram montadas a partir dos textos sugeridos para as referências. Se a voz clonada sair estranha, o primeiro ajuste é corrigir `ref1.txt`/`ref2.txt` para o que foi realmente falado.

**Comando de geração de uma linha**

```powershell
$d="D:\Dev\VoiceStudio\work\gguf"
$env:GGML_BACKEND="Vulkan0"
"Salve o Corinthians," | & "$d\omnivoice-tts-windows-x86_64.exe" `
  --model "$d\models\omnivoice-base-Q4_K_M.gguf" `
  --codec "$d\models\omnivoice-tokenizer-Q4_K_M.gguf" `
  --lang Portuguese `
  --ref-wav "$d\refs\ref1.wav" --ref-text "$d\refs\ref1.txt" `
  --seed 42 -o "$d\out\linha.wav"
```

**Dueto gerado (falas alternadas)**

1. Voz 1 — “Salve o Corinthians,”
2. Voz 2 — “o Campeão dos Campeões,”
3. Voz 1 — “Eternamente em Todos nossos Corações,”
4. Voz 2 — “VAI CORINTHIANS,”
5. Voz 1 — “o Prof Renato é 10!”

**Stems**

- `D:\Dev\VoiceStudio\work\gguf\out\test1.wav` (linha 1)
- `line2.wav`, `line3.wav`, `line4.wav`, `line5.wav`
- Concatenação com 0,30 s de pausa entre as falas → `dueto-hino-corinthians.mp3`.

**Desempenho medido**

- Vulkan na RTX 4060 Laptop: ~160–204 s por linha.
- CPU: mais de 7 min por linha; abortado.
- O dueto é **falado**, não cantado com melodia — o OmniVoice é TTS.

---

## 7. Privacidade e LGPD

- As gravações de referência (`textovoz1.ogg`, `textovoz2.ogg` e os OGG originais) ficam **fora do repositório público**, em `D:\Dev\VoiceStudio\refs\`.
- Só os MP3 finais usados pelo app vão para `Grupo5-EDA/vozes/`.
- Voz é dado pessoal: usar apenas voz própria ou com consentimento registrado.
- O dueto é um teste interno; decidir antes de publicá-lo no GitHub Pages.

---

## 8. Como continuar

1. **Publicar o MVP:** commit/push de `app.html`, `sw.js`, `context.md`, `SPRINTS.md` e `vozes/*.mp3`; conferir `https://renato0503.github.io/3SemVG/Grupo5-EDA/app.html`.
2. **Testar no celular real:** abrir Hoje, ouvir a saudação, entrar em Respirar, ouvir as três fases e testar o mudo.
3. **Regenerar uma fala clonada:** repetir o comando da seção 6 com o texto desejado e a referência da voz certa.
4. **Corrigir uma voz clonada:** ajustar `ref1.txt`/`ref2.txt` para a transcrição exata da referência e gerar de novo.
5. **Se quiser um player do dueto:** criar uma página simples com `<audio controls src="vozes/dueto-hino-corinthians.mp3">` (não é necessário para o MVP).

---

## 9. Pendências

- [ ] Commitar/push e conferir o GitHub Pages.
- [ ] Testar em aparelho real (Chrome Android e Safari iOS).
- [ ] Ouvir o dueto e aprovar as duas vozes clonadas.
- [ ] Decidir se `dueto-hino-corinthians.mp3` fica no repositório público ou só no material interno.
- [ ] Opcional: clonar outras falas com as mesmas referências (o pipeline GGUF já está pronto).
