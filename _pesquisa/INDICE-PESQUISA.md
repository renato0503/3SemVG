# Índice de Pesquisa — Customer Discovery (3SemVG)

Índice mestre dos materiais de **defesa da ideia** dos 6 grupos: dados e notícias reais do Brasil
+ **12 artigos científicos peer-reviewed por grupo** (2021–2026) e a **apresentação** de cada grupo.

**Feito em:** 21/09/2026 · **Ferramenta:** `_pesquisa/openalex_busca.py`
**APIs:** OpenAlex (`https://api.openalex.org/works`) e Crossref (`https://api.crossref.org/works`)
— as mesmas do projeto `D:\Dev\EscritaArtigos`. Cortesia `mailto=renato.rosa@unifacc.edu.br`;
retry com backoff no HTTP 429.

> Regra de honestidade: metadados dos papers vêm da API; números e notícias têm fonte com link.
> Nada foi inventado. O que não foi confirmado está marcado `[verificar]` no arquivo do grupo.

---

## Visão geral

| Grupo | App | Prof. | Pesquisa | Slides | Papers | Buscas brutas |
|---|---|---|---|---|---|---|
| 1 | Dinheiro na Mão | Olivia | `Grupo1-DinheiroNaMao/Pesquisa-Dados.md` | `Slides-DinheiroNaMao.html` / pdf (14 pág.) | 12 | `saidas/G1_*` |
| 2 | A Definir | Olivia | pendente | — | — | — |
| 3 | Quita.AI | Péricles | `Grupo3-QuitaAI/Pesquisa-Dados.md` | `Slides-QuitaAI.html` / pdf (13 pág.) | 12 | `saidas/G3_*` |
| 4 | SuaCasaSuaVida | Pantaleão | `Grupo4-SuaCasaSuaVida/Pesquisa-Dados.md` | `Slides-SuaCasaSuaVida.html` / pdf (14 pág.) | 12 | `saidas/G4_*` |
| 5 | EDA | Renato | `Grupo5-EDA/Pesquisa-Dados.md` | `Slides-EDA.html` / pdf (17 pág.) | 12 | `saidas/G5_*` |
| 6 | Vida no Controle | Renato | `Grupo6-VidaNoControle/Pesquisa-Dados.md` | `Slides-VidaNoControle.html` / pdf (12 pág.) | 12 | `saidas/G6_*` |

Total: **60 artigos** (peer-reviewed, 2021–2026) e **5 apresentações** de 12 slides cada (G2 pendente).

> ✅ **Re-sincronizado em 22/09/2026** a partir dos autores/títulos reais dos
> `Grupo<N>/Pesquisa-Dados.md` (metadados da API OpenAlex/Crossref). As listas abaixo agora batem
> com os arquivos de grupo (antes os nomes de autores/títulos estavam trocados, embora os DOIs
> estivessem certos).

---

## G1 · Dinheiro na Mão (Prof. Olivia)

**Hipótese:** a maior dor é a desorganização das contas e o aperto do orçamento; pessoas já adiaram ou deixaram de pagar algo por não saber organizar datas, e buscariam ajuda se ela fosse oferecida de forma presencial e confiável.
**Dados de destaque:** 40,6 milhões de famílias no CadÚnico (2025); 76% dos inadimplentes têm nome no SPC/Serasa por gastos do dia a dia (2025); 85% dos domicílios urbanos com internet (TIC Domicílios 2024); 29 milhões de não usuários de internet, 16 milhões nas classes DE.

