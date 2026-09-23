# Context — Projeto Customer Discovery (3SemVG / Unifacc)

Registro do que foi pedido e feito neste projeto, para continuar depois.
**Pasta raiz:** `D:\Dev\UnifaccApps\3SemVG`
**Tema:** preparação, validação e execução de uma **pesquisa de campo (Customer Discovery)** com alunos de Tecnologia e Inovação indo a um shopping entrevistar pessoas reais sobre **6 ideias de app/serviço** — todas com temática de **saúde financeira / dívidas / orçamento familiar**.

> Este projeto replica, para outra turma e outras ideias, o pacote criado em `D:\Dev\UnifaccApps\AdmCBA`.
> Referência de estilo: `D:\Dev\UnifaccApps\AdmCBA` (reveal.js nos slides; caderno em HTML com `assets/caderno.css`).

---

## 1. Objetivo geral

Montar todo o material didático e operacional da atividade, dividido em **3 partes**:

- **Parte 1 — Defesa de Projetos Inovadores (P1)** ✅ concluída em 15/09
  Os grupos apresentaram a defesa com: (1) dor com dados oficiais, (2) panorama global/mídia, (3) embasamento teórico/científico, (4) solução proposta.
- **Parte 2 — Construção dos formulários de levantamento (Customer Discovery)**
  Na aula seguinte à P1, os grupos montam os questionários de pesquisa de campo com base no que defenderam.
- **Parte 3 — Ida ao shopping + log de sprints** do desenvolvimento do app até ficar pronto.

Além disso: **documentar cada grupo** (README, formulário, contexto de produto e pesquisa de defesa).

---

## 2. Regras fixas do app de coleta (protocolo)

Definidas pelo professor e aplicadas em **todos** os grupos:

1. **Bloco 0 — Perfil** é a **exceção**: o entrevistador **marca por observação** (não pergunta).
   - Faixa etária · Sexo · Classe social (estimada) · Raça/cor (estimada).
   - Na dúvida, "Não sei estimar". Nunca perguntar raça ou renda.
2. **Todas as demais perguntas são marcadas de 1 a 5**, sendo **1 uma dimensão e 5 a dimensão oposta** (cada bloco com os seus polos rotulados).
3. **Todo formulário tem exatamente 20 perguntas** (fora o perfil).
4. **Não existem respostas abertas no formulário.**
5. As falas/justificativas interessantes são **anotadas em um áudio no WhatsApp** pelo aluno gravador.
6. Cada resposta salva gera um **CÓDIGO** `G<grupo>-<nnn>` (ex.: `G5-014`), **lido no início do áudio** → correlação **quanti (formulário) × quali (áudio)**.
7. Em campo: **dupla** com 2 celulares (um do formulário, um do áudio).

---

## 3. Os 6 grupos

| Grupo | Projeto | Professor(a) | Integrantes | Código | Meta |
|---|---|---|---|---|---|
| 1 | **Dinheiro na Mão** | Olivia | Giselle, Evelin, Franciely, Mara Fernanda | `G1-<nnn>` | 15–20 |
| 2 | **A Definir** | Olivia | Maria Eloise, Izabelli, Talita, Nicolli | `G2-<nnn>` | 15–20 |
| 3 | **Quita.AI** | Péricles | Creuza, Daniela, Gilmara, Jakeline | `G3-<nnn>` | 15–20 |
| 4 | **SuaCasaSuaVida** | Pantaleão | Amanda Karoliny, Beatriz Cristina, Evander, Julimary | `G4-<nnn>` | 15–20 |
| 5 | **Endividados Anônimos (EDA)** | Renato | Cássia Nóbrega, Sarah, Sabrina, Beatriz B., Denner | `G5-<nnn>` | 15–20 |
| 6 | **Vida no Controle** | Renato | Hitalo, Rhaissa, Fernanda, Emilly, Yasmin | `G6-<nnn>` | 15–20 |

### Ideias (como enviadas pelos grupos)
- **G1 Dinheiro na Mão:** programa do governo em que as pessoas vão **presencialmente** a um posto, onde **profissionais as auxiliam**; um **sistema inteligente** ajuda a organizar contas e datas; e uma **bolsa-incentivo** dá um empurrão para organizar a vida financeira.
- **G2 A Definir:** ideia **ainda não definida** pelo grupo (a preencher com a Profa. Olivia).
- **G3 Quita.AI:** **jogo** que a **família toda** joga e **ganha bônus quando controla os impulsos** por gastos desnecessários; financiado por **editais de financiamento tecnológico**; conforme passa de fase, ganha **prêmios** (desconto em faturas, isenção fiscal).
- **G4 SuaCasaSuaVida:** app que **ajuda a comprar uma casa** — **análise de bairro**, **análise da situação financeira** etc.
- **G5 Endividados Anônimos (EDA):** **espaço de reabilitação para gastadores compulsivos** (modelo inspirado em Alcoólicos Anônimos, adaptado a finanças). Tema sensível — exige acolhimento e LGPD.
- **G6 Vida no Controle:** plataforma **free** que **organiza a renda familiar**, encontra **oportunidades de economia**, constrói **reserva financeira** e **lê o cupom fiscal do mercado regional**; **só para cidadãos várzea-grandenses**, com o **mercado como patrocinador**.

