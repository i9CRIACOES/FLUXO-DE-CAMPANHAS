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

A raiz tem só **as pastas de campanha** + o **template** + a pasta de apoio. Nada solto.

```
FLUXO DE CAMPANHAS/
├─ TEMPLATE DE CAMPANHA/   ← o molde. Contém TUDO que uma campanha precisa. NÃO trabalhe aqui.
│  ├─ .claude/commands/    ← os 5 comandos
│  ├─ CLAUDE.md            ← checklist (carrega sozinho na sessão da campanha)
│  ├─ marca/
│  │  ├─ insumos/          ← material bruto do cliente (jogue aqui ANTES do /marca)
│  │  ├─ marca.md · voz.md · identidade.md   ← gerados por /marca
│  │  ├─ publico.md        ← você preenche (lido por /calendario e /ads)
│  │  └─ performance.md    ← números reais (lido por /calendario)
│  ├─ briefings/           ← briefing que entra no /campanha
│  └─ entregas/            ← tudo que os comandos produzem
│
├─ ESTUDIOi9/              ← UMA CAMPANHA (cópia autossuficiente do template)
├─ cliente-x/              ← outra campanha...
│
└─ _APOIO/                 ← papelada de apoio, fora do caminho
   ├─ nova-campanha.sh     ← cria uma campanha nova (copia o template)
   ├─ COMANDOS.md          ← os 5 comandos num arquivo só (pro Contexto do Cowork)
   ├─ exemplos/            ← caso-modelo "Verde Vida" (referência)
   └─ README.md            ← este arquivo
```

> **Por que cada campanha é autossuficiente:** ela é uma cópia inteira do `TEMPLATE DE CAMPANHA/`, então já traz os comandos, o checklist e as pastas dentro dela. Você abre o Claude Code dentro da pasta da campanha e tudo funciona ali, isolado das outras.
>
> **Trade-off (importante):** se você melhorar um comando, edite no `TEMPLATE DE CAMPANHA/`. As campanhas **já criadas** ficam com a versão que tinham (isso é bom pra reproduzir o que foi feito). Pra atualizar uma campanha antiga, recopie a pasta `.claude/` do template pra dentro dela.

---

## 👥 Tutorial pra equipe (pelo Cowork / Claude Teams)

Este é o jeito mais simples, e não precisa instalar nada. A equipe usa direto pelo projeto **FLUXOS DE CAMPANHAS** no Cowork, que já está compartilhado com a i9.

**Antes de começar, entenda uma coisa:** no Cowork os comandos não são digitados como `/marca`. Isso é só no Claude Code. No Cowork a pessoa **pede em português** e o Claude segue o mesmo roteiro, porque as instruções dos comandos já estão no Contexto do projeto (arquivo `COMANDOS.md`). O resultado é o mesmo.

### Passo 1 — Entrar no projeto
Abra o Cowork, vá em Projetos e entre em **FLUXOS DE CAMPANHAS**. Todo chat aberto dentro dele já carrega o checklist e os comandos automaticamente.

### Passo 2 — Sempre começar pela marca
O `/marca` vem primeiro. Os outros dependem do que ele escreve. Pra um cliente novo, a primeira mensagem é:

```
Siga o fluxo /marca do COMANDOS.md.
Cliente: [nome do cliente].
Material do cliente: [cole aqui o site, textos, e uns 10 posts que ele já publicou].
Monte as diretrizes de marca (marca, voz e identidade) como o comando manda.
```

O Claude devolve as diretrizes e uma lista de **PERGUNTAR AO CLIENTE**. Guarde esse resultado, é a base de tudo.

### Passo 3 — Rodar o fluxo que você precisa
Depois da marca pronta, é só pedir o fluxo do momento. Modelos prontos pra copiar (troque o que está entre colchetes):

**Transformar um conteúdo em posts de cada rede:**
```
Siga o fluxo /repurpose do COMANDOS.md, respeitando a voz da marca do [cliente].
Conteúdo: [cole o texto, a aula ou o link].
```

**Montar o calendário do mês:**
```
Siga o fluxo /calendario do COMANDOS.md para o [cliente].
Mês: [mês]. Posts por semana: [número].
```

