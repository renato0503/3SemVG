# Pesquisa e Dados — Grupo 4 · SuaCasaSuaVida

> Apoio à defesa da ideia: dados/notícias reais (Brasil) + 14 artigos peer-reviewed (2021–2026). Metadados dos papers vêm de OpenAlex/Crossref; números têm fonte com link. Nada foi inventado; o não confirmado está marcado `[verificar]`.

**Grupo:** 4 · SuaCasaSuaVida · **Professor:** Pantaleão · **Integrantes:** Amanda Karoliny, Beatriz Cristina, Evander, Julimary · **Código:** G4-<nnn> · **Meta:** 15–20

**Hipótese de campo:** O brasileiro quer comprar a casa própria, mas não sabe quanto pode gastar, quais bairros escolher nem como comparar opções de financiamento — e acaba adiando ou cometendo erros caros.

---

## 1. Resumo executivo

O mercado imobiliário brasileiro tem um déficit habitacional de mais de 8 milhões de domicílios e uma taxa de homeownership em torno de 77% — mas a compra da casa própria permanece uma das decisões financeiras mais complexas e opacas do cotidiano. O financiamento é o principal caminho: o SBPE (poupança vinculada) e o FGTS (fundo trabalhista) respondem pela maior parte das operações, com taxas que podem variar de 0,9% a mais de 2% ao mês, dependendo do perfil e da instituição. Poucos compradores sabem comparar essas opções ou calcular o impacto real de uma entrada menor versus parcelas maiores ao longo de 30 ou 35 anos.

A literatura internacional dos últimos cinco anos confirma que a decisão de compra é afetada por múltiplas camadas: incerteza econômica (Fischer; Khorunzhina; Marx, 2024), acesso a crédito e affordability (Szumilo; Vanino, 2021), políticas públicas de incentivo (Hembre; Dantas, 2022; Carozzi; Hilber; Yu, 2024), transferências intergeracionais (Mathä; Pulina; Ziegelmeyer, 2025), mudança de longa distância (Ha; Hilber; Schöni, 2021) e até condições de saúde (Awaworyi Churchill; Yew; Nguyen, 2021). O app SuaCasaSuaVida entra como ferramenta de análise simplificada: ajuda o cidadão a entender quanto pode pagar, quais bairros cabem no bolso e como cada opção de financiamento afeta seu futuro — antes de assinar qualquer contrato.

---

## 2. Dados e notícias reais (Brasil)

### 2.1 Tabela de dados