> **Fio condutor comum:** as 6 ideias tratam de **educação financeira, endividamento, orçamento familiar e comportamento de consumo**. Isso permite um **referencial científico compartilhado** (comportamento do consumidor, finanças pessoais, endividamento, nudges/gamificação).

---

## 4. Estrutura de pastas e arquivos

```
3SemVG/
├── context.md                      ← este arquivo (histórico completo)
├── SPRINTS.md                      ← log de sprints do app + track de pesquisa
├── SPRINTS-MVP.md                 ← plano de sprints dos MVPs por grupo
├── Regenerar-PDFs.ps1             ← regenera PDFs (Chrome headless + retry loop)
├── index.html                      ← hub do projeto (landing + links para MVPs e materiais)
├── manifest.json / sw.js           ← PWA raiz
├── App/
│   ├── index.html                  ← app de coleta (offline, perfil + 100 perguntas + código + export)
│   └── README.md
├── _pesquisa/
│   ├── openalex_busca.py
│   ├── INDICE-PESQUISA.md          ← índice mestre dos 60 papers + dados
│   └── saidas/                     ← 38 arquivos JSON/MD brutos das buscas
├── assets/
│   ├── caderno.css                 ← CSS compartilhado dos cadernos
│   ├── identidade/
│   │   ├── temas.css               ← tokens de tema por grupo (G1 G3 G4 G5 G6)
│   │   └── identidade.md           ← documentação das identidades
│   ├── kit/
│   │   ├── kit.css                 ← componentes UI reutilizáveis (mobile-first)
│   │   ├── kit.js                  ← store, router, fmt, toast, export/import
│   │   └── demo.html               ← demo do kit
│   └── reveal/                     ← reset.css, reveal.css, reveal.js, grupo-slides.css
├── Parte 1/ / Parte 2/ / Parte 3/ ← materiais de apoio (slides + cadernos)
├── Grupo1-DinheiroNaMao/ … Grupo6-VidaNoControle/
│   ├── README.md                   ✅ completo
│   ├── formulario-app.md           ✅ 20 perguntas Q1–Q20
│   ├── ContextoApp.md             ✅ 14 seções
│   ├── Pesquisa-Dados.md          ✅ 12 papers + dados brasileiros
│   └── Slides-<Grupo>.html / .pdf ✅ 12 slides de defesa com identidade do grupo
├── g3-quita-ai/                    ← MVP piloto G3 (completo, funcional)
│   ├── index.html
│   ├── manifest.json
│   └── sw.js
├── g1-dinheiro-na-mao/            ← estrutura criada, MVP a construir
├── g4-sua-casa-sua-vida/
├── g5-eda/
├── g6-vida-no-controle/
└── coleta/                         ← app de coleta (copia do App/ para o Pages)
```

### O que é cada arquivo de grupo
- **README.md** — ficha do grupo (professor, integrantes, objetivo, hipótese, roteiro de campo, pitch, ideia proposta, questionário rascunho, protocolo, checklist, materiais).
- **formulario-app.md** — o formulário final organizado na lógica do app: Bloco 0 (perfil) + **20 perguntas** em escala 1–5 (com os dois polos), sem resposta aberta, código e áudio.
- **ContextoApp.md** — documento de produto/inovação: pitch, problema/oportunidade, personas, proposta de valor, jornada, **MVP | v1 | v2**, diferenciais, dados/governo/LGPD, impacto, KPIs, riscos, roadmap de sprints, validação pela pesquisa e pitch de 30s.
- **Pesquisa-Dados.md** — pesquisa de embasamento: resumo executivo, tabela de dados brasileiros com fonte, leitura dos dados, 12 artigos peer-reviewed (2021–2026) com DOI e citações, síntese em blocos temáticos, argumentos prontos para defesa, lacunas e fontes.
- **Slides-<Grupo>.html / .pdf** — apresentação de defesa da ideia (12 slides reveal.js): dor, ideia, hipótese, dados, 3 blocos de referencial, conexão com a pesquisa, lacunas e pitch de 30s. Usa `assets/reveal/grupo-slides.css`.

---

## 5. Histórico — o que foi feito

### Concluído ✅