**Virar um briefing em campanha completa:**
```
Siga o fluxo /campanha do COMANDOS.md para o [cliente].
Briefing: [cole o briefing do cliente].
```

**Gerar variações de anúncio pra teste:**
```
Siga o fluxo /ads do COMANDOS.md para o [cliente].
Peça base: [cole o anúncio atual]. Quantidade: [número] variações.
```

### Passo 4 — Salvar a entrega
No Cowork o resultado sai no chat. Copie e guarde onde a equipe organiza os materiais (Drive, Notion, o que vocês usam). O salvamento automático em pastas só acontece no Claude Code.

### Regras que a equipe não pode esquecer
- **Marca primeiro.** Sem as diretrizes, tudo sai genérico.
- **Não inventar número.** Se o material do cliente não tem o dado, o Claude marca PERGUNTAR AO CLIENTE. Respeite isso.
- **Um cliente por vez** em cada linha de raciocínio. Não misture dois clientes no mesmo pedido.
- Em dúvida sobre como pedir, abra o `COMANDOS.md` no Contexto do projeto e o `_APOIO/exemplos/verde-vida/` no GitHub pra ver como fica cada entrega.

> Quem for mexer a fundo (versionar, ajustar comandos, salvar em pasta) usa o **Claude Code** — as instruções estão logo abaixo. A maior parte da equipe resolve tudo pelo Cowork.

---

## Como começar (Claude Code, primeira vez na sua máquina)

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/i9CRIACOES/FLUXO-DE-CAMPANHAS.git "FLUXO DE CAMPANHAS"
   cd "FLUXO DE CAMPANHAS"
   ```
2. Não precisa instalar nada: os comandos já vêm no repositório.

---

## O jeito certo de usar (a ordem importa)

> ⚠️ **`/marca` vem primeiro, sempre.** Os outros quatro comandos LEEM os arquivos que ele escreve. Rodar com a `marca/` vazia = todos partem do zero e devolvem conselho genérico de internet.

### Passo a passo de uma campanha nova

1. **Crie a pasta da campanha** (na raiz do projeto):
   ```bash
   ./_APOIO/nova-campanha.sh ESTUDIOi9
   ```
   Isso cria a pasta `ESTUDIOi9/` na raiz, já autossuficiente (com comandos, checklist e estrutura). Se preferir, dá no mesmo duplicar a pasta `TEMPLATE DE CAMPANHA` no Finder e renomear.
2. **Abra o Claude Code DENTRO da pasta da campanha** (`ESTUDIOi9/`) e digite `/` — os 5 comandos aparecem. Trabalhar dentro da pasta é o que faz cada entrega ficar isolada ali.
3. **Junte o material** → jogue site, PDF comercial e ~10 posts do cliente em `marca/insumos/`.
4. **Rode `/marca`:**
   ```
   /marca Nome do Cliente
   ```
   Ele gera `marca.md`, `voz.md` e `identidade.md`, e devolve uma lista de **PERGUNTAR AO CLIENTE**. Leve essa lista pra próxima call e preencha as lacunas.
5. **Preencha `marca/publico.md` e `marca/performance.md`** com dados reais (tem template pronto nos arquivos).
6. **A partir daí, use os fluxos conforme a demanda:**
   ```
   /repurpose entregas/aula-de-ontem.md
   /calendario agosto 5
   /campanha briefings/cliente-x.md
   /ads entregas/ads-julho.md 9
   ```

Tudo que os comandos produzem cai no `entregas/` daquela campanha.

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

Já tem um caso-modelo pronto em **`_APOIO/exemplos/verde-vida/`** (cliente fictício, marmitas saudáveis). Ele mostra "como deve ficar" cada arquivo: `marca/` preenchida, um briefing e as 4 entregas (`/calendario`, `/repurpose`, `/campanha`, `/ads`). Abra antes de rodar num cliente real pra calibrar o nível de detalhe esperado — **copie a estrutura e a disciplina, não os dados**.

Quando uma campanha sua ficar boa, **commite a entrega** em `entregas/` (ou dentro de `exemplos/`) pra virar referência do time. Assim o próximo a rodar `/campanha` tem um padrão de qualidade pra mirar.

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
