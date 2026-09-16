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