1. Hasan; Le; Hoque (2021). How does financial literacy impact on inclusive finance? *Financial Innovation*. DOI: 10.1186/s40854-021-00259-9 · Citações: 346
2. Bruhn; Garber; Koyama; Zia (2025). The Long-Term Impact of High School Financial Education: Evidence from Brazil. *The Review of Economics and Statistics*. DOI: 10.1162/rest.a.1689 · Citações: 1
3. Morgana Cassola; Becker; Vieira (2026). The impact of financial education in schools on the financial literacy of Brazilian students. *Social Sciences & Humanities Open*. DOI: 10.1016/j.ssaho.2026.102748 · Citações: 1
4. Chong; Sabri; Magli; Abd Rahim et al. (2021). The Effects of Financial Literacy, Self-Efficacy and Self-Coping on Financial Behavior of Emerging Adults. *Journal of Asian Finance, Economics and Business*. DOI: 10.13106/jafeb.2021.vol8.no3.0905 · Citações: 54
5. Lone; Bhat (2022). Impact of financial literacy on financial well-being: a mediational role of financial self-efficacy. *Journal of Financial Services Marketing*. DOI: 10.1057/s41264-022-00183-8 · Citações: 184
6. Mishra; Agarwal; Sharahiley; Kandpal (2024). Digital Financial Literacy and Its Impact on Financial Decision-Making of Women. *Journal of Risk and Financial Management*. DOI: 10.3390/jrfm17100468 · Citações: 91
7. Kamble; Mehta; Rani (2023). Financial Inclusion and Digital Financial Literacy: Do they Matter for Financial Well-being? *Social Indicators Research*. DOI: 10.1007/s11205-023-03264-w · Citações: 86
8. Abdallah; Tfaily; Harraf (2024). The impact of digital financial literacy on financial behavior: customers' perspective. *Competitiveness Review*. DOI: 10.1108/cr-11-2023-0297 · Citações: 78
9. Fan; Lim; Lee (2021). Young adults' financial advice-seeking behavior: The roles of parental financial socialization. *Family Relations*. DOI: 10.1111/fare.12625 · Citações: 24
10. Palmer; Richardson; Goetz; Futris et al. (2021). Financial Self-Efficacy: Mediating the Association Between Self-Regulation and Financial Management Behaviors. *Journal of Financial Counseling and Planning*. DOI: 10.1891/jfcp-19-00092 · Citações: 19
11. Mancone; Tosti; Corrado; Spica et al. (2024). Youth, money, and behavior: the impact of financial literacy programs. *Frontiers in Education*. DOI: 10.3389/feduc.2024.1397060 · Citações: 52
12. Vieira; Matheis; Rosenblum (2023). Financial preparation for retirement: multidimensional analysis of the perception of Brazilians. *Revista Contabilidade & Finanças*. DOI: 10.1590/1808-057x20221705.en · Citações: 12

---

## G3 · Quita.AI (Prof. Péricles)

**Hipótese:** os gastos por impulso desorganizam o orçamento da família, e as pessoas se motivam mais quando o controle vira um jogo com metas e recompensas — inclusive a família jogando junta.
**Dados de destaque:** 71 milhões de endividados no Brasil (2025); 68% não conseguem poupar; 93% têm smartphone; 67% dos jovens já tiveram compra por impulso.

1. Kimiagari & Malafe (2021). The role of cognitive and affective responses in the relationship between internal and external stimuli on online impulse buying behavior. *Journal of Retailing and Consumer Services*. DOI: 10.1016/j.jretconser.2021.102567 · Citações: 277
2. Nyrhinen; Sirola; Koskelainen; Munnukka et al. (2023). Online antecedents for young consumers' impulse buying behavior. *Computers in Human Behavior*. DOI: 10.1016/j.chb.2023.108129 · Citações: 105
3. Bitrián; Buil; Catalán (2021). Making finance fun: the gamification of personal financial management apps. *International Journal of Bank Marketing*. DOI: 10.1108/ijbm-02-2021-0074 · Citações: 88
4. Pal; Indapurkar; Gupta (2021). Gamification of financial applications and financial behavior of young investors. *Young Consumers*. DOI: 10.1108/yc-10-2020-1240 · Citações: 27
5. Chen; Zhi; Chen (2022). How active and passive social media use affects impulse buying in Chinese college students? The roles of emotional responses, gender, materialism and self-control. *Frontiers in Psychology*. DOI: 10.3389/fpsyg.2022.1011337 · Citações: 42
6. Artadita & Firmialy (2024). How Does Self-Control Moderate Shopping Enjoyment and Impulse Buying Among Generation Z Online Gamers? *Binus Business Review*. DOI: 10.21512/bbr.v15i2.10697 · Citações: 1
7. Darrat; Darrat; Darrat (2022). Does wanting more lead to losing control? Examining the psychological drivers of compulsive buying. *Young Consumers*. DOI: 10.1108/yc-01-2022-1453 · Citações: 26
8. Ramadan; Farah; Bou Saada (2021). Fooled in the relationship: How Amazon Prime members' sense of self-control counter-intuitively reinforces impulsive buying behavior. *Journal of Consumer Behaviour*. DOI: 10.1002/cb.1960 · Citações: 35
9. Benner; Schöbel; Janson; Leimeister (2022). How to Achieve Ethical Persuasive Design: A Review and Theoretical Propositions for Information Systems. *AIS Transactions on Human-Computer Interaction*. DOI: 10.17705/1thci.00179 · Citações: 31
10. Kakkar; Dugar; Gupta (2022). Decoding the sustainable consumer: what yoga psychology tells us about self-control and impulsive buying? *South Asian Journal of Business Studies*. DOI: 10.1108/sajbs-03-2020-0083 · Citações: 9
11. Lai & Langley (2023). Playful finance: Gamification and intermediation in FinTech economies. *Geoforum*. DOI: 10.1016/j.geoforum.2023.103848 · Citações: 50
12. van der Heide & Želinský (2021). 'Level up your money game': an analysis of gamification discourse in financial services. *Journal of Cultural Economy*. DOI: 10.1080/17530350.2021.1882537 · Citações: 51

