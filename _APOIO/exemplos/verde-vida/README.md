# Exemplo de referência — Verde Vida (FICTÍCIO)

> ⚠️ **Cliente fictício.** Este é um caso-modelo pra servir de padrão de qualidade pro time.
> Use pra ver "como deve ficar" cada arquivo antes de rodar os comandos num cliente real.
> **Não copie os dados** — copie o nível de detalhe, a estrutura e a disciplina.

**Cliente:** Verde Vida — marmitas saudáveis congeladas, por assinatura semanal.
**Contexto:** marca pequena, vende por Instagram e site próprio, quer sair de "mais uma marmita fit" pra autoridade em comida de verdade sem culpa.

## O que tem neste exemplo

```
verde-vida/
├─ marca/
│  ├─ marca.md         ← saída modelo de /marca (eixo posicionamento)
│  ├─ voz.md           ← saída modelo de /marca (eixo tom de voz)
│  ├─ identidade.md    ← saída modelo de /marca (eixo visual)
│  ├─ publico.md       ← preenchido pelo operador
│  └─ performance.md   ← preenchido com números (fictícios) reais
├─ briefings/
│  └─ briefing-lancamento-verao.md   ← entrada do /campanha
└─ entregas/
   ├─ calendario-agosto.md    ← saída modelo de /calendario
   ├─ repurpose-2026-07-24.md ← saída modelo de /repurpose
   ├─ campanha-2026-07-24.md  ← saída modelo de /campanha
   └─ ads-2026-07-24.md       ← saída modelo de /ads
```

## Como usar este exemplo

- Antes de rodar num cliente novo, abra o `marca/` daqui e veja o nível de especificidade esperado.
- Repare em como as **regras duras** aparecem na prática: marcações `PERGUNTAR AO CLIENTE`, hipótese escrita em cada anúncio, uma variável por variante, tema justificado por `performance.md`.