| # | Item | Detalhe |
|---|---|---|
| 1 | Estrutura de pastas | `assets/`, `_pesquisa/`, `Parte 1/`, `Parte 2/`, `Parte 3/`, 6 pastas de grupo |
| 2 | `assets/` | copiados do AdmCBA: `caderno.css`, `reveal.js`, `reset.css`, `reveal.css`, `Renato.jpg`, `CerradoTechLogo.png` |
| 3 | `context.md` e `SPRINTS.md` | criados com mapa completo, decisões, notas técnicas, pendências |
| 4 | Parte 1 | `Slides-Shopping.html` (10 slides reveal.js) + `caderno-shopping.html` (~700 linhas, 19 seções) |
| 5 | Parte 2 | `Slides-Shopping-Parte2.html` (12 slides) + `caderno-shopping-parte2.html` (~350 linhas, 11 seções) |
| 6 | Parte 3 | `Slides-Shopping-Parte3.html` (9 slides) + `caderno-shopping-parte3.html` (~300 linhas, 11 seções) |
| 7 | **P1 Defesa (15/09)** ✅ | G1, G3, G4, G5 e G6 apresentaram: (1) dor com dados, (2) mídia/notícias, (3) referencial científico, (4) solução proposta. Nossos slides `Slides-<Grupo>.html` serviram de base. G2 pendente. |
| 8 | App de coleta (offline) | `App/index.html` + `App/README.md` — perfil por observação + 100 perguntas (5 grupos × 20) + código `G<n>-<nnn>` + export CSV/JSON |
| 9 | Identidade visual | `assets/identidade/temas.css` — 5 temas (G1 G3 G4 G5 G6) com CSS vars, faixa de identidade nos slides |
| 10 | Kit compartilhado | `assets/kit/kit.css` + `kit.js` + `demo.html` — componentes UI mobile-first reutilizáveis |
| 11 | Hub + PWA raiz | `index.html` (landing com links para todos os MVPs) + `manifest.json` + `sw.js` |
| 12 | MVP piloto G3 Quita.AI | `g3-quita-ai/index.html` completo — criar sala, adicionar membros, registrar impulso, fases, ranking, histórico, export/import, PWA |
| 13 | Temas nos 5 decks | `grupo-slides.css` refatorado para variáveis + `temas.css` aplicado nos 5 HTMLs de defesa via script |
| 14 | Grupo 2 | ⚠️ Pendente — ideia a definir com Profa. Olivia |

### Pendente ❌

| # | Item | Responsável |
|---|---|---|
| **B** | **Montar formulários de levantamento (Customer Discovery)** — cada grupo constrói seu questionário de campo com base na defesa; app de coleta carrega os 20 perguntas por grupo | **Próxima aula** |
| A | Definir ideia do Grupo 2 + criar `formulario-app.md` + `ContextoApp.md` + `Pesquisa-Dados.md` + slides | Profa. Olivia + grupo |
| C | **Ida ao shopping** — coleta com app de campo + áudio WhatsApp correlacionado via código | grupo |
| D | **Análise dos dados** — tabulação quanti + leitura quali dos áudios | grupo |
| E | **Sprint 3–5** — app pronto + relatório de achados | grupo |

---

## 6. Notas técnicas (geração de PDF)

- Os **slides** usam **reveal.js** e são exportados com a URL `...html?print-pdf`.
- **Só funciona via `file://`** — servido por HTTP local o `print-pdf` sai em branco.
- A geração no Chrome headless é **instável** (às vezes sai 1 página em branco). Solução: **repetir até sair a contagem certa** de páginas.
- Espaços no caminho precisam ser `%20` (ex.: `Parte%201`).
- Comando base (Chrome):
  ```
  chrome --headless=new --disable-gpu --no-sandbox --no-pdf-header-footer \
    --virtual-time-budget=30000 --print-to-pdf="OUT.pdf" \
    "file:///D:/Dev/UnifaccApps/3SemVG/Parte%201/Slides-Shopping.html?print-pdf"
  ```
- Páginas esperadas (contagem real do PDF renderizado — slides que transbordam viram +1 página):
  - Parte 1 slides = **12** · Parte 2 slides = **13** · Parte 3 slides = **9**
  - Grupos: G1 = **14** · G3 = **13** · G4 = **14** · G5 = **17** · G6 = **12**
- Cadernos: Parte 1 = **20** pág. · Parte 2 = **9** pág. · Parte 3 = **7** pág.
- **Automação:** `Regenerar-PDFs.ps1` faz tudo isso com retry loop até a contagem bater:
  ```powershell
  .\Regenerar-PDFs.ps1                      # todos os PDFs
  .\Regenerar-PDFs.ps1 -Only "Parte 1"      # só um pedaço (filtro por nome)
  .\Regenerar-PDFs.ps1 -Only "Grupo"        # só os 5 decks de defesa
  .\Regenerar-PDFs.ps1 -MaxTentativas 10    # mais tentativas
  ```
  O Chrome headless às vezes cospe **1 página em branco**; o script apaga e repete.
  Se editar um slide, confira a contagem e atualize o campo `Esperado` no topo do script.
