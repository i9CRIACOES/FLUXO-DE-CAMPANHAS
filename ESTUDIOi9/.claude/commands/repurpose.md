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
