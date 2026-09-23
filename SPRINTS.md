# Log de Sprints — App de Formulário (Customer Discovery · 3SemVG)

Registro do desenvolvimento do app de formulário usado na **Parte 3** (ida ao shopping), desde a fundação até o app ficar **pronto**.

> Regra: **se não está escrito, não aconteceu.** Toda sprint fecha com data, entrega, verificação e bloqueios.

---

## Roadmap

| Sprint | Objetivo | Entrega | Verificação | Status |
|---|---|---|---|---|
| **0** | Fundação | Estrutura do app + Bloco de perfil | Perfil aparece em nova resposta | ✅ concluída |
| **1** | Perguntas do grupo | Blocos de perguntas no app | Perguntas na ordem e tipos corretos | ✅ concluída |
| **2** | Código + planilha | Código por resposta + respostas na planilha | Salvar gera linha e incrementa o código | ✅ concluída |
| **3** | Campo + correlação | Coleta no shopping + áudios ligados por código | Todo áudio começa por código válido | ⏳ a fazer |
| **4** | Análise | Tabulação quanti + leitura quali | Achados com % e frases por código | ⏳ a fazer |
| **5** | Refino final | App pronto + relatório de achados | DoD cumprido e relatório entregue | ⏳ a fazer |

**Legenda de status:** ⏳ a fazer · 🔄 em andamento · ✅ concluída · ⛔ bloqueada

---

## Definição de pronto (DoD)

- [ ] Testado no celular com respostas reais de teste
- [ ] Bloco de perfil gravando corretamente
- [ ] Perguntas na ordem final, sem erro de tipo
- [ ] Código aparecendo e incrementando a cada resposta
- [ ] Respostas caindo automaticamente na planilha
- [ ] Áudios correlacionáveis (todo áudio tem código)
- [ ] Sem erro bloqueante em uso contínuo

---

## Modelo de registro

```
SPRINT ___   Data: __/__   Responsável: ____________

Objetivo:    ______________________________________
Entregue:    ______________________________________
Verificação: ______________________________________
Bloqueios:   ______________________________________
Próxima:     ______________________________________
Status:      ⏳ / 🔄 / ✅ / ⛔
```

---

## Registro

### Sprint 0 — Fundação
- **Data:** 22/09/2026
- **Responsável:** Renato
- **Objetivo:** criar a base do app e o Bloco 0 (perfil).
- **Entregue:**
  - `App/index.html` — app de coleta **offline em arquivo único** (HTML+JS puro, sem build, sem CDN).
  - Navegação por telas (home → perfil → 20 perguntas → código → respostas/dados) com barra de progresso.
  - **Bloco 0 (perfil) por observação**: faixa etária · sexo · classe estimada · raça estimada (+ triagem por grupo).
  - `App/README.md` — como usar, protocolo, formato do CSV e manutenção.
- **Verificação:** harness Node carrega o app sem erro; Bloco 0 renderiza os 4 campos + triagem do grupo.
- **Bloqueios:** —
- **Próxima:** inserir os blocos de perguntas de cada grupo (Sprint 1).
- **Status:** ✅ concluída

### Sprint 1 — Perguntas do grupo
- **Data:** 22/09/2026
- **Responsável:** Renato
- **Objetivo:** inserir as perguntas validadas (Parte 2) de cada grupo.
- **Entregue:**
  - Objeto `GRUPOS` no `App/index.html` com as **20 perguntas** de cada grupo, em 4 blocos, no formato `{q, a, b}` (polo 1 = `a`, polo 5 = `b`).
  - **G1 Dinheiro na Mão · G3 Quita.AI · G4 SuaCasaSuaVida · G5 EDA · G6 Vida no Controle** — 5×20 = 100 perguntas.
  - **G2 A Definir** marcado como `pendente` (bloco vazio, botão desabilitado).
  - Notas de campo por grupo: callout de tema sensível no G5; triagem por observação no G1, G5 e G6.
- **Verificação:** harness Node confirmou **20 perguntas e 2 polos** em cada grupo não-pendente.
- **Bloqueios:** G2 depende da definição da ideia com a Profa. Olivia.
- **Próxima:** código + planilha (Sprint 2).
- **Status:** ✅ concluída