- **Atenção (PowerShell):** o Chrome escreve "N bytes written..." no **stderr**; com
  `$ErrorActionPreference="Stop"` isso aborta o script. Por isso a chamada nativa usa
  `--log-level=3` e `2>$null`.
- Contar páginas de um PDF:
  ```powershell
  $b=[IO.File]::ReadAllText("ARQUIVO.pdf",[Text.Encoding]::GetEncoding(28591)); ([regex]::Matches($b,"/Type\s*/Page[^s]")).Count
  ```

---

## 7. Fluxo real do projeto

| Etapa | O que acontece | Status |
|---|---|---|
| **P1 — Defesa (15/09)** | Grupos apresentam: (1) dor com dados, (2) panorama mídia, (3) referencial científico, (4) solução | ✅ Concluído G1,G3,G4,G5,G6 |
| **P2 — Formulários de levantamento** | Montar os 20 questionários de pesquisa de campo (Customer Discovery) com base na defesa | 🔜 **Próxima aula** |
| **P3 — Ida ao shopping** | Coleta com app + áudio WhatsApp correlacionado via código `G<n>-<nnn>` | ⏳ Pendente |
| **P4 — Análise** | Tabulação quanti + leitura quali dos áudios | ⏳ Pendente |
| **P5 — App pronto** | Cada grupo entrega seu app + relatório de achados | ⏳ Pendente |

### Pendências

- [ ] **Grupo 2** — definir ideia com Profa. Olivia; criar `formulario-app.md`, `ContextoApp.md`, `Pesquisa-Dados.md` e slides
- [x] `App/index.html` + `App/README.md` — Sprints 0–2 ✅ (app funcional)
- [x] **Apresentações de defesa** — reveal.js 12 slides por grupo + PDF (G1, G3, G4, G5, G6) ✅
- [x] **Identidade visual** — `temas.css` + `kit.css/kit.js` + hub ✅
- [x] **MVP piloto G3 Quita.AI** funcional ✅
- [ ] **Montar formulários de levantamento** — P2: cada grupo constrói seu questionário de campo | **Próxima aula**
- [ ] **Ida ao shopping** — coleta com app + áudio WhatsApp correlacionado
- [ ] **Análise dos dados** — tabulação quanti + leitura quali dos áudios
- [ ] **Sprint 3–5** — app pronto + relatório de achados por grupo

---

## 8. Comandos úteis

```powershell
# Listar tudo do projeto
Get-ChildItem -LiteralPath "D:\Dev\UnifaccApps\3SemVG" -Recurse -File | Select-Object FullName, Length

# Contar páginas de um PDF
$b=[IO.File]::ReadAllText("ARQUIVO.pdf",[Text.Encoding]::GetEncoding(28591)); ([regex]::Matches($b,"/Type\s*/Page[^s]")).Count

# Abrir os materiais
Start-Process "D:\Dev\UnifaccApps\3SemVG\Parte 1\Slides-Shopping.html"
Start-Process "D:\Dev\UnifaccApps\3SemVG\Parte 2\caderno-shopping-parte2.html"

# Abrir pesquisa de um grupo
Start-Process "D:\Dev\UnifaccApps\3SemVG\Grupo3-QuitaAI\Pesquisa-Dados.md"
```

---

## 9. Contato / responsáveis
- **Coordenação/professor:** Renato Rosa (Cerrado Tech · Unifacc)
- **Professores orientadores:** Olivia (G1, G2), Péricles (G3), Pantaleão (G4), Renato (G5, G6)
- **Turma:** Tecnologia e Inovação · 3º Semestre (VG) — FACC/Unifacc

---

## 10. Pesquisa de dados + referencial científico (Track B)

**Status em 21/09/2026: G1, G3, G4, G5, G6 concluídos. G2 pendente.**

### 10.1 O que foi feito
1. **Script** `_pesquisa/openalex_busca.py` (stdlib, OpenAlex + Crossref, retry backoff).
2. **38 arquivos brutos** em `_pesquisa/saidas/` — 18 consultas temáticas, JSON + Markdown.
3. **`Grupo<N>/Pesquisa-Dados.md`** criados para G1, G3, G4, G5, G6 — cada um com:
   - Resumo executivo
   - Tabela de dados brasileiros com fonte (IBGE, BCB, Serasa, CNC, TIC Domicílios, etc.)
   - Leitura dos dados (6–8 pontos de análise)
   - Síntese em blocos temáticos
   - **12 artigos peer-reviewed (2021–2026)** com DOI, citações, periódico, abstract
   - Quadro-resumo
   - 6–10 argumentos prontos para a defesa
   - Lacunas, limites e cuidados
   - Fontes e proveniência
