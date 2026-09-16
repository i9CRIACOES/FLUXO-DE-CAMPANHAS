# Referência dos 5 comandos — Fluxo de Campanhas

> Documento único com o conteúdo dos 5 comandos, pra usar como Contexto no Cowork.
> Os comandos de verdade ficam em `.claude/commands/` e **só executam no Claude Code** (digitando `/`).
> No Cowork este texto serve pra o Claude entender e seguir os mesmos fluxos.

---

## /marca

```markdown
---
description: Monta o documento de diretrizes de marca de um cliente a partir do material publico dele. Use no onboarding de cliente novo, antes de produzir qualquer conteudo.
argument-hint: [nome-do-cliente]
allowed-tools: Read, Write, Glob, Grep, WebSearch, WebFetch
disable-model-invocation: true
model: opus
---

Monte o documento de diretrizes de marca do cliente: $ARGUMENTS

Antes de escrever, leia o material que eu deixei em marca/insumos/ e pesquise o que estiver publico (site, redes, imprensa).

Analise tres eixos e escreva um arquivo por eixo em marca/:

1. marca.md
   - O que a empresa faz, em uma frase sem jargao
   - Pra quem vende: cargo, tamanho de empresa, momento de compra
   - Oferta atual, preco e promessa
   - Posicionamento: a frase que diferencia de todo mundo
   - Prova: numeros reais, cases, depoimentos
   - Concorrentes e onde eles soam genericos

2. voz.md
   - 3 a 5 caracteristicas de como a marca fala
   - Palavras que a marca usa e palavras proibidas
   - 5 trechos reais no tom certo, copiados do material
   - 3 trechos no tom errado, com o motivo

3. identidade.md
   - Paleta em hex, tipografia de titulo e de apoio
   - Proporcoes padrao e tratamento visual
   - O que a marca nunca faz visualmente

Regras duras:
1. Nunca invente dado. Onde faltar, escreva PERGUNTAR AO CLIENTE
2. Cite de onde tirou cada afirmacao forte
3. Termine com a lista consolidada de perguntas pro cliente

```

---

## /repurpose

```markdown
---
description: Transforma um conteudo em posts nativos de cada plataforma, respeitando o tom de voz da marca. Use quando ja existe um conteudo bom e ele precisa virar LinkedIn, Instagram, carrossel, YouTube e X.
argument-hint: [arquivo-ou-link]
allowed-tools: Read, Write, Glob, Grep, WebFetch
disable-model-invocation: true
model: opus
---

Transforme este conteudo em posts nativos de cada plataforma: $ARGUMENTS

Leia marca/voz.md antes de escrever a primeira palavra.

Entregue, em entregas/repurpose-AAAA-MM-DD.md:

LinkedIn
- Post longo, primeira linha de gancho, quebras de linha curtas, zero hashtag no meio do texto, CTA de comentario no fim

Instagram
- Legenda com gancho na primeira linha, corpo em blocos curtos, CTA no fim
- Texto de overlay pro video, curto o bastante pra ler em miniatura

Carrossel
- Titulo de cada slide, um por linha, comecando pela capa mais agressiva
- Ultimo slide com CTA

YouTube
- 5 opcoes de titulo, descricao com as 2 primeiras linhas vendendo o clique, e capitulos

X
- Thread numerada, uma ideia por post, primeiro post autossuficiente

Regras duras:
1. Nao repita a mesma frase entre plataformas. Cada rede recebe o angulo que funciona nela
2. Todo numero citado tem que existir no conteudo original
3. Se o conteudo original nao sustentar alguma plataforma, diga isso em vez de encher linguica

```

---

## /calendario