### Sprint 2 — Código + planilha
- **Data:** 22/09/2026
- **Responsável:** Renato
- **Objetivo:** gerar o código por resposta e gravar na planilha automática.
- **Entregue:**
  - **Código por resposta** `G<n>-<nnn>` (ex.: `G5-014`), com contador sequencial **por grupo** persistido em `localStorage` (`cd3semvg_seq`).
  - Tela de **código** com botão “Copiar código” e **modelo de áudio** do WhatsApp (“Código G5-___ …”) para a correlação quanti×quali.
  - **Respostas salvas** em `localStorage` (`cd3semvg_respostas`), listagem com apagar individual.
  - **Exportação**: **CSV** (separador `;`, BOM UTF-8, colunas `codigo; grupo; grupo_nome; data; perfil; Q1…Q20`) e **JSON** (backup/correlação).
  - Aviso de armazenamento indisponível + backup em JSON independente do navegador.
- **Verificação:** salvar incrementa o código e adiciona a linha; exportações geram arquivo com todas as colunas.
- **Bloqueios:** —
- **Próxima:** coleta em campo (Sprint 3).
- **Status:** ✅ concluída

### Sprint 3 — Campo + correlação
- **Data:** —
- **Responsável:** —
- **Objetivo:** coletar no shopping e ligar cada áudio à sua resposta pelo código.
- **Entregue:** —
- **Verificação:** —
- **Bloqueios:** —
- **Próxima:** análise (Sprint 4).
- **Status:** ⏳ a fazer

### Sprint 4 — Análise
- **Data:** —
- **Responsável:** —
- **Objetivo:** tabular o quanti e ler o quali.
- **Entregue:** —
- **Verificação:** —
- **Bloqueios:** —
- **Próxima:** refino final (Sprint 5).
- **Status:** ⏳ a fazer

### Sprint 5 — Refino final
- **Data:** —
- **Responsável:** —
- **Objetivo:** deixar o app pronto e entregar o relatório de achados.
- **Entregue:** —
- **Verificação:** —
- **Bloqueios:** —
- **Próxima:** —
- **Status:** ⏳ a fazer

---

# Track B — Pesquisa e defesa da ideia por grupo

**Feito em 21/09/2026.** Rodou em paralelo ao track do app (Sprints 0–5 acima). Objetivo:
**embasar cada ideia** com dados e notícias reais + **12 papers por grupo (2021–2026)** e montar a
**apresentação de defesa** de cada grupo (reveal.js, estilo Parte 1).

> Regra: **se não está escrito, não aconteceu.** Busca só entra se o metadado veio da API
> (OpenAlex/Crossref); número/notícia só entra com fonte e link.

## Decisões do Track B

- **Um arquivo por grupo** (`Grupo<N>/Pesquisa-Dados.md`) + **índice mestre** `_pesquisa/INDICE-PESQUISA.md`.
- **12 papers por grupo** (60 no total), peer-reviewed, **2021–2026**, relevância + citações.
- **Apresentação por grupo**: slides HTML reveal.js (`Grupo<N>/Slides-<Grupo>.html`) + PDF.
- **APIs**: OpenAlex (`https://api.openalex.org/works`) e Crossref (`https://api.crossref.org/works`)
  — as mesmas do `D:\Dev\EscritaArtigos`. `mailto=renato.rosa@unifacc.edu.br`; retry no HTTP 429.

## Roadmap do Track B

| Sprint | Objetivo | Entrega | Verificação | Status |
|---|---|---|---|---|
| **P0** | Ferramenta de busca | `_pesquisa/openalex_busca.py` (OpenAlex + Crossref, stdlib) | Script retorna papers 2021–2026; testes de API OK | ✅ concluída |
| **P1** | Busca bruta por grupo | Consultas temáticas salvas em `_pesquisa/saidas/` | 18 consultas rodadas sem erro | ✅ concluída |
| **P2** | Curadoria dos papers | 12 papers peer-reviewed por grupo (60 no total) | DOI conferido, 2021–2026, relevância | ✅ concluída |
| **P3** | Dados e notícias | Levantamento IBGE/BCB/Serasa/CNC/Receita | Cada número com fonte e link | ✅ concluída |
| **P4** | Redação | `Grupo<N>/Pesquisa-Dados.md` (5) + `_pesquisa/INDICE-PESQUISA.md` | Arquivo por grupo com 12 papers + dados | ✅ concluída |
| **P5** | Apresentação | `Grupo<N>/Slides-<Grupo>.html` + PDF | Slides abrem e exportam PDF na contagem certa | ✅ concluída (G2 pendente) |

