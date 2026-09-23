# Identidade Visual — 3SemVG

Documentação das identidades visuais de cada grupo. Paletas, tom, tipografia e símbolo/mascote.

---

## Paletas por Grupo

| Grupo | Projeto | `--accent` | `--accent2` | `--tinta` | Tom |
|---|---|---|---|---|---|
| G1 | Dinheiro na Mão | `#0e7490` | `#22d3ee` | `#083344` | Institucional e acolhedor (posto público) |
| G3 | Quita.AI | `#7c3aed` | `#facc15` | `#1e1b4b` | Lúdico e gamer |
| G4 | SuaCasaSuaVida | `#047857` | `#d97706` | `#052e2b` | Imobiliário e confiança |
| G5 | EDA | `#4f5bd5` | `#93c5fd` | `#1e2235` | Acolhedor e calmo (zero culpa) |
| G6 | Vida no Controle | `#ea580c` | `#16a34a` | `#431407` | Local e frugal (mercado) |
| G2 | LifePath (Simulador da Vida Real) | `#ff6b35` | `#7b2ff7` | `#1a0e2e` | Fintech, digital e gamificado (Nubank) |

---

## Aplicação nos Slides

```html
<link rel="stylesheet" href="assets/identidade/temas.css">
<link rel="stylesheet" href="assets/reveal/grupo-slides.css">
</head>
<body class="tema-g3">  <!-- trocar g3 pelo grupo -->
```

O `temas.css` define `.tema-g1` … `.tema-g6` com todas as variáveis CSS.
O `grupo-slides.css` usa `var(--accent)`, `var(--tinta)`, etc.

---

## Aplicação nos MVPs / Hub

```html
<link rel="stylesheet" href="assets/identidade/temas.css">
<link rel="stylesheet" href="assets/kit/kit.css">
</head>
<body class="tema-g3">
```

---

## G1 — Dinheiro na Mão

**Tom:** institucional e acolhedor. Lembra um posto de atendimento público — acessível, acolhedor, sério.
**Fonte título:** `"Segoe UI Semibold", "Segoe UI", system-ui`
**Fonte corpo:** `"Segoe UI", system-ui, -apple-system, sans-serif`
**Símbolo:** calendário + engrenagem / aperto de mão
**Cor de fundo suave:** `#ecfeff`
**Faixa de identidade:** gradiente `#0e7490` → `#22d3ee`

---

## G2 — LifePath (Simulador da Vida Real)

**Tom:** fintech, digital e gamificado. O app é uma camada de engajamento dentro do Nubank — limpo, jovem, com mecânicas de jogo e recompensas reais.
**Fonte título:** `"Segoe UI", system-ui, -apple-system, sans-serif`
**Fonte corpo:** `"Segoe UI", system-ui, -apple-system, sans-serif`
**Paleta:** laranja `#ff6b35` (Nubank) + roxo digital `#7b2ff7` + tinta `#1a0e2e`
**Cor de fundo suave:** `#fff4f0`
**Faixa de identidade:** gradiente `#ff6b35` → `#7b2ff7`

---

## G3 — Quita.AI

**Tom:** lúdico e gamer. O app é um jogo — roxo vibrante com amarelo neon para as recompensas.
**Fonte título:** `"Trebuchet MS", "Verdana", system-ui`
**Fonte corpo:** `"Trebuchet MS", "Verdana", system-ui`
**Mascote:** cofrinho-herói 🐷 (mascote desenhado em SVG no MVP)
**Cor de fundo suave:** `#f5f3ff`
**Faixa de identidade:** gradiente `#7c3aed` → `#facc15`
**Detalhe:** elementos com cantos arredondados (border-radius 16px+), ícones grandes.

---

## G4 — SuaCasaSuaVida

**Tom:** imobiliário e confiança. Verde esmeralda transmite crescimento e solidez; areia/dourado remete a imóveis.
**Fonte título:** `"Segoe UI Semibold", "Helvetica Neue", system-ui`
**Fonte corpo:** `"Segoe UI", "Helvetica Neue", system-ui`
**Símbolo:** casa + pin de mapa
**Cor de fundo suave:** `#ecfdf5`
**Faixa de identidade:** gradiente `#047857` → `#d97706`

---

## G5 — EDA

**Tom:** acolhedor e calmo. Azul-índigo suave comunica serenidade. Zero culpabilização — linguagem de ajuda entre pares.
**Fonte título:** `"Cambria", "Georgia", serif`
**Fonte corpo:** `"Segoe UI", system-ui, sans-serif`
**Símbolo:** círculo de pessoas (elo/aberto)
**Cor de fundo suave:** `#eef2ff`
**Faixa de identidade:** gradiente `#4f5bd5` → `#93c5fd`
**Linguagem:** usar "você não está sozinho", "aqui é seguro", "sua privacidade é protegida". Jamais termos como "vício", "dependente", "doença".

---

## G6 — Vida no Controle

**Tom:** local e frugal. Laranja de mercado + verde de economia. O mercado regional é o patrocinador.
**Fonte título:** `"Trebuchet MS", "Tahoma", system-ui`
**Fonte corpo:** `"Tahoma", "Segoe UI", system-ui`
**Símbolo:** cupom fiscal + etiqueta de preço + carrinho
**Cor de fundo suave:** `#fff7ed`
**Faixa de identidade:** gradiente `#ea580c` → `#16a34a`

---

## Checklist de Aplicação

- [ ] `<link>` do `temas.css` antes de qualquer CSS
- [ ] `class="tema-gN"` na tag `<body>`
- [ ] Nenhuma cor hardcoded (`#e94560`, `#1a1a2e`, etc.) no CSS dos MVPs — usar `var(--accent)`, `var(--tinta)`, etc.
- [ ] Faixa de 6px no topo dos slides (já no `temas.css` via `::before` em `.reveal .slides section`)
- [ ] Nome do grupo + cor nos Chips / badges de cada deck
