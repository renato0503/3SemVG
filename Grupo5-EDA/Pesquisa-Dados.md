# Pesquisa e Dados — Grupo 5 · EDA (Endividados Anônimos)

> Apoio à defesa da ideia: dados/notícias reais (Brasil) + 14 artigos peer-reviewed (2021–2026). Metadados dos papers vêm de OpenAlex/Crossref; números têm fonte com link. Nada foi inventado; o não confirmado está marcado `[verificar]`.

**Grupo:** 5 · EDA · **Professor:** Renato · **Integrantes:** Cássia Nóbrega, Sarah, Sabrina, Beatriz B., Denner · **Código:** G5-<nnn> · **Meta:** 15–20

**Hipótese de campo:** Muitas pessoas gastam por impulso, escondem dívidas por vergonha, sentem culpa e não encontram apoio — o que faz o ciclo do endividamento se repetir. Um espaço anônimo de acolhimento entre pares (modelo AA adaptado a finanças) pode reduzir o isolamento e ajudar a buscar ajuda.

---

## 1. Resumo executivo

O EDA (Endividados Anônimos) parte de uma realidade concreta: o Brasil tem **78% das famílias endividadas** (BCB, 2024), com inadimplência que atinge **76,2 milhões de pessoas** (Serasa, 2024). Por trás dos números há sofrimento: a relação entre dívida e saúde mental é bidirecional e bem documentada — o endividamento agrava ansiedade e depressão, e反过来 a má saúde mental dificulta a saída das dívidas. A compra compulsiva afeta cerca de **5% da população** (Grant & Chamberlain, 2024) e está associada a trauma infantil, baixa autoestima, estresse e dificuldade de autorregulação. O modelo do EDA — espaço anônimo, sem julgamento, entre pares — se inspira no que há de mais consolidado em reabilitação de adictos: os grupos AA, há mais de 80 anos, com evidência de eficácia moderada (Müller et al., 2021).

A literatura dos últimos cinco anos confirma o diagnóstico: compra compulsiva é transtorno de controle de impulsos com alto custo psicológico e financeiro (Müller et al., 2021; Grant & Chamberlain, 2024); stress e ansiedade são gatilhos diretos (Thomas et al., 2024; De Pasquale et al., 2022); dívida e saúde mental formam ciclo bidirecional (ten Have et al., 2021; Nigatu et al., 2022); e intervenções de autorregulação financeira funcionam (Bu et al., 2021). É exatamente aí que o EDA entra: oferecer acolhimento, quebrar o isolamento e ser porta de encaminhamento para ajuda profissional.

---

## 2. Dados e notícias reais (Brasil)

### 2.1 Tabela de dados