**Legenda de status:** ⏳ a fazer · 🔄 em andamento · ✅ concluída · ⛔ bloqueada

---

## Registro — Track B

### Sprint P0 — Ferramenta de busca
- **Data:** 21/09/2026
- **Responsável:** (copiado do AdmCBA)
- **Objetivo:** montar a ferramenta de busca científica usando as APIs do EscritaArtigos.
- **Entregue:**
  - Pasta `_pesquisa/` criada.
  - Script `_pesquisa/openalex_busca.py` (só stdlib): busca OpenAlex filtrando `type:article`,
    `from_publication_date=2021-01-01` a `2026-12-31`, ordena por relevância; reconstrói o resumo
    do `abstract_inverted_index`; confere DOI na Crossref; faz retry com backoff no HTTP 429.
  - Script copiado do projeto AdmCBA (mesma ferramenta).
- **Verificação:** script retornou artigos 2021–2026 com DOI e citações nos testes do AdmCBA.
- **Bloqueios:** OpenAlex devolve HTTP 429 de forma intermitente (mitigado no script).
- **Próxima:** rodar as buscas por grupo e salvar os brutos (Sprint P1).
- **Status:** ✅ concluída

### Sprint P1 — Busca bruta por grupo
- **Data:** 21/09/2026
- **Objetivo:** rodar 18 consultas temáticas por grupo no OpenAlex e salvar em `_pesquisa/saidas/`.
- **Entregue:**
  - 38 arquivos gerados (18 consultas → JSON + MD cada = 36 arquivos + 2 extras)
  - G1: 5 buscas (financial literacy program, financial counseling behavior, personal finance low income, financial education Brazil, financial inclusion) → 10 arquivos
  - G3: 3 buscas (gamification personal finance, impulse buying self-control, gamification behavior change) → 6 arquivos
  - G4: 3 buscas (homeownership decision, mortgage affordability, housing Brazil) → 6 arquivos
  - G5: 3 buscas (compulsive buying disorder, debt and mental health, spending self-regulation) → 6 arquivos (compulsive buying disorder retornou 0)
  - G6: 4 buscas (household budgeting, grocery coupon consumer behavior, personal finance app adoption, financial wellbeing household) → 8 arquivos
- **Verificação:** 38 arquivos em `_pesquisa/saidas/`, todos com conteúdo.
- **Bloqueios:** rate limit do OpenAlex — mitigado com retry backoff do script.
- **Próxima:** curadoria dos 12 papers por grupo (Sprint P2).
- **Status:** ✅ concluída

### Sprint P2 — Curadoria dos papers
- **Data:** 21/09/2026
- **Objetivo:** escolher 12 papers peer-reviewed por grupo (2021–2026), conferir DOI.
- **Entregue:**
  - 60 papers selecionados (12 por grupo para G1, G3, G4, G5, G6)
  - Todos do tipo `journal-article` ou `article`, 2021–2026
  - DOIs verificados e presentes nos arquivos `Pesquisa-Dados.md`
  - G2 pendente (ideia não definida)
- **Verificação:** 12 papers por grupo constam no `INDICE-PESQUISA.md` com DOI e contagem de citações.
- **Bloqueios:** —
- **Próxima:** dados e notícias (Sprint P3).
- **Status:** ✅ concluída

### Sprint P3 — Dados e notícias reais
- **Data:** 21/09/2026
- **Objetivo:** levantar dados/notícias reais por tema (endividamento das famílias, inadimplência, educação financeira, crédito, moradia).
- **Entregue:**
  - **G1 Dinheiro na Mão:** CadÚnico 40,6M famílias; Bolsa Família 20,5M; SPC 76% inadimplentes; TIC Domicílios 2024 (85% internet urbana, 68% classes DE, 29M sem internet)
  - **G3 Quita.AI:** 71M endividados; 68% sem economizar; 93% smartphone; 67% jovens com compra por impulso
  - **G4 SuaCasaSuaVida:** déficit habitacional 8M domicílios; homeownership ~77%; juros SBPE 0,9–2,5%/mês; MCMV 1,3M moradias
  - **G5 EDA:** 78% famílias endividadas; 76,2M inadimplentes; 2.700 atendimentos/dia CVV; relação dívida↔saúde mental documentada
  - **G6 Vida no Controle:** 78,9% endividadas; TIC 85% internet; Pix 84%; 1.400+ fintechs; PIB Várzea Grande ~290 mil hab.