4. **`_pesquisa/INDICE-PESQUISA.md`** — índice mestre com os 60 papers e dados consolidados.
5. **`Grupo<N>/Slides-<Grupo>.html` + `.pdf`** — apresentação de defesa (12 slides) de G1, G3, G4, G5 e G6, com CSS compartilhado `assets/reveal/grupo-slides.css`; G2 pendente.

### 10.2 Detalhamento por grupo

| Grupo | Papers | Dados brasileiros | Arquivo |
|---|---|---|---|
| G1 Dinheiro na Mão | 12 | CadÚnico 40,6M, Bolsa Família 20,5M, SPC 76%, TIC 85%/DE 68% | `Grupo1/.../Pesquisa-Dados.md` (25,8 KB) |
| G3 Quita.AI | 12 | 71M endividados, 68% sem economizar, 93% smartphone, 67% compra impulso | `Grupo3/.../Pesquisa-Dados.md` (24,9 KB) |
| G4 SuaCasaSuaVida | 12 | Déficit 8M domicílios, homeownership ~77%, SBPE 0,9–2,5%/mês | `Grupo4/.../Pesquisa-Dados.md` (26,4 KB) |
| G5 EDA | 12 | 78% famílias endividadas, 76,2M inadimplentes, CVV 2.700/dia | `Grupo5/.../Pesquisa-Dados.md` (22,8 KB) |
| G6 Vida no Controle | 12 | 78,9% endividadas, TIC 85%, Pix 84%, 1.400+ fintechs | `Grupo6/.../Pesquisa-Dados.md` (25 KB) |
| **Total** | **60** | — | 5 arquivos |

### 10.3 Temas de busca e arquivos brutos

| Grupo | Termos de busca | Arquivos em `_pesquisa/saidas/` |
|---|---|---|
| G1 | financial literacy program; financial counseling behavior; personal finance low income; financial education Brazil; financial inclusion | G1_fin_literacy.md/json · G1_fin_counseling.md/json · G1_pfm_lowincome.md/json · G1_fin_education_br.md/json · G1_fin_inclusion.md/json |
| G3 | gamification personal finance; impulse buying self-control; gamification behavior change | G3_gamification.md/json · G3_gamification2.md/json · G3_impulse.md/json |
| G4 | homeownership decision; mortgage affordability; housing Brazil | G4_homeownership.md/json · G4_mortgage.md/json · G4_housing_br.md/json |
| G5 | compulsive buying disorder; debt and mental health; spending self-regulation | G5_compulsive.md/json · G5_debt_mental.md/json · G5_spending_regulation.md/json |
| G6 | household budgeting; grocery coupon consumer behavior; personal finance app adoption; financial wellbeing household | G6_budgeting.md/json · G6_grocery.md/json · G6_pfm_app.md/json · G6_fin_wellbeing.md/json |

### 10.4 Pendências
- [ ] **Grupo 2** — definir ideia com Profa. Olivia antes de pesquisar
- [x] **Apresentações de defesa** (reveal.js, 12 slides por grupo) + PDF — G1, G3, G4, G5, G6 ✅ (G2 pendente)
- [ ] Re-sincronizar `_pesquisa/INDICE-PESQUISA.md`: os autores/títulos do índice **divergem** dos `Pesquisa-Dados.md` (os DOIs batem, mas o índice lista nomes trocados). O `Pesquisa-Dados.md` é a fonte correta.
- [x] Atualizar `context.md` e `SPRINTS.md` ao fim de cada etapa ✅

---

## 11. Sistema de identidade visual por grupo

**Arquivo central:** `assets/identidade/temas.css`

### 11.1 Paletas e tom por grupo

| Grupo | Projeto | Paleta (primária / secundária / accent2) | Tom | Fonte título |
|---|---|---|---|---|
| G1 | Dinheiro na Mão | `#0e7490` / `#083344` / `#22d3ee` | Institucional e acolhedor (posto público) | Segoe UI Semibold |
| G3 | Quita.AI (PILOTO) | `#7c3aed` / `#1e1b4b` / `#facc15` | Lúdico e gamer | Trebuchet MS |
| G4 | SuaCasaSuaVida | `#047857` / `#052e2b` / `#d97706` | Imobiliário e confiança | Segoe UI Semibold |
| G5 | EDA | `#4f5bd5` / `#1e2235` / `#93c5fd` | Acolhedor e calmo (zero culpa) | Cambria / Georgia |
| G6 | Vida no Controle | `#ea580c` / `#431407` / `#16a34a` | Local e frugal (mercado) | Trebuchet MS |
| G2 | A Definir | ⚠️ pendente | ⚠️ pendente | ⚠️ pendente |

### 11.2 Variáveis CSS (temas.css)

