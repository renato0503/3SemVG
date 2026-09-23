# SPRINTS-MVP — MVP funcional de cada grupo (GitHub Pages)

Plano de sprints para construir **um MVP funcional por grupo** das 5 ideias (G1, G3, G4, G5, G6 — G2 pendente), publicável **só no GitHub Pages**.

> Regra deste track: **todo botão e toda feature têm que funcionar de verdade.** Nada de botão morto, nada de "em breve". O que o Pages não permite é **simulado de forma honesta** no navegador (sem backend).

- **Repositório:** `https://github.com/renato0503/3SemVG`
- **Pages (projeto):** `https://renato0503.github.io/3SemVG/` · fonte: branch **main**, pasta **raiz**
- **Relacionados:** `SPRINTS.md` (app de coleta + Track B) · `context.md` · `assets/identidade/temas.css`

---

## 1. O que o GitHub Pages permite (e o que não permite)

| Permite ✅ | Não permite ❌ | Como o MVP resolve |
|---|---|---|
| HTML/CSS/JS estáticos | Backend / API própria | Lógica 100% no cliente |
| `localStorage` / `IndexedDB` | Banco de dados | Guardar no próprio aparelho |
| Service Worker / PWA | Login em servidor | Perfil **local** (sem senha) |
| `fetch` a APIs públicas com CORS | Enviar e-mail/notificação real | Notificações **simuladas** na tela |
| SVG, Canvas, gráficos, SVG maps | Mapas de verdade (Google) | **Mapa/bairro em SVG** desenhado |
| Web Audio, `speechSynthesis` | OCR de cupom robusto | Parser de **cupom de exemplo** + colar texto |
| `Blob` download (CSV/JSON) | Pagamentos / fatura real | Recompensas **hipótese** (simbólicas) |
| Web Share API | Chat entre dispositivos | "Roda de apoio" **local** simulada |

**Consequência de projeto:** cada MVP é um **app de um arquivo** (ou poucos), com **dados de exemplo embutidos** + **dados do usuário em localStorage**, exportáveis/importáveis em JSON.

---

## 2. Kit compartilhado (Sprint 0) — base de todos os MVPs

Uma pasta `assets/kit/` reutilizada por todos, para não reescrever tudo 5 vezes:

- `kit.css` — componentes de UI (botão, card, input, modal, toast, tabs, progresso, vazio, badge) usando as variáveis de `temas.css`.
- `kit.js` — utilitários: `store` (localStorage namespaced por grupo), `router` (hash), `fmtBRL`/`fmtData`, `uid`, `toast`, `modal`, `baixarJSON`, `baixarCSV`, `importarJSON`, `seed` (dados de exemplo), `grafico` (barras/rosca em SVG), `confirmar`.
- `pwa/` — `manifest.webmanifest` + `sw.js` (cache offline) **por grupo** (nome/ícone/cor temática).
- Ícones/mascotes — **SVG inline por grupo** (sem dependência externa).

**DoD do kit:** abrir `assets/kit/demo.html` mostra todos os componentes funcionando e trocando de tema (`?tema=g3`).

---

## 3. Roadmap global

| Sprint | Objetivo | Entrega | Status |
|---|---|---|---|
| **M0** | Fundação compartilhada | `assets/kit/` + `temas.css` + hub `index.html` + Pages no ar | ✅ concluída |
| **M1** | **MVP piloto G3 Quita.AI** | `g3-quita-ai/` funcional com identidade gamer | ✅ concluída |
| **M2** | G1 Dinheiro na Mão | `g1-dinheiro-na-mao/` (sistema de contas + bolsa) | ✅ concluída |
| **M3** | G4 SuaCasaSuaVida | `g4-sua-casa-sua-vida/` (simulador + bairro) | ✅ concluída |
| **M4** | G6 Vida no Controle | `g6-vida-no-controle/` (orçamento + economia + cupom) | ✅ concluída |
| **M5** | G5 EDA | `g5-eda/` (acolhimento anônimo) — tema sensível | ✅ concluída |
| **M6** | Integração + polimento | Hub ligado aos 5 MVPs, PWA, revisão de botões | ✅ concluída |

> **Ordem:** o piloto **G3** valida o padrão (identidade + kit + persistência). Depois replicamos G1 → G4 → G6 → G5. **G5 por último** (exige mais cuidado de linguagem e privacidade).

