# Contexto do App — Vida no Controle

**Grupo 6 — Vida no Controle** · Prof. Renato · Integrantes: Hitalo, Rhaissa, Fernanda, Emilly, Yasmin.
Código de coleta: `G6-<nnn>` · Formulário: 20 perguntas · Meta: 15–20 respostas.

---

## 1. Pitch em uma frase

O Vida no Controle é uma plataforma gratuita que ajuda famílias de Várzea Grande a controlar o orçamento doméstico, encontrar oportunidades reais de economia no supermercado da região e construir uma reserva financeira — com o mercado local como sponsor, sem comprometer a imparcialidade das comparações.

---

## 2. O problema e a oportunidade (por que agora)

O Brasil tem 78,9% das famílias endividadas (BCB, 2024), e Várzea Grande não é exceção: 68% dos domicílios ganham menos de 2 salários mínimos e 73% não têm nenhum ahorro formal (Silva et al., 2024). A Pesquisa de Orçamentos Familiares (POF) do IBGE mostra que o gasto com alimentação fora do lar cresceu 23% entre 2022 e 2024 — dinheiro que sai do supermercado e vai para delivery, lanchonetes e restaurantes.

O ponto cego é o cupom fiscal. O Procon-SP (2023) registra que 12% dos cupons fiscais de supermercado têm pelo menos um erro de preço — cobrança indevida que, na maioria das vezes, passa despercebida porque o consumidor não confere. Smith & Jones (2023) mostram que apenas 23% dos consumidores verificam o cupom; dos que verificam, 67% encontram pelo menos um erro por ano.

**Pesquisa que sustenta o problema:**
- Fernandes et al. (2024): 71% das famílias brasileiras não conseguem economizar no final do mês.
- Lindblom et al. (2023): transparência de preços no ponto de venda reduz overspending em 8–11%.
- Smith & Jones (2023): 67% dos consumidores que conferem cupom encontram pelo menos um erro por ano.
- Chen et al. (2025): apps de comparação de preços de supermercado reduziram gasto alimentar em 11% após 3 meses.
- Santos et al. (2026): educação financeira + monitoramento de preços reduziu alimentação fora do hogar em 15% no Brasil.

**Hipótese de campo do grupo:** muitas famílias de Várzea Grande gastam mais do que precisam no supermercado porque não comparam preços e não conferem o cupom fiscal. Um app gratuito que digitaliza o cupom e compara preços entre supermercados locais pode gerar economia real e imediata — e essa economia pode ser o gatilho para começar a controlar o orçamento inteiro.

**Por que agora.** Três movimentos tornam esse momento propício:

1. **O cupom fiscal é digital e legível.** A maioria dos supermercados já emite cupom fiscal eletrônico (NFC-e) — que pode ser lido por OCR ou parse de texto, sem precisar de câmera.
2. **O mercado local precisa de visibilidade.** Supermercados regionais de Várzea Grande competem com redes nacionais; um app que mostra qual supermercado tem o menor preço local é um atrativo para o cliente — e uma fonte de sponsorship sustentável.
3. **Educação financeira virou necessidade pública.** A nova BNCC inclui educação financeira no ensino médio; famílias estão mais abertas a discutir orçamento do que há 10 anos. Apps como Nubank e Banco Pan já introduziram milhões de pessoas ao controle financeiro.

A oportunidade é ocupar um espaço que nenhuma fintech ocupa: o supermercado regional de Várzea Grande como sponsor de um app que ajuda a família a economizar ali mesmo onde gasta.

---

## 3. Público e personas

**Persona 1 — Dona Marta, 42 anos, auxiliar de limpeza, casada, dois filhos (Várzea Grande–MT)**
Trabalha em turno e faz as compras da família uma vez por semana no supermercado do bairro. Nunca compara preços entre supermercados porque não tem carro e o do bairro é o mais perto. O cupom fiscal vai para a sacola sem olhar. Dor: no final do mês sempre falta dinheiro e ela não sabe onde foi. O que ela quer: entender para onde o dinheiro está indo e encontrar um jeito de guardar um pouco.

**Persona 2 — Seu José, 55 anos, segurança, esposa病了, três filhos**
A renda é quase toda do salário dele. O dinheiro da alimentação é curto e qualquer erro de preço no supermercado significa faltar comida. Já ouviu falar em "comparar preços" mas não tem tempo nem condição de ir a cinco supermercados para isso. Dor: vulnerabilidade extrema — um gasto inesperado pode desestruturar a família. O que ele quer: segurança de que está paying the lowest price no lugar mais acessível.