```css
--accent       /* cor principal da marca */
--accent-dark  /* hover/ativo */
--accent-soft  /* fundo suave */
--accent-rgb  /* para rgba() */
--accent2     /* cor secundária/contraste */
--tinta       /* fundo escuro / cabeçalho */
--tinta2      /* gradiente escuro */
--fonte       /* corpo de texto */
--fonte-titulo/* títulos */
```

Aplicar no HTML: `<link rel="stylesheet" href="assets/identidade/temas.css">` + `<body class="tema-g3">`.

### 11.3 Faixa de identidade

Todos os slides do grupo recebem uma **faixa colorida de 6px no topo**, definida via CSS:

```css
.reveal .slides section::before {
  content:""; position:absolute; top:0; left:0; right:0; height:6px;
  background: linear-gradient(90deg, var(--accent) 0%, var(--accent2) 100%);
}
```

---

## 12. GitHub Pages — publicação dos MVPs

**Repo:** `https://github.com/renato0503/3SemVG` (já existe, 1 commit `f4f0683`)
**Pages URL:** `https://renato0503.github.io/3SemVG/`
**Fonte:** branch **main**, raiz `/`
**GitHub Auth:** `gh auth` confirmado para `renato0503`

### 12.1 Pasta de destino dos MVPs

```
3SemVG/
├── index.html                    ← Hub (landing principal)
├── g1-dinheiro-na-mao/
│   └── index.html                ← MVP G1
├── g3-quita-ai/
│   └── index.html                ← MVP G3 (piloto)
├── g4-sua-casa-sua-vida/
│   └── index.html                ← MVP G4
├── g5-eda/
│   └── index.html                ← MVP G5
├── g6-vida-no-controle/
│   └── index.html                ← MVP G6
├── coleta/                       ← app de coleta (copiado do App/)
│   └── index.html
├── assets/
│   ├── identidade/
│   │   ├── temas.css             ← tokens de tema por grupo
│   │   └── identidade.md         ← documentação das identidades
│   ├── kit/
│   │   ├── kit.css               ← componentes UI reutilizáveis
│   │   ├── kit.js                ← store, router, fmt, toast, export/import
│   │   └── demo.html             ← demo do kit
│   ├── caderno.css
│   └── reveal/
└── ... (demais arquivos existentes)
```

### 12.2 Regras de implementação no Pages

| Requisito | Solução |
|---|---|
| Nenhum backend | Lógica 100% no cliente (`localStorage`) |
| Perfis sem login | Perfil **local** por navegador (sem senha) |
| Notificações | **Simuladas** na UI (sem push real) |
| Mapas | **SVG** desenhado (sem Google Maps) |
| OCR de cupom | **Parser de texto** de cupom de exemplo (sem OCR real) |
| Pagamentos/bônus | **Hipótese** (rotulado "a validar", nunca prometido como real) |
| Chat entre dispositivos | **Local** apenas (sem servidor) |
| Dados de exemplo | Embutidos em JSONseed por MVP |
| Export/import | `Blob` → download de JSON/CSV + upload para importar |

### 12.3 Requisitos funcionais de cada MVP

Todo botão e toda feature **têm que funcionar de verdade**. Nenhum botão morto, nenhum "em breve".

**Critérios de aceite por MVP:**
1. Nenhum botão sem ação visível
2. Dados persistem após reload (`localStorage`)
3. Export JSON reimporta corretamente
4. Sem erro no console em todas as telas
5. Responsivo (celular + desktop)
6. Tema do grupo aplicado (sem cor genérica)
7. Dados simulados/hipótese **rotulados** ("exemplo", "simulado", "a validar")
8. Contraste acessível, `aria-label` em botões de ícone

### 12.4 Requisitos Mobile-first / PWA

**Os MVPs são focados 100% em mobile (Android + iOS).** Desktop é secundário.

| Requisito | Implementação |
|---|---|
| Viewport | `<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">` em todos os HTMLs |
| Touch-friendly | Todos os botões/alvos ≥ **44×44px** (iOS) / **48×48dp** (Android). Padding mínimo 12px. |
| Safe areas | Usar `env(safe-area-inset-*)` para entalhes e barras de navegação (iOS notch/home indicator) |
| Scroll suave | `scroll-behavior: smooth` + `-webkit-overflow-scrolling: touch` em listas |
| Overflow horizontal | **Zero** — nenhum layout causa scroll horizontal em 375px (iPhone SE) |
| Fontes responsivas | `clamp()` ou `vw` para títulos; corpo nunca < 16px (zoom automático do iOS) |
| PWA manifest | Cada MVP tem seu `manifest.json` com `display: standalone`, `theme_color`, `background_color`, ícones 192×192 e 512×512 |
| Service Worker | `sw.js` por MVP fazendo cache-first dos assets estáticos (offline funciona após primeiro carregamento) |
| Ícone install | Mostrar botão "Instalar app" quando `beforeinstallprompt` fire |
| Orientação | Lock em `portrait` via `screen.orientation.lock('portrait')` (opcional, pedir permissão) |
| Status bar | Meta theme-color combina com `--accent` do grupo ( Android Chrome) |
| Teste real | Testar **físico** em Android + iOS antes de entregar; Chrome DevTools mobile emulation não basta para tudo |