---

## G4 · SuaCasaSuaVida (Prof. Pantaleão)

**Hipótese:** a maior dor não é o preço do imóvel em si, mas a falta de clareza sobre o bairro e sobre a própria capacidade de pagamento — as pessoas adiam a compra por medo de assumir uma dívida longa.
**Dados de destaque:** déficit habitacional de 8 milhões de domicílios (FJP 2022); taxa de homeownership no Brasil ~77%; juros do financiamento habitacional de 0,9% a 2,5% ao mês (SBPE); 1,3 milhão de moradidades do MCMV (2023).

1. Fischer; Khorunzhina; Marx (2024). Homeownership Decisions in the Bust. *The Journal of Real Estate Finance and Economics*. DOI: 10.1007/s11146-024-10000-9 · Citações: 2
2. Sodini; Van Nieuwerburgh; Vestman; von Lilienfeld-Toal (2023). Identifying the Benefits from Homeownership: A Swedish Experiment. *American Economic Review*. DOI: 10.1257/aer.20171449 · Citações: 61
3. Grevenbrock; Ludwig; Siassi (2023). Homeownership rates, housing policies, and co-residence decisions. *Macroeconomic Dynamics*. DOI: 10.1017/s136510052300038x · Citações: 3
4. Huber; Schmidt (2021). Nevertheless, they persist: Cross-country differences in homeownership behavior. *Journal of Housing Economics*. DOI: 10.1016/j.jhe.2021.101804 · Citações: 20
5. Ha; Hilber; Schöni (2021). Do long-distance moves discourage homeownership? Evidence from England. *Journal of Housing Economics*. DOI: 10.1016/j.jhe.2021.101766 · Citações: 11
6. Lepinteur; Clark; D'Ambrosio (2026). Unsettled: job insecurity reduces homeownership. *Scandinavian Journal of Economics*. DOI: 10.1111/sjoe.70023 · Citações: 3
7. Yao (2022). Accounting for the decline in homeownership among the young. *Contemporary Economic Policy*. DOI: 10.1111/coep.12587 · Citações: 7
8. Awaworyi Churchill; Yew; Nguyen (2021). Health status and housing tenure decisions of older Australians. *Real Estate Economics*. DOI: 10.1111/1540-6229.12358 · Citações: 14
9. Szumilo; Vanino (2021). Mortgage affordability and entrepreneurship: Evidence from spatial discontinuity in Help-to-Buy equity loans. *Journal of Business Venturing*. DOI: 10.1016/j.jbusvent.2021.106105 · Citações: 12
10. Hembre; Dantas (2022). Tax incentives and housing decisions: Effects of the Tax Cut and Jobs Act. *Regional Science and Urban Economics*. DOI: 10.1016/j.regsciurbeco.2022.103800 · Citações: 18
11. Carozzi; Hilber; Yu (2024). On the economic impacts of mortgage credit expansion policies: Evidence from Help to Buy. *Journal of Urban Economics*. DOI: 10.1016/j.jue.2023.103611 · Citações: 23
12. Mathä; Pulina; Ziegelmeyer (2025). Private wealth transfers and homeownership: evidence from Luxembourg. *Applied Economics*. DOI: 10.1080/00036846.2025.2471589 · Citações: 1

