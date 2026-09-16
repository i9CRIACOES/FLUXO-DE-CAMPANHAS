# Tutorial da equipe — FLUXO DE CAMPANHAS

Guia pra você produzir campanhas no mesmo padrão da i9. Escolha o seu caminho: **Cowork** (mais simples, no navegador) ou **Claude Code** (arquivos organizados na sua máquina). Os dois usam os mesmos 5 fluxos.

## Os 5 fluxos (iguais nos dois caminhos)

- **marca** → diretrizes do cliente (posicionamento, tom de voz, identidade)
- **repurpose** → transforma um conteúdo em post nativo de cada rede
- **calendario** → monta o calendário do mês
- **campanha** → transforma um briefing em campanha completa
- **ads** → gera variações de anúncio pra testar

**Regra de ouro:** a **marca** vem sempre primeiro. Os outros quatro usam o que ela produz. Sem a marca, tudo sai genérico.

**Antes de tudo (vale pros dois caminhos):** junte o material do cliente — site, PDF comercial e uns 10 posts reais que ele já publicou. É isso que faz a diferença entre um documento útil e um cheio de "PERGUNTAR AO CLIENTE". Cliente novo começa fora do Claude, coletando isso.

---

# CAMINHO A — Cowork (no navegador)

No Cowork **não existe pasta de arquivos**. O que organiza o trabalho é o **projeto** (com as instruções e o material do repositório dentro) e, para cada cliente, uma **conversa nova** dentro dele.

## A.1 — Usando o projeto que já está pronto (recomendado)

A i9 já deixou um projeto compartilhado chamado **FLUXOS DE CAMPANHAS**, com tudo configurado. Você não precisa montar nada.

1. Abra o Cowork → **Projetos** → entre em **FLUXOS DE CAMPANHAS**.
2. Abra uma **conversa nova** (uma por cliente).
3. Comece pela marca. Cole esta mensagem, trocando o que está entre colchetes:
   ```
   Quero começar um cliente novo no fluxo de campanhas.
   Cliente: [nome do cliente].
   Material: [cole o site, alguns textos e uns 10 posts que ele já publicou].
   Rode o fluxo /marca e me devolva as diretrizes de marca.
   ```
4. Depois da marca pronta, peça o fluxo que precisar (um por vez):
   ```
   Rode o fluxo /calendario para o [cliente]. Mês: [mês]. Posts por semana: [número].
   ```
   ```
   Rode o fluxo /campanha para o [cliente]. Briefing: [cole o briefing].
   ```
   ```
   Rode o fluxo /repurpose para o [cliente]. Conteúdo: [cole o texto ou o link].
   ```
   ```
   Rode o fluxo /ads para o [cliente]. Peça base: [cole o anúncio]. Quantidade: [número].
   ```
5. O resultado sai no chat. **Copie e guarde** no Drive/Notion da equipe, com a data no nome. No Cowork não há salvamento automático.

> Para cada cliente novo, é só abrir **outra conversa** dentro do mesmo projeto. Não misture dois clientes na mesma conversa.

## A.2 — Montando o SEU próprio projeto no Cowork (só se você não tiver acesso ao compartilhado)

Se você precisar de um projeto próprio, é aqui que você "monta a pasta" no Cowork, copiando as coisas do repositório:

1. Baixe estes arquivos do GitHub (github.com/i9CRIACOES/FLUXO-DE-CAMPANHAS):
   - `_APOIO/INSTRUCOES-COWORK.md`
   - `_APOIO/COMANDOS.md`
   - `_APOIO/TUTORIAL-EQUIPE.md` (este arquivo)
   - `README.md`
2. No Cowork, crie um **Projeto** novo (ex.: "Fluxo de Campanhas").
3. Em **Instruções** do projeto → cole o conteúdo de `INSTRUCOES-COWORK.md` (só o que está abaixo da linha).
4. Em **Contexto** do projeto → suba `COMANDOS.md`, `README.md` e `TUTORIAL-EQUIPE.md`.
5. Pronto. Agora seu projeto se comporta igual ao compartilhado. Siga o A.1 a partir do passo 2.

---

# CAMINHO B — Claude Code (na sua máquina)

Aqui cada campanha é uma **pasta de verdade** no seu computador, criada por um comando. O Claude salva as entregas sozinho, e as campanhas ficam só na sua máquina (não vão pro GitHub).

## B.1 — Uma vez só: baixar a "máquina"

Clone o repositório (faz isso uma vez):
```bash
git clone https://github.com/i9CRIACOES/FLUXO-DE-CAMPANHAS.git "FLUXO DE CAMPANHAS"
```

## B.2 — Para cada cliente novo: montar a pasta

Entre na pasta do projeto e rode o comando que **monta a pasta da campanha** já pronta (com os comandos e a estrutura dentro):
```bash
cd "FLUXO DE CAMPANHAS"
./_APOIO/nova-campanha.sh NomeDoCliente
```
Isso cria a pasta `NomeDoCliente/` na raiz, autossuficiente.
(Se preferir sem terminal: duplique a pasta `TEMPLATE DE CAMPANHA` no Finder e renomeie para o nome do cliente.)

## B.3 — Trabalhar dentro da pasta

1. Abra o Claude Code **dentro da pasta da campanha** (`NomeDoCliente/`), não na raiz — senão as entregas de clientes diferentes se misturam.
2. Jogue tudo que o cliente te deu em `marca/insumos/`.
3. Rode `/marca Nome do Cliente`. Sai `marca.md`, `voz.md`, `identidade.md` e a lista de PERGUNTAR AO CLIENTE.
4. Leve a lista pra call, volte e preencha `marca/publico.md` e `marca/performance.md` à mão (têm template dentro).
5. Aí sim use os outros fluxos:
   ```
   /repurpose entregas/algum-conteudo.md
   /calendario agosto 4
   /campanha briefings/briefing-do-cliente.md
   /ads entregas/anuncio-atual.md 6
   ```
6. Tudo cai em `entregas/` daquela campanha, sozinho.

---

## Armadilha do cliente novo (vale pros dois caminhos)

O `performance.md` vai estar vazio, porque ainda não existe histórico do cliente com a gente. Isso deixa o `/calendario` no escuro (ele foi feito pra cruzar tema com o que já performou). Duas saídas:
- Peça os números que o cliente já tem da operação anterior, mesmo bagunçados.
- Ou rode o primeiro mês como **calibragem** e escreva isso no arquivo, pra ninguém cobrar precisão de um chute.

## O que você não pode esquecer

- **Marca primeiro.** Sempre.
- **Material de verdade.** Sem material, o Claude marca PERGUNTAR AO CLIENTE em vez de inventar. Respeite isso.
- **Um cliente por vez.** Uma conversa (Cowork) ou uma pasta (Claude Code) por cliente.
- **Guarde as entregas.** No Cowork, copie pro Drive/Notion. É esse histórico que vira a referência de qualidade do time.

## Onde tirar dúvida

O GitHub é o manual oficial: **github.com/i9CRIACOES/FLUXO-DE-CAMPANHAS**. Tem o passo a passo completo (README), o texto exato de cada fluxo (`_APOIO/COMANDOS.md`) e um exemplo pronto de como cada entrega fica (`_APOIO/exemplos/verde-vida/`). Na dúvida de "como isso deveria ficar", abra o exemplo.