> **Teste de referência:** iPhone SE (375×667) · Android 1080p viewport 360×740 · Chrome DevTools iPhone 14 Pro.

---

## 13. Sprints dos MVPs — plano completo

**Arquivo:** `SPRINTS-MVP.md` (registra sprints,/features e critérios de aceite)

### 13.1 Visão geral

| Sprint | Objetivo | Status |
|---|---|---|
| **M0** | Fundação: kit.css, kit.js, temas.css, hub `index.html`, ativar Pages | 🔄 |
| **M1** | MVP piloto **G3 Quita.AI** | ⏳ |
| **M2** | MVP **G1 Dinheiro na Mão** | ⏳ |
| **M3** | MVP **G4 SuaCasaSuaVida** | ⏳ |
| **M4** | MVP **G6 Vida no Controle** | ⏳ |
| **M5** | MVP **G5 EDA** (tema sensível) | ⏳ |
| **M6** | Integração hub + polimento final | ⏳ |

### 13.2 Kit compartilhado (M0)

`assets/kit/` — reutilizado por todos os MVPs:

| Arquivo | Função |
|---|---|
| `kit.css` | Botão, card, input, modal, toast, tabs, progresso, badge |
| `kit.js` | `store` (localStorage namespaced), `router` (hash), `fmtBRL`, `fmtData`, `uid`, `toast`, `modal`, `baixarJSON`, `baixarCSV`, `importarJSON`, `seed`, `grafico` (SVG), `confirmar` |
| `demo.html` | Demonstração de todos os componentes e trocas de tema |

### 13.3 Features por MVP

#### G1 — Dinheiro na Mão (`g1-dinheiro-na-mao/`)
**Ideia:** sistema inteligente de organização de contas + bolsa-incentivo.

| Sprint | Entrega | Features funcionais |
|---|---|---|
| S1 | Casca + dashboard | Navegação · resumo do mês · estado vazio |
| S2 | Contas (CRUD) | Nova conta · editar · excluir · marcar paga/atrasada · filtrar |
| S3 | Calendário + alertas | Calendário mensal · "vence em X dias" · buscar |
| S4 | Bolsa-incentivo | Pontos por pagar em dia · níveis · extrato · "quanto ganharia" |
| S5 | Polimento | Gráfico SVG · plano de ação · export/import · reset · PWA |

#### G3 — Quita.AI (`g3-quita-ai/`) 🎯 PILOTO
**Ideia:** jogo familiar que premia resistir a gastos impulsivos.

| Sprint | Entrega | Features funcionais |
|---|---|---|
| S1 | Casca + home | Criar sala família · avatar · mascote cofrinho-herói |
| S2 | Core do jogo | Registrar "segurei impulso" (+pontos) · missões diárias · streak |
| S3 | Fases e bônus | Barra de progresso · subir de fase · badges · bônus hipótese |
| S4 | Família | Ranking · histórico · adicionar/remover membros |
| S5 | Polimento | Export/import · reset · som ligável · PWA |

#### G4 — SuaCasaSuaVida (`g4-sua-casa-sua-vida/`)
**Ideia:** simulador de financiamento + análise de bairro.

| Sprint | Entrega | Features funcionais |
|---|---|---|
| S1 | Casca + onboarding | Navegação · dados de exemplo |
| S2 | Simulador | Sliders valor/entrada/prazo/juros · Price/SAC · total de juros |
| S3 | Análise financeira | Renda/despesas → "quanto posso pagar" · semáforo |
| S4 | Análise de bairro | Scores por bairro · comparar 2–3 · mapa SVG · favoritar |
| S5 | Polimento | Relatório · export/import · reset · PWA |

#### G6 — Vida no Controle (`g6-vida-no-controle/`)
**Ideia:** orçamento familiar + comparador de preços + leitor de cupom fiscal.

| Sprint | Entrega | Features funcionais |
|---|---|---|
| S1 | Dashboard | Saldo · receitas/despesas · gráficos |
| S2 | Orçamento | CRUD receitas/despesas · categorias · saldo · gráfico SVG |
| S3 | Lista + comparador | Lista de compras · catálogo simulado · "mais barato" |
| S4 | Leitor de cupom | Colar texto do cupom · parser · conferir preços |
| S5 | Reserva + polimento | Meta cofrinho · ofertas patrocinadas · export/import · PWA |

#### G5 — EDA (`g5-eda/`) ⚠️ tema sensível
**Ideia:** espaço anônimo de acolhimento entre pares (não é tratamento).