---

## G5 · EDA — Endividados Anônimos (Prof. Renato)

**Hipótese:** muitas pessoas gastam por impulso, têm dificuldade de falar sobre dívidas por vergonha e não encontram apoio — o ciclo do endividamento se repete. Um espaço anônimo de acolhimento entre pares pode reduzir esse isolamento.
**Dados de destaque:** 78% das famílias brasileiras endividadas (BCB 2025); 76,2 milhões de inadimplentes (Serasa 2025); relação bidirecional entre dívida e saúde mental bem documentada; 2.700 atendimentos/dia do CVV.

1. Müller; Laskowski; Trotzke; Ali et al. (2021). Proposed diagnostic criteria for compulsive buying-shopping disorder: A Delphi expert consensus study. *Journal of Behavioral Addictions*. DOI: 10.1556/2006.2021.00013 · Citações: 96
2. Mason; Zamparo; Marini; Ameen (2022). Glued to your phone? Generation Z's smartphone addiction and online compulsive buying. *Computers in Human Behavior*. DOI: 10.1016/j.chb.2022.107404 · Citações: 136
3. Thomas; Schmid; Kessling; Wolf et al. (2024). Stress and compulsive buying-shopping disorder: A scoping review. *Comprehensive Psychiatry*. DOI: 10.1016/j.comppsych.2024.152482 · Citações: 33
4. De Pasquale; Morando; Platania; Sciacca et al. (2022). The Roles of Anxiety and Self-Esteem in the Risk of Eating Disorders and Compulsive Buying Behavior. *International Journal of Environmental Research and Public Health*. DOI: 10.3390/ijerph192316245 · Citações: 27
5. Grant; Chamberlain (2024). Compulsive buying disorder: Conceptualization based on addictive, impulsive, and obsessive-compulsive features and comorbidity. *Psychiatry Research Communications*. DOI: 10.1016/j.psycom.2024.100199 · Citações: 9
6. ten Have; Tuithof; van Dorsselaer; de Beurs (2021). The Bidirectional Relationship Between Debts and Common Mental Disorders: Results of a longitudinal Population-Based Study. *Administration and Policy in Mental Health and Mental Health Services Research*. DOI: 10.1007/s10488-021-01131-9 · Citações: 32
7. Nigatu; Elton-Marshall; Hamilton (2022). Changes in household debt due to COVID-19 and mental health concerns among adults in Ontario, Canada. *International Journal of Social Psychiatry*. DOI: 10.1177/00207640221136795 · Citações: 13
8. Deckard; Goosby; Cheadle (2021). Debt Stress, College Stress: Implications for Black and Latinx Students' Mental Health. *Race and Social Problems*. DOI: 10.1007/s12552-021-09346-z · Citações: 31
9. Moon; Linton; Mojtabai (2024). Medical Debt and the Mental Health Treatment Gap Among US Adults. *JAMA Psychiatry*. DOI: 10.1001/jamapsychiatry.2024.1861 · Citações: 20
10. Bu; Hanspal; Liao; Liu (2021). Cultivating Self-Control in FinTech: Evidence from a Field Experiment on Online Consumer Borrowing. *Journal of Financial and Quantitative Analysis*. DOI: 10.1017/s0022109021000314 · Citações: 33
11. Du Plessis; Jordaan; van der Westhuizen (2024). Psychological needs and financial well-being: the role of consumer spending self-control. *Journal of Financial Services Marketing*. DOI: 10.1057/s41264-024-00270-y · Citações: 17
12. ElBarazi (2023). The Association Between Compulsive Buying Disorder and Childhood Trauma. *Global Journal of Intellectual & Developmental Disabilities*. DOI: 10.19080/gjidd.2023.12.555833 · Citações: 1

---

## G6 · Vida no Controle (Prof. Renato)

**Hipótese:** a maior dor é não saber para onde o dinheiro do mês está indo; as pessoas perdem oportunidades de economia por não comparar preços; aceitariam um app gratuito se o mercado local fosse patrocinador.
**Dados de destaque:** 78,9% das famílias endividadas (CNC/BCB 2025); 85% dos domicílios urbanos com internet (TIC Domicílios 2024); 84% usam Pix; 1.400+ fintechs no Brasil; PIB de Várzea Grande ~290 mil hab.

