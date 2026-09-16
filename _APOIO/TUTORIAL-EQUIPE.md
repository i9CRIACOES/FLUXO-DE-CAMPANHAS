# Tutorial da equipe — FLUXO DE CAMPANHAS

Guia rápido pra você começar a produzir campanhas no mesmo padrão da i9. Não precisa saber nada técnico. Leva 5 minutos.

## O que é isto

Uma "caixa" com 5 fluxos prontos que o Claude roda sempre do mesmo jeito:

- **marca** → monta as diretrizes do cliente (posicionamento, tom de voz, identidade)
- **repurpose** → transforma um conteúdo em post nativo de cada rede
- **calendario** → monta o calendário do mês
- **campanha** → transforma um briefing em campanha completa
- **ads** → gera variações de anúncio pra testar

A regra de ouro: **marca vem primeiro**. Os outros quatro usam o que ela produz. Sem a marca, tudo sai genérico.

## Onde você trabalha

Você tem dois caminhos. Use o que for mais confortável.

### Caminho 1 — Cowork (mais simples, recomendado pra começar)

1. Abra o Cowork e entre no projeto **FLUXOS DE CAMPANHAS** (já compartilhado com a i9).
2. Abra um chat novo. O Claude já sabe os fluxos, porque as instruções estão no projeto.
3. Comece pela marca. Cole esta mensagem, trocando o que está entre colchetes:

   ```
   Quero começar um cliente novo no fluxo de campanhas.
   Cliente: [nome do cliente].
   Material: [cole o site, alguns textos e uns 10 posts que ele já publicou].
   Rode o fluxo /marca e me devolva as diretrizes de marca.
   ```

4. Depois da marca pronta, peça o fluxo que precisar:

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

5. O resultado sai no chat. **Copie e guarde** no Drive/Notion da equipe, com a data no nome. (No Cowork não existe salvamento automático.)

### Caminho 2 — Claude Code (pra quem quer os arquivos organizados na máquina)

1. Clone o repositório uma vez:
   ```bash
   git clone https://github.com/i9CRIACOES/FLUXO-DE-CAMPANHAS.git "FLUXO DE CAMPANHAS"
   ```
2. Crie a pasta da campanha (cópia do molde):
   ```bash
   cd "FLUXO DE CAMPANHAS" && ./_APOIO/nova-campanha.sh NOME-DO-CLIENTE
   ```
   Ou duplique a pasta `TEMPLATE DE CAMPANHA` no Finder e renomeie.
3. Abra o Claude Code **dentro da pasta da campanha** e use os comandos com barra: `/marca`, `/calendario`, etc.
4. Aqui o Claude salva tudo sozinho em `entregas/`. As campanhas ficam só na sua máquina, não vão pro GitHub.

## O que você não pode esquecer

- **Marca primeiro.** Sempre.
- **Material de verdade.** Quanto mais coisa real do cliente você der (site, posts, números), melhor. Sem material, o Claude avisa que precisa perguntar ao cliente, em vez de inventar.
- **Um cliente por conversa.** Não misture dois clientes no mesmo chat.
- **Guarde as entregas.** No Cowork, copie pro Drive/Notion. É esse histórico que vira a referência de qualidade do time.

## Onde tirar dúvida

O repositório no GitHub é o manual oficial: **github.com/i9CRIACOES/FLUXO-DE-CAMPANHAS**. Lá tem o passo a passo completo (README), o texto exato de cada fluxo (`_APOIO/COMANDOS.md`) e um exemplo pronto de como cada entrega deve ficar (`_APOIO/exemplos/verde-vida/`). Quando bater dúvida de "como isso deveria ficar", abra o exemplo.