**Persona 3 — Aline, 24 anos, atendente, mora com os pais e um irmão**
Ganha um salário mínimo e gasta boa parte com delivery de comida. Nunca olhou o cupom fiscal na vida. Tem celular bom e usa para tudo — menos para controlar dinheiro. Dor: não sabe quanto gasta por mês; vive no vermelho no limite do cartão. O que ela quer: um app que não exija esforço para registrar gastos e que mostre claramente onde o dinheiro está indo.

---

## 4. Proposta de valor (mini canvas)

| Bloco | Conteúdo |
| --- | --- |
| **Tarefa do usuário** | Controlar o orçamento familiar, gastar menos no supermercado e guardar uma reserva. |
| **Dores** | Falta de controle sobre para onde o dinheiro vai, cupom fiscal ignorado, impossibilidade de comparar preços entre supermercados, renda irregular, medo do mês acabar antes do salário. |
| **Ganhos esperados** | Economia real no supermercado, clareza sobre gastos, reserva financeira mínima, redução de ansiedade relacionada a dinheiro. |
| **Solução** | Registro de receitas/despesas simples + leitor de cupom fiscal + comparador de preços entre supermercados de Várzea Grande + meta de reserva + ofertas do supermercado sponsor (sem viés). |
| **Canais** | App responsivo mobile-first; link de compartilhamento; push para notificar ofertas e lembretes de economia. |
| **Proposta de valor** | "Gaste menos no supermercado — e descubra para onde seu dinheiro vai." |
| **Alternativa atual** | Caderno de despesas, planilha, app genérico (Mobills, Organizze), cupom fiscal na sacola, nenhuma comparação de preços. |

---

## 5. Jornada do usuário

**Entrada rápida e sem friction.** O usuário abre o app e registra, de forma simples, o que entrou (renda, benefício, outra fonte) e o que saiu (gasto essencial do mês). Não precisa ser preciso ao centavo — o objetivo é ter uma visão geral. O app mostra um gráfico simples: quando o dinheiro entrou, quando saiu, se está no azul ou no vermelho.

**Leitura do cupom fiscal.** Sempre que voltar do supermercado, o usuário abre o app e cola o texto do cupom fiscal (ou fotografa, se o OCR funcionar). O app lê os itens, mostra o total e — se houver cupom anterior do mesmo supermercado — compara o valor total. Se o preço subiu ou se algum item foi cobrado diferente do anunciado, o app alerta.

**Comparação de preços local.** O app mantém um banco de dados de preços de supermarkets de Várzea Grande (atualizado pelos próprios usuários e pelo supermercado sponsor). Antes de ir ao mercado, o usuário consulta qual supermercado tem o menor preço na lista de compras semanal. A listinha pode ser compartilhada entre membros da família.

**Meta de reserva (cofrinho).** O usuário define uma meta: "guardar R$ 50 por mês". O app sugere arredondar compras ("sobe R$ 0,70 e vai para a reserva") e mostra o progresso. A reserva pode ser "virtual" (acompanhar o número) ou, em versão futura, vinculada a uma conta digital.

**Ofertas do sponsor.** O supermercado local sponsor aparece com ofertas reais (não patrocinadas — são ofertas reais que ele já oferece). O app não modifica a classificação por causa do sponsor; a imparcialidade é condição do contrato.

---

## 6. Funcionalidades — MVP | v1 | v2

| Capacidade | MVP | v1 | v2 |
| --- | --- | --- | --- |
| Registro de receitas/despesas | Entrada manual simples | Entrada por categoria + repetição automática | Integração com Pix/bancos (com permissão) |
| Leitor de cupom fiscal | Colar texto do cupom | OCR por câmera (NFC-e) | Parser inteligente que identifica itens e preços |
| Comparador de preços | Cadastro manual de preços por usuário | Banco de dados de preços local (atualização colaborativa) | IA que atualiza preços via API do supermercado |
| Meta de reserva | Meta manual + progresso | Sugestão automática baseada na renda | Ligação com conta digital / cofrinho real |
| Ofertas do sponsor | Lista de ofertas manual | Atualização automática via integração | Ofertas personalizadas por perfil de compra |
| Família | Não | Compartilhar lista de compras com cônjuge | Histórico compartilhado e metas em conjunto |
| Gráficos | Pizza simples (gastos por categoria) | Evolução mensal + comparação com mês anterior | Projeção de saldo futuro com cenários |
| Canal | Web responsiva | PWA instalável | App Android/iOS |
| Notificações | Lembrete de meta | Alerta de oferta do sponsor | Alerta de gasto anormal vs. padrão |

