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