| Sprint | Entrega | Features funcionais |
|---|---|---|
| S1 | Entrada anônima | Gerar apelido · aviso "não é tratamento" |
| S2 | Check-in + diário | Humor · gatilhos (sem valores) · histórico · streak |
| S3 | Roda de apoio | Sala local · publicar mensagem · reações acolhedoras |
| S4 | Ajuda | Cartão CVV 188 / CAPS / UBS · respiração guiada |
| S5 | Privacidade + polimento | "Apagar tudo" · export importável · PWA · linguagem sem culpa |

### 13.4 Ordem de execução

1. **M0** → foundation (identidade + kit + hub + Pages no ar)
2. **M1 G3** → valida o padrão (piloto)
3. Se aprovado → **M2/M3/M4/M5** em paralelo (1 agente por grupo)
4. **M6** → integração hub + revisão final

> G5 por último (exige mais cuidado de linguagem e validação de privacidade).

---

## 14. Histórico atualizado (seções 1–13)

### 14.1 Items concluídos (adicional)

| # | Item | Detalhe |
|---|---|---|
| 23 | Sistema de identidade visual | `assets/identidade/temas.css` — 5 temas (G1, G3, G4, G5, G6) com CSS vars, faixa de identidade nos slides |
| 24 | `assets/identidade/identidade.md` | Documentação das identidades (paleta, tom, símbolo/mascote, fonte por grupo) |
| 25 | `SPRINTS-MVP.md` | Plano completo de sprints dos MVPs (M0–M6, features por sprint, DoD, limitações Pages) |
| 26 | Pasta `assets/kit/` | `kit.css` + `kit.js` + `demo.html` — componentes reutilizáveis (pending: construir) |
| 27 | Estrutura de pastas para MVPs | Pastas `g1-dinheiro-na-mao/`, `g3-quita-ai/`, `g4-sua-casa-sua-vida/`, `g5-eda/`, `g6-vida-no-controle/` criadas vazias; hub `index.html` pending |

### 14.2 Pendências atualizadas

| # | Item | Responsável |
|---|---|---|
| A | Definir ideia do Grupo 2 + criar `formulario-app.md` + `ContextoApp.md` + `Pesquisa-Dados.md` + slides | Profa. Olivia + grupo |
| B | **M0 — Fundação** — criar `assets/kit/` + hub `index.html` + ativar GitHub Pages | a fazer |
| C | **M1 — MVP piloto G3 Quita.AI** | a fazer |
| D | **M2 — MVP G1 Dinheiro na Mão** | a fazer |
| E | **M3 — MVP G4 SuaCasaSuaVida** | a fazer |
| F | **M4 — MVP G6 Vida no Controle** | a fazer |
| G | **M5 — MVP G5 EDA** | a fazer |
| H | **M6 — Integração hub + polimento** | a fazer |
| E | **Sprint 3** — coleta no shopping + correlação áudio/formulário | grupo |
| F | **Sprint 4** — tabulação quanti + leitura quali | grupo |
| G | **Sprint 5** — app pronto + relatório de achados | grupo |
| J | Re-sincronizar `_pesquisa/INDICE-PESQUISA.md` (autores/títulos divergentes dos `Pesquisa-Dados.md`) | a fazer |

---

## 16. Nota sobre o EDA — foco CBSD e inadimplência

**Observação (professor Renato):** o grupo EDA deve aprofundar o foco em **CBSD (Compulsive Buying-Shopping Disorder)** e na relação entre compra compulsiva e inadimplência. O formulário e o referencial teórico já cobrem isso parcialmente, mas o centro da discussão deve ser:

- **CBSD é transtorno de controle de impulsos** (critérios Müller et al., 2021) — não é "falta de educação financeira"
- **A relação entre CBSD e inadimplência** é o fio condutor: a pessoa entra em dívida não por desconhecimento, mas por incapacidade de inibir o impulso no momento
- **O formulário deve medir**: (1) frequência e intensidade dos episódios de compra impulsiva, (2) nível de dívidas/cheque especial, (3) vergonha/ocultação, (4) tentativas anteriores de parar
- **O pitch deve deixar claro**: o EDA não ensina a cuidar do dinheiro — treina o autocontrole no momento do impulso; a diferença é crucial

---

## 17. Referência rápida — comandos

```powershell
# Publicar no GitHub Pages (ativar)
gh repo edit renato0503/3SemVG --enable-pages --pages-source branch:main --source-root /

# Status do Pages
gh api repos/renato0503/3SemVG/pages

# Abrir hub (após Pages ativo)
Start-Process "https://renato0503.github.io/3SemVG/"

# Verificar estrutura do projeto
Get-ChildItem -LiteralPath "D:\Dev\UnifaccApps\3SemVG" -Directory | Select-Object Name
```