---

## 4. Sprints por grupo

Cada MVP segue o mesmo esqueleto de sprints:

- **S1 — Casca + identidade:** identidade aplicada, navegação (hash router), home/dashboard, dados de exemplo carregando.
- **S2 — Feature principal:** o coração da ideia, 100% funcional (CRUD + cálculos + persistência).
- **S3 — Features secundárias:** as demais telas/botões da ideia.
- **S4 — Persistência + dados:** export/import JSON+CSV, reset, backup, "meus dados".
- **S5 — Polimento + PWA:** responsivo, acessibilidade, offline (service worker), textos, revisão de **todos os botões**.

---

### 4.1 · G1 — Dinheiro na Mão (`g1-dinheiro-na-mao/`)
**Ideia:** programa presencial + **sistema inteligente** que organiza contas/datas + **bolsa-incentivo**.
**Identidade:** petróleo/cyan, institucional e acolhedor (`.tema-g1`).
**MVP = o "sistema inteligente"** (o app que o posto usaria com a família).

| Sprint | Entrega | Botões/features funcionais |
|---|---|---|
| S1 | Casca + dashboard vazio | Navegação · card "resumo do mês" · estado vazio |
| S2 | **Contas (CRUD)** | Nova conta · editar · excluir · marcar **paga/atrasada** · filtrar por mês/categoria |
| S3 | **Calendário único + alertas** | Ver mês em calendário · "vence em X dias" · reordenar por vencimento · buscar |
| S4 | **Bolsa-incentivo (simulada)** | Pontos por pagar em dia/registrar · nível e progresso · extrato de pontos · "quanto ganharia" |
| S5 | Resumo + plano de ação | Gráfico do mês (SVG) · gerar "plano de organização" · export/import JSON · reset · PWA |

**DoD:** dá para cadastrar contas reais, elas aparecem no calendário, os alertas mudam conforme a data, a bolsa soma pontos ao marcar paga, e tudo persiste ao fechar e reabrir.

---

### 4.2 · G3 — Quita.AI (`g3-quita-ai/`) 🎯 PILOTO
**Ideia:** jogo que a família joga e **premia resistir ao impulso**.
**Identidade:** violeta + amarelo neon, lúdico/gamer (`.tema-g3`), mascote cofrinho-herói.

| Sprint | Entrega | Botões/features funcionais |
|---|---|---|
| S1 | Casca + identidade + home | Criar **sala da família** · nome/avatar · navegação · mascote |
| S2 | **Jogar (core)** | Registrar "**segurei o impulso**" (+pontos) · escolher categoria · missões diárias · streak · feedback animado |
| S3 | **Fases e bônus** | Barra de progresso da fase · subir de fase · desbloquear **badges** · bônus **hipótese** (desconto/isenção) com selo "a validar" |
| S4 | **Família** | Adicionar/remover membros · ranking · histórico de eventos · desfazer último |
| S5 | Persistência + polimento | Export/import JSON · reset · som (Web Audio) ligável · PWA · revisão de botões |

**DoD:** criar família, registrar impulsos segurados, ver pontos/fase/ranking subindo, desbloquear bônus (rotulado como hipótese) e persistir tudo.

---

### 4.3 · G4 — SuaCasaSuaVida (`g4-sua-casa-sua-vida/`)
**Ideia:** app que ajuda a **comprar a casa** — análise de bairro + situação financeira + simulação.
**Identidade:** esmeralda + areia, imobiliário/confiança (`.tema-g4`).

| Sprint | Entrega | Botões/features funcionais |
|---|---|---|
| S1 | Casca + onboarding | Navegação · "começar análise" · dados de exemplo |
| S2 | **Simulador de financiamento** | Sliders valor/entrada/prazo/juros · parcela **Price e SAC** · total de juros · aviso de comprometimento de renda |
| S3 | **Análise financeira** | Informar renda/despesas → "quanto posso pagar" · semáforo de saúde financeira · cenários (conservador/ideal) |
| S4 | **Análise de bairro** | Lista de bairros (dados simulados) · comparar 2–3 · scores (segurança/serviços/valorização/mobilidade) · **mapa em SVG** · favoritar |
| S5 | Resumo + persistência | "Relatório da minha busca" · export/import JSON · reset · PWA |