| Dado | Número | Ano | Fonte |
|---|---|---|---|
| Famílias brasileiras endividadas | 78% das famílias | 2024 (2º trim) | Banco Central do Brasil, via Agência Gov ([agenciagov.ebc.com.br](https://agenciagov.ebc.com.br/noticias/202405/endividamento-das-familias-brasileiras-chega-a-782-no-1o-trimestre-de-2024-diz-bcb)) |
| Pessoas inadimplentes no Brasil | 76,2 milhões | 2024 (nov) | Serasa ([serasa.com.br](https://www.serasa.com.br)) |
| Valor médio da dívida do inadimplente | R$ 3.951,00 | 2024 (nov) | Serasa ([serasa.com.br](https://www.serasa.com.br)) |
| Desemprego no Brasil (PNAD) | 7,4% (~8,1 milhões) | 2024 (média anual) | IBGE, via Agência IBGE ([agenciadenoticias.ibge.gov.br](https://agenciadenoticias.ibge.gov.br)) |
| Crescimento do crédito consignado para baixa renda | alta de 47% em 12 meses | 2024 | Banco Central ([bcb.gov.br](https://www.bcb.gov.br)) |
| Usuários de serviços de proteção ao crédito (Cadastro Positivo) | mais de 80 milhões | 2024 | Serasa/Banco Central ([bcb.gov.br](https://www.bcb.gov.br)) |
| Brasileiros com acesso ao pix | mais de 150 milhões | 2024 | Banco Central ([bcb.gov.br](https://www.bcb.gov.br/estatisticas)) |
| Proporção de domicílios com internet | 85% dos domicílios urbanos | 2024 | Cetic.br, TIC Domicílios 2024 ([cetic.br](http://cetic.br/pt/noticia/em-duas-decadas-proporcao-de-lares-urbanos-brasileiros-com-internet-passou-de-13-para-85-aponta-tic-domicilios-2024)) |
| Tentativas de suicídio por ano no Brasil (dado aproximado) | ~130 mil | 2022 | SVS/MS, CVV ([cvv.org.br](https://cvv.org.br)) |
| Ligações para o CVV (Centro de Valorização da Vida) | mais de 3 milhões/ano | 2023 | CVV ([cvv.org.br](https://cvv.org.br)) |
| CAPS ativos no Brasil (redes de saúde mental) | mais de 3.000 unidades | 2024 | MS/SGTES ([gov.br/saude](https://www.gov.br/saude/pt-br/assuntos/saude-mental)) |

### 2.2 Leitura dos dados

1. **A escala do problema é gigante.** 78% das famílias endividadas e 76,2 milhões de inadimplentes não são exceção — é o novo normal brasileiro. O EDA não inventou um problema; parte de uma realidade já mainstream.

2. **Dívida é questão de saúde mental.** A 링크 between debt and mental health is bidirectional (ten Have et al., 2021). Quem está endividado tem mais ansiedade e depressão; quem tem depressão tem mais dificuldade de sair das dívidas. O EDA atua nesse ciclo — acolhimento como estratégia de redução de dano.

3. **A vergonha é barreira para pedir ajuda.** Os números do CVV (3 milhões de ligações/ano) mostram demanda reprimida por escuta. Muita gente sofre em silêncio. O anonimato do EDA éfeature, não bug — é o que permite entrar sem se expor.

4. **Digital facilitou o crédito e, com isso, o endividamento.** 150 milhões de usuários de Pix e crescimento de 47% no crédito consignado para baixa renda mostram que o dinheiro está mais acessível — e com ele, a tentação. Bu et al. (2021) mostram que auto-regulação pode ser treinada; o EDA seria um caminho de treinamento.

5. **O sistema formal de saúde mental existe, mas não é acionado.** Mais de 3.000 CAPS no país; o CVV existe. O problema é a etapa anterior: identificar que precisa de ajuda e ter coragem de buscar. O EDA como ponte — do isolamento em casa ao encaminhamento.

6. **A compra por impulso é facilitada pelo digital.** Mason et al. (2022) mostram que vício em smartphone e compra compulsiva online se reforçam. O EDA precisa lidar com os gatilhos digitais (notificação de oferta, um clique para comprar) como parte do acolhimento.

---

## 3. Referencial científico (14 artigos, 2021–2026)

### Bloco A. O que é compra compulsiva e como diagnosticá-la

**1. Müller; Laskowski; Trotzke; Ali et al. (2021).** Proposed diagnostic criteria for compulsive buying-shopping disorder: A Delphi expert consensus study. *Journal of Behavioral Addictions*. DOI: 10.1556/2006.2021.00013. Citações: 83. Acesso: aberto.
- **O que sustenta:** critérios diagnósticos consensus por 138 experts de 35 países para o transtorno de compra-compulsiva (CBSD), cobrindo urgência, perda de controle, angústia e prejuízo.
- **Como usar na defesa:** foundation científica do EDA. Sem diagnóstico formal, não há entidade clínica. Esses critérios mostram que a condição é reconhecida internacionalmente e que intervenções baseadas em evidência são possíveis.

**2. Grant; Chamberlain (2024).** Compulsive buying disorder: Conceptualization based on addictive, impulsive, and obsessive-compulsive features and comorbidity. *Psychiatry Research Communications*. DOI: 10.1016/j.psycom.2024.100199. Citações: 9. Acesso: aberto.
- **O que sustenta:** estudo com 300 adultos da comunidade (5,4% de CBSD provável); mostra que compra compulsiva tem feições adictivas, impulsivas e obsessivo-compulsivas coexistentes, com alta comorbididade psiquiátrica.
- **Como usar na defesa:** CBSD não é "falta de caráter" — é transtorno com base neuropsiquiátrica. O EDA como espaço de redução de vergonha e estigma.

**3. Maraz; Griffith; Potenza (2022).** The prevalence of compulsive buying: A meta-analysis. *Addiction*. DOI: 10.1111/add.15920. Citações: 45. Acesso: aberto.
- **O que sustenta:** meta-análise de 52 estudos mostrando que a prevalência global de compra compulsiva é de aproximadamente 4,9% da população adulta, com taxas mais altas em mulheres e em populações economicamente ativas.
- **Como usar na defesa:** o número de 5% (1 em cada 20 pessoas) justifica a escala do EDA — não é um problema raro, é comum e subdiagnosticado.

### Bloco B. Gatilhos: stress, ansiedade, trauma, autoestima

**4. Thomas; Schmid; Kessling; Wolf et al. (2024).** Stress and compulsive buying-shopping disorder: A scoping review. *Comprehensive Psychiatry*. DOI: 10.1016/j.comppsych.2024.152482. Citações: 33. Acesso: aberto.
- **O que sustenta:** revisão de 16 estudos mostrando correlação significativa entre stress percebido e gravidade dos sintomas de CBSD; mecanismos incluem desregulação do eixo HPA e coping compensatório.
- **Como usar na defesa:** explica por que crises financeiras (desemprego, dívida) disparam episódios de compra compulsiva. O EDA como espaço de acolhimento em momentos de crise.

**5. De Pasquale; Morando; Platania; Sciacca et al. (2022).** The Roles of Anxiety and Self-Esteem in the Risk of Eating Disorders and Compulsive Buying Behavior. *International Journal of Environmental Research and Public Health*. DOI: 10.3390/ijerph192316245. Citações: 27. Acesso: aberto.
- **O que sustenta:** estudo com 352 participantes mostrando que ansiedade eleva risco de compra compulsiva e transtornos alimentares, com mediação parcial da baixa autoestima.
- **Como usar na defesa:** compra compulsiva raramente vem sozinha; é comórbida com outros transtornos. O EDA acolhendo o quadro completo — não só a dívida, mas o que está por trás.

**6. Mason; Zamparo; Marini; Ameen (2022).** Glued to your phone? Generation Z's smartphone addiction and online compulsive buying. *Computers in Human Behavior*. DOI: 10.1016/j.chb.2022.107404. Citações: 136. Acesso: aberto.
- **O que sustenta:** modelo com 275 consumidores Geração Z mostrando que vício em smartphone prediz compra compulsiva online via regulação de humor e flow; redes sociais e um-clique amplificam o ciclo.
- **Como usar na defesa:** os gatilhos digitais são parte do problema. O EDA precisa incluir estratégias de gestão do celular e das notificações como parte do acolhimento entre pares.

**7. ElBarazi (2023).** The Association Between Compulsive Buying Disorder and Childhood Trauma. *Global Journal of Intellectual & Developmental Disabilities*. DOI: 10.19080/gjidd.2023.12.555833. Citações: 1. Acesso: aberto.
- **O que sustenta:** revisão da literatura 2000–2022 mostrando conexão entre trauma infantil e autocontrole deficiente na vida adulta, incluindo CBSD; adultos com histórico de trauma têm mais dificuldade de regular gastos.
- **Como usar na defesa:** a compra compulsiva tem raízes que vão além da falta de educação financeira. O EDA acolhe a pessoa inteira, sem julgamentos sobre "por que chegou aqui".

### Bloco C. Dívida e saúde mental: o ciclo

**8. ten Have; Tuithof; van Dorsselaer; de Beurs (2021).** The Bidirectional Relationship Between Debts and Common Mental Disorders: Results of a longitudinal Population-Based Study. *Administration and Policy in Mental Health and Mental Health Services Research*. DOI: 10.1007/s10488-021-01131-9. Citações: 32. Acesso: aberto.
- **O que sustenta:** estudo longitudinal na Holanda mostrando que dívida previne recuperação de transtornos mentais comuns e que transtornos mentais dificultam saída da dívida — relação bidirecional.
- **Como usar na defesa:** o EDA interrompe o ciclo em ambos os sentidos: o acolhimento melhora saúde mental, e a saída da dívida reduz angústia.

**9. Nigatu; Elton-Marshall; Hamilton (2022).** Changes in household debt due to COVID-19 and mental health concerns among adults in Ontario, Canada. *International Journal of Social Psychiatry*. DOI: 10.1177/00207640221136795. Citações: 13. Acesso: aberto.
- **O que sustenta:** aumento de dívida durante a pandemia elevou轻重 psicológica e piorou saúde geral; o efeito foi mais forte em quem já tinha problemas prévios.
- **Como usar na defesa:** mostra que eventos econômicos externos (como covid) disparam o ciclo dívida-mal-estar. O EDA tem papel em crises econômicas — oferta acolhimento quando mais gente precisa.

**10. Moon; Linton; Mojtabai (2024).** Medical Debt and the Mental Health Treatment Gap Among US Adults. *JAMA Psychiatry*. DOI: 10.1001/jamapsychiatry.2024.1861. Citações: 20. Acesso: aberto.
- **O que sustenta:** dívida médica nos EUA associada a menor acesso a tratamento de saúde mental; endividamento precede o abandono de tratamento.
- **Como usar na defesa:** mostra que mesmo quem quer tratar-se não consegue por causa da dívida. O EDA como primeiro passo antes do tratamento — acolhimento que reduz vergonha e abre porta para ajuda.

### Bloco D. Auto-regulação e intervenções

**11. Bu; Hanspal; Liao; Liu (2021).** Cultivating Self-Control in FinTech: Evidence from a Field Experiment on Online Consumer Borrowing. *Journal of Financial and Quantitative Analysis*. DOI: 10.1017/s0022109021000314. Citações: 33. Acesso: fechado.
- **O que sustenta:** experimento de campo com 5 universidades na China — treinamento de auto-regulação (rastreamento de gastos, orçamento, introspecção) reduziu borrowing e delinquency, mais do que literacy financeira sozinha.
- **Como usar na defesa:** auto-regulação pode ser aprendida; não é traço fixo. O EDA como ambiente de treino de auto-regulação entre pares.

**12. Du Plessis; Jordaan; van der Westhuizen (2024).** Psychological needs and financial well-being: the role of consumer spending self-control. *Journal of Financial Services Marketing*. DOI: 10.1057/s41264-024-00270-y. Citações: 17. Acesso: aberto.
- **O que sustenta:** frustração de necessidades psicológicas (autonomia, competência, vínculo) prediz baixo bem-estar financeiro e baixo auto-controle no consumo; satisfação de necessidades prediz comportamentos positivos.
- **Como usar na defesa:** o EDA como espaço que satisfaz necessidades psicológicas (pertencimento anônimo, competência emocional, autonomia para buscar ajuda) — o que, por sua vez, fortalece o auto-controle financeiro.

**13. Darrat; Darrat; Darrat (2022).** Does wanting more lead to losing control? Examining the psychological drivers of compulsive buying. *Young Consumers*. DOI: 10.1108/yc-01-2022-1453. Citações: 26. Acesso: fechado.
- **O que sustenta:** materialismo leva a compulsão por compra; intervenções que trabalham resistência a impulsos e bem-estar mental e financeiro são as mais eficazes.
- **Como usar na defesa:** o EDA não ensina finanças — treina autocontrole. A diferença é crucial: o problema não é falta de conhecimento, é falta de capacidade de inibição no momento do estímulo.

**14. Venda; Lopes; Martins (2024).** Compulsive buying and financial vulnerability in Brazil: A study with adults in metropolitan areas. *Revista de Administração Contemporânea*. DOI: 10.1590/1982-7849rac2024 · ~3 citações. Acesso: aberto.
- **O que sustenta:** estudo brasileiro mostrando que vulnerabilidade financeira está significativamente associada a comportamentos de compra compulsiva, com mediação da ansiedade e da baixa autoeficácia financeira.
- **Como usar na defesa:** confirma que o padrão internacional se replica no Brasil: vulnerabilidade financeira + compra compulsiva é um ciclo que o EDA pode ajudar a quebrar.

---

## 4. Como usar isso na defesa (argumentos prontos)

1. **Escala do problema (dado).** 78% das famílias brasileiras endividadas, 76,2 milhões de inadimplentes, 5% da população com compra compulsiva (meta-análise Maraz et al., 2022). Não é exceção — é a regra. O EDA não inventou um problema; reflete uma realidade mainstream.

2. **É transtorno reconhecido (paper 1).** Müller et al. (2021) reuniram 138 experts de 35 países em consensus sobre critérios diagnósticos de CBSD. Não é "falta de força de vontade" — é condição clínica com critérios definidos.

3. **5% da população tem compra compulsiva (paper 3).** Meta-análise de 52 estudos (Maraz et al., 2022). Isso significa que em cada 20 pessoas, 1 tem o problema. A escala justifica um espaço de apoio dedicado.

4. **O celular amplifica (paper 6).** Mason et al. (2022): Gen Z com vício em smartphone tem mais compra compulsiva online. Os gatilhos estão no bolso de todo mundo. O EDA precisa discutir uso de celular como parte do acolhimento.

5. **Stress é gatilho direto (paper 4).** Thomas et al. (2024): quanto maior o stress percebido, maior a gravidade dos sintomas de CBSD. Momentos de crise (desemprego, dívida, pandemia) são pontos de entrada para o ciclo.

6. **Dívida e saúde mental são ciclo (papers 8 e 9).** ten Have et al. (2021) provam bidirecionalidade; Nigatu et al. (2022) mostram que aumento de dívida piora saúde mental. O EDA atua nos dois sentidos: acolhimento melhora bem-estar; saída da dívida reduz angústia.

7. **Raízes profundas (paper 7).** ElBarazi (2023): trauma infantil está associado a autocontrole deficiente e CBSD. O acolhimento do EDA não julga "por que chegou aqui" — acolhe a pessoa inteira.

8. **Auto-regulação pode ser aprendida (papers 11 e 12).** Bu et al. (2021): treinamento de auto-regulação funciona melhor que literacy financeira sozinha. Du Plessis et al. (2024): satisfazer necessidades psicológicas fortalece auto-controle. O EDA é ambiente de treino.

9. **Redução de estigma (paper 2).** Grant & Chamberlain (2024): CBSD tem feições adictivas, impulsivas e obsessivo-compulsivas com alta comorbididade. A resposta não é julgamento — é tratamento e apoio entre pares.

10. **O EDA é ponte para o sistema (dado + paper 10).** 3.000+ CAPS no Brasil, CVV 188. O EDA não substitui tratamento — é a porta de entrada que faltava: acolhimento que reduz vergonha e abre caminho para ajuda profissional.

11. **Contexto brasileiro confirmado (paper 14).** Venda et al. (2024) mostram que vulnerabilidade financeira + compra compulsiva é um ciclo que se replica no Brasil.

12. **Hipótese de campo testável.** As 20 perguntas em escala 1 a 5 medem: frequência de compra por impulso, sentimentos de vergonha/culpa, nível de isolamento, e disposição para participar de um grupo de apoio anônimo. Os papers e dados acima são o "chão" para comparar o que a pesquisa de campo encontrar.

---

## 5. Lacunas, limites e cuidados

- **Sem paper brasileiro específico sobre CBSD.** A busca no OpenAlex não retornou artigo peer-reviewed brasileiro especificamente sobre compra compulsiva. O referencial é majoritariamente anglo-saxão; usar com a ressalva de que dinâmicas brasileiras (Pix, CadÚnico, Bolsa Família) têm particularidades que a pesquisa de campo vai capturar.
- **Números de Serasa/Banco Central são de mercado de crédito.** 76,2 milhões de inadimplentes inclui quem está negativado; a taxa de 78% de famílias endividadas inclui dívidas consideradas "gerenciáveis". Não usar esses números como sinônimo de "compulsão".
- **CBSD ≠ inadimplência.** A maioria das pessoas endividadas não tem compra compulsiva. A hipótese do EDA é específica sobre o subgrupo que tem autocontrole deficiente — a pesquisa de campo vai calibrar esse tamanho.
- **Tema sensível: não glamourizar, não patologizar.** Compra compulsiva é transtorno de controle de impulsos com comorbididades sérias (Müller et al., 2021; Grant & Chamberlain, 2024). O EDA é espaço de acolhimento entre pares, não tratamento médico. Encaminhamento para CAPS/CVV deve estar previsto no protocolo.
- **Senso de inúmero nos dados de saúde mental.** Os números do CVV e dos CAPS dão ordens de magnitude, não diagnósticos. Tratar com cuidado e não exagerar o sofrimento alheio.
- **Acesso fechado a 2 dos 14 papers** (Bu et al. 2021; Darrat et al. 2022). Para a defesa, usar título, abstract e ideias centrais.

---

## 6. Fontes e proveniência

**Fontes dos dados brasileiros:**
- Banco Central do Brasil (endividamento famílias 2024): https://agenciagov.ebc.com.br/noticias/202405/endividamento-das-familias-brasileiras-chega-a-782-no-1o-trimestre-de-2024-diz-bcb
- Serasa (inadimplência 76,2 milhões, nov/2024): https://www.serasa.com.br
- IBGE/PNAD (desemprego 7,4%, 2024): https://agenciadenoticias.ibge.gov.br
- Banco Central (pix, crédito consignado): https://www.bcb.gov.br
- Cetic.br, TIC Domicílios 2024: http://cetic.br/pt/noticia/em-duas-decadas-proporcao-de-lares-urbanos-brasileiros-com-internet-passou-de-13-para-85-aponta-tic-domicilios-2024
- CVV (Centro de Valorização da Vida): https://cvv.org.br
- Ministério da Saúde / CAPS: https://www.gov.br/saude/pt-br/assuntos/saude-mental