---

## 7. Diferenciais e alternativas

| Alternativa | Limitação | Diferencial do Vida no Controle |
| --- | --- | --- |
| Caderno de despesas | Sem análise, sem comparação, perdido | Digital, colaborativo, com análise |
| App genérico (Mobills, Organizze) | Não lê cupom fiscal, não compara preços, não tem sponsor local | Leitor de cupom + comparador + sponsor local |
| Planilha | Trabalho de input alto, sem comparação | Input simples + comparação automática |
| Grupos de WhatsApp de oferta | Informal, sem estruturação, não confere preços | Comparação imparcial e verificada |
| Programa de fidelidade do supermercado | Foco em desconto, não em orçamento | Foco em controle + economia geral |

**Diferencial central:** o Vida no Controle é o único app que lê o cupom fiscal do supermercado de Várzea Grande e compara preços entre supermercados locais — com o supermercado como sponsor, não como manipulado. A economia é imediata e tangível: o app paga para si mesmo quando economiza R$ 20 no mês.

---

## 8. Dados, governo e LGPD

**Dados usados.** O app usa três tipos de dado: (1) receitas e despesas informadas pelo próprio usuário (sem valor mínimo de precisão); (2) texto do cupom fiscal colado ou fotografado (processado localmente, não armazenado em servidor); e (3) preços dos supermercados (agregados de múltiplas fontes, sem individualizar o usuário).

**Princípios de LGPD adotados.**

- **Minimização:** nunca pedir valor de renda, patrimônio ou salário — só percepção de "sobra ou falta" e categorias de gasto.
- **Processamento local:** o texto do cupom é processado no dispositivo; não sobe para servidor. Se houver armazenamento, é local e opt-in.
- **Anonimização de preço:** os preços comparados são agregados por supermercado, não vinculados a usuário individual.
- **Consentimento explícito:** o usuário sabe o que está sendo comparado e pode opt-out a qualquer momento.
- **Sponsorship transparente:** fica claro que o supermercado sponsor tem ofertas no app, mas a ordem de exibição é por preço, não por sponsor. Contrato especifica isso.
- **Sem crédito, sem scoring:** o app não é instituição financeira, não faz scoring de crédito, não vende dados.

O Vida no Controle **não é uma instituição financeira** — é uma ferramenta de controle e comparação. As simulações e comparações são informativas e não constituem orientação financeira oficial.

---

## 9. Impacto e sustentabilidade

**Impacto.** Redução de gastos desnecessários com supermercado (erros de preço, falta de comparação); aumento da consciência financeira; construção de reserva mínima; famílias mais resilientes financeiramente; mercado local mais competitivo e transparente.

**Sustentabilidade.** O supermercado sponsor é a fonte primária de sustentabilidade — ele ganha cliente fiel que compara preços nele e em concorrentes, mas sabe que o app é impartial. Modelo de scaling: quanto mais usuários, mais valioso o espaço de sponsor para o supermercado.

---

## 10. Métricas de sucesso (KPIs)

| KPI | O que mede |
| --- | --- |
| Economia média declarada pelos usuários por mês | Valor real entregue |
| Cupons fiscais processados por semana | Engajamento com o core feature |
| Comparações de preço realizadas | Uso do comparador |
| Taxa de usuários que voltam após 7 dias | Retenção |
| Metas de reserva criadas vs. completadas | Comportamento de planejamento |
| Número de supermercados com dados no app | Cobertura local |
| NPS / recomendação a vizinho | Satisfação |
| Receita do sponsor vs. custo de manutenção | Sustentabilidade |

**Referências:** Chen et al. (2025) 11% de redução de gasto; Santos et al. (2026) 15% de redução em alimentação fora do hogar no Brasil; Lindblom et al. (2023) 8–11% de redução de overspending com transparência de preços.

---

## 11. Riscos e mitigação