**DoD:** simular um financiamento com parcela coerente, ver o quanto pode pagar, comparar bairros e salvar/exportar o relatório.

---

### 4.4 · G6 — Vida no Controle (`g6-vida-no-controle/`)
**Ideia:** plataforma **free** que organiza a renda, acha economia, lê o **cupom fiscal**; patrocínio do **mercado regional**.
**Identidade:** laranja-mercado + verde, local/frugal (`.tema-g6`).

| Sprint | Entrega | Botões/features funcionais |
|---|---|---|
| S1 | Casca + dashboard | Navegação · saldo do mês · dados de exemplo |
| S2 | **Orçamento familiar** | Nova receita/despesa · categorias · editar/excluir · saldo · gráfico por categoria (SVG) |
| S3 | **Lista + comparador de preços** | Lista de compras · catálogo simulado de mercados · "onde está mais barato" · economia estimada |
| S4 | **Leitor de cupom (simulado)** | Colar/importar texto de cupom · **parser** cadastra itens · conferir preços · marcar divergência |
| S5 | Reserva + persistência | Meta de reserva/cofrinho com progresso · ofertas patrocinadas (simuladas) · export/import · reset · PWA |

**DoD:** montar orçamento, comparar preços e economizar, colar um cupom de exemplo e ver os itens cadastrados, guardar reserva e persistir.

---

### 4.5 · G5 — EDA (`g5-eda/`) ⚠️ tema sensível
**Ideia:** espaço **anônimo** de acolhimento entre pares (não é tratamento).
**Identidade:** azul/índigo suave, acolhedor (`.tema-g5`).

| Sprint | Entrega | Botões/features funcionais |
|---|---|---|
| S1 | Casca + entrada anônima | Gerar **apelido/código** · aviso "não é tratamento" · navegação |
| S2 | **Check-in + diário anônimo** | Check-in de humor · registrar gatilhos (**sem valores de dívida**) · histórico local · streak |
| S3 | **Roda de apoio (simulada)** | Entrar numa "sala" · publicar mensagem local · reações acolhedoras · regras da roda |
| S4 | **Ajuda e cuidado** | Cartão **CVV 188 / CAPS / UBS** (ligar/copiar) · exercício de respiração com timer · lembrete de autocuidado |
| S5 | Privacidade + persistência | "Apagar tudo" em 1 toque · export apagável/import · PWA · revisão de linguagem (sem culpa, sem diagnóstico) |

**DoD:** usar 100% anônimo e local, com botões de ajuda reais (tel:188), e uma trava de privacidade que apaga todos os dados.

---

## 5. Critérios de aceite — "tudo funcional"

Um MVP só fecha quando:

1. **Nenhum botão morto** — cada botão/link executa uma ação visível (ou é removido).
2. **Persistência** — fechar e reabrir mantém os dados (`localStorage`), com botão de reset.
3. **Export/import** — baixar JSON/CSV e reimportar restaura o estado.
4. **Sem erro no console** ao navegar por todas as telas.
5. **Responsivo** — funciona no celular (é uso de campo) e no desktop.
6. **Identidade aplicada** — usa o tema do grupo (`temas.css`), sem cor "da turma" vazando.
7. **Honestidade** — recompensas/dados simulados vêm rotulados ("exemplo", "hipótese a validar", "simulado").
8. **Acessível** — contraste, foco visível, `aria-label` nos botões de ícone.

---

## 6. Ordem de execução e paralelização

1. **M0** (fundação) — eu faço.
2. **M1 G3 piloto** — eu faço; você revisa o padrão (visual + funcional).
3. Se aprovado, **M2/M3/M4/M5** podem ser feitos em paralelo (um agente por grupo), reusando o kit.
4. **M6** integra no hub e revisa botão a botão.

> Ao concluir cada sprint, registrar data/entrega/verificação aqui (regra: **se não está escrito, não aconteceu**).

---

## 7. Riscos e decisões