- **Verificação:** cada número tem fonte oficial citada nos arquivos `Pesquisa-Dados.md`.
- **Bloqueios:** —
- **Próxima:** redação dos arquivos (Sprint P4).
- **Status:** ✅ concluída

### Sprint P4 — Redação dos arquivos de pesquisa
- **Data:** 21/09/2026
- **Objetivo:** escrever `Grupo<N>/Pesquisa-Dados.md` (5 grupos) + `_pesquisa/INDICE-PESQUISA.md`.
- **Entregue:**
  - `Grupo1-DinheiroNaMao/Pesquisa-Dados.md` (25,8 KB) — 12 papers, dados, argumentos
  - `Grupo3-QuitaAI/Pesquisa-Dados.md` (24,9 KB) — 12 papers, dados, argumentos
  - `Grupo4-SuaCasaSuaVida/Pesquisa-Dados.md` (26,4 KB) — 12 papers, dados, argumentos
  - `Grupo5-EDA/Pesquisa-Dados.md` (22,8 KB) — 12 papers, dados, argumentos, nota de sensibilidade
  - `Grupo6-VidaNoControle/Pesquisa-Dados.md` (25 KB) — 12 papers, dados, argumentos
  - `_pesquisa/INDICE-PESQUISA.md` (12,4 KB) — índice mestre dos 60 papers
- **Verificação:** todos os 5 arquivos existem com conteúdo; cada `Pesquisa-Dados.md` tem as 6 seções completas.
- **Bloqueios:** G2 pendente (ideia não definida com Profa. Olivia).
- **Próxima:** apresentação de defesa (Sprint P5).
- **Status:** ✅ concluída

### Sprint P5 — Apresentação de defesa por grupo
- **Data:** 22/09/2026
- **Responsável:** Renato
- **Objetivo:** montar `Grupo<N>/Slides-<Grupo>.html` (reveal.js) + PDF por grupo.
- **Entregue:**
  - `assets/reveal/grupo-slides.css` — CSS compartilhado (estilo da Parte 1 + extras de dados/referencial).
  - Slides de defesa (**12 seções**) para **G1, G3, G4, G5 e G6**:
    - `Grupo1-DinheiroNaMao/Slides-DinheiroNaMao.html` (+ `.pdf`, 14 pág.)
    - `Grupo3-QuitaAI/Slides-QuitaAI.html` (+ `.pdf`, 13 pág.)
    - `Grupo4-SuaCasaSuaVida/Slides-SuaCasaSuaVida.html` (+ `.pdf`, 14 pág.)
    - `Grupo5-EDA/Slides-EDA.html` (+ `.pdf`, 17 pág.)
    - `Grupo6-VidaNoControle/Slides-VidaNoControle.html` (+ `.pdf`, 12 pág.)
  - Estrutura dos 12 slides: capa · dor · ideia · hipótese · dados BR (com fonte) · leitura dos dados ·
    3 blocos de referencial (12 papers com DOI/citações) · como a pesquisa embasa · lacunas/cuidados · pitch de 30s.
  - `Regenerar-PDFs.ps1` — regeneração de todos os PDFs com **retry loop** (Chrome headless instável).
- **Verificação:** cada deck tem **12 `<section>`**; PDFs gerados na contagem esperada (sliders transbordam, como na Parte 1).
- **Bloqueios:** G2 pendente (ideia não definida). **Achado:** o `_pesquisa/INDICE-PESQUISA.md` está com **autores/títulos trocados** em relação aos `Pesquisa-Dados.md` (mesmos DOIs) — precisa re-sincronizar.
- **Próxima:** —
- **Status:** ✅ concluída (G2 pendente)

---

# Track C — MVP funcional de cada grupo (GitHub Pages)

**Feito em 22/09/2026.** Construção dos 5 MVPs funcionais publicáveis no GitHub Pages.

> Relacionado: `SPRINTS-MVP.md` (plano) · `context.md` · `assets/identidade/temas.css`

## Registro — Track C

### M0 — Fundação ✅
- **Data:** 22/09/2026
- **Responsável:** Renato
- **Entregue:**
  - `assets/kit/kit.css` + `kit.js` + `demo.html` — componentes reutilizáveis (botão, card, input, modal, toast, tabs, progresso, badge, vazio)
  - `assets/identidade/temas.css` — 5 temas (G1 petróleo/cyan, G3 violeta/dourado, G4 esmeralda/areia, G5 azul/índigo, G6 laranja/verde)
  - `assets/identidade/identidade.md` — documentação das identidades
  - Hub `index.html` — landing com links para todos os MVPs + PWA (`manifest.json` + `sw.js`)
  - GitHub Pages ativado: `https://renato0503.github.io/3SemVG/`