| Risco | Impacto | Mitigação |
| --- | --- | --- |
| Cupom fiscal mal lido (papel térmico, foto ruim) | Médio | Parser com fallback manual; não depender só de OCR |
| Sponsor influenciar comparador | Alto | Contrato com cláusula de imparcialidade; auditoria periódica |
| Usuário não ter tempo de comparar | Médio | Notificações de oferta do sponsor; UX minimalista |
| Banco de preços local desatualizado | Médio | Incentivo para usuários atualizarem (gamificação); integração com supermercado quando possível |
| App não funcionar offline | Baixo | PWA com cache local; comparação funciona offline se houver dados |
| Sponsor sair e modelo quebrar | Médio | Modelo deve ser viável sem sponsor desde o início |
| Usuário inserir dado errado e desanimar | Médio | Interface que não exige precisão; feedback positivo progressivo |

---

## 12. Roadmap de sprints

| Sprint | Nome | Entregáveis |
| --- | --- | --- |
| 0 | Fundação | Estrutura do app de coleta e do projeto; definição do perfil (exceção) |
| 1 | Perguntas | Implementação das 20 perguntas em escala de 1 a 5 |
| 2 | Código + planilha | Geração do código `G6-<nnn>` e integração com a planilha de respostas |
| 3 | Campo + correlação | Coleta em campo (meta de 15–20 respostas) e leitura de correlações |
| 4 | Análise | Cruzamento dos blocos, leitura da hipótese e dos áudios |
| 5 | Refino final | Ajustes, consolidação e apresentação do resultado |

---

## 13. Como o formulário valida a hipótese (blocos + áudio)

**Regras do app de coleta**

- **Bloco 0 — Perfil:** exceção, identificado por observação (faixa etária, sexo, classe social estimada, raça/cor estimada), sem ser uma das 20 perguntas.
- **20 perguntas:** marcadas de **1 a 5**, onde **1 = um polo e 5 = o oposto**. Escala fechada e comparável.
- **Não há respostas abertas** no formulário. **Nunca** se pergunta renda, patrimônio ou valor de despesas em números.
- **Falas do entrevistado:** vão para um **áudio no WhatsApp que começa com o código `G6-<nnn>`**, ligando a narrativa à resposta registrada.

**Blocos das 20 perguntas**

| Bloco | Perguntas | O que investiga | Base na pesquisa |
| --- | --- | --- | --- |
| 1 | Q1–Q5 | Controle do orçamento familiar | Fernandes et al. (2024); Singh et al. (2022) |
| 2 | Q6–Q10 | Supermercado e cupom fiscal | Smith & Jones (2023); Procon-SP; Lindblom et al. (2023) |
| 3 | Q11–Q15 | Renda e reserva financeira | Karlan et al. (2022); Garcia et al. (2023); Silva et al. (2024) |
| 4 | Q16–Q20 | App, informação e supermercado local | Chen et al. (2025); Santos et al. (2026); Brown & Garcia (2022) |

**Como isso valida a hipótese.** A hipótese é: *famílias de Várzea Grande gastam mais do que precisam no supermercado porque não comparam preços e não conferem o cupom fiscal.* O bloco 1 mostra o nível geral de controle financeiro da família. O bloco 2 é o coração da validação: Q7 (conferência do cupom), Q8 (erro encontrado) e Q6 (comparação de preços) — se a maioria responder que nunca compara e nunca confere, a premissa do cupom fiscal está confirmada. O bloco 3 mostra vulnerabilidade financeira e capacidade de reserva. O bloco 4 mede a receptividade ao app e ao modelo de sponsor. Se bloco 2 confirmar o hábito passivo e bloco 4 mostrar interesse no app, o Vida no Controle tem justificativa para seguir. O áudio com o código `G6-<nnn>` dá contexto sobre os supermarkets mais frequentados, os hábitos de compra e o que a família gostaria de melhorar.

---

## 14. Pitch de 30 segundos

"Você sabe quanto gastou no supermercado esse mês? E se soubesse que uma em cada 8 vezes você paga a mais — e que nem percebeu? O Vida no Controle ajuda sua família a controlar o orçamento, compara preços entre supermercados de Várzea Grande e ainda lê o cupom fiscal para você. Gratuito, sem burocracia e com o supermercado da sua região como sponsor — que quer que você экономите e volte. Seu dinheiro, seu controle."
