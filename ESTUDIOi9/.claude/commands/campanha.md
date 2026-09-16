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