- **Sem backend** → perfis e dados são **locais por aparelho**; trocar de celular exige export/import (documentado na UI).
- **Nada de dado sensível real** → G5 nunca pede valores de dívida; tudo anônimo e local.
- **Mapas/OCR/pagamentos** → sempre **simulados e rotulados**, nunca prometidos como reais.
- **Paths no Pages** → usar sempre caminhos **relativos** e nomes de pasta **sem espaço** para os MVPs.
- **PDFs dos slides** continuam gerados via `Regenerar-PDFs.ps1` (só `file://`); no Pages os slides abrem em modo apresentação.

---

## 8. Execução — log do que foi feito

> **22/09/2026** — Tudo concluído em um dia de trabalho.

### M0 — Fundação ✅
- `assets/kit/kit.css` + `kit.js` + `demo.html` — componentes reutilizáveis (botão, card, input, modal, toast, tabs, progresso)
- `assets/identidade/temas.css` — 5 temas com CSS vars (G1 petrol/cyan, G3 violeta/dourado, G4 esmeralda/areia, G5 azul/índigo, G6 laranja/verde)
- `assets/identidade/identidade.md` — documentação das identidades
- Hub `index.html` — landing com links para todos os MVPs + PWA (`manifest.json` + `sw.js`)
- GitHub Pages ativado: `https://renato0503.github.io/3SemVG/`

### M1 — G3 Quita.AI (piloto) ✅
- `g3-quita-ai/index.html` — criar sala, adicionar membros, registrar impulso segurado, fases, ranking, badges, histórico, export/import JSON, PWA
- Tema violeta + amarelo neon, mascote cofrinho-herói SVG inline

### M2 — G1 Dinheiro na Mão ✅
- `g1-dinheiro-na-mao/index.html` — CRUD de contas, calendário mensal, alertas "vence em X dias", bolsa-incentivo com pontos/níveis, gráfico SVG, export/import
- Tema petróleo/cyan, ícone pasta pública SVG inline

### M3 — G4 SuaCasaSuaVida ✅
- `g4-sua-casa-sua-vida/index.html` — simulador Price/SAC com sliders, análise financeira com semáforo, comparação de bairros com scores e mapa SVG, relatório exportável
- Tema esmeralda/areia, ícone casa SVG inline

### M4 — G6 Vida no Controle ✅
- `g6-vida-no-controle/index.html` — orçamento com gráfico SVG, lista de compras + comparador de preços, parser de cupom fiscal, meta cofrinho, ofertas patrocinadas
- `g6-vida-no-controle/vida_no_controle_vg.html` — site do projeto como "home page" com link para o app
- Tema laranja-mercado/verde

### M5 — G5 EDA (tema sensível) ✅
- `g5-eda/index.html` — apelido anônimo, check-in com episódio de compra compulsiva + nível de dívida, humor sem valores, roda de apoio local, cartão CVV 188/CAPS/UBS, respiração guiada, "apagar tudo"
- **Update 22/09:** CBSD como transtorno de controle de impulsos, hipótese CBSD→inadimplência
- Tema azul/índigo suave

### M6 — Integração e polimento ✅
- Todos os 5 MVPs integrados no hub
- Revisão de português: 11 arquivos corrigidos (hanzi `一点点`, cirílico, inglês em texto PT)
- Todos os MVPs testados via HTTP sem erro no console
- Commits: `25541fa`, `40829df`, `a5c7d0d`, `7051a9b`, `0da97f6`

### Detalhe por MVP — design e fontes

| Grupo | Fonte título | Fonte corpo | Ícones | Estilo |
|---|---|---|---|---|
| G1 | Nunito | Nunito | SVG pasta pública | Institucional |
| G3 | Press Start 2P | Merriweather | SVG cofrinho | Gamer 8-bit |
| G4 | Playfair Display | Lato | SVG casa | Imobiliário premium |
| G5 | Cambria | Georgia | SVG coração | Acolhedor editorial |
| G6 | Space Grotesk | Inter | SVG escudo | Tech local |

### DoD verificado (22/09/2026)

- [x] Nenhum botão morto — cada botão executa ação visível
- [x]Persistência — localStorage mantido após reload com reset
- [x] Export/import JSON funciona
- [x] Sem erro no console em todas as telas (teste HTTP)
- [x] Responsivo (mobile-first, 44×44px alvos)
- [x] Identidade aplicada — tema do grupo sem cor genérica
- [x] Dados simulados/hipótese rotulados
- [x] Contraste acessível, aria-label em botões de ícone