1. Bitrián; Buil; Catalán (2021). Making finance fun: the gamification of personal financial management apps. *International Journal of Bank Marketing*. DOI: 10.1108/ijbm-02-2021-0074 · Citações: 88
2. Bai (2023). Impact of financial literacy, mental budgeting and self control on financial wellbeing: Mediating impact of investment decision making. *PLoS ONE*. DOI: 10.1371/journal.pone.0294466 · Citações: 92
3. Sabri; Wijekoon; Suhaimi et al. (2022). Mediating Effect of Financial Behaviour on the Relationship Between Perceived Financial Wellbeing and Its Factors Among Low-Income Young Adults in Malaysia. *Frontiers in Psychology*. DOI: 10.3389/fpsyg.2022.858630 · Citações: 40
4. Ghafoor; Akhtar (2024). Parents' financial socialization or socioeconomic characteristics: which has more influence on Gen-Z's financial wellbeing? *Humanities and Social Sciences Communications*. DOI: 10.1057/s41599-024-03007-3 · Citações: 26
5. Handayani; Rahardian; Utami; Riyanti et al. (2024). Fintech Analysis of Personal Finance App Usage among Millennials. *Journal of Economic Education and Entrepreneurship Studies*. DOI: 10.62794/je3s.v5i2.2299 · Citações: 2
6. Kumar (2022). Financial app usage behaviour: A study based on demographic factors. *International Journal of Financial Management and Economics*. DOI: 10.33545/26179210.2022.v5.i1.697 · Citações: 0
7. Skwara; Wienert (2023). The impact of digital household budgets on online purchase decision-making processes. *Journal of Consumer Behaviour*. DOI: 10.1002/cb.2299 · Citações: 6
8. Dogan; Madaleno; Taşkın (2021). Which households are more energy vulnerable? Energy poverty and financial inclusion in Turkey. *Energy Economics*. DOI: 10.1016/j.eneco.2021.105306 · Citações: 235
9. Blavier (2021). The yellow vests roundabout revolt, seen through the lens of household budgets. *Socio-Economic Review*. DOI: 10.1093/ser/mwab021 · Citações: 9
10. Nugraha; Setiawan; Emilda; Masyhuri et al. (2024). Role of Financial Literacy and Saving Habits on Fintech Adoption post Covid-19. *ETIKONOMI*. DOI: 10.15408/etk.v23i1.37856 · Citações: 7
11. El Amri; Mohammed; Bekiroğlu (2026). Impact of digital financial literacy on individual's experience of digital payment adoption: The case of Turkiye. *Borsa Istanbul Review*. DOI: 10.1016/j.bir.2026.100809 · Citações: 1
12. Khandelwal; Gond (2026). Growth and Impact of Digital Financial Management Applications on Personal Finance Behaviour. *International Journal of Science Strategic Management and Technology*. DOI: 10.55041/ijsmt.v2i5.141 · Citações: 0

---

## Como usar

- Cada `Pesquisa-Dados.md` traz: resumo executivo, tabela de dados com fonte, leitura dos dados, síntese da literatura em blocos, os 12 papers com DOI e citações, quadro-resumo, argumentos de defesa, lacunas e fontes.
- Cada `Slides-<Grupo>.html` é a apresentação de defesa (12 slides, reveal.js). Abrir no navegador; para PDF, usar `?print-pdf`.
- Brutos das buscas: `_pesquisa/saidas/G<n>_*.md` e `.json` (proveniência).

## Limites e cuidados

- Amostra de campo de 15–20 respostas por grupo é sinal exploratório, não prova estatística.
- Alguns números foram acessados por notícias que citam fontes oficiais; confirmar no documento oficial antes da defesa.
- Papers com DOI marcado `[verificar]` precisam de conferência individual na Crossref.
- OpenAlex pode mudar a contagem de citações com o tempo; os números aqui são a fotografia da coleta.
- Grupo 2 (A Definir) ainda não tem pesquisa — pendente definição da ideia com a Profa. Olivia.