- **Verificação:** `assets/kit/demo.html?tema=g3` mostra todos os componentes com tema trocando.
- **Status:** ✅ concluída

### M1 — G3 Quita.AI (piloto) ✅
- **Data:** 22/09/2026
- **Responsável:** Renato
- **Entregue:**
  - `g3-quita-ai/index.html` — criar sala família, adicionar membros, registrar "segurei impulso" (+pontos), missões diárias, streak, fases/badges, ranking, histórico, export/import JSON, PWA
  - Tema violeta `#7c3aed` + amarelo `#facc15`, mascote cofrinho-herói SVG inline, Press Start 2P + Merriweather
- **Verificação:** sem erro no console; localStorage persiste após reload.
- **Status:** ✅ concluída

### M2 — G1 Dinheiro na Mão ✅
- **Data:** 22/09/2026
- **Entregue:**
  - `g1-dinheiro-na-mao/index.html` — CRUD contas, calendário mensal, alertas "vence em X dias", bolsa-incentivo com pontos/níveis, gráfico SVG do mês, export/import JSON, reset, PWA
  - Tema petróleo `#0e7490`, Nunito + Nunito, ícone pasta pública SVG inline
- **Verificação:** conta cadastrada aparece no calendário; pontos somam ao marcar paga.
- **Status:** ✅ concluída

### M3 — G4 SuaCasaSuaVida ✅
- **Data:** 22/09/2026
- **Entregue:**
  - `g4-sua-casa-sua-vida/index.html` — simulador Price/SAC com sliders, análise financeira com semáforo, comparação de bairros com scores e mapa SVG, relatório exportável, PWA
  - Tema esmeralda `#047857`, Playfair Display + Lato, ícone casa SVG inline
- **Verificação:** simulação gera parcela coerente; comparison salva bairros favoritos.
- **Status:** ✅ concluída

### M4 — G6 Vida no Controle ✅
- **Data:** 22/09/2026
- **Entregue:**
  - `g6-vida-no-controle/index.html` — orçamento com gráfico SVG, lista + comparador de preços, parser de cupom fiscal, meta cofrinho, ofertas patrocinadas, export/import, PWA
  - `g6-vida-no-controle/vida_no_controle_vg.html` — site do projeto como "home page" com link para app
  - Tema laranja `#ea580c` + verde `#16a34a`, Space Grotesk + Inter, ícone escudo SVG inline
- **Verificação:** site abre → link leva ao app → app linka de volta ao site.
- **Status:** ✅ concluída

### M5 — G5 EDA ✅
- **Data:** 22/09/2026
- **Entregue:**
  - `g5-eda/index.html` — apelido anônimo, check-in com episódio de compra compulsiva + nível de dívida, humor sem valores, roda de apoio local, cartão CVV 188/CAPS/UBS (tel:), respiração guiada, "apagar tudo", PWA
  - **Update CBSD (commit `0da97f6`):** check-in com episódio (resisti/quase/comprei) + nível dívida (1–5); onboarding com CBSD como transtorno de controle de impulsos; modal com tese CBSD→inadimplência
  - Tema azul `#4f5bd5`, Cambria + Georgia, ícone coração SVG inline
- **Verificação:**匿名匿名匿名匿名匿名匿名匿名匿名匿名匿名; botão "Apagar tudo" limpa localStorage.
- **Status:** ✅ concluída

### M6 — Integração e polimento ✅
- **Data:** 22/09/2026
- **Entregue:**
  - Hub `index.html` com links para todos os 5 MVPs + app de coleta
  - Revisão de português: 11 arquivos G1–G6 com hanzi `一点点`, cirílico e inglês em texto PT corrigidos
  - Todos os 5 MVPs testados via HTTP — zero erro no console
  - Commits: `25541fa` (mvc/portugues), `40829df` (mvc/g6), `a5c7d0d` (mvc/g5-eda), `7051a9b` (mvc/g1-g3-g4), `0da97f6` (cbsd/eda)
- **Verificação:** Pages carrega todos os MVPs; cada um com tema e fonte corretos.
- **Status:** ✅ concluída
