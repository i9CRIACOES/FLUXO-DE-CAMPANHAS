# FLUXO DE CAMPANHAS — Instruções do projeto (i9 Criações)

> Este arquivo é lido automaticamente pelo Claude Code em **toda sessão nova** deste projeto.
> Ele existe pra garantir que qualquer pessoa da agência rode os fluxos do jeito certo, sem depender de quem ensinou.

---

## 🎯 O que é este projeto

Uma "caixa de comandos" pra produzir campanha em escala com padrão de agência. São 5 comandos (`/marca`, `/repurpose`, `/calendario`, `/campanha`, `/ads`) que leem os arquivos da pasta `marca/` e escrevem as entregas em `entregas/`.

**Regra de ouro:** a qualidade da saída depende 100% do que está na pasta `marca/`. Comando bom + `marca/` vazia = texto genérico.

**Uma pasta por campanha.** O trabalho acontece dentro de `campanhas/<nome-da-campanha>/`, cada uma com seu próprio `marca/`, `briefings/` e `entregas/`. Crie uma nova com `./nova-campanha.sh <nome>` (na raiz) e **abra o Claude Code dentro da pasta da campanha** — assim os caminhos `marca/` e `entregas/` dos comandos resolvem ali dentro, isolados das outras campanhas. Os comandos são os mesmos; só o lugar onde você os roda muda.

---

## ✅ CHECKLIST OBRIGATÓRIO — rode isto no começo de CADA sessão

Antes de executar qualquer comando de campanha, o Claude DEVE verificar (e, se faltar, avisar o operador):

1. **Qual campanha?** Confirme que você está na pasta certa em `campanhas/<nome>/`. Cada campanha tem seu próprio `marca/`. Se a sessão não está dentro de uma pasta de campanha, avise antes de gerar qualquer coisa.
2. **`marca/` está preenchida?** Verifique se existem `marca.md`, `voz.md`, `identidade.md`. Se não existirem → o primeiro passo é rodar `/marca`, nada mais.
3. **`publico.md` e `performance.md` têm dado real?** Se ainda estão com o texto de template, avise: `/calendario` e `/ads` vão sair fracos.
4. **Insumos no lugar?** Pra rodar `/marca`, confirme que há material em `marca/insumos/` (site, PDF comercial, ~10 posts).
5. **Onde salvar?** Toda entrega vai em `entregas/` com data no nome (`AAAA-MM-DD`). Nunca sobrescreva uma entrega anterior — crie arquivo novo.
6. **Vai commitar?** Ao terminar algo bom, lembre o operador de `git add . && git commit && git push` pra o time herdar.

> Se algum item falhar, **NÃO tente adivinhar** — liste o que falta e pergunte. É melhor uma pergunta agora que uma campanha genérica depois.

---

## 🔒 Regras duras (valem pra todos os comandos)

1. **Nunca inventar dado.** Onde faltar informação, escrever **PERGUNTAR AO CLIENTE** e seguir. Número que não existe no material do cliente não entra na entrega.
2. **Citar a fonte** de toda afirmação forte (de qual insumo/URL saiu).
3. **`/marca` sempre primeiro.** Os outros quatro dependem dele.
4. **Uma campanha por pasta.** Cada campanha vive em `campanhas/<nome>/` com sua própria `marca/`. Não misture duas campanhas na mesma sessão.
5. **Não repetir texto entre plataformas** no `/repurpose` — cada rede recebe o ângulo que funciona nela.
6. **Uma variável por variante** no `/ads` — hipótese escrita antes de rodar.

---

## 🧭 Ordem de uso recomendada

```
1. /marca [cliente]        → gera marca.md, voz.md, identidade.md
2. (preencher publico.md e performance.md com dado real)
3. /calendario [mes] [freq] → pauta do mês
4. /repurpose [arquivo]     → conteúdo vira post de cada rede
5. /campanha [briefing]     → briefing vira campanha completa
6. /ads [peca] [qtd]        → variantes pra teste
```

---

## 💡 Dicas que separam o resultado bom do genérico

- **`/marca` primeiro, sempre** — mesmo pra cliente antigo, revisar as diretrizes 1x paga as próximas 50 rodadas.
- **`performance.md` com número real** faz o `/calendario` decidir por evidência em vez de opinar.
- **`context: fork`** já está ligado em `/calendario` e `/campanha` (eles pesquisam muito e isso encheria a janela) — o resultado volta limpo pra conversa.
- **Restrinja ferramentas por fluxo** ao criar comando novo — o `/ads` não precisa de web, o `/marca` precisa.
- **Guarde as campanhas boas** em `entregas/` como referência — vira o padrão de qualidade do time.
- **Commite a pasta `.claude/`** — comando que só existe numa máquina não é processo da agência.

---

## 🗂️ Mapa rápido dos arquivos

| Arquivo | Quem escreve | Quem lê |
|---|---|---|
| `marca/insumos/*` | Operador (material do cliente) | `/marca` |
| `marca/marca.md` | `/marca` | `/campanha` |
| `marca/voz.md` | `/marca` | `/repurpose`, `/ads` |
| `marca/identidade.md` | `/marca` | `/campanha` |
| `marca/publico.md` | Operador | `/calendario`, `/ads` |
| `marca/performance.md` | Operador | `/calendario` |
| `briefings/*` | Operador | `/campanha` |
| `entregas/*` | Os comandos | referência do time |

---

## ⚠️ Escopo — o que NÃO fazer sem pedir

- Não sobrescrever a pasta `marca/` de um cliente sem confirmar de quem é a sessão.
- Não apagar entregas antigas de `entregas/`.
- Não commitar/pushar sozinho sem o operador pedir (mas pode lembrar que é hora de fazer).