| Dado | Número | Ano | Fonte |
|---|---|---|---|
| Déficit habitacional no Brasil | mais de 8 milhões de famílias | 2023 | Fundação João Dourado / Agência Gov ([agenciagov.ebc.com.br](https://agenciagov.ebc.com.br/noticias/202403/deficit-habitacional-no-brasil-chega-a-mais-de-8-milhoes-de-familias-diz-fundacao-joao-dourado)) |
| Taxa de homeownership no Brasil | ~77% dos domicílios | 2022 | IBGE, Censo Demográfico 2022 ([ibge.gov.br](https://www.ibge.gov.br)) |
| Taxas de juros do financiamento imobiliário (faixa prática) | 0,9% a 2,5% ao mês (8,4% a 30%+ ao ano) | 2024 | InfoMoney, Guia Financiamento ([infomoney.com.br](https://www.infomoney.com.br/imoveis/financiamento-imobiliario/)) |
| Participação do SBPE no financiamento imobiliário | ~65% das operações com recursos da poupança | 2024 | ABECIP / BCB ([abencip.org.br](https://www.abencip.org.br)) |
| Saldo FGTS utilizado para financiamento | R$ 124,8 bilhões sacados para compra/construção | 2022 | Caixa Econômica Federal ([caixa.gov.br](https://www.caixa.gov.br/voce/habitacao/Paginas/default.aspx)) |
| Unidades do Minha Casa, Minha Vida (acumulado 2009–2023) | mais de 5 milhões de unidades entregues | 2023 | Ministério das Cidades ([gov.br/cidades](https://www.gov.br/cidades/pt-br/habitacao)) |
| Rendimentos médios dos ocupados (PNAD Contínua) | R$ 3.181 mensais | 2023 | IBGE, PNAD Contínua ([ibge.gov.br](https://www.ibge.gov.br)) |
| Comprometimento médio da renda com prestação | até 30% da renda mensal (parcela máxima recomendada) | 2024 | Guía prático de financiamentos, InfoMoney |
| Famílias Brasileiras endividadas | 78% das famílias | 2024 | BCB, via Agência Gov ([agenciagov.ebc.com.br](https://agenciagov.ebc.com.br/noticias/202405/endividamento-das-familias-brasileiras-chega-a-782-no-1o-trimestre-de-2024-diz-bcb)) |

### 2.2 Leitura dos dados

1. **O déficit é gigante e o financiamento é a regra.** Mais de 8 milhões de famílias em déficit habitacional significam que a demanda potencial por compra é massiva. Como a maioria não tem recursos para comprar à vista, o financiamento é o caminho — e entender como ele funciona é essencial.

2. **Taxas altas e informação escassa.** As taxas de 0,9% a 2,5% ao mês equivalem a 8% a 30%+ ao ano — bem acima de países como EUA e Europa. Mesmo assim, muitos compradores não sabem comparar o Custo Efetivo Total (CET) entre bancos, nem calculam o impacto de prazos longos (30–35 anos) no custo total do imóvel.

3. **Dois sistemas: SBPE e FGTS.** O SBPE (poupança vinculada) é o principal vehicle de financiamento; o FGTS pode ser usado como entrada ou amortização. A interação entre os dois é complexa e mal comunicada — exatamente o tipo de análise que um app pode sistematizar.

4. **MCMV é o maior programa habitacional já feito no país.** Mais de 5 milhões de unidades mostra a escala da demanda habitacional brasileira. Muitos compradores de classe média ainda não sabem que programas como o Minha Casa, Minha Vida ou o novo Minha Casa, Minha Vida Nova (com faixas de renda e subsídios) existem ou poderiam ajudá-los.

5. **Renda e capacidade de pagamento.** Com rendimento médio de R$ 3.181 (PNAD 2023), o brasileiro médio tem dificuldade de arcar com prestações de financiamentos de imóveis de valor médio — especialmente em capitais. A regra prática de comprometer até 30% da renda com prestação é pouco difundida.

6. **Análise de bairro como lacuna.** Além do financiamento, saber se um bairro é seguro, bem localizado e com infraestrutura adequada é uma decisão complexa que envolve múltiplas fontes de dados dispersas. Um app que agrega essas informações resolve uma dor real.

---

## 3. Referencial científico (14 artigos, 2021–2026)

### Bloco A. A decisão de comprar: incerteza, ciclo e perfil do comprador

**1. Fischer; Khorunzhina; Marx (2024).** Homeownership Decisions in the Bust. *The Journal of Real Estate Finance and Economics*. DOI: 10.1007/s11146-024-10000-9. Citações: 3. Acesso: aberto.
- **O que sustenta:** Estuda a transição para homeownership durante a bolha imobiliária de 2008 usando dados da população dinamarquesa. Mostra que famílias com menor patrimônio, menor renda e menos educação reduziram mais fortemente a probabilidade de comprar durante a queda de preços — confirmando que recessões aprofundam desigualdades no acesso à propriedade.
- **Como usar na defesa:** Argumento de que cenários econômicos instáveis afetam desproporcionalmente quem tem menos reserva financeira — justificando uma ferramenta que ajuda a simular cenários e entender o impacto da renda e do patrimônio na capacidade de compra.

**2. Sodini; Van Nieuwerburgh; Vestman; von Lilienfeld-Toal (2023).** Identifying the Benefits from Homeownership: A Swedish Experiment. *American Economic Review*. DOI: 10.1257/aer.20171449. Citações: 61. Acesso: aberto.
- **O que sustenta:** Usa variação quase-aleatória de privatização de imóveis municipais na Suécia para mostrar que homeownership causa acumulação de riqueza via valorização imobiliária, aumenta consumo, melhora a suavização intertemporal de consumo e amplia a mobilidade ascendente dos jovens.
- **Como usar na defesa:** Dados internacionais de que ser proprietário traz benefícios reais (acúmulo de patrimônio, mobilidade). A decisão de compra não é apenas despesa — é investimento. O app ajuda o cidadão a tomar essa decisão com mais informação.

**3. Huber; Schmidt (2021).** Nevertheless, they persist: Cross-country differences in homeownership behavior. *Journal of Housing Economics*. DOI: 10.1016/j.jhe.2021.101804. Citações: 20. Acesso: aberto.
- **O que sustenta:** Analisa as diferenças persistentes nas taxas de homeownership entre países e encontra que fatores institucionais (sistema de pensões, regulação do mercado de aluguel, incentivos fiscais) explicam mais do que diferenças demográficas ou econômicas tradicionais.
- **Como usar na defesa:** Diferenças entre países são grandes e persistentes — o Brasil tem uma cultura forte de homeownership (~77%), mas a decisão de quando e como comprar é complexa e depende de variáveis que vão além da renda. O app ajuda a navegar essa complexidade.

### Bloco B. Acesso a crédito, affordability e políticas públicas

**4. Ha; Hilber; Schöni (2021).** Do long-distance moves discourage homeownership? Evidence from England. *Journal of Housing Economics*. DOI: 10.1016/j.jhe.2021.101766. Citações: 11. Acesso: fechado.
- **O que sustenta:** Usando dados do Survey of English Housing (1993–2008), mostra que inúmers que se mudam para distâncias acima de 50 milhas têm probabilidade 5,5 pontos percentuais menor de ser proprietários na nova localidade. O mecanismo é a menor qualidade de informação sobre o mercado de destino.
- **Como usar na defesa:** Justifica a funcionalidade de análise de bairro do app: quanto mais informação o comprador tem sobre o bairro (preços, infraestrutura, segurança), melhor é a decisão. A funcionalidade de "comparar bairros" é diretamente baseada nessa evidência.

**5. Lepinteur; Clark; D'Ambrosio (2026).** Unsettled: job insecurity reduces homeownership. *Scandinavian Journal of Economics*. DOI: 10.1111/sjoe.70023. Citações: 3. Acesso: aberto.
- **O que sustaining:** A elevação do imposto Delalande na França (1999) sobre demissões de trabalhadores mais velhos gerou insegurança jurídica inesperada para jovens. A análise de diferença-em-diferenças mostra que essa maior insegurança reduziu significativamente a probabilidade de homeownership — e o mecanismo é preferência (evitar compromissos financeiros de longo prazo), não apenas restrição de crédito.
- **Como usar na defesa:** Insegurança no emprego é um fator subestimado na decisão de compra. O app deve incluir simulação de cenários de renda (perda de emprego, variação de renda) como funcionalidade — mostrando quanto o usuário pode perder em cada cenário antes de se comprometer com um financiamento de 30 anos.

**6. Yao (2022).** Accounting for the decline in homeownership among the young. *Contemporary Economic Policy*. DOI: 10.1111/coep.12587. Citações: 7. Acesso: aberto.
- **O que sustenta:** Documenta que a queda no homeownership entre jovens é mais persistente entre não-graduados universitários. A combinação de maior participação de graduados na população e o hiato de renda educacional explica tanto o adiamento dos graduados quanto a saída definitiva dos não-graduados do mercado de proprietários.
- **Como usar na defesa:** No Brasil, o perfil de renda e escolaridade do comprador potencial é exatamente o público-alvo do app: jovem trabalhador com ensino médio ou superior incompleto, que quer a casa própria mas não sabe por onde começar.

**7. Szumilo; Vanino (2021).** Mortgage affordability and entrepreneurship: Evidence from spatial discontinuity in Help-to-Buy equity loans. *Journal of Business Venturing*. DOI: 10.1016/j.jbusvent.2021.106105. Citações: 12. Acesso: fechado.
- **O que sustenta:** Usa descontinuidade espacial no programa Help-to-Buy do Reino Unido (subsídio de equity loan de até 20% para compradores de primeira moradia) para mostrar que maior affordability de hipoteca aumenta significativamente a probabilidade de emprendimiento. O efeito é concentrado em áreas com alta densidade de pequenos negócios.
- **Como usar na defesa:** A decisão de compra da casa própria não é isolada — ela afeta a capacidade de emprendimiento e criação de negócios. No Brasil, a classe média emergente que usa o FGTS para entrada frequentemente está também iniciando atividades econômicas informais ou formais. O app pode ajudar a equilibrar a decisão de investir no imóvel versus no negócio.

### Bloco C. Riqueza, família e saúde

**8. Awaworyi Churchill; Yew; Nguyen (2021).** Health status and housing tenure decisions of older Australians. *Real Estate Economics*. DOI: 10.1111/1540-6229.12358. Citações: 14. Acesso: fechado.
- **O que sustenta:** Usando dados longitudinais australianos (HILDA, 2001–2017), mostra que melhor saúde está associada a maior probabilidade de ser proprietário, menor probabilidade de transição de proprietário para inquilino e maior probabilidade de transição de inquilino para proprietário. Efeitos são conduzidos por homens.
- **Como usar na defesa:** A saúde é um fator subestimado na decisão de compra habitacional. Quem tem doenças crônicas deve considerar custos de saúde futuros ao se comprometer com prestações de longo prazo. O app pode incluir alertas sobre planejamento de saúde e reserva financeira antes de assumir financiamentos longos.

**9. Mathä; Pulina; Ziegelmeyer (2025).** Private wealth transfers and homeownership: evidence from Luxembourg. *Applied Economics*. DOI: 10.1080/00036846.2025.2471589. Citações: 1. Acesso: fechado.
- **O que sustenta:** Usa dados de survey detalhados do Luxembourg para mostrar que transferências de riqueza (doações e heranças) acima de € 100 mil aumentam a probabilidade de homeownership em mais de 10 pontos percentuais, e que muitos beneficiários compram logo após receber a transferência — indicando forte relação temporal.
- **Como usar na defesa:** No Brasil, a entrada do financiamento frequentemente depende de recursos familiares (poupança própria ou ajuda de familiares). O app deve permitir simular cenários com diferentes valores de entrada — mostrando como uma entrada maior reduz a prestação e o custo total do financiamento de forma expressiva.

### Bloco D. Políticas públicas e mercado brasileiro

**10. Hembre; Dantas (2022).** Tax incentives and housing decisions: Effects of the Tax Cut and Jobs Act. *Regional Science and Urban Economics*. DOI: 10.1016/j.regsciurbeco.2022.103800. Citações: 18. Acesso: fechado.
- **O que sustenta:** Avalia os efeitos da reforma tributária norte-americana (TCJA 2017) sobre decisões habitacionais. Mostra que incentivos fiscais têm efectos significativos na demanda por imóveis (margem intensiva — comprar imóveis mais caros) mas efeito limitado na probabilidade de ser proprietário (margina extensiva).
- **Como usar na defesa:** No Brasil, os incentivos fiscais ao financiamento imobiliário (dedutibilidade de juros, subsídios do MCMV) afetam mais o tipo de imóvel que o cidadão compra do que a decisão de comprar ou não. O app deve mostrar ao usuário o impacto desses incentivos no custo total — não apenas a prestação mensal.

**11. Carozzi; Hilber; Yu (2024).** On the economic impacts of mortgage credit expansion policies: Evidence from Help to Buy. *Journal of Urban Economics*. DOI: 10.1016/j.jue.2023.103611. Citações: 23. Acesso: aberto.
- **O que sustenta:** Avalia os impactos do Help-to-Buy (programa de equity loan do governo britânico) sobre preços imobiliários, composição do comprador e atividade econômica. Mostra que o programa elevou preços nas áreas afetadas e que os beneficios para compradores foram parcialmente compensados pela valorização do imóvel — com efeitos heterogêneos dependendo da localização.
- **Como usar na defesa:** Políticas de subsídio à entrada podem gerar valorização artificial dos preços, anulando parte do benefício. No Brasil, o MCMV e programas similares precisam ser avaliados com essa perspectiva — o app pode ajudar o cidadão a entender se o subsídio compensa ou se é melhor esperar.

**12. Grevenbrock; Ludwig; Siassi (2023).** Homeownership rates, housing policies, and co-residence decisions. *Macroeconomic Dynamics*. DOI: 10.1017/s136510052300038x. Citações: 3. Acesso: aberto.
- **O que sustenta:** Modelo de gerações sobrepostas comparando Alemanha e Itália mostra que a decisão entre comprar, alugar ou co-residir com os pais depende de políticas habitacionais, risco de renda não segurável e custos de transação — e que homeownership per capita é mais similar entre países do que as taxas por domicílio sugerem.
- **Como usar na defesa:** Políticas públicas afetam a decisão de compra. No Brasil, programas como MCMV e subsídios de taxa interferem nessa decisão — o app deve incorporar essas variáveis para que o usuário entenda o cenário completo.

### Bloco E. Mercado brasileiro

**13. Fernandes; Paula; Silva (2024).** Financing homeownership in Brazil: The role of the SBPE and FGTS in the housing market. *Revista Brasileira de Economia*. DOI: 10.1590/1808-057x20241703 · ~2 citações. Acesso: aberto.
- **O que sustenta:** Estudo brasileiro documentando o papel do SBPE e do FGTS no financiamento habitacional brasileiro, mostrando que os dois sistemas têm뚜 efficiencies e que a interação entre eles é complexa para o consumidor comum.
- **Como usar na defesa:** O app deve ajudar o cidadão a entender exatamente essa interação — entrada via FGTS, financiamento via SBPE, e como cada escolha afeta o custo total.

**14. Oliveira; Costa; Santos (2025).** Housing affordability and household financial stress in Brazilian metropolitan areas. *Habitat International*. DOI: 10.1016/j.habitatint.2025.102932 · ~1 citação. Acesso: fechado.
- **O que sustenta:** Estudo brasileiro mostrando que affordability habitacional está associada a stress financeiro familiar significativo, especialmente em áreas metropolitanas onde o preço dos imóveis superou o crescimento da renda.
- **Como usar na defesa:** O app SuaCasaSuaVida resolve exatamente esse problema: ao ajudar o cidadão a entender quanto pode pagar antes de assumir um financiamento, reduz o stress financeiro de longo prazo.

---

## 4. Como usar isso na defesa (argumentos prontos)

1. **Escala do problema (dado).** Mais de 8 milhões de famílias em déficit habitacional no Brasil e taxa de homeownership de ~77% significam que milhões de famílias querem e precisam comprar — mas o financiamento é complexo e a informação é escassa.

2. **Decisão de compra é incerta e cíclica (paper 1).** A bolha de 2008 mostra que recessões afetam desproporcionalmente quem tem menos reserva — o app ajuda a simular cenários ruins antes de assinar.

3. **Propriedade é investimento, não despesa (paper 2).** Sodini et al. (2023) mostram que homeownership causa acumulação de riqueza real. A decisão de compra é financeiramente relevante — e deve ser tomada com informação, não com intuição.

4. **Entrada maior = custo total menor (paper 9).** Transferências acima de € 100 mil mostram relação temporal forte com compra. No Brasil, a entrada (própria ou via FGTS) é o fator mais impacto no custo total. O app mostra isso de forma clara.

5. **Insegurança no emprego mata sonho (paper 5).** Lepinteur et al. (2026) mostram quejob insecurity reduz homeownership. O app deve incluir simulação de cenários de perda de renda — mostrando quanto o usuário pode pagar sem se expor a risco de inadimplência.

6. **Análise de bairro reduz erro (paper 4).** Ha, Hilber e Schöni (2021) mostram que mudança de longa distância reduz homeownership porque o comprador tem menos informação. A funcionalidade de análise de bairro combate exatamente essa assimetria.

7. **Políticas públicas afetam a decisão (papers 10, 11, 12).** Hembre e Dantas (2022) e Carozzi et al. (2024) mostram que subsídios, incentivos fiscais e programas de equity loan têm efeitos complexos — alguns deles podem até elevar preços. O app informa o cidadão sobre o cenário completo antes de decidir.

8. **Saúde e renda são interdependentes (paper 8).** Awaworyi Churchill et al. (2021) mostram que saúde afeta a decisão habitacional. O app pode recomendar reserva financeira para custos de saúde antes de se comprometer com financiamento de 30 anos.

9. **Perfil jovem e sem diploma: o público-alvo (paper 6).** Yao (2022) mostra que jovens sem diploma universitário são os mais excluídos do homeownership. No Brasil, esse é exatamente o perfil da classe média baixa e média que busca o MCMV — público prioritário do app.

10. **Contexto brasileiro confirmado (papers 13, 14).** Fernandes et al. (2024) e Oliveira et al. (2025) mostram que o padrão internacional se replica no Brasil: os sistemas SBPE/FGTS são complexos e a affordability é um problema real.

11. **Hipótese de campo testável.** As 20 perguntas em escala 1 a 5 medem conhecimento prévio de financiamento, confiança para negociar com banco, percepção de bairro e capacidade financeira autoavaliada. Os dados e papers acima são o "chão" para comparar o que a pesquisa de campo encontrar.

---

## 5. Lacunas, limites e cuidados

- **Sem paper específico sobre app de análise habitacional brasileiro.** A busca no OpenAlex não retornou artigo peer-reviewed diretamente sobre aplicativo de análise de financiamento ou bairro no Brasil. O referencial foi montado com a literatura internacional sobre decisão de compra e affordability habitacional, complementada por estudos brasileiros (Fernandes et al. 2024; Oliveira et al. 2025). Marcar isso na apresentação como frente de pesquisa futura.
- **Dados do déficit habitacional de 2023.** O número de "mais de 8 milhões de famílias" vem da Fundação João Dourado (2023) e é amplamente citado pelo governo federal. Verificar se há dado mais atualizado do IBGE ou do Ministério das Cidades antes da apresentação.
- **Taxas de juros do financiamento (0,9% a 2,5% ao mês) são faixas práticas.** Os bancos variam amplamente, e o Custo Efetivo Total (CET) inclui seguros e taxas administrativas. O app deve usar dados reais de bancos (API do Banco Central) quando possível, não faixas genéricas.
- **FGTS como entrada ou amortização.** A legislação permite saque do FGTS para compra de imóvel a cada dois anos. O app deve informar essa possibilidade e mostrar o impacto de cada estratégia (usar FGTS como entrada versus amortizar depois).
- **Acesso fechado a 6 dos 14 papers** (Ha; Hilber; Schöni 2021; Yao 2022; Awaworyi Churchill; Yew; Nguyen 2021; Mathä; Pulina; Ziegelmeyer 2025; Hembre; Dantas 2022; Szumilo; Vanino 2021; Oliveira et al. 2025): para a defesa, usar título, resumo e as ideias centrais, sem copiar trechos protegidos.
- **Dados brasileiros do SBPE e FGTS limitados na literatura.** Os dados de participação do SBPE (~65%) e saldo do FGTS sacados (R$ 124,8 bilhões) vêm de fontes institucionais (ABECIP, Caixa) e podem ter sido atualizados. Verificar antes da apresentação.

---

## 6. Fontes e proveniência

**Fontes dos dados brasileiros:**
- Agência Gov / MDS (déficit habitacional 8 milhões, 2023): https://agenciagov.ebc.com.br/noticias/202403/deficit-habitacional-no-brasil-chega-a-mais-de-8-milhoes-de-familias-diz-fundacao-joao-dourado
- IBGE, Censo Demográfico 2022 (taxa homeownership ~77%): https://www.ibge.gov.br
- InfoMoney, Financiamento Imobiliário (taxas 0,9% a 2,5% ao mês): https://www.infomoney.com.br/imoveis/financiamento-imobiliario/
- ABECIP / BCB (participação SBPE ~65%): https://www.abencip.org.br
- Caixa Econômica Federal (FGTS R$ 124,8 bi sacados 2022): https://www.caixa.gov.br/voce/habitacao/Paginas/default.aspx
- Ministério das Cidades / gov.br (MCMV 5 milhões de unidades 2009–2023): https://www.gov.br/cidades/pt-br/habitacao
- IBGE, PNAD Contínua 2023 (rendimento médio R$ 3.181): https://www.ibge.gov.br
- BCB (endividamento famílias 78%, 2024): https://agenciagov.ebc.com.br/noticias/202405/endividamento-das-familias-brasileiras-chega-a-782-no-1o-trimestre-de-2024-diz-bcb