```markdown
---
description: Monta o calendario de conteudo do mes com tema, gancho, formato e metrica de cada post. Use no planejamento mensal, depois que as diretrizes de marca ja existem.
argument-hint: [mes] [posts-por-semana]
arguments: [mes, frequencia]
allowed-tools: Read, Write, Glob, Grep, WebSearch
disable-model-invocation: true
model: opus
context: fork
---

Monte o calendario de conteudo de $mes, com $frequencia posts por semana.

Base obrigatoria de leitura: marca/marca.md, marca/publico.md e marca/performance.md.

Antes de decidir os temas, pesquise o que esta em pauta no nicho agora e cruze com o que ja performou.

Entregue uma tabela em entregas/calendario-$mes.md, uma linha por post, com estas colunas:
data, plataforma, formato, tema, gancho da primeira linha, CTA, metrica que esse post persegue, e se depende de gravacao.

Depois da tabela, escreva:
- Os 3 pilares que sustentam o mes e quantos posts cada um recebe
- O que voce decidiu NAO fazer e por que
- Os posts que dependem de mim, agrupados pra eu gravar tudo num dia so

Regras duras:
1. Nao repita assunto em menos de 10 dias
2. Todo tema precisa de uma justificativa vinda de performance.md ou da pesquisa
3. Distribua formato: nem so carrossel, nem so video

```

---

## /campanha

```markdown
---
description: Transforma um briefing de cliente em campanha completa, com funil, direcao criativa, copy de cada peca e plano de producao. Use quando chegou briefing e precisa entregar campanha inteira.
argument-hint: [arquivo-do-briefing]
allowed-tools: Read, Write, Glob, Grep, WebSearch, WebFetch
disable-model-invocation: true
model: opus
context: fork
---

Transforme este briefing em campanha completa: $ARGUMENTS

Leia marca/ inteiro antes de comecar.

Entregue em entregas/campanha-AAAA-MM-DD.md, nesta ordem:

1. Diagnostico do briefing
   - O que o cliente pediu, o que ele precisa, e onde as duas coisas divergem
   - A pergunta que falta ser respondida pra campanha nao nascer torta

2. Estrategia de funil
   - Topo, meio e fundo, com a oferta e o objetivo de cada etapa
   - Onde entra conteudo organico e onde entra midia paga

3. Direcao criativa
   - O conceito unico que amarra a campanha inteira, em uma frase
   - Direcao estetica, paleta em hex, tipografia e tratamento
   - O que essa campanha nunca faz

4. Copy de cada peca
   - Por etapa do funil: gancho, corpo, CTA
   - 3 variacoes do anuncio principal

5. Plano de producao
   - Lista de pecas com formato e proporcao
   - O que da pra gerar com IA e o que precisa de gravacao
   - Ordem de producao e o que trava o que

6. Como medir
   - A metrica de cada etapa e o numero que define sucesso

Regras duras:
1. Nunca prometa resultado numerico que o briefing nao sustenta
2. Se faltar informacao critica, liste no diagnostico em vez de assumir
3. Uma campanha, um conceito. Nao entregue tres direcoes pro cliente escolher

```

---

## /ads

```markdown
---
description: Gera variantes de anuncio pra split test a partir de uma peca que ja roda, com a hipotese e a metrica de cada uma. Use quando o criativo cansou ou pra abrir um teste novo.
argument-hint: [arquivo-da-peca] [quantidade]
arguments: [peca, quantidade]
allowed-tools: Read, Write, Glob, Grep
disable-model-invocation: true
model: opus
---

Gere $quantidade variantes de anuncio a partir desta peca: $peca

Leia marca/voz.md e marca/publico.md antes.

Entregue uma tabela em entregas/ads-AAAA-MM-DD.md com estas colunas:
numero, angulo (dor, desejo, prova, curiosidade, contraste), gancho, corpo, CTA, formato, hipotese que essa variante testa, metrica que decide se ela ganhou.

Depois da tabela:
- Agrupe as variantes em rodadas de teste, com no maximo 3 por rodada
- Diga o que segurar constante em cada rodada pro teste ter validade
- Escreva o criterio de corte: quando matar uma variante

Regras duras:
1. Uma variavel por variante. Se mudar gancho e criativo junto, o teste nao ensina nada
2. Toda variante precisa de hipotese escrita antes de rodar
3. Nao use numero que a peca original nao tinha

```

---

