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
