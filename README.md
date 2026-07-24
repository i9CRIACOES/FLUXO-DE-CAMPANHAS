# FLUXO DE CAMPANHAS — i9 Criações

Repositório de **comandos do Claude Code** que a agência usa pra rodar os 5 fluxos de campanha de forma padronizada, versionada e igual pra todo mundo.

> Prompt colado no chat morre na conversa. **Comando salvo em arquivo vira ativo da agência**: entra no git, o time inteiro usa, e melhora com o tempo.

---

## O que tem aqui

| Comando | Pra que serve | Tempo |
|---|---|---|
| `/marca [cliente]` | Monta o documento de diretrizes de marca (marca.md, voz.md, identidade.md) | 15–25 min |
| `/repurpose [arquivo-ou-link]` | Transforma 1 conteúdo em post nativo de LinkedIn, Instagram, carrossel, YouTube e X | 3–6 min |
| `/calendario [mes] [posts-por-semana]` | Monta o calendário do mês com tema, gancho, formato e métrica | 10–20 min |
| `/campanha [briefing]` | Vira um briefing em campanha completa (funil, criativo, copy, produção) | 20–40 min |
| `/ads [peca] [quantidade]` | Gera variantes de anúncio pra split test, com hipótese e métrica | 4–8 min |

### Estrutura de pastas

```
FLUXO DE CAMPANHAS/
├─ .claude/commands/     ← os 5 comandos (versionados, todo mundo herda)
├─ marca/                ← diretrizes do cliente ativo
│  ├─ insumos/           ← material bruto do cliente (você joga aqui ANTES de rodar /marca)
│  ├─ marca.md           ← gerado por /marca
│  ├─ voz.md             ← gerado por /marca
│  ├─ identidade.md      ← gerado por /marca
│  ├─ publico.md         ← você preenche (lido por /calendario e /ads)
│  └─ performance.md     ← você preenche com números reais (lido por /calendario)
├─ briefings/            ← briefings de cliente que entram no /campanha
├─ entregas/            ← tudo que os comandos produzem sai aqui
└─ CLAUDE.md             ← checklist que aparece sozinho em todo chat novo
```

---

## Como começar (primeira vez na sua máquina)

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/i9CRIACOES/FLUXO-DE-CAMPANHAS.git "FLUXO DE CAMPANHAS"
   cd "FLUXO DE CAMPANHAS"
   ```
2. **Abra o Claude Code nessa pasta** e digite `/` — os 5 comandos aparecem no menu.
3. Pronto. Não precisa instalar nada: os comandos já vêm no repositório.

---

## O jeito certo de usar (a ordem importa)

> ⚠️ **`/marca` vem primeiro, sempre.** Os outros quatro comandos LEEM os arquivos que ele escreve. Rodar com a pasta `marca/` vazia = todos partem do zero e devolvem conselho genérico de internet.

### Passo a passo de um cliente novo

1. **Junte o material** → jogue site, PDF comercial e ~10 posts do cliente em `marca/insumos/`.
2. **Rode `/marca`:**
   ```
   /marca Nome do Cliente
   ```
   Ele gera `marca.md`, `voz.md` e `identidade.md`, e devolve uma lista de **PERGUNTAR AO CLIENTE**. Leve essa lista pra próxima call e preencha as lacunas.
3. **Preencha `marca/publico.md` e `marca/performance.md`** com dados reais (tem template pronto nos arquivos).
4. **A partir daí, use os fluxos conforme a demanda:**
   ```
   /repurpose entregas/aula-de-ontem.md
   /calendario agosto 5
   /campanha briefings/cliente-x.md
   /ads entregas/ads-julho.md 9
   ```

Tudo que os comandos produzem cai em `entregas/`.

---

## Como criar exemplos novos / adaptar comandos

Cada comando é só um arquivo markdown em `.claude/commands/`. Pra criar um novo (ex.: `/roteiro`, `/newsletter`), copie um existente e ajuste. Anatomia do frontmatter:

| Campo | Para que serve |
|---|---|
| `description` | O que faz e quando usar. **Caso principal na 1ª frase** (a listagem corta em ~1.536 caracteres). É por aqui que o Claude decide quando o comando é relevante. |
| `argument-hint` | Dica no autocomplete, ex.: `[cliente]` ou `[arquivo] [quantidade]`. |
| `arguments` | Nomeia argumentos por posição. Com `arguments: [mes, frequencia]` você usa `$mes` e `$frequencia` no corpo. |
| `allowed-tools` | Ferramentas pré-aprovadas — o comando não para pedindo permissão a cada leitura. Restrinja por fluxo. |
| `disable-model-invocation` | Com `true`, só dispara digitando `/`. Use em fluxo pesado. |
| `context: fork` | Roda em contexto separado e devolve só o resultado. Use nos pesados (`calendario`, `campanha`). |
| `model` / `effort` | Troca modelo e esforço só enquanto o comando roda. |

**Argumentos:** `$ARGUMENTS` pega tudo depois do comando; `$0`/`$1` pegam por posição; valor com espaço vai entre aspas.

### Guardando exemplos de campanha como referência

Quando uma campanha ficar boa, **commite a entrega** em `entregas/` (ou crie uma pasta `exemplos/`) pra virar referência do time. Assim o próximo a rodar `/campanha` tem um padrão de qualidade pra mirar.

---

## Fluxo de contribuição (pra manter todo mundo igual)

Sempre que melhorar um comando ou adicionar um exemplo:

```bash
git pull                      # pega o que os outros já melhoraram
# ...faça sua alteração...
git add .
git commit -m "descreva o que mudou"
git push
```

No próximo `git pull`, o time inteiro herda a melhoria. **Comando que só existe na sua máquina não é processo da agência.**

> Este README é o manual. O `CLAUDE.md` é o checklist operacional que o Claude lê sozinho em cada sessão nova.
