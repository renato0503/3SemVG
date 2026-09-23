# App de Coleta — Customer Discovery · 3SemVG

Formulário de campo **offline** em arquivo único (`index.html`), usado na **Parte 3**
(ida ao shopping). Roda no navegador do celular, **sem instalar nada** e **sem internet**.

## Como usar

1. Copie a pasta `App/` (ou só o `index.html`) para o celular.
2. Abra o `index.html` no navegador (Chrome/Safari).
   - **Dica:** no Chrome, menu → *Adicionar à tela inicial* para virar ícone.
3. Escolha o **grupo da dupla** (fica salvo no aparelho).
4. Toque em **Iniciar nova coleta** → marque o **Bloco 0 (perfil) por observação** →
   responda as **20 perguntas** (escala 1–5).
5. Ao salvar, aparece o **CÓDIGO** (`G<n>-<nnn>`). **Leia o código no início do áudio do WhatsApp.**
6. No fim do dia, use **Exportar dados** → **CSV** (Excel) ou **JSON** (backup/correlação).

## Protocolo (fixo, vale para todos os grupos)

- **Bloco 0 — Perfil** é a **exceção**: marcado **por observação** (não se pergunta).
  - Faixa etária · Sexo · Classe social (estimada) · Raça/cor (estimada). Em dúvida, **“Não sei estimar”**.
  - **Nunca** pergunte raça nem renda.
- As **demais 20 perguntas** são marcadas de **1 a 5**: `1` = um polo, `5` = polo oposto (os dois vêm rotulados na tela).
- **Sem resposta aberta.** Falas/justificativas vão no **áudio** (quanti = app · quali = áudio).
- Cada resposta salva gera um **código** `G<n>-<nnn>` para correlacionar com o áudio.
- Em campo: **dupla** com 2 celulares (um do formulário, um do áudio).

## O que o app faz (Sprints)

| Sprint | Status | Entrega no app |
|---|---|---|
| 0 — Fundação | ✅ | Estrutura, seleção de grupo, Bloco 0 (perfil) por observação |
| 1 — Perguntas | ✅ | 20 perguntas por grupo (G1, G3, G4, G5, G6) com polos rotulados |
| 2 — Código + planilha | ✅ | Código `G<n>-<nnn>` por resposta + export CSV/JSON |
| 3 — Campo + correlação | ⏳ | Uso real no shopping (log em `SPRINTS.md`) |
| 4 — Análise | ⏳ | Tabulação do CSV + leitura dos áudios |
| 5 — Refino final | ⏳ | Ajustes e relatório de achados |

> **Grupo 2** aparece como **pendente**: sem ideia definida, não tem perguntas. Quando a Profa.
> Olivia fechar a ideia, basta acrescentar o bloco em `GRUPOS[2]` no `index.html`.

## Estrutura do código (para manutenção)

- `PERFIL` — campos do Bloco 0.
- `GRUPOS` — dados por grupo: `nome`, `prof`, `triagem` (opcional), `sensivel` (opcional) e
  `blocos[]` com `perguntas[]` no formato `{ q, a, b }` (`a` = polo 1 · `b` = polo 5).
- `localStorage` — chaves `cd3semvg_respostas`, `cd3semvg_seq`, `cd3semvg_grupo`.
- Exportação — `gerarCSV()` (separador `;`, BOM UTF-8) e JSON completo.

### Formato do CSV

`codigo; grupo; grupo_nome; data; faixaEtaria; sexo; classe; raca; Q1; Q2; …; Q20`

### Adicionar/editar perguntas

Edite o objeto do grupo em `GRUPOS`. Cada grupo **precisa ter exatamente 20 perguntas**
com os dois polos (`a` e `b`) — o app não aceita meia pergunta.

## Observações técnicas

- **Offline por completo** — sem CDN, sem fonte externa, sem build.
- `localStorage` funciona em `file://` no Chrome/Safari; se o navegador bloquear, o app avisa
  e o ideal é **exportar** com frequência (o backup em JSON nunca depende do navegador).
- Rodar a partir de um servidor local (`python -m http.server`) é ainda mais seguro, mas não é obrigatório.
